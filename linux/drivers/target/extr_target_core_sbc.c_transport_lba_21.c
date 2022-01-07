
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int get_unaligned_be24 (unsigned char*) ;

__attribute__((used)) static inline u32 transport_lba_21(unsigned char *cdb)
{
 return get_unaligned_be24(&cdb[1]) & 0x1fffff;
}
