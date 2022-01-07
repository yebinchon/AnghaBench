
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_4__ {int rsvd_drv_pg_num; int rsvd_drv_addr; } ;
struct rtw_dev {TYPE_2__ fifo; TYPE_1__* chip; } ;
struct TYPE_3__ {int page_size; } ;


 int ENOMEM ;
 int rtw_fw_write_data_rsvd_page (struct rtw_dev*,int ,int *,int) ;

__attribute__((used)) static int rtw_download_drv_rsvd_page(struct rtw_dev *rtwdev, u8 *buf, u32 size)
{
 u32 pg_size;
 u32 pg_num = 0;
 u16 pg_addr = 0;

 pg_size = rtwdev->chip->page_size;
 pg_num = size / pg_size + ((size & (pg_size - 1)) ? 1 : 0);
 if (pg_num > rtwdev->fifo.rsvd_drv_pg_num)
  return -ENOMEM;

 pg_addr = rtwdev->fifo.rsvd_drv_addr;

 return rtw_fw_write_data_rsvd_page(rtwdev, pg_addr, buf, size);
}
