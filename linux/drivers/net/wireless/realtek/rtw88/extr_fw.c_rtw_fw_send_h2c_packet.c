
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int lock; int seq; } ;
struct rtw_dev {TYPE_1__ h2c; } ;


 int FW_OFFLOAD_H2C_SET_SEQ_NUM (int *,int ) ;
 int H2C_PKT_SIZE ;
 int rtw_err (struct rtw_dev*,char*) ;
 int rtw_hci_write_data_h2c (struct rtw_dev*,int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void rtw_fw_send_h2c_packet(struct rtw_dev *rtwdev, u8 *h2c_pkt)
{
 int ret;

 spin_lock(&rtwdev->h2c.lock);

 FW_OFFLOAD_H2C_SET_SEQ_NUM(h2c_pkt, rtwdev->h2c.seq);
 ret = rtw_hci_write_data_h2c(rtwdev, h2c_pkt, H2C_PKT_SIZE);
 if (ret)
  rtw_err(rtwdev, "failed to send h2c packet\n");
 rtwdev->h2c.seq++;

 spin_unlock(&rtwdev->h2c.lock);
}
