
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int __le32 ;


 scalar_t__ le32_to_cpu (int ) ;

__attribute__((used)) static inline uint32_t
qla27xx_template_checksum(void *p, ulong size)
{
 __le32 *buf = p;
 uint64_t sum = 0;

 size /= sizeof(*buf);

 for ( ; size--; buf++)
  sum += le32_to_cpu(*buf);

 sum = (sum & 0xffffffff) + (sum >> 32);

 return ~sum;
}
