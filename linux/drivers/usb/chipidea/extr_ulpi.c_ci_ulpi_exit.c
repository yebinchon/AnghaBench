
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ci_hdrc {int * ulpi; } ;


 int ulpi_unregister_interface (int *) ;

void ci_ulpi_exit(struct ci_hdrc *ci)
{
 if (ci->ulpi) {
  ulpi_unregister_interface(ci->ulpi);
  ci->ulpi = ((void*)0);
 }
}
