
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_pa_layer_attr {scalar_t__ pwr_rx; scalar_t__ pwr_tx; } ;


 scalar_t__ FASTAUTO_MODE ;
 scalar_t__ FAST_MODE ;

__attribute__((used)) static inline bool ufshcd_is_hs_mode(struct ufs_pa_layer_attr *pwr_info)
{
 return (pwr_info->pwr_rx == FAST_MODE ||
  pwr_info->pwr_rx == FASTAUTO_MODE) &&
  (pwr_info->pwr_tx == FAST_MODE ||
  pwr_info->pwr_tx == FASTAUTO_MODE);
}
