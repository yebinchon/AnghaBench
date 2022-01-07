
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;
typedef scalar_t__ ulong ;
typedef int uint32_t ;
typedef int __le32 ;


 int cpu_to_le32 (int ) ;

__attribute__((used)) static inline void
qla27xx_insert32(uint32_t value, void *buf, ulong *len)
{
 if (buf) {
  buf += *len;
  *(__le32 *)buf = cpu_to_le32(value);
 }
 *len += sizeof(value);
}
