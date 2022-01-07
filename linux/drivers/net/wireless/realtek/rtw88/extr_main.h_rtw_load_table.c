
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_table {int (* parse ) (struct rtw_dev*,struct rtw_table const*) ;} ;
struct rtw_dev {int dummy; } ;


 int stub1 (struct rtw_dev*,struct rtw_table const*) ;

__attribute__((used)) static inline void rtw_load_table(struct rtw_dev *rtwdev,
      const struct rtw_table *tbl)
{
 (*tbl->parse)(rtwdev, tbl);
}
