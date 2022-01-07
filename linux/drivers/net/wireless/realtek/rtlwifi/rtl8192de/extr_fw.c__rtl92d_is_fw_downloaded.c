
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_priv {int dummy; } ;


 int MCUFWDL_RDY ;
 int REG_MCUFWDL ;
 int rtl_read_dword (struct rtl_priv*,int ) ;

__attribute__((used)) static bool _rtl92d_is_fw_downloaded(struct rtl_priv *rtlpriv)
{
 return (rtl_read_dword(rtlpriv, REG_MCUFWDL) & MCUFWDL_RDY) ?
  1 : 0;
}
