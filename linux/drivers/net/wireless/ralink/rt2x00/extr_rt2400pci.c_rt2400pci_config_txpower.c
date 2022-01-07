
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2x00_dev {int dummy; } ;


 int TXPOWER_TO_DEV (int) ;
 int rt2400pci_bbp_write (struct rt2x00_dev*,int,int ) ;

__attribute__((used)) static void rt2400pci_config_txpower(struct rt2x00_dev *rt2x00dev, int txpower)
{
 rt2400pci_bbp_write(rt2x00dev, 3, TXPOWER_TO_DEV(txpower));
}
