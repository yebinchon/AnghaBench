
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct rtw_dev {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (int *) ;
 int * kmemdup (int const*,int ,int ) ;
 int rtw_fw_write_data_rsvd_page (struct rtw_dev*,int ,int *,int ) ;

__attribute__((used)) static int send_firmware_pkt_rsvd_page(struct rtw_dev *rtwdev, u16 pg_addr,
           const u8 *data, u32 size)
{
 u8 *buf;
 int ret;

 buf = kmemdup(data, size, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;

 ret = rtw_fw_write_data_rsvd_page(rtwdev, pg_addr, buf, size);
 kfree(buf);
 return ret;
}
