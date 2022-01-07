
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_dev {int dummy; } ;


 int init_h2c (struct rtw_dev*) ;
 int priority_queue_cfg (struct rtw_dev*) ;
 int txdma_queue_mapping (struct rtw_dev*) ;

__attribute__((used)) static int rtw_init_trx_cfg(struct rtw_dev *rtwdev)
{
 int ret;

 ret = txdma_queue_mapping(rtwdev);
 if (ret)
  return ret;

 ret = priority_queue_cfg(rtwdev);
 if (ret)
  return ret;

 ret = init_h2c(rtwdev);
 if (ret)
  return ret;

 return 0;
}
