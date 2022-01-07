
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef int tmp ;
struct cw1200_common {int dummy; } ;
typedef int __le16 ;


 int __cw1200_reg_write (struct cw1200_common*,int ,int *,int,int ) ;
 int cpu_to_le16 (int ) ;

__attribute__((used)) static inline int __cw1200_reg_write_16(struct cw1200_common *priv,
     u16 addr, u16 val)
{
 __le16 tmp = cpu_to_le16(val);
 return __cw1200_reg_write(priv, addr, &tmp, sizeof(tmp), 0);
}
