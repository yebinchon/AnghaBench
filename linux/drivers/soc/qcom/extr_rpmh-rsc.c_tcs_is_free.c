
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsc_drv {int tcs_in_use; } ;


 int RSC_DRV_STATUS ;
 scalar_t__ read_tcs_reg (struct rsc_drv*,int ,int,int ) ;
 int test_bit (int,int ) ;

__attribute__((used)) static bool tcs_is_free(struct rsc_drv *drv, int tcs_id)
{
 return !test_bit(tcs_id, drv->tcs_in_use) &&
        read_tcs_reg(drv, RSC_DRV_STATUS, tcs_id, 0);
}
