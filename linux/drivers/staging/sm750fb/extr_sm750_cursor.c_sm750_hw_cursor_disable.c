
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lynx_cursor {int dummy; } ;


 int HWC_ADDRESS ;
 int poke32 (int ,int ) ;

void sm750_hw_cursor_disable(struct lynx_cursor *cursor)
{
 poke32(HWC_ADDRESS, 0);
}
