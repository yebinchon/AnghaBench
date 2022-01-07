
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_mac {int chip; } ;


 int ZD_MEMCLEAR (struct zd_mac*,int) ;
 int flush_workqueue (int ) ;
 int zd_chip_clear (int *) ;
 int zd_workqueue ;

void zd_mac_clear(struct zd_mac *mac)
{
 flush_workqueue(zd_workqueue);
 zd_chip_clear(&mac->chip);
 ZD_MEMCLEAR(mac, sizeof(struct zd_mac));
}
