
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_pci {scalar_t__ rx_tag; } ;
struct rtw_dev {int dummy; } ;


 int BIT_RST_TRXDMA_INTF ;
 int BIT_RX_TAG_EN ;
 int RTK_PCI_CTRL ;
 int rtw_write32_set (struct rtw_dev*,int ,int) ;

__attribute__((used)) static void rtw_pci_dma_reset(struct rtw_dev *rtwdev, struct rtw_pci *rtwpci)
{

 rtw_write32_set(rtwdev, RTK_PCI_CTRL,
   BIT_RST_TRXDMA_INTF | BIT_RX_TAG_EN);
 rtwpci->rx_tag = 0;
}
