
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl8187_priv {int dummy; } ;


 int rtl818x_ioread8_idx (struct rtl8187_priv*,int *,int ) ;

__attribute__((used)) static inline u8 rtl818x_ioread8(struct rtl8187_priv *priv, u8 *addr)
{
 return rtl818x_ioread8_idx(priv, addr, 0);
}
