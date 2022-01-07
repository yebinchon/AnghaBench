
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LP8788_WDAY_SET ;

__attribute__((used)) static inline int _to_lp8788_wday(int tm_wday)
{
 return LP8788_WDAY_SET << (tm_wday - 1);
}
