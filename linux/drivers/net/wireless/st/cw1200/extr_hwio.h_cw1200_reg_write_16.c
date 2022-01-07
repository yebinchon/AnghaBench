
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
typedef int tmp ;
struct cw1200_common {int dummy; } ;
typedef int __le32 ;


 int cpu_to_le32 (int ) ;
 int cw1200_reg_write (struct cw1200_common*,scalar_t__,int *,int) ;

__attribute__((used)) static inline int cw1200_reg_write_16(struct cw1200_common *priv,
          u16 addr, u16 val)
{
 __le32 tmp = cpu_to_le32((u32)val);
 return cw1200_reg_write(priv, addr, &tmp, sizeof(tmp));
}
