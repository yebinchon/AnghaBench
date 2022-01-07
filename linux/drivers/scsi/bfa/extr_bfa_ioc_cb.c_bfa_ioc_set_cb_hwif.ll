; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc_cb.c_bfa_ioc_set_cb_hwif.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc_cb.c_bfa_ioc_set_cb_hwif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bfa_ioc_s = type { %struct.TYPE_2__* }

@bfa_ioc_cb_pll_init = common dso_local global i32 0, align 4
@hwif_cb = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@bfa_ioc_cb_firmware_lock = common dso_local global i32 0, align 4
@bfa_ioc_cb_firmware_unlock = common dso_local global i32 0, align 4
@bfa_ioc_cb_reg_init = common dso_local global i32 0, align 4
@bfa_ioc_cb_map_port = common dso_local global i32 0, align 4
@bfa_ioc_cb_isr_mode_set = common dso_local global i32 0, align 4
@bfa_ioc_cb_notify_fail = common dso_local global i32 0, align 4
@bfa_ioc_cb_ownership_reset = common dso_local global i32 0, align 4
@bfa_ioc_cb_sync_start = common dso_local global i32 0, align 4
@bfa_ioc_cb_sync_join = common dso_local global i32 0, align 4
@bfa_ioc_cb_sync_leave = common dso_local global i32 0, align 4
@bfa_ioc_cb_sync_ack = common dso_local global i32 0, align 4
@bfa_ioc_cb_sync_complete = common dso_local global i32 0, align 4
@bfa_ioc_cb_set_cur_ioc_fwstate = common dso_local global i32 0, align 4
@bfa_ioc_cb_get_cur_ioc_fwstate = common dso_local global i32 0, align 4
@bfa_ioc_cb_set_alt_ioc_fwstate = common dso_local global i32 0, align 4
@bfa_ioc_cb_get_alt_ioc_fwstate = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_ioc_set_cb_hwif(%struct.bfa_ioc_s* %0) #0 {
  %2 = alloca %struct.bfa_ioc_s*, align 8
  store %struct.bfa_ioc_s* %0, %struct.bfa_ioc_s** %2, align 8
  %3 = load i32, i32* @bfa_ioc_cb_pll_init, align 4
  store i32 %3, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hwif_cb, i32 0, i32 16), align 4
  %4 = load i32, i32* @bfa_ioc_cb_firmware_lock, align 4
  store i32 %4, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hwif_cb, i32 0, i32 15), align 4
  %5 = load i32, i32* @bfa_ioc_cb_firmware_unlock, align 4
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hwif_cb, i32 0, i32 14), align 4
  %6 = load i32, i32* @bfa_ioc_cb_reg_init, align 4
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hwif_cb, i32 0, i32 13), align 4
  %7 = load i32, i32* @bfa_ioc_cb_map_port, align 4
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hwif_cb, i32 0, i32 12), align 4
  %8 = load i32, i32* @bfa_ioc_cb_isr_mode_set, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hwif_cb, i32 0, i32 11), align 4
  %9 = load i32, i32* @bfa_ioc_cb_notify_fail, align 4
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hwif_cb, i32 0, i32 10), align 4
  %10 = load i32, i32* @bfa_ioc_cb_ownership_reset, align 4
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hwif_cb, i32 0, i32 9), align 4
  %11 = load i32, i32* @bfa_ioc_cb_sync_start, align 4
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hwif_cb, i32 0, i32 8), align 4
  %12 = load i32, i32* @bfa_ioc_cb_sync_join, align 4
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hwif_cb, i32 0, i32 7), align 4
  %13 = load i32, i32* @bfa_ioc_cb_sync_leave, align 4
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hwif_cb, i32 0, i32 6), align 4
  %14 = load i32, i32* @bfa_ioc_cb_sync_ack, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hwif_cb, i32 0, i32 5), align 4
  %15 = load i32, i32* @bfa_ioc_cb_sync_complete, align 4
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hwif_cb, i32 0, i32 4), align 4
  %16 = load i32, i32* @bfa_ioc_cb_set_cur_ioc_fwstate, align 4
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hwif_cb, i32 0, i32 3), align 4
  %17 = load i32, i32* @bfa_ioc_cb_get_cur_ioc_fwstate, align 4
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hwif_cb, i32 0, i32 2), align 4
  %18 = load i32, i32* @bfa_ioc_cb_set_alt_ioc_fwstate, align 4
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hwif_cb, i32 0, i32 1), align 4
  %19 = load i32, i32* @bfa_ioc_cb_get_alt_ioc_fwstate, align 4
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hwif_cb, i32 0, i32 0), align 4
  %20 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %2, align 8
  %21 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %20, i32 0, i32 0
  store %struct.TYPE_2__* @hwif_cb, %struct.TYPE_2__** %21, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
