
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct rtw_dev {int dummy; } ;


 scalar_t__ RTW_HCI_TYPE_USB ;
 int TX_DESC_SIZE ;
 int rtw_err (struct rtw_dev*,char*) ;
 scalar_t__ rtw_hci_type (struct rtw_dev*) ;
 int send_firmware_pkt_rsvd_page (struct rtw_dev*,int ,int const*,int) ;

__attribute__((used)) static int
send_firmware_pkt(struct rtw_dev *rtwdev, u16 pg_addr, const u8 *data, u32 size)
{
 int ret;

 if (rtw_hci_type(rtwdev) == RTW_HCI_TYPE_USB &&
     !((size + TX_DESC_SIZE) & (512 - 1)))
  size += 1;

 ret = send_firmware_pkt_rsvd_page(rtwdev, pg_addr, data, size);
 if (ret)
  rtw_err(rtwdev, "failed to download rsvd page\n");

 return ret;
}
