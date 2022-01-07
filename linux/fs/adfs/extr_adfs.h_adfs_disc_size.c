
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct adfs_discrecord {int disc_size; int disc_size_high; } ;


 int le32_to_cpu (int ) ;

__attribute__((used)) static inline u64 adfs_disc_size(const struct adfs_discrecord *dr)
{
 return (u64)le32_to_cpu(dr->disc_size_high) << 32 |
      le32_to_cpu(dr->disc_size);
}
