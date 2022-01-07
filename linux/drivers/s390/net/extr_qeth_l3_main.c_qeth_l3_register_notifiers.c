
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int SETUP ;
 int qeth_l3_ip6_notifier ;
 int qeth_l3_ip_notifier ;
 int register_inet6addr_notifier (int *) ;
 int register_inetaddr_notifier (int *) ;
 int unregister_inetaddr_notifier (int *) ;

__attribute__((used)) static int qeth_l3_register_notifiers(void)
{
 int rc;

 QETH_DBF_TEXT(SETUP, 5, "regnotif");
 rc = register_inetaddr_notifier(&qeth_l3_ip_notifier);
 if (rc)
  return rc;
 rc = register_inet6addr_notifier(&qeth_l3_ip6_notifier);
 if (rc) {
  unregister_inetaddr_notifier(&qeth_l3_ip_notifier);
  return rc;
 }
 return 0;
}
