
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hvterm_priv {int hvsi; int termno; } ;
struct hvc_struct {size_t vtermno; } ;


 unsigned int TIOCM_DTR ;
 int hvsilib_write_mctrl (int *,int) ;
 struct hvterm_priv** hvterm_privs ;
 int pr_devel (char*,int ,unsigned int,unsigned int) ;

__attribute__((used)) static int hvterm_hvsi_tiocmset(struct hvc_struct *hp, unsigned int set,
    unsigned int clear)
{
 struct hvterm_priv *pv = hvterm_privs[hp->vtermno];

 pr_devel("HVSI@%x: Set modem control, set=%x,clr=%x\n",
   pv->termno, set, clear);

 if (set & TIOCM_DTR)
  hvsilib_write_mctrl(&pv->hvsi, 1);
 else if (clear & TIOCM_DTR)
  hvsilib_write_mctrl(&pv->hvsi, 0);

 return 0;
}
