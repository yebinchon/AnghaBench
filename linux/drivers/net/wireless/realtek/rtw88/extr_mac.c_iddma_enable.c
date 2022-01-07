
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtw_dev {int dummy; } ;


 int BIT_DDMACH0_OWN ;
 int EBUSY ;
 int REG_DDMA_CH0CTRL ;
 int REG_DDMA_CH0DA ;
 int REG_DDMA_CH0SA ;
 int check_hw_ready (struct rtw_dev*,int ,int ,int ) ;
 int rtw_write32 (struct rtw_dev*,int ,int ) ;

__attribute__((used)) static int
iddma_enable(struct rtw_dev *rtwdev, u32 src, u32 dst, u32 ctrl)
{
 rtw_write32(rtwdev, REG_DDMA_CH0SA, src);
 rtw_write32(rtwdev, REG_DDMA_CH0DA, dst);
 rtw_write32(rtwdev, REG_DDMA_CH0CTRL, ctrl);

 if (!check_hw_ready(rtwdev, REG_DDMA_CH0CTRL, BIT_DDMACH0_OWN, 0))
  return -EBUSY;

 return 0;
}
