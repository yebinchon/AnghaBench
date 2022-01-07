
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INIT_LIST_HEAD (int *) ;
 int * dasd_hashlists ;
 scalar_t__ dasd_max_devindex ;

int
dasd_devmap_init(void)
{
 int i;


 dasd_max_devindex = 0;
 for (i = 0; i < 256; i++)
  INIT_LIST_HEAD(&dasd_hashlists[i]);
 return 0;
}
