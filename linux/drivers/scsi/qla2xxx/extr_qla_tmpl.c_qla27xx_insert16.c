
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;
typedef scalar_t__ ulong ;
typedef int uint16_t ;
typedef int __le16 ;


 int cpu_to_le16 (int ) ;

__attribute__((used)) static inline void
qla27xx_insert16(uint16_t value, void *buf, ulong *len)
{
 if (buf) {
  buf += *len;
  *(__le16 *)buf = cpu_to_le16(value);
 }
 *len += sizeof(value);
}
