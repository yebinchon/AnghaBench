
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt2x00_dev {int dummy; } ;


 int EACCES ;
 int MAC_STATUS_CFG ;
 int MAC_STATUS_CFG_BBP_RF_BUSY ;
 unsigned int REGISTER_BUSY_COUNT ;
 int REGISTER_BUSY_DELAY ;
 int rt2800_register_read (struct rt2x00_dev*,int ) ;
 int rt2x00_err (struct rt2x00_dev*,char*) ;
 int rt2x00_get_field32 (int ,int ) ;
 int udelay (int ) ;

__attribute__((used)) static int rt2800_wait_bbp_rf_ready(struct rt2x00_dev *rt2x00dev)
{
 unsigned int i;
 u32 reg;

 for (i = 0; i < REGISTER_BUSY_COUNT; i++) {
  reg = rt2800_register_read(rt2x00dev, MAC_STATUS_CFG);
  if (!rt2x00_get_field32(reg, MAC_STATUS_CFG_BBP_RF_BUSY))
   return 0;

  udelay(REGISTER_BUSY_DELAY);
 }

 rt2x00_err(rt2x00dev, "BBP/RF register access failed, aborting\n");
 return -EACCES;
}
