
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_rsv {int (* callback ) (struct uwb_rsv*) ;} ;


 int stub1 (struct uwb_rsv*) ;

__attribute__((used)) static void uwb_rsv_callback(struct uwb_rsv *rsv)
{
 if (rsv->callback)
  rsv->callback(rsv);
}
