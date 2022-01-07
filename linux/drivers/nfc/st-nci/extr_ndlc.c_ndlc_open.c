
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct llt_ndlc {int powered; int phy_id; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* enable ) (int ) ;} ;


 int stub1 (int ) ;

int ndlc_open(struct llt_ndlc *ndlc)
{

 ndlc->ops->enable(ndlc->phy_id);
 ndlc->powered = 1;
 return 0;
}
