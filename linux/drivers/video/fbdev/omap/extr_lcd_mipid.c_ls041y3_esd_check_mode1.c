
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mipid_device {TYPE_1__* spi; } ;
struct TYPE_2__ {int dev; } ;


 int MIPID_CMD_RDDSDR ;
 int dev_dbg (int *,char*,int,int) ;
 int ls041y3_esd_recover (struct mipid_device*) ;
 int mipid_read (struct mipid_device*,int ,int*,int) ;
 int set_sleep_mode (struct mipid_device*,int ) ;

__attribute__((used)) static void ls041y3_esd_check_mode1(struct mipid_device *md)
{
 u8 state1, state2;

 mipid_read(md, MIPID_CMD_RDDSDR, &state1, 1);
 set_sleep_mode(md, 0);
 mipid_read(md, MIPID_CMD_RDDSDR, &state2, 1);
 dev_dbg(&md->spi->dev, "ESD mode 1 state1 %02x state2 %02x\n",
  state1, state2);



 if (!((state1 ^ state2) & (1 << 6)))
  ls041y3_esd_recover(md);
}
