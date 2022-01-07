
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl8187_priv {int dummy; } ;
typedef int __le32 ;


 int rtl818x_ioread32_idx (struct rtl8187_priv*,int *,int ) ;

__attribute__((used)) static inline u32 rtl818x_ioread32(struct rtl8187_priv *priv, __le32 *addr)
{
 return rtl818x_ioread32_idx(priv, addr, 0);
}
