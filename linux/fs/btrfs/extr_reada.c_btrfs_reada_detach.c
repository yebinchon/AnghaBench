
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reada_control {int refcnt; } ;


 int kref_put (int *,int ) ;
 int reada_control_release ;

void btrfs_reada_detach(void *handle)
{
 struct reada_control *rc = handle;

 kref_put(&rc->refcnt, reada_control_release);
}
