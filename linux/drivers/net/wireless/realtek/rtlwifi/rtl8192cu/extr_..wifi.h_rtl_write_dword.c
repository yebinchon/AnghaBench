
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int (* read32_sync ) (struct rtl_priv*,int ) ;int (* write32_async ) (struct rtl_priv*,int ,int ) ;} ;
struct rtl_priv {TYPE_2__ io; TYPE_1__* cfg; } ;
struct TYPE_3__ {scalar_t__ write_readback; } ;


 int stub1 (struct rtl_priv*,int ,int ) ;
 int stub2 (struct rtl_priv*,int ) ;

__attribute__((used)) static inline void rtl_write_dword(struct rtl_priv *rtlpriv,
       u32 addr, u32 val32)
{
 rtlpriv->io.write32_async(rtlpriv, addr, val32);

 if (rtlpriv->cfg->write_readback)
  rtlpriv->io.read32_sync(rtlpriv, addr);
}
