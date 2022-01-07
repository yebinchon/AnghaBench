
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct iscsi_param_list {int dummy; } ;
struct iscsi_param {int dummy; } ;
struct iscsi_conn {struct iscsi_param_list* param_list; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_PSTATE_PROPOSER (struct iscsi_param*) ;
 int PHASE_SECURITY ;
 int SET_PSTATE_ACCEPTOR (struct iscsi_param*) ;
 int SET_PSTATE_RESPONSE_GOT (struct iscsi_param*) ;
 scalar_t__ iscsi_add_notunderstood_response (char*,char*,struct iscsi_param_list*) ;
 scalar_t__ iscsi_check_acceptor_state (struct iscsi_param*,char*,struct iscsi_conn*) ;
 scalar_t__ iscsi_check_for_auth_key (char*) ;
 struct iscsi_param* iscsi_check_key (char*,int,int,struct iscsi_param_list*) ;
 scalar_t__ iscsi_check_proposer_state (struct iscsi_param*,char*) ;
 scalar_t__ iscsi_check_value (struct iscsi_param*,char*) ;
 scalar_t__ iscsi_extract_key_value (char*,char**,char**) ;
 int kfree (char*) ;
 char* kzalloc (int,int ) ;
 int memcpy (char*,char*,int) ;
 int pr_debug (char*,char*,char*) ;
 int pr_err (char*,int) ;
 scalar_t__ strlen (char*) ;

int iscsi_decode_text_input(
 u8 phase,
 u8 sender,
 char *textbuf,
 u32 length,
 struct iscsi_conn *conn)
{
 struct iscsi_param_list *param_list = conn->param_list;
 char *tmpbuf, *start = ((void*)0), *end = ((void*)0);

 tmpbuf = kzalloc(length + 1, GFP_KERNEL);
 if (!tmpbuf) {
  pr_err("Unable to allocate %u + 1 bytes for tmpbuf.\n", length);
  return -ENOMEM;
 }

 memcpy(tmpbuf, textbuf, length);
 tmpbuf[length] = '\0';
 start = tmpbuf;
 end = (start + length);

 while (start < end) {
  char *key, *value;
  struct iscsi_param *param;

  if (iscsi_extract_key_value(start, &key, &value) < 0)
   goto free_buffer;

  pr_debug("Got key: %s=%s\n", key, value);

  if (phase & PHASE_SECURITY) {
   if (iscsi_check_for_auth_key(key) > 0) {
    kfree(tmpbuf);
    return 1;
   }
  }

  param = iscsi_check_key(key, phase, sender, param_list);
  if (!param) {
   if (iscsi_add_notunderstood_response(key, value,
            param_list) < 0)
    goto free_buffer;

   start += strlen(key) + strlen(value) + 2;
   continue;
  }
  if (iscsi_check_value(param, value) < 0)
   goto free_buffer;

  start += strlen(key) + strlen(value) + 2;

  if (IS_PSTATE_PROPOSER(param)) {
   if (iscsi_check_proposer_state(param, value) < 0)
    goto free_buffer;

   SET_PSTATE_RESPONSE_GOT(param);
  } else {
   if (iscsi_check_acceptor_state(param, value, conn) < 0)
    goto free_buffer;

   SET_PSTATE_ACCEPTOR(param);
  }
 }

 kfree(tmpbuf);
 return 0;

free_buffer:
 kfree(tmpbuf);
 return -1;
}
