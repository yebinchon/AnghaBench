
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_dev {int dummy; } ;
typedef enum rtw_debug_mask { ____Placeholder_rtw_debug_mask } rtw_debug_mask ;



__attribute__((used)) static inline void rtw_dbg(struct rtw_dev *rtwdev, enum rtw_debug_mask mask,
      const char *fmt, ...) {}
