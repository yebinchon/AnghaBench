
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rtl8xxxu_priv {int dummy; } ;
struct TYPE_2__ {int data; int cmd; } ;
struct h2c_cmd {TYPE_1__ joinbss; } ;


 int H2C_JOIN_BSS_CONNECT ;
 int H2C_JOIN_BSS_DISCONNECT ;
 int H2C_JOIN_BSS_REPORT ;
 int memset (struct h2c_cmd*,int ,int) ;
 int rtl8xxxu_gen1_h2c_cmd (struct rtl8xxxu_priv*,struct h2c_cmd*,int) ;

void rtl8xxxu_gen1_report_connect(struct rtl8xxxu_priv *priv,
      u8 macid, bool connect)
{
 struct h2c_cmd h2c;

 memset(&h2c, 0, sizeof(struct h2c_cmd));

 h2c.joinbss.cmd = H2C_JOIN_BSS_REPORT;

 if (connect)
  h2c.joinbss.data = H2C_JOIN_BSS_CONNECT;
 else
  h2c.joinbss.data = H2C_JOIN_BSS_DISCONNECT;

 rtl8xxxu_gen1_h2c_cmd(priv, &h2c, sizeof(h2c.joinbss));
}
