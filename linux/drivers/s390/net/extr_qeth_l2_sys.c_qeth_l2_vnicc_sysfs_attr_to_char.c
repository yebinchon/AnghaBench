
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int QETH_VNICC_BRIDGE_INVISIBLE ;
 int QETH_VNICC_FLOODING ;
 int QETH_VNICC_LEARNING ;
 int QETH_VNICC_MCAST_FLOODING ;
 int QETH_VNICC_RX_BCAST ;
 int QETH_VNICC_TAKEOVER_LEARNING ;
 int QETH_VNICC_TAKEOVER_SETVMAC ;
 scalar_t__ sysfs_streq (char const*,char*) ;

__attribute__((used)) static u32 qeth_l2_vnicc_sysfs_attr_to_char(const char *attr_name)
{
 if (sysfs_streq(attr_name, "flooding"))
  return QETH_VNICC_FLOODING;
 else if (sysfs_streq(attr_name, "mcast_flooding"))
  return QETH_VNICC_MCAST_FLOODING;
 else if (sysfs_streq(attr_name, "learning"))
  return QETH_VNICC_LEARNING;
 else if (sysfs_streq(attr_name, "takeover_setvmac"))
  return QETH_VNICC_TAKEOVER_SETVMAC;
 else if (sysfs_streq(attr_name, "takeover_learning"))
  return QETH_VNICC_TAKEOVER_LEARNING;
 else if (sysfs_streq(attr_name, "bridge_invisible"))
  return QETH_VNICC_BRIDGE_INVISIBLE;
 else if (sysfs_streq(attr_name, "rx_bcast"))
  return QETH_VNICC_RX_BCAST;

 return 0;
}
