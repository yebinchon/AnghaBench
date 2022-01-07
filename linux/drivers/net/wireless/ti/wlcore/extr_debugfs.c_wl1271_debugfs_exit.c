
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * fw_stats; } ;
struct wl1271 {TYPE_1__ stats; } ;


 int kfree (int *) ;

void wl1271_debugfs_exit(struct wl1271 *wl)
{
 kfree(wl->stats.fw_stats);
 wl->stats.fw_stats = ((void*)0);
}
