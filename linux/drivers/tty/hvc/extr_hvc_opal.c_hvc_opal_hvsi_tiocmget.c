
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hvc_struct {size_t vtermno; } ;
struct TYPE_2__ {int mctrl; } ;
struct hvc_opal_priv {TYPE_1__ hvsi; } ;


 int EINVAL ;
 struct hvc_opal_priv** hvc_opal_privs ;

__attribute__((used)) static int hvc_opal_hvsi_tiocmget(struct hvc_struct *hp)
{
 struct hvc_opal_priv *pv = hvc_opal_privs[hp->vtermno];

 if (!pv)
  return -EINVAL;
 return pv->hvsi.mctrl;
}
