
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_fc_wka_port {int mutex; int status; int work; } ;


 int ZFCP_FC_WKA_PORT_OFFLINE ;
 int cancel_delayed_work_sync (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void zfcp_fc_wka_port_force_offline(struct zfcp_fc_wka_port *wka)
{
 cancel_delayed_work_sync(&wka->work);
 mutex_lock(&wka->mutex);
 wka->status = ZFCP_FC_WKA_PORT_OFFLINE;
 mutex_unlock(&wka->mutex);
}
