
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct sdw_slave_runtime {TYPE_2__* slave; int direction; } ;
struct sdw_prepare_ch {size_t num; int ch_mask; int prepare; int bank; } ;
struct sdw_port_runtime {size_t num; int ch_mask; } ;
struct sdw_dpn_prop {scalar_t__ imp_def_interrupts; int ch_prep_timeout; int simple_ch_prep_sm; } ;
struct TYPE_6__ {int next_bank; } ;
struct sdw_bus {TYPE_1__ params; int * dev; } ;
struct completion {int dummy; } ;
struct TYPE_7__ {int dev; struct completion* port_ready; } ;


 int EINVAL ;
 int ETIMEDOUT ;
 int SDW_DPN_PREPARECTRL (size_t) ;
 int SDW_DPN_PREPARESTATUS (size_t) ;
 int SDW_OPS_PORT_POST_PREP ;
 int SDW_OPS_PORT_PRE_PREP ;
 int dev_err (int *,char*,...) ;
 int msecs_to_jiffies (int ) ;
 int sdw_configure_dpn_intr (TYPE_2__*,size_t,int,scalar_t__) ;
 int sdw_do_port_prep (struct sdw_slave_runtime*,struct sdw_prepare_ch,int ) ;
 struct sdw_dpn_prop* sdw_get_slave_dpn_prop (TYPE_2__*,int ,size_t) ;
 int sdw_read (TYPE_2__*,int ) ;
 int sdw_update (TYPE_2__*,int ,int,int) ;
 unsigned int wait_for_completion_timeout (struct completion*,int ) ;

__attribute__((used)) static int sdw_prep_deprep_slave_ports(struct sdw_bus *bus,
           struct sdw_slave_runtime *s_rt,
           struct sdw_port_runtime *p_rt,
           bool prep)
{
 struct completion *port_ready;
 struct sdw_dpn_prop *dpn_prop;
 struct sdw_prepare_ch prep_ch;
 unsigned int time_left;
 bool intr = 0;
 int ret = 0, val;
 u32 addr;

 prep_ch.num = p_rt->num;
 prep_ch.ch_mask = p_rt->ch_mask;

 dpn_prop = sdw_get_slave_dpn_prop(s_rt->slave,
       s_rt->direction,
       prep_ch.num);
 if (!dpn_prop) {
  dev_err(bus->dev,
   "Slave Port:%d properties not found\n", prep_ch.num);
  return -EINVAL;
 }

 prep_ch.prepare = prep;

 prep_ch.bank = bus->params.next_bank;

 if (dpn_prop->imp_def_interrupts || !dpn_prop->simple_ch_prep_sm)
  intr = 1;






 if (prep && intr) {
  ret = sdw_configure_dpn_intr(s_rt->slave, p_rt->num, prep,
          dpn_prop->imp_def_interrupts);
  if (ret < 0)
   return ret;
 }


 sdw_do_port_prep(s_rt, prep_ch, SDW_OPS_PORT_PRE_PREP);


 if (!dpn_prop->simple_ch_prep_sm) {
  addr = SDW_DPN_PREPARECTRL(p_rt->num);

  if (prep)
   ret = sdw_update(s_rt->slave, addr,
      0xFF, p_rt->ch_mask);
  else
   ret = sdw_update(s_rt->slave, addr, 0xFF, 0x0);

  if (ret < 0) {
   dev_err(&s_rt->slave->dev,
    "Slave prep_ctrl reg write failed\n");
   return ret;
  }


  port_ready = &s_rt->slave->port_ready[prep_ch.num];
  time_left = wait_for_completion_timeout(port_ready,
    msecs_to_jiffies(dpn_prop->ch_prep_timeout));

  val = sdw_read(s_rt->slave, SDW_DPN_PREPARESTATUS(p_rt->num));
  val &= p_rt->ch_mask;
  if (!time_left || val) {
   dev_err(&s_rt->slave->dev,
    "Chn prep failed for port:%d\n", prep_ch.num);
   return -ETIMEDOUT;
  }
 }


 sdw_do_port_prep(s_rt, prep_ch, SDW_OPS_PORT_POST_PREP);


 if (!prep && intr)
  ret = sdw_configure_dpn_intr(s_rt->slave, p_rt->num, prep,
          dpn_prop->imp_def_interrupts);

 return ret;
}
