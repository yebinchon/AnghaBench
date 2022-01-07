
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipr_ioa_cfg {int * hrrq; } ;
struct ipr_cmnd {int dummy; } ;


 size_t IPR_INIT_HRRQ ;
 struct ipr_cmnd* __ipr_get_free_ipr_cmnd (int *) ;
 int ipr_init_ipr_cmnd (struct ipr_cmnd*,int ) ;
 int ipr_lock_and_done ;

__attribute__((used)) static
struct ipr_cmnd *ipr_get_free_ipr_cmnd(struct ipr_ioa_cfg *ioa_cfg)
{
 struct ipr_cmnd *ipr_cmd =
  __ipr_get_free_ipr_cmnd(&ioa_cfg->hrrq[IPR_INIT_HRRQ]);
 ipr_init_ipr_cmnd(ipr_cmd, ipr_lock_and_done);
 return ipr_cmd;
}
