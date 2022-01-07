
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mctrl; } ;
struct hvterm_priv {TYPE_1__ hvsi; } ;
struct hvc_struct {size_t vtermno; } ;


 int EINVAL ;
 struct hvterm_priv** hvterm_privs ;

__attribute__((used)) static int hvterm_hvsi_tiocmget(struct hvc_struct *hp)
{
 struct hvterm_priv *pv = hvterm_privs[hp->vtermno];

 if (!pv)
  return -EINVAL;
 return pv->hvsi.mctrl;
}
