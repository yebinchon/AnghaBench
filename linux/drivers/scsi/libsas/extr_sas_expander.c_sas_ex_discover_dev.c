
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct expander_device {struct ex_phy* ex_phy; } ;
struct ex_phy {scalar_t__ linkrate; scalar_t__ routing_attr; int attached_dev_type; int attached_sas_addr; int attached_phy_id; } ;
struct domain_device {int sas_addr; TYPE_3__* port; TYPE_1__* parent; struct expander_device ex_dev; } ;
struct TYPE_5__ {int fanout_sas_addr; } ;
struct TYPE_6__ {TYPE_2__ disc; int sas_addr; } ;
struct TYPE_4__ {int sas_addr; } ;


 scalar_t__ DIRECT_ROUTING ;
 int PHY_FUNC_LINK_RESET ;
 scalar_t__ SAS_ADDR (int ) ;
 int SAS_ADDR_SIZE ;



 scalar_t__ SAS_LINK_RATE_UNKNOWN ;
 int SAS_PHY_UNUSED ;

 scalar_t__ SAS_SATA_SPINUP_HOLD ;
 scalar_t__ TABLE_ROUTING ;
 int memcpy (int ,int ,int ) ;
 int memset (int ,int ,int ) ;
 int pr_debug (char*,scalar_t__,scalar_t__,...) ;
 int pr_notice (char*,scalar_t__,int) ;
 int pr_warn (char*,int,scalar_t__,int) ;
 int sas_add_parent_port (struct domain_device*,int) ;
 int sas_configure_phy (struct domain_device*,int,int ,int) ;
 int sas_configure_routing (struct domain_device*,int ) ;
 scalar_t__ sas_dev_present_in_domain (TYPE_3__*,int ) ;
 int sas_disable_routing (struct domain_device*,int ) ;
 int sas_ex_disable_phy (struct domain_device*,int) ;
 int sas_ex_disable_port (struct domain_device*,int ) ;
 struct domain_device* sas_ex_discover_end_dev (struct domain_device*,int) ;
 struct domain_device* sas_ex_discover_expander (struct domain_device*,int) ;
 scalar_t__ sas_ex_join_wide_port (struct domain_device*,int) ;
 int sas_ex_phy_discover (struct domain_device*,int) ;
 int sas_smp_phy_control (struct domain_device*,int,int ,int *) ;

__attribute__((used)) static int sas_ex_discover_dev(struct domain_device *dev, int phy_id)
{
 struct expander_device *ex = &dev->ex_dev;
 struct ex_phy *ex_phy = &ex->ex_phy[phy_id];
 struct domain_device *child = ((void*)0);
 int res = 0;


 if (ex_phy->linkrate == SAS_SATA_SPINUP_HOLD) {
  if (!sas_smp_phy_control(dev, phy_id, PHY_FUNC_LINK_RESET, ((void*)0)))
   res = sas_ex_phy_discover(dev, phy_id);
  if (res)
   return res;
 }


 if (!dev->parent && (SAS_ADDR(ex_phy->attached_sas_addr) ==
        SAS_ADDR(dev->port->sas_addr))) {
  sas_add_parent_port(dev, phy_id);
  return 0;
 }
 if (dev->parent && (SAS_ADDR(ex_phy->attached_sas_addr) ==
       SAS_ADDR(dev->parent->sas_addr))) {
  sas_add_parent_port(dev, phy_id);
  if (ex_phy->routing_attr == TABLE_ROUTING)
   sas_configure_phy(dev, phy_id, dev->port->sas_addr, 1);
  return 0;
 }

 if (sas_dev_present_in_domain(dev->port, ex_phy->attached_sas_addr))
  sas_ex_disable_port(dev, ex_phy->attached_sas_addr);

 if (ex_phy->attached_dev_type == SAS_PHY_UNUSED) {
  if (ex_phy->routing_attr == DIRECT_ROUTING) {
   memset(ex_phy->attached_sas_addr, 0, SAS_ADDR_SIZE);
   sas_configure_routing(dev, ex_phy->attached_sas_addr);
  }
  return 0;
 } else if (ex_phy->linkrate == SAS_LINK_RATE_UNKNOWN)
  return 0;

 if (ex_phy->attached_dev_type != 130 &&
     ex_phy->attached_dev_type != 129 &&
     ex_phy->attached_dev_type != 131 &&
     ex_phy->attached_dev_type != 128) {
  pr_warn("unknown device type(0x%x) attached to ex %016llx phy%02d\n",
   ex_phy->attached_dev_type,
   SAS_ADDR(dev->sas_addr),
   phy_id);
  return 0;
 }

 res = sas_configure_routing(dev, ex_phy->attached_sas_addr);
 if (res) {
  pr_notice("configure routing for dev %016llx reported 0x%x. Forgotten\n",
     SAS_ADDR(ex_phy->attached_sas_addr), res);
  sas_disable_routing(dev, ex_phy->attached_sas_addr);
  return res;
 }

 if (sas_ex_join_wide_port(dev, phy_id)) {
  pr_debug("Attaching ex phy%02d to wide port %016llx\n",
    phy_id, SAS_ADDR(ex_phy->attached_sas_addr));
  return res;
 }

 switch (ex_phy->attached_dev_type) {
 case 130:
 case 128:
  child = sas_ex_discover_end_dev(dev, phy_id);
  break;
 case 129:
  if (SAS_ADDR(dev->port->disc.fanout_sas_addr)) {
   pr_debug("second fanout expander %016llx phy%02d attached to ex %016llx phy%02d\n",
     SAS_ADDR(ex_phy->attached_sas_addr),
     ex_phy->attached_phy_id,
     SAS_ADDR(dev->sas_addr),
     phy_id);
   sas_ex_disable_phy(dev, phy_id);
   return res;
  } else
   memcpy(dev->port->disc.fanout_sas_addr,
          ex_phy->attached_sas_addr, SAS_ADDR_SIZE);

 case 131:
  child = sas_ex_discover_expander(dev, phy_id);
  break;
 default:
  break;
 }

 if (!child)
  pr_notice("ex %016llx phy%02d failed to discover\n",
     SAS_ADDR(dev->sas_addr), phy_id);
 return res;
}
