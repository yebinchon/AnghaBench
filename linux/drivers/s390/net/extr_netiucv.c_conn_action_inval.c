
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int name; } ;
struct iucv_connection {int userid; struct net_device* netdev; } ;
typedef int fsm_instance ;


 int IUCV_DBF_TEXT_ (int ,int,char*,int ,int ) ;
 int data ;

__attribute__((used)) static void conn_action_inval(fsm_instance *fi, int event, void *arg)
{
 struct iucv_connection *conn = arg;
 struct net_device *netdev = conn->netdev;

 IUCV_DBF_TEXT_(data, 2, "%s('%s'): conn_action_inval called\n",
  netdev->name, conn->userid);
}
