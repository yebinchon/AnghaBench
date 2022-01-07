
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct consw {int dummy; } ;


 int MAX_NR_CONSOLES ;
 int WARN_CONSOLE_UNLOCKED () ;
 struct consw const** con_driver_map ;

int con_is_bound(const struct consw *csw)
{
 int i, bound = 0;

 WARN_CONSOLE_UNLOCKED();

 for (i = 0; i < MAX_NR_CONSOLES; i++) {
  if (con_driver_map[i] == csw) {
   bound = 1;
   break;
  }
 }

 return bound;
}
