
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl8187_priv {int dummy; } ;


 int rtl818x_iowrite8_idx (struct rtl8187_priv*,int *,int ,int ) ;

__attribute__((used)) static inline void rtl818x_iowrite8(struct rtl8187_priv *priv, u8 *addr, u8 val)
{
 rtl818x_iowrite8_idx(priv, addr, val, 0);
}
