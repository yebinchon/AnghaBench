
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct hvterm_priv {int hvsi; } ;


 scalar_t__ WARN_ON (int) ;
 int hvsilib_get_chars (int *,char*,int) ;
 struct hvterm_priv** hvterm_privs ;

__attribute__((used)) static int hvterm_hvsi_get_chars(uint32_t vtermno, char *buf, int count)
{
 struct hvterm_priv *pv = hvterm_privs[vtermno];

 if (WARN_ON(!pv))
  return 0;

 return hvsilib_get_chars(&pv->hvsi, buf, count);
}
