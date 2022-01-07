
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_dev {int dummy; } ;


 int rtw_pci_free_trx_ring (struct rtw_dev*) ;

__attribute__((used)) static void rtw_pci_deinit(struct rtw_dev *rtwdev)
{
 rtw_pci_free_trx_ring(rtwdev);
}
