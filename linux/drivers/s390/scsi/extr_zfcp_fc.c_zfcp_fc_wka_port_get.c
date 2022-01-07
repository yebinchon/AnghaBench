
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_fc_wka_port {scalar_t__ status; int refcount; int completion_wq; int mutex; } ;


 int EIO ;
 int ERESTARTSYS ;
 scalar_t__ ZFCP_FC_WKA_PORT_CLOSING ;
 scalar_t__ ZFCP_FC_WKA_PORT_OFFLINE ;
 scalar_t__ ZFCP_FC_WKA_PORT_ONLINE ;
 scalar_t__ ZFCP_FC_WKA_PORT_OPENING ;
 int atomic_inc (int *) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int wait_event (int ,int) ;
 scalar_t__ zfcp_fsf_open_wka_port (struct zfcp_fc_wka_port*) ;

__attribute__((used)) static int zfcp_fc_wka_port_get(struct zfcp_fc_wka_port *wka_port)
{
 if (mutex_lock_interruptible(&wka_port->mutex))
  return -ERESTARTSYS;

 if (wka_port->status == ZFCP_FC_WKA_PORT_OFFLINE ||
     wka_port->status == ZFCP_FC_WKA_PORT_CLOSING) {
  wka_port->status = ZFCP_FC_WKA_PORT_OPENING;
  if (zfcp_fsf_open_wka_port(wka_port))
   wka_port->status = ZFCP_FC_WKA_PORT_OFFLINE;
 }

 mutex_unlock(&wka_port->mutex);

 wait_event(wka_port->completion_wq,
     wka_port->status == ZFCP_FC_WKA_PORT_ONLINE ||
     wka_port->status == ZFCP_FC_WKA_PORT_OFFLINE);

 if (wka_port->status == ZFCP_FC_WKA_PORT_ONLINE) {
  atomic_inc(&wka_port->refcount);
  return 0;
 }
 return -EIO;
}
