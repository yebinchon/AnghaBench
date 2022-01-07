
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mutex; int * err_page; } ;


 int __free_page (int *) ;
 TYPE_1__ global ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void cxlflash_free_errpage(void)
{

 mutex_lock(&global.mutex);
 if (global.err_page) {
  __free_page(global.err_page);
  global.err_page = ((void*)0);
 }
 mutex_unlock(&global.mutex);
}
