
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int max_port_number; } ;
struct tb_switch {int dev; scalar_t__ rpm; scalar_t__ device_name; scalar_t__ vendor_name; scalar_t__ device; scalar_t__ vendor; TYPE_2__* ports; TYPE_1__ config; int uid; int safe_mode; } ;
struct TYPE_5__ {scalar_t__ disabled; } ;


 int TB_AUTOSUSPEND_DELAY ;
 int dev_info (int *,char*,scalar_t__,scalar_t__) ;
 int device_add (int *) ;
 int device_del (int *) ;
 int pm_request_autosuspend (int *) ;
 int pm_runtime_enable (int *) ;
 int pm_runtime_mark_last_busy (int *) ;
 int pm_runtime_set_active (int *) ;
 int pm_runtime_set_autosuspend_delay (int *,int ) ;
 int pm_runtime_use_autosuspend (int *) ;
 int tb_drom_read (struct tb_switch*) ;
 int tb_init_port (TYPE_2__*) ;
 int tb_port_dbg (TYPE_2__*,char*) ;
 scalar_t__ tb_route (struct tb_switch*) ;
 int tb_sw_dbg (struct tb_switch*,char*,int ) ;
 int tb_sw_warn (struct tb_switch*,char*) ;
 int tb_switch_add_dma_port (struct tb_switch*) ;
 int tb_switch_nvm_add (struct tb_switch*) ;
 int tb_switch_set_uuid (struct tb_switch*) ;

int tb_switch_add(struct tb_switch *sw)
{
 int i, ret;
 ret = tb_switch_add_dma_port(sw);
 if (ret)
  return ret;

 if (!sw->safe_mode) {

  ret = tb_drom_read(sw);
  if (ret) {
   tb_sw_warn(sw, "tb_eeprom_read_rom failed\n");
   return ret;
  }
  tb_sw_dbg(sw, "uid: %#llx\n", sw->uid);

  ret = tb_switch_set_uuid(sw);
  if (ret)
   return ret;

  for (i = 0; i <= sw->config.max_port_number; i++) {
   if (sw->ports[i].disabled) {
    tb_port_dbg(&sw->ports[i], "disabled by eeprom\n");
    continue;
   }
   ret = tb_init_port(&sw->ports[i]);
   if (ret)
    return ret;
  }
 }

 ret = device_add(&sw->dev);
 if (ret)
  return ret;

 if (tb_route(sw)) {
  dev_info(&sw->dev, "new device found, vendor=%#x device=%#x\n",
    sw->vendor, sw->device);
  if (sw->vendor_name && sw->device_name)
   dev_info(&sw->dev, "%s %s\n", sw->vendor_name,
     sw->device_name);
 }

 ret = tb_switch_nvm_add(sw);
 if (ret) {
  device_del(&sw->dev);
  return ret;
 }

 pm_runtime_set_active(&sw->dev);
 if (sw->rpm) {
  pm_runtime_set_autosuspend_delay(&sw->dev, TB_AUTOSUSPEND_DELAY);
  pm_runtime_use_autosuspend(&sw->dev);
  pm_runtime_mark_last_busy(&sw->dev);
  pm_runtime_enable(&sw->dev);
  pm_request_autosuspend(&sw->dev);
 }

 return 0;
}
