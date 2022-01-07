
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtw_dev {int dummy; } ;
struct rtw8822c_dpk_data {int dummy; } ;


 int rtw8822c_gl_state (struct rtw_dev*,struct rtw8822c_dpk_data*,int ) ;

__attribute__((used)) static u8 rtw8822c_gl_less_state(struct rtw_dev *rtwdev,
     struct rtw8822c_dpk_data *data)
{
 return rtw8822c_gl_state(rtwdev, data, 0);
}
