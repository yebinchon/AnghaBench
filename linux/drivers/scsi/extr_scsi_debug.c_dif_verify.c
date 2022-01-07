
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct t10_pi_tuple {scalar_t__ guard_tag; int ref_tag; } ;
typedef int sector_t ;
typedef scalar_t__ __be16 ;


 scalar_t__ T10_PI_TYPE1_PROTECTION ;
 scalar_t__ T10_PI_TYPE2_PROTECTION ;
 int be16_to_cpu (scalar_t__) ;
 int be32_to_cpu (int ) ;
 scalar_t__ dif_compute_csum (void const*,int ) ;
 int pr_err (char*,unsigned long,...) ;
 scalar_t__ sdebug_dif ;
 int sdebug_sector_size ;

__attribute__((used)) static int dif_verify(struct t10_pi_tuple *sdt, const void *data,
        sector_t sector, u32 ei_lba)
{
 __be16 csum = dif_compute_csum(data, sdebug_sector_size);

 if (sdt->guard_tag != csum) {
  pr_err("GUARD check failed on sector %lu rcvd 0x%04x, data 0x%04x\n",
   (unsigned long)sector,
   be16_to_cpu(sdt->guard_tag),
   be16_to_cpu(csum));
  return 0x01;
 }
 if (sdebug_dif == T10_PI_TYPE1_PROTECTION &&
     be32_to_cpu(sdt->ref_tag) != (sector & 0xffffffff)) {
  pr_err("REF check failed on sector %lu\n",
   (unsigned long)sector);
  return 0x03;
 }
 if (sdebug_dif == T10_PI_TYPE2_PROTECTION &&
     be32_to_cpu(sdt->ref_tag) != ei_lba) {
  pr_err("REF check failed on sector %lu\n",
   (unsigned long)sector);
  return 0x03;
 }
 return 0;
}
