
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int dram_size; } ;


 TYPE_1__ current_par ;
 unsigned int simple_strtoul (char*,char**,int ) ;

__attribute__((used)) static void acornfb_parse_dram(char *opt)
{
 unsigned int size;

 size = simple_strtoul(opt, &opt, 0);

 if (opt) {
  switch (*opt) {
  case 'M':
  case 'm':
   size *= 1024;

  case 'K':
  case 'k':
   size *= 1024;
  default:
   break;
  }
 }

 current_par.dram_size = size;
}
