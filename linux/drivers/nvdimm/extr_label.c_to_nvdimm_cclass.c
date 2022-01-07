
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int guid_t ;
typedef enum nvdimm_claim_class { ____Placeholder_nvdimm_claim_class } nvdimm_claim_class ;


 int NVDIMM_CCLASS_BTT ;
 int NVDIMM_CCLASS_BTT2 ;
 int NVDIMM_CCLASS_DAX ;
 int NVDIMM_CCLASS_NONE ;
 int NVDIMM_CCLASS_PFN ;
 int NVDIMM_CCLASS_UNKNOWN ;
 scalar_t__ guid_equal (int *,int *) ;
 int guid_null ;
 int nvdimm_btt2_guid ;
 int nvdimm_btt_guid ;
 int nvdimm_dax_guid ;
 int nvdimm_pfn_guid ;

enum nvdimm_claim_class to_nvdimm_cclass(guid_t *guid)
{
 if (guid_equal(guid, &nvdimm_btt_guid))
  return NVDIMM_CCLASS_BTT;
 else if (guid_equal(guid, &nvdimm_btt2_guid))
  return NVDIMM_CCLASS_BTT2;
 else if (guid_equal(guid, &nvdimm_pfn_guid))
  return NVDIMM_CCLASS_PFN;
 else if (guid_equal(guid, &nvdimm_dax_guid))
  return NVDIMM_CCLASS_DAX;
 else if (guid_equal(guid, &guid_null))
  return NVDIMM_CCLASS_NONE;

 return NVDIMM_CCLASS_UNKNOWN;
}
