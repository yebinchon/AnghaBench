
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;


 int BIT_ULL (int ) ;
 int EBUSY ;
 int ENXIO ;
 int GENMASK_ULL (int,int ) ;
 int MSR_OS_MAILBOX_BUSY_BIT ;
 int MSR_OS_MAILBOX_DATA ;
 int MSR_OS_MAILBOX_INTERFACE ;
 int OS_MAILBOX_RETRY_COUNT ;
 int rdmsrl (int ,int) ;
 int wrmsrl (int ,int) ;

__attribute__((used)) static int isst_if_send_mbox_cmd(u8 command, u8 sub_command, u32 parameter,
     u32 command_data, u32 *response_data)
{
 u32 retries;
 u64 data;
 int ret;


 retries = OS_MAILBOX_RETRY_COUNT;
 do {
  rdmsrl(MSR_OS_MAILBOX_INTERFACE, data);
  if (data & BIT_ULL(MSR_OS_MAILBOX_BUSY_BIT)) {
   ret = -EBUSY;
   continue;
  }
  ret = 0;
  break;
 } while (--retries);

 if (ret)
  return ret;


 wrmsrl(MSR_OS_MAILBOX_DATA, command_data);


 data = BIT_ULL(MSR_OS_MAILBOX_BUSY_BIT) |
        (parameter & GENMASK_ULL(13, 0)) << 16 |
        (sub_command << 8) |
        command;
 wrmsrl(MSR_OS_MAILBOX_INTERFACE, data);


 retries = OS_MAILBOX_RETRY_COUNT;
 do {
  rdmsrl(MSR_OS_MAILBOX_INTERFACE, data);
  if (data & BIT_ULL(MSR_OS_MAILBOX_BUSY_BIT)) {
   ret = -EBUSY;
   continue;
  }

  if (data & 0xff)
   return -ENXIO;

  if (response_data) {
   rdmsrl(MSR_OS_MAILBOX_DATA, data);
   *response_data = data;
  }
  ret = 0;
  break;
 } while (--retries);

 return ret;
}
