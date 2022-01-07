
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long long get_unaligned_be64 (unsigned char*) ;

__attribute__((used)) static inline unsigned long long transport_lba_64_ext(unsigned char *cdb)
{
 return get_unaligned_be64(&cdb[12]);
}
