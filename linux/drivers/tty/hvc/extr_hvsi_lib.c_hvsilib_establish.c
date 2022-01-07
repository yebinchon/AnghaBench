
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hvsi_priv {int opened; int termno; scalar_t__ established; } ;


 int hvsi_get_packet (struct hvsi_priv*) ;
 int hvsi_send_close (struct hvsi_priv*) ;
 int hvsi_start_handshake (struct hvsi_priv*) ;
 int hvsilib_read_mctrl (struct hvsi_priv*) ;
 int hvsilib_write_mctrl (struct hvsi_priv*,int) ;
 int maybe_msleep (int) ;
 int pr_devel (char*,int ) ;
 int wmb () ;

void hvsilib_establish(struct hvsi_priv *pv)
{
 int timeout;

 pr_devel("HVSI@%x: Establishing...\n", pv->termno);




 for (timeout = 0; timeout < 20; timeout++) {
  if (pv->established)
   goto established;
  if (!hvsi_get_packet(pv))
   maybe_msleep(10);
 }




 pr_devel("HVSI@%x:   ... sending close\n", pv->termno);

 hvsi_send_close(pv);



 pr_devel("HVSI@%x:   ... restarting handshake\n", pv->termno);

 hvsi_start_handshake(pv);

 pr_devel("HVSI@%x:   ... waiting handshake\n", pv->termno);


 for (timeout = 0; timeout < 40; timeout++) {
  if (pv->established)
   goto established;
  if (!hvsi_get_packet(pv))
   maybe_msleep(10);
 }

 if (!pv->established) {
  pr_devel("HVSI@%x: Timeout handshaking, giving up !\n",
    pv->termno);
  return;
 }
 established:


 pr_devel("HVSI@%x:   ... established, reading mctrl\n", pv->termno);

 hvsilib_read_mctrl(pv);



 pr_devel("HVSI@%x:   ... setting mctrl\n", pv->termno);

 hvsilib_write_mctrl(pv, 1);


 wmb();
 pv->opened = 1;
}
