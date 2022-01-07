
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2x00_dev {int dummy; } ;


 int RT2X00_CHIP_INTF_PCIE ;
 int rt2x00_intf (struct rt2x00_dev*,int ) ;

__attribute__((used)) static inline bool rt2x00_is_pcie(struct rt2x00_dev *rt2x00dev)
{
 return rt2x00_intf(rt2x00dev, RT2X00_CHIP_INTF_PCIE);
}
