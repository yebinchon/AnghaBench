
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int tmp ;
struct cw1200_common {int dummy; } ;
typedef int __le32 ;


 int cw1200_apb_read (struct cw1200_common*,int ,int *,int) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static inline int cw1200_apb_read_32(struct cw1200_common *priv,
         u32 addr, u32 *val)
{
 __le32 tmp;
 int i = cw1200_apb_read(priv, addr, &tmp, sizeof(tmp));
 *val = le32_to_cpu(tmp);
 return i;
}
