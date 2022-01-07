
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_hal {int state; } ;


 int _HAL_STATE_START ;

__attribute__((used)) static inline void set_hal_start(struct rtl_hal *rtlhal)
{
 rtlhal->state = _HAL_STATE_START;
}
