
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uwb_rsv {TYPE_1__* rc; int * owner; } ;
struct TYPE_2__ {int uwb_dev; } ;



__attribute__((used)) static inline bool uwb_rsv_is_owner(struct uwb_rsv *rsv)
{
 return rsv->owner == &rsv->rc->uwb_dev;
}
