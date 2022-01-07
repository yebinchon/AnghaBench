
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct esas2r_sas_nvram {char* signature; scalar_t__ version; } ;
struct esas2r_adapter {int flags; struct esas2r_sas_nvram* nvram; } ;


 int AF_NVR_VALID ;
 scalar_t__ SASNVR_VERSION ;
 int esas2r_hdebug (char*) ;
 int esas2r_nvram_set_defaults (struct esas2r_adapter*) ;
 scalar_t__ esas2r_nvramcalc_cksum (struct esas2r_sas_nvram*) ;
 int set_bit (int ,int *) ;

bool esas2r_nvram_validate(struct esas2r_adapter *a)
{
 struct esas2r_sas_nvram *n = a->nvram;
 bool rslt = 0;

 if (n->signature[0] != 'E'
     || n->signature[1] != 'S'
     || n->signature[2] != 'A'
     || n->signature[3] != 'S') {
  esas2r_hdebug("invalid NVRAM signature");
 } else if (esas2r_nvramcalc_cksum(n)) {
  esas2r_hdebug("invalid NVRAM checksum");
 } else if (n->version > SASNVR_VERSION) {
  esas2r_hdebug("invalid NVRAM version");
 } else {
  set_bit(AF_NVR_VALID, &a->flags);
  rslt = 1;
 }

 if (rslt == 0) {
  esas2r_hdebug("using defaults");
  esas2r_nvram_set_defaults(a);
 }

 return rslt;
}
