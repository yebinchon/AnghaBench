
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hvc_struct {size_t vtermno; } ;
struct hvc_opal_priv {int hvsi; } ;


 unsigned int TIOCM_DTR ;
 struct hvc_opal_priv** hvc_opal_privs ;
 int hvsilib_write_mctrl (int *,int) ;
 int pr_devel (char*,size_t,unsigned int,unsigned int) ;

__attribute__((used)) static int hvc_opal_hvsi_tiocmset(struct hvc_struct *hp, unsigned int set,
    unsigned int clear)
{
 struct hvc_opal_priv *pv = hvc_opal_privs[hp->vtermno];

 pr_devel("HVSI@%x: Set modem control, set=%x,clr=%x\n",
   hp->vtermno, set, clear);

 if (set & TIOCM_DTR)
  hvsilib_write_mctrl(&pv->hvsi, 1);
 else if (clear & TIOCM_DTR)
  hvsilib_write_mctrl(&pv->hvsi, 0);

 return 0;
}
