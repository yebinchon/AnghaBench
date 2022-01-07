
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int (* read16_sync ) (struct rtl_priv*,int ) ;} ;
struct rtl_priv {TYPE_1__ io; } ;


 int stub1 (struct rtl_priv*,int ) ;

__attribute__((used)) static inline u16 rtl_read_word(struct rtl_priv *rtlpriv, u32 addr)
{
 return rtlpriv->io.read16_sync(rtlpriv, addr);
}
