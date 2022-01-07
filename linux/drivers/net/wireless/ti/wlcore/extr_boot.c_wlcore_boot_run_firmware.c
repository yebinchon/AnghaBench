
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ id; } ;
struct wl1271 {scalar_t__ cmd_box_addr; scalar_t__* mbox_ptr; scalar_t__ mbox_size; int * ptable; TYPE_1__ chip; } ;


 int DEBUG_BOOT ;
 int DEBUG_MAILBOX ;
 int ECPU_CONTROL_HALT ;
 int EIO ;
 int INIT_LOOP ;
 int INIT_LOOP_DELAY ;
 size_t PART_BOOT ;
 size_t PART_WORK ;
 int REG_CHIP_ID_B ;
 int REG_COMMAND_MAILBOX_PTR ;
 int REG_EVENT_MAILBOX_PTR ;
 int REG_INTERRUPT_ACK ;
 int REG_INTERRUPT_NO_CLEAR ;
 scalar_t__ WL1271_ACX_INTR_INIT_COMPLETE ;
 int udelay (int ) ;
 int wl1271_boot_set_ecpu_ctrl (struct wl1271*,int ) ;
 int wl1271_debug (int ,char*,scalar_t__,...) ;
 int wl1271_error (char*) ;
 int wl1271_event_unmask (struct wl1271*) ;
 int wlcore_boot_static_data (struct wl1271*) ;
 int wlcore_read_reg (struct wl1271*,int ,scalar_t__*) ;
 int wlcore_set_partition (struct wl1271*,int *) ;
 int wlcore_write_reg (struct wl1271*,int ,scalar_t__) ;

int wlcore_boot_run_firmware(struct wl1271 *wl)
{
 int loop, ret;
 u32 chip_id, intr;


 ret = wlcore_set_partition(wl, &wl->ptable[PART_BOOT]);
 if (ret < 0)
  return ret;

 ret = wl1271_boot_set_ecpu_ctrl(wl, ECPU_CONTROL_HALT);
 if (ret < 0)
  return ret;

 ret = wlcore_read_reg(wl, REG_CHIP_ID_B, &chip_id);
 if (ret < 0)
  return ret;

 wl1271_debug(DEBUG_BOOT, "chip id after firmware boot: 0x%x", chip_id);

 if (chip_id != wl->chip.id) {
  wl1271_error("chip id doesn't match after firmware boot");
  return -EIO;
 }


 loop = 0;
 while (loop++ < INIT_LOOP) {
  udelay(INIT_LOOP_DELAY);
  ret = wlcore_read_reg(wl, REG_INTERRUPT_NO_CLEAR, &intr);
  if (ret < 0)
   return ret;

  if (intr == 0xffffffff) {
   wl1271_error("error reading hardware complete "
         "init indication");
   return -EIO;
  }

  else if (intr & WL1271_ACX_INTR_INIT_COMPLETE) {
   ret = wlcore_write_reg(wl, REG_INTERRUPT_ACK,
            WL1271_ACX_INTR_INIT_COMPLETE);
   if (ret < 0)
    return ret;
   break;
  }
 }

 if (loop > INIT_LOOP) {
  wl1271_error("timeout waiting for the hardware to "
        "complete initialization");
  return -EIO;
 }


 ret = wlcore_read_reg(wl, REG_COMMAND_MAILBOX_PTR, &wl->cmd_box_addr);
 if (ret < 0)
  return ret;

 wl1271_debug(DEBUG_MAILBOX, "cmd_box_addr 0x%x", wl->cmd_box_addr);


 ret = wlcore_read_reg(wl, REG_EVENT_MAILBOX_PTR, &wl->mbox_ptr[0]);
 if (ret < 0)
  return ret;

 wl->mbox_ptr[1] = wl->mbox_ptr[0] + wl->mbox_size;

 wl1271_debug(DEBUG_MAILBOX, "MBOX ptrs: 0x%x 0x%x",
       wl->mbox_ptr[0], wl->mbox_ptr[1]);

 ret = wlcore_boot_static_data(wl);
 if (ret < 0) {
  wl1271_error("error getting static data");
  return ret;
 }







 ret = wl1271_event_unmask(wl);
 if (ret < 0) {
  wl1271_error("EVENT mask setting failed");
  return ret;
 }


 ret = wlcore_set_partition(wl, &wl->ptable[PART_WORK]);


 return ret;
}
