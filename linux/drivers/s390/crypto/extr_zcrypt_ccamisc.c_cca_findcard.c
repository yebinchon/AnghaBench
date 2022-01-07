
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u16 ;
struct secaeskeytoken {int mkvp; } ;
struct keytoken_header {scalar_t__ type; int version; } ;
struct cipherkeytoken {int mkvp0; } ;


 int AP_DEVICE_TYPE_CEX6 ;
 int EINVAL ;
 scalar_t__ TOKTYPE_CCA_INTERNAL ;


 int findcard (int ,int *,int *,int,int) ;

int cca_findcard(const u8 *key, u16 *pcardnr, u16 *pdomain, int verify)
{
 u64 mkvp;
 int minhwtype = 0;
 const struct keytoken_header *hdr = (struct keytoken_header *) key;

 if (hdr->type != TOKTYPE_CCA_INTERNAL)
  return -EINVAL;

 switch (hdr->version) {
 case 129:
  mkvp = ((struct secaeskeytoken *)key)->mkvp;
  break;
 case 128:
  mkvp = ((struct cipherkeytoken *)key)->mkvp0;
  minhwtype = AP_DEVICE_TYPE_CEX6;
  break;
 default:
  return -EINVAL;
 }

 return findcard(mkvp, pcardnr, pdomain, verify, minhwtype);
}
