
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sas_port {int phy_list_mutex; int num_phys; } ;
struct sas_phy {int port_siblings; } ;


 int list_del_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sas_port_delete_link (struct sas_port*,struct sas_phy*) ;

void sas_port_delete_phy(struct sas_port *port, struct sas_phy *phy)
{
 mutex_lock(&port->phy_list_mutex);
 sas_port_delete_link(port, phy);
 list_del_init(&phy->port_siblings);
 port->num_phys--;
 mutex_unlock(&port->phy_list_mutex);
}
