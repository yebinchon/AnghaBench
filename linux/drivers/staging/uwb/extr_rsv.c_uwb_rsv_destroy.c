
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_rsv {int dummy; } ;


 int uwb_rsv_put (struct uwb_rsv*) ;

void uwb_rsv_destroy(struct uwb_rsv *rsv)
{
 uwb_rsv_put(rsv);
}
