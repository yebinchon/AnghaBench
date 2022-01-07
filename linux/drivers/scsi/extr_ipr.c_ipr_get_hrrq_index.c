
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipr_ioa_cfg {int hrrq_num; int hrrq_index; } ;


 unsigned int atomic_add_return (int,int *) ;

__attribute__((used)) static int ipr_get_hrrq_index(struct ipr_ioa_cfg *ioa_cfg)
{
 unsigned int hrrq;

 if (ioa_cfg->hrrq_num == 1)
  hrrq = 0;
 else {
  hrrq = atomic_add_return(1, &ioa_cfg->hrrq_index);
  hrrq = (hrrq % (ioa_cfg->hrrq_num - 1)) + 1;
 }
 return hrrq;
}
