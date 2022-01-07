
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union evm_time {int* bytes; int value; } ;
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;


 int DM355EVM_MSP_RTC_0 ;
 int DM355EVM_MSP_RTC_1 ;
 int DM355EVM_MSP_RTC_2 ;
 int DM355EVM_MSP_RTC_3 ;
 int dev_dbg (struct device*,char*,int ) ;
 int dm355evm_msp_read (int ) ;
 int le32_to_cpu (int ) ;
 int rtc_time64_to_tm (int ,struct rtc_time*) ;

__attribute__((used)) static int dm355evm_rtc_read_time(struct device *dev, struct rtc_time *tm)
{
 union evm_time time;
 int status;
 int tries = 0;

 do {





  status = dm355evm_msp_read(DM355EVM_MSP_RTC_0);
  if (status < 0)
   return status;
  if (tries && time.bytes[0] == status)
   break;
  time.bytes[0] = status;

  status = dm355evm_msp_read(DM355EVM_MSP_RTC_1);
  if (status < 0)
   return status;
  if (tries && time.bytes[1] == status)
   break;
  time.bytes[1] = status;

  status = dm355evm_msp_read(DM355EVM_MSP_RTC_2);
  if (status < 0)
   return status;
  if (tries && time.bytes[2] == status)
   break;
  time.bytes[2] = status;

  status = dm355evm_msp_read(DM355EVM_MSP_RTC_3);
  if (status < 0)
   return status;
  if (tries && time.bytes[3] == status)
   break;
  time.bytes[3] = status;

 } while (++tries < 5);

 dev_dbg(dev, "read timestamp %08x\n", time.value);

 rtc_time64_to_tm(le32_to_cpu(time.value), tm);
 return 0;
}
