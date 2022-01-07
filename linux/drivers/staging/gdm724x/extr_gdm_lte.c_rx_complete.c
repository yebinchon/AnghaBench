
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_dev {int dummy; } ;


 int gdm_lte_receive_pkt (struct phy_dev*,void*,int) ;

__attribute__((used)) static int rx_complete(void *arg, void *data, int len, int context)
{
 struct phy_dev *phy_dev = arg;

 return gdm_lte_receive_pkt(phy_dev, data, len);
}
