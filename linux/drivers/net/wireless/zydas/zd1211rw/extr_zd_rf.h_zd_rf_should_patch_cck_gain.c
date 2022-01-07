
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_rf {int patch_cck_gain; } ;



__attribute__((used)) static inline int zd_rf_should_patch_cck_gain(struct zd_rf *rf)
{
 return rf->patch_cck_gain;
}
