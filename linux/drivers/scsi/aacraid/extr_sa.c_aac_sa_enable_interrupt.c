
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct aac_dev {int dummy; } ;
struct TYPE_2__ {int PRICLEARIRQMASK; } ;


 int DOORBELL_1 ;
 int DOORBELL_2 ;
 int DOORBELL_3 ;
 int DOORBELL_4 ;
 int PrintfReady ;
 TYPE_1__ SaDbCSR ;
 int sa_writew (struct aac_dev*,int ,int) ;

__attribute__((used)) static void aac_sa_enable_interrupt (struct aac_dev *dev)
{
 sa_writew(dev, SaDbCSR.PRICLEARIRQMASK, (PrintfReady | DOORBELL_1 |
    DOORBELL_2 | DOORBELL_3 | DOORBELL_4));
}
