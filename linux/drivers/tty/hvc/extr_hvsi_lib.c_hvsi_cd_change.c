
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hvsi_priv {int termno; scalar_t__ opened; int is_console; int mctrl; } ;


 int TIOCM_CD ;
 int hvsi_send_close (struct hvsi_priv*) ;
 int pr_devel (char*,int ) ;

__attribute__((used)) static void hvsi_cd_change(struct hvsi_priv *pv, int cd)
{
 if (cd)
  pv->mctrl |= TIOCM_CD;
 else {
  pv->mctrl &= ~TIOCM_CD;







  if (!pv->is_console && pv->opened) {
   pr_devel("HVSI@%x Carrier lost, hanging up !\n",
     pv->termno);
   hvsi_send_close(pv);
  }
 }
}
