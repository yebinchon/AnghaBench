
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int rx_chain_num; } ;
struct rt2x00_dev {TYPE_1__ default_ant; } ;


 int BBP105_MLD ;
 int rt2800_bbp4_mac_if_ctrl (struct rt2x00_dev*) ;
 int rt2800_bbp_read (struct rt2x00_dev*,int) ;
 int rt2800_bbp_write (struct rt2x00_dev*,int,int) ;
 int rt2x00_set_field8 (int*,int ,int) ;

__attribute__((used)) static void rt3593_post_bbp_init(struct rt2x00_dev *rt2x00dev)
{
 u8 bbp;
 bool txbf_enabled = 0;

 bbp = rt2800_bbp_read(rt2x00dev, 105);
 if (rt2x00dev->default_ant.rx_chain_num == 1)
  rt2x00_set_field8(&bbp, BBP105_MLD, 0);
 else
  rt2x00_set_field8(&bbp, BBP105_MLD, 1);
 rt2800_bbp_write(rt2x00dev, 105, bbp);

 rt2800_bbp4_mac_if_ctrl(rt2x00dev);

 rt2800_bbp_write(rt2x00dev, 92, 0x02);
 rt2800_bbp_write(rt2x00dev, 82, 0x82);
 rt2800_bbp_write(rt2x00dev, 106, 0x05);
 rt2800_bbp_write(rt2x00dev, 104, 0x92);
 rt2800_bbp_write(rt2x00dev, 88, 0x90);
 rt2800_bbp_write(rt2x00dev, 148, 0xc8);
 rt2800_bbp_write(rt2x00dev, 47, 0x48);
 rt2800_bbp_write(rt2x00dev, 120, 0x50);

 if (txbf_enabled)
  rt2800_bbp_write(rt2x00dev, 163, 0xbd);
 else
  rt2800_bbp_write(rt2x00dev, 163, 0x9d);


 rt2800_bbp_write(rt2x00dev, 142, 6);
 rt2800_bbp_write(rt2x00dev, 143, 160);
 rt2800_bbp_write(rt2x00dev, 142, 7);
 rt2800_bbp_write(rt2x00dev, 143, 161);
 rt2800_bbp_write(rt2x00dev, 142, 8);
 rt2800_bbp_write(rt2x00dev, 143, 162);


 rt2800_bbp_write(rt2x00dev, 31, 0x08);


 rt2800_bbp_write(rt2x00dev, 68, 0x0b);


 rt2800_bbp_write(rt2x00dev, 105, 0x04);

}
