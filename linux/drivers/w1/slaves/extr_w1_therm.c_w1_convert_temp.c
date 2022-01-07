
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_5__ {int (* convert ) (scalar_t__*) ;TYPE_1__* f; } ;
struct TYPE_4__ {scalar_t__ fid; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 int stub1 (scalar_t__*) ;
 TYPE_2__* w1_therm_families ;

__attribute__((used)) static inline int w1_convert_temp(u8 rom[9], u8 fid)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(w1_therm_families); ++i)
  if (w1_therm_families[i].f->fid == fid)
   return w1_therm_families[i].convert(rom);

 return 0;
}
