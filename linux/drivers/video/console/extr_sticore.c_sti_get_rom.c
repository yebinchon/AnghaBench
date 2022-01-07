
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sti_struct {int dummy; } ;


 struct sti_struct* default_sti ;
 unsigned int num_sti_roms ;
 int sti_init_roms () ;
 struct sti_struct** sti_roms ;
 int sticore_initialized ;

struct sti_struct * sti_get_rom(unsigned int index)
{
 if (!sticore_initialized)
  sti_init_roms();

 if (index == 0)
  return default_sti;

 if (index > num_sti_roms)
  return ((void*)0);

 return sti_roms[index-1];
}
