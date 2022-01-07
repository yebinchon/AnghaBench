
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt2x00_dev {int dummy; } ;


 int ENODEV ;
 int MAC_CSR0 ;
 int MAC_CSR0_3290 ;
 int MAC_CSR0_CHIPSET ;
 int MAC_CSR0_REVISION ;
 int RT6352 ;
 int rt2800_register_read (struct rt2x00_dev*,int ) ;
 int rt2x00_err (struct rt2x00_dev*,char*,int,int) ;
 int rt2x00_get_field32 (int,int ) ;
 scalar_t__ rt2x00_is_soc (struct rt2x00_dev*) ;
 scalar_t__ rt2x00_rt (struct rt2x00_dev*,int) ;
 int rt2x00_set_rt (struct rt2x00_dev*,int,int) ;

__attribute__((used)) static int rt2800_probe_rt(struct rt2x00_dev *rt2x00dev)
{
 u32 reg;
 u32 rt;
 u32 rev;

 if (rt2x00_rt(rt2x00dev, 137))
  reg = rt2800_register_read(rt2x00dev, MAC_CSR0_3290);
 else
  reg = rt2800_register_read(rt2x00dev, MAC_CSR0);

 rt = rt2x00_get_field32(reg, MAC_CSR0_CHIPSET);
 rev = rt2x00_get_field32(reg, MAC_CSR0_REVISION);

 switch (rt) {
 case 143:
 case 142:
 case 141:
 case 140:
 case 139:
 case 138:
 case 137:
 case 136:
 case 135:
 case 134:
 case 133:
 case 132:
 case 131:
 case 130:
 case 129:
 case 128:
  break;
 default:
  rt2x00_err(rt2x00dev, "Invalid RT chipset 0x%04x, rev %04x detected\n",
      rt, rev);
  return -ENODEV;
 }

 if (rt == 130 && rt2x00_is_soc(rt2x00dev))
  rt = RT6352;

 rt2x00_set_rt(rt2x00dev, rt, rev);

 return 0;
}
