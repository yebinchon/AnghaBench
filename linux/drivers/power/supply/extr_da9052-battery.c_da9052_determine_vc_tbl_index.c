
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char DA9052_MEAN (unsigned char,unsigned char) ;
 int DA9052_VC_TBL_REF_SZ ;
 int WARN_ON (int) ;
 unsigned char* vc_tbl_ref ;

__attribute__((used)) static unsigned char da9052_determine_vc_tbl_index(unsigned char adc_temp)
{
 int i;

 if (adc_temp <= vc_tbl_ref[0])
  return 0;

 if (adc_temp > vc_tbl_ref[DA9052_VC_TBL_REF_SZ - 1])
  return DA9052_VC_TBL_REF_SZ - 1;

 for (i = 0; i < DA9052_VC_TBL_REF_SZ - 1; i++) {
  if ((adc_temp > vc_tbl_ref[i]) &&
      (adc_temp <= DA9052_MEAN(vc_tbl_ref[i], vc_tbl_ref[i + 1])))
    return i;
  if ((adc_temp > DA9052_MEAN(vc_tbl_ref[i], vc_tbl_ref[i + 1]))
       && (adc_temp <= vc_tbl_ref[i]))
    return i + 1;
 }





 WARN_ON(1);
 return 0;
}
