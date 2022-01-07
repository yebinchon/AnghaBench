
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ ARRAY_SIZE (int ) ;
 int pipemux_table ;

__attribute__((used)) static bool pipemux_strap_is_valid(u32 pipemux)
{
 return !!(pipemux < ARRAY_SIZE(pipemux_table));
}
