
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s5m_rtc_info {int dev; TYPE_1__* regs; int regmap; } ;
struct TYPE_2__ {unsigned int autoclear_udr_mask; int udr_update; } ;


 int UDR_READ_RETRY_CNT ;
 int dev_err (int ,char*) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int s5m8767_wait_for_udr_update(struct s5m_rtc_info *info)
{
 int ret, retry = UDR_READ_RETRY_CNT;
 unsigned int data;

 do {
  ret = regmap_read(info->regmap, info->regs->udr_update, &data);
 } while (--retry && (data & info->regs->autoclear_udr_mask) && !ret);

 if (!retry)
  dev_err(info->dev, "waiting for UDR update, reached max number of retries\n");

 return ret;
}
