
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct intel_soc_dts_sensors {int intr_notify_lock; TYPE_1__* soc_dts; } ;
struct TYPE_2__ {int tzone; } ;


 int BT_MBI_UNIT_PMC ;
 int MBI_REG_READ ;
 int MBI_REG_WRITE ;
 int SOC_DTS_OFFSET_PTMC ;
 int SOC_DTS_OFFSET_PTTSS ;
 int SOC_DTS_PTMC_APIC_DEASSERT_BIT ;
 int SOC_DTS_TRIP_MASK ;
 int SOC_MAX_DTS_SENSORS ;
 int THERMAL_EVENT_UNSPECIFIED ;
 int iosf_mbi_read (int ,int ,int ,int*) ;
 int iosf_mbi_write (int ,int ,int ,int) ;
 int pr_debug (char*,int,...) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int thermal_zone_device_update (int ,int ) ;

void intel_soc_dts_iosf_interrupt_handler(struct intel_soc_dts_sensors *sensors)
{
 u32 sticky_out;
 int status;
 u32 ptmc_out;
 unsigned long flags;

 spin_lock_irqsave(&sensors->intr_notify_lock, flags);

 status = iosf_mbi_read(BT_MBI_UNIT_PMC, MBI_REG_READ,
          SOC_DTS_OFFSET_PTMC, &ptmc_out);
 ptmc_out |= SOC_DTS_PTMC_APIC_DEASSERT_BIT;
 status = iosf_mbi_write(BT_MBI_UNIT_PMC, MBI_REG_WRITE,
    SOC_DTS_OFFSET_PTMC, ptmc_out);

 status = iosf_mbi_read(BT_MBI_UNIT_PMC, MBI_REG_READ,
          SOC_DTS_OFFSET_PTTSS, &sticky_out);
 pr_debug("status %d PTTSS %x\n", status, sticky_out);
 if (sticky_out & SOC_DTS_TRIP_MASK) {
  int i;

  status = iosf_mbi_write(BT_MBI_UNIT_PMC, MBI_REG_WRITE,
     SOC_DTS_OFFSET_PTTSS, sticky_out);
  spin_unlock_irqrestore(&sensors->intr_notify_lock, flags);

  for (i = 0; i < SOC_MAX_DTS_SENSORS; ++i) {
   pr_debug("TZD update for zone %d\n", i);
   thermal_zone_device_update(sensors->soc_dts[i].tzone,
         THERMAL_EVENT_UNSPECIFIED);
  }
 } else
  spin_unlock_irqrestore(&sensors->intr_notify_lock, flags);
}
