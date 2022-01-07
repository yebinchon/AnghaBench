
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * err_page; int mutex; int gluns; } ;


 int INIT_LIST_HEAD (int *) ;
 TYPE_1__ global ;
 int mutex_init (int *) ;

void cxlflash_list_init(void)
{
 INIT_LIST_HEAD(&global.gluns);
 mutex_init(&global.mutex);
 global.err_page = ((void*)0);
}
