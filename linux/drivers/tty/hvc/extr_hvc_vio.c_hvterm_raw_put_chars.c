
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct hvterm_priv {int termno; } ;


 scalar_t__ WARN_ON (int) ;
 int hvc_put_chars (int ,char const*,int) ;
 struct hvterm_priv** hvterm_privs ;

__attribute__((used)) static int hvterm_raw_put_chars(uint32_t vtermno, const char *buf, int count)
{
 struct hvterm_priv *pv = hvterm_privs[vtermno];

 if (WARN_ON(!pv))
  return 0;

 return hvc_put_chars(pv->termno, buf, count);
}
