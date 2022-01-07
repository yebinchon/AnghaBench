
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atp_unit {int dummy; } ;


 int atp_readw_io (struct atp_unit*,int ,int) ;
 int atp_writew_io (struct atp_unit*,int ,int,unsigned short) ;

__attribute__((used)) static unsigned char fun_scam(struct atp_unit *dev, unsigned short int *val)
{
 unsigned short int i, k;
 unsigned char j;

 atp_writew_io(dev, 0, 0x1c, *val);
 for (i = 0; i < 10; i++) {
  k = atp_readw_io(dev, 0, 0x1c);
  j = (unsigned char) (k >> 8);
  if ((k & 0x8000) != 0)
   i = 0;
 }
 *val |= 0x4000;
 atp_writew_io(dev, 0, 0x1c, *val);
 *val &= 0xdfff;
 atp_writew_io(dev, 0, 0x1c, *val);
 for (i = 0; i < 10; i++) {
  if ((atp_readw_io(dev, 0, 0x1c) & 0x2000) != 0)
   i = 0;
 }
 *val |= 0x8000;
 *val &= 0xe0ff;
 atp_writew_io(dev, 0, 0x1c, *val);
 *val &= 0xbfff;
 atp_writew_io(dev, 0, 0x1c, *val);
 for (i = 0; i < 10; i++) {
  if ((atp_readw_io(dev, 0, 0x1c) & 0x4000) != 0)
   i = 0;
 }

 return j;
}
