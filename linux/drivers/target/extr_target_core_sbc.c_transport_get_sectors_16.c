
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int get_unaligned_be32 (unsigned char*) ;

__attribute__((used)) static inline u32 transport_get_sectors_16(unsigned char *cdb)
{
 return get_unaligned_be32(&cdb[10]);
}
