
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct zd_rf {int dummy; } ;


 int zd_chip_generic_patch_6m_band (int ,int ) ;
 int zd_rf_to_chip (struct zd_rf*) ;

int zd_rf_generic_patch_6m(struct zd_rf *rf, u8 channel)
{
 return zd_chip_generic_patch_6m_band(zd_rf_to_chip(rf), channel);
}
