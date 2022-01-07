
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct hvc_opal_priv {int hvsi; } ;


 int ENODEV ;
 scalar_t__ WARN_ON (int) ;
 struct hvc_opal_priv** hvc_opal_privs ;
 int hvsilib_get_chars (int *,char*,int) ;

__attribute__((used)) static int hvc_opal_hvsi_get_chars(uint32_t vtermno, char *buf, int count)
{
 struct hvc_opal_priv *pv = hvc_opal_privs[vtermno];

 if (WARN_ON(!pv))
  return -ENODEV;

 return hvsilib_get_chars(&pv->hvsi, buf, count);
}
