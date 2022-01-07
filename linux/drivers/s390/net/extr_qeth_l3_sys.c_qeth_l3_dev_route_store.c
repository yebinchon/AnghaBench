
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_routing_info {int type; } ;
struct qeth_card {int conf_mutex; } ;
typedef int ssize_t ;
typedef enum qeth_routing_types { ____Placeholder_qeth_routing_types } qeth_routing_types ;
typedef enum qeth_prot_versions { ____Placeholder_qeth_prot_versions } qeth_prot_versions ;


 int EINVAL ;
 int MULTICAST_ROUTER ;
 int NO_ROUTER ;
 int PRIMARY_CONNECTOR ;
 int PRIMARY_ROUTER ;
 int QETH_PROT_IPV4 ;
 int QETH_PROT_IPV6 ;
 int SECONDARY_CONNECTOR ;
 int SECONDARY_ROUTER ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ qeth_card_hw_is_reachable (struct qeth_card*) ;
 int qeth_l3_setrouting_v4 (struct qeth_card*) ;
 int qeth_l3_setrouting_v6 (struct qeth_card*) ;
 scalar_t__ sysfs_streq (char const*,char*) ;

__attribute__((used)) static ssize_t qeth_l3_dev_route_store(struct qeth_card *card,
  struct qeth_routing_info *route, enum qeth_prot_versions prot,
  const char *buf, size_t count)
{
 enum qeth_routing_types old_route_type = route->type;
 int rc = 0;

 mutex_lock(&card->conf_mutex);
 if (sysfs_streq(buf, "no_router")) {
  route->type = NO_ROUTER;
 } else if (sysfs_streq(buf, "primary_connector")) {
  route->type = PRIMARY_CONNECTOR;
 } else if (sysfs_streq(buf, "secondary_connector")) {
  route->type = SECONDARY_CONNECTOR;
 } else if (sysfs_streq(buf, "primary_router")) {
  route->type = PRIMARY_ROUTER;
 } else if (sysfs_streq(buf, "secondary_router")) {
  route->type = SECONDARY_ROUTER;
 } else if (sysfs_streq(buf, "multicast_router")) {
  route->type = MULTICAST_ROUTER;
 } else {
  rc = -EINVAL;
  goto out;
 }
 if (qeth_card_hw_is_reachable(card) &&
     (old_route_type != route->type)) {
  if (prot == QETH_PROT_IPV4)
   rc = qeth_l3_setrouting_v4(card);
  else if (prot == QETH_PROT_IPV6)
   rc = qeth_l3_setrouting_v6(card);
 }
out:
 if (rc)
  route->type = old_route_type;
 mutex_unlock(&card->conf_mutex);
 return rc ? rc : count;
}
