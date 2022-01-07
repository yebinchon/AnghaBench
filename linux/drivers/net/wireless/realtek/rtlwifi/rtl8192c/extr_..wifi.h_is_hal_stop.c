
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_hal {scalar_t__ state; } ;


 scalar_t__ _HAL_STATE_STOP ;

__attribute__((used)) static inline bool is_hal_stop(struct rtl_hal *rtlhal)
{
 return (_HAL_STATE_STOP == rtlhal->state);
}
