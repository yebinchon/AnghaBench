
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int kobj; } ;
struct TYPE_10__ {TYPE_4__ dev; } ;
struct altmode {TYPE_5__ adev; TYPE_3__* partner; } ;
struct TYPE_6__ {int kobj; } ;
struct TYPE_7__ {TYPE_1__ dev; } ;
struct TYPE_8__ {TYPE_2__ adev; } ;


 int sysfs_remove_link (int *,char*) ;

__attribute__((used)) static void typec_altmode_remove_links(struct altmode *alt)
{
 sysfs_remove_link(&alt->partner->adev.dev.kobj, "partner");
 sysfs_remove_link(&alt->adev.dev.kobj, "port");
}
