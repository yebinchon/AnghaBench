
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_dev {int flags; } ;
typedef enum rtw_flags { ____Placeholder_rtw_flags } rtw_flags ;


 int set_bit (int,int ) ;

__attribute__((used)) static inline void rtw_flag_set(struct rtw_dev *rtwdev, enum rtw_flags flag)
{
 set_bit(flag, rtwdev->flags);
}
