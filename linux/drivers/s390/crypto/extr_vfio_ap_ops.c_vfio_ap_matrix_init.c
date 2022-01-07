
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ap_matrix {int apm_max; int aqm_max; int adm_max; } ;
struct ap_config_info {int Na; int Nd; scalar_t__ apxa; } ;



__attribute__((used)) static void vfio_ap_matrix_init(struct ap_config_info *info,
    struct ap_matrix *matrix)
{
 matrix->apm_max = info->apxa ? info->Na : 63;
 matrix->aqm_max = info->apxa ? info->Nd : 15;
 matrix->adm_max = info->apxa ? info->Nd : 15;
}
