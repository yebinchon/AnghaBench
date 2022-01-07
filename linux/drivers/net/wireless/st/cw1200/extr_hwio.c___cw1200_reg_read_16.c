
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef int tmp ;
struct cw1200_common {int dummy; } ;
typedef int __le16 ;


 int __cw1200_reg_read (struct cw1200_common*,int ,int *,int,int ) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static inline int __cw1200_reg_read_16(struct cw1200_common *priv,
     u16 addr, u16 *val)
{
 __le16 tmp;
 int i = __cw1200_reg_read(priv, addr, &tmp, sizeof(tmp), 0);
 *val = le16_to_cpu(tmp);
 return i;
}
