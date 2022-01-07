
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_mc_hash {int high; int low; } ;
struct zd_ioreq32 {int member_1; int member_0; } ;
struct zd_chip {int dummy; } ;


 int ARRAY_SIZE (struct zd_ioreq32 const*) ;
 int CR_GROUP_HASH_P1 ;
 int CR_GROUP_HASH_P2 ;
 int zd_iowrite32a (struct zd_chip*,struct zd_ioreq32 const*,int ) ;

int zd_chip_set_multicast_hash(struct zd_chip *chip,
                        struct zd_mc_hash *hash)
{
 const struct zd_ioreq32 ioreqs[] = {
  { CR_GROUP_HASH_P1, hash->low },
  { CR_GROUP_HASH_P2, hash->high },
 };

 return zd_iowrite32a(chip, ioreqs, ARRAY_SIZE(ioreqs));
}
