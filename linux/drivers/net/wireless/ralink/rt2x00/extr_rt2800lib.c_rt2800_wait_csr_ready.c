
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt2x00_dev {int dummy; } ;


 int EBUSY ;
 int MAC_CSR0 ;
 unsigned int REGISTER_BUSY_COUNT ;
 int msleep (int) ;
 int rt2800_register_read (struct rt2x00_dev*,int ) ;
 int rt2x00_err (struct rt2x00_dev*,char*) ;

int rt2800_wait_csr_ready(struct rt2x00_dev *rt2x00dev)
{
 unsigned int i = 0;
 u32 reg;

 for (i = 0; i < REGISTER_BUSY_COUNT; i++) {
  reg = rt2800_register_read(rt2x00dev, MAC_CSR0);
  if (reg && reg != ~0)
   return 0;
  msleep(1);
 }

 rt2x00_err(rt2x00dev, "Unstable hardware\n");
 return -EBUSY;
}
