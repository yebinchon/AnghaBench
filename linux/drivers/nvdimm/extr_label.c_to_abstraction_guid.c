
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const guid_t ;
typedef enum nvdimm_claim_class { ____Placeholder_nvdimm_claim_class } nvdimm_claim_class ;


 int NVDIMM_CCLASS_BTT ;
 int NVDIMM_CCLASS_BTT2 ;
 int NVDIMM_CCLASS_DAX ;
 int NVDIMM_CCLASS_PFN ;
 int NVDIMM_CCLASS_UNKNOWN ;
 int const guid_null ;
 int const nvdimm_btt2_guid ;
 int const nvdimm_btt_guid ;
 int const nvdimm_dax_guid ;
 int const nvdimm_pfn_guid ;

__attribute__((used)) static const guid_t *to_abstraction_guid(enum nvdimm_claim_class claim_class,
 guid_t *target)
{
 if (claim_class == NVDIMM_CCLASS_BTT)
  return &nvdimm_btt_guid;
 else if (claim_class == NVDIMM_CCLASS_BTT2)
  return &nvdimm_btt2_guid;
 else if (claim_class == NVDIMM_CCLASS_PFN)
  return &nvdimm_pfn_guid;
 else if (claim_class == NVDIMM_CCLASS_DAX)
  return &nvdimm_dax_guid;
 else if (claim_class == NVDIMM_CCLASS_UNKNOWN) {




  return target;
 } else
  return &guid_null;
}
