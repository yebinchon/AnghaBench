
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u16 ;
struct device {int dummy; } ;
struct calling_interface_buffer {int cmd_class; int cmd_select; int * input; } ;
struct TYPE_8__ {int tokenID; int location; } ;
struct TYPE_7__ {int cmd_class; int cmd_select; int need_capability; int max; int min; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int CAP_SYS_RAWIO ;
 int CLASS_TOKEN_READ ;
 int CLASS_TOKEN_WRITE ;
 int EACCES ;
 int EINVAL ;
 TYPE_1__* call_blacklist ;
 TYPE_1__* call_whitelist ;
 scalar_t__ capable (int ) ;
 int da_num_tokens ;
 int da_supported_commands ;
 TYPE_3__* da_tokens ;
 int dev_dbg (struct device*,char*,...) ;
 TYPE_1__* token_blacklist ;
 TYPE_1__* token_whitelist ;

int dell_smbios_call_filter(struct device *d,
       struct calling_interface_buffer *buffer)
{
 u16 t = 0;
 int i;


 if (buffer->cmd_class > 30) {
  dev_dbg(d, "class too big: %u\n", buffer->cmd_class);
  return -EINVAL;
 }


 if (!(da_supported_commands & (1 << buffer->cmd_class))) {
  dev_dbg(d, "invalid command, supported commands: 0x%8x\n",
   da_supported_commands);
  return -EINVAL;
 }


 for (i = 0; i < ARRAY_SIZE(call_blacklist); i++) {
  if (buffer->cmd_class != call_blacklist[i].cmd_class)
   continue;
  if (buffer->cmd_select != call_blacklist[i].cmd_select &&
      call_blacklist[i].cmd_select != -1)
   continue;
  dev_dbg(d, "blacklisted command: %u/%u\n",
   buffer->cmd_class, buffer->cmd_select);
  return -EINVAL;
 }



 if ((buffer->cmd_class == CLASS_TOKEN_READ ||
      buffer->cmd_class == CLASS_TOKEN_WRITE) &&
      buffer->cmd_select < 3) {

  if (!da_tokens) {
   dev_dbg(d, "no token support on this system\n");
   return -EINVAL;
  }


  for (i = 0; i < da_num_tokens; i++) {
   if (da_tokens[i].location != buffer->input[0])
    continue;
   t = da_tokens[i].tokenID;
   break;
  }


  if (!t) {
   dev_dbg(d, "token at location %04x doesn't exist\n",
    buffer->input[0]);
   return -EINVAL;
  }


  for (i = 0; i < ARRAY_SIZE(token_blacklist); i++) {
   if (!token_blacklist[i].min || !token_blacklist[i].max)
    continue;
   if (t >= token_blacklist[i].min &&
       t <= token_blacklist[i].max)
    return -EINVAL;
  }


  for (i = 0; i < ARRAY_SIZE(token_whitelist); i++) {
   if (!token_whitelist[i].min || !token_whitelist[i].max)
    continue;
   if (t < token_whitelist[i].min ||
       t > token_whitelist[i].max)
    continue;
   if (!token_whitelist[i].need_capability ||
       capable(token_whitelist[i].need_capability)) {
    dev_dbg(d, "whitelisted token: %x\n", t);
    return 0;
   }

  }
 }

 for (i = 0; i < ARRAY_SIZE(call_whitelist); i++) {
  if (buffer->cmd_class != call_whitelist[i].cmd_class)
   continue;
  if (buffer->cmd_select != call_whitelist[i].cmd_select)
   continue;
  if (!call_whitelist[i].need_capability ||
      capable(call_whitelist[i].need_capability)) {
   dev_dbg(d, "whitelisted capable command: %u/%u\n",
   buffer->cmd_class, buffer->cmd_select);
   return 0;
  }
  dev_dbg(d, "missing capability %d for %u/%u\n",
   call_whitelist[i].need_capability,
   buffer->cmd_class, buffer->cmd_select);

 }


 if (capable(CAP_SYS_RAWIO)) {
  dev_dbg(d, "Allowing %u/%u due to CAP_SYS_RAWIO\n",
   buffer->cmd_class, buffer->cmd_select);
  return 0;
 }

 return -EACCES;
}
