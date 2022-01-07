
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_rsv {int kref; } ;


 int kref_put (int *,int ) ;
 int uwb_rsv_release ;

void uwb_rsv_put(struct uwb_rsv *rsv)
{
 kref_put(&rsv->kref, uwb_rsv_release);
}
