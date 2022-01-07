
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fusb300 {int dummy; } ;


 int FUSB300_CSR_DONE ;
 int FUSB300_OFFSET_CSR ;
 int fusb300_enable_bit (struct fusb300*,int ,int ) ;

__attribute__((used)) static void fusb300_set_cxdone(struct fusb300 *fusb300)
{
 fusb300_enable_bit(fusb300, FUSB300_OFFSET_CSR,
      FUSB300_CSR_DONE);
}
