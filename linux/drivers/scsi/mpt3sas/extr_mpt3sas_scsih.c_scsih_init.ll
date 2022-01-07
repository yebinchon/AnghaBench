; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c_scsih_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c_scsih_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mpt2_ids = common dso_local global i64 0, align 8
@mpt3_ids = common dso_local global i64 0, align 8
@_scsih_io_done = common dso_local global i32 0, align 4
@scsi_io_cb_idx = common dso_local global i8* null, align 8
@_scsih_tm_done = common dso_local global i32 0, align 4
@tm_cb_idx = common dso_local global i8* null, align 8
@mpt3sas_base_done = common dso_local global i32 0, align 4
@base_cb_idx = common dso_local global i8* null, align 8
@mpt3sas_port_enable_done = common dso_local global i32 0, align 4
@port_enable_cb_idx = common dso_local global i8* null, align 8
@mpt3sas_transport_done = common dso_local global i32 0, align 4
@transport_cb_idx = common dso_local global i8* null, align 8
@_scsih_done = common dso_local global i32 0, align 4
@scsih_cb_idx = common dso_local global i8* null, align 8
@mpt3sas_config_done = common dso_local global i32 0, align 4
@config_cb_idx = common dso_local global i8* null, align 8
@mpt3sas_ctl_done = common dso_local global i32 0, align 4
@ctl_cb_idx = common dso_local global i8* null, align 8
@_scsih_tm_tr_complete = common dso_local global i32 0, align 4
@tm_tr_cb_idx = common dso_local global i8* null, align 8
@_scsih_tm_volume_tr_complete = common dso_local global i32 0, align 4
@tm_tr_volume_cb_idx = common dso_local global i8* null, align 8
@_scsih_sas_control_complete = common dso_local global i32 0, align 4
@tm_sas_control_cb_idx = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @scsih_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scsih_init() #0 {
  store i64 0, i64* @mpt2_ids, align 8
  store i64 0, i64* @mpt3_ids, align 8
  %1 = call i32 (...) @mpt3sas_base_initialize_callback_handler()
  %2 = load i32, i32* @_scsih_io_done, align 4
  %3 = call i8* @mpt3sas_base_register_callback_handler(i32 %2)
  store i8* %3, i8** @scsi_io_cb_idx, align 8
  %4 = load i32, i32* @_scsih_tm_done, align 4
  %5 = call i8* @mpt3sas_base_register_callback_handler(i32 %4)
  store i8* %5, i8** @tm_cb_idx, align 8
  %6 = load i32, i32* @mpt3sas_base_done, align 4
  %7 = call i8* @mpt3sas_base_register_callback_handler(i32 %6)
  store i8* %7, i8** @base_cb_idx, align 8
  %8 = load i32, i32* @mpt3sas_port_enable_done, align 4
  %9 = call i8* @mpt3sas_base_register_callback_handler(i32 %8)
  store i8* %9, i8** @port_enable_cb_idx, align 8
  %10 = load i32, i32* @mpt3sas_transport_done, align 4
  %11 = call i8* @mpt3sas_base_register_callback_handler(i32 %10)
  store i8* %11, i8** @transport_cb_idx, align 8
  %12 = load i32, i32* @_scsih_done, align 4
  %13 = call i8* @mpt3sas_base_register_callback_handler(i32 %12)
  store i8* %13, i8** @scsih_cb_idx, align 8
  %14 = load i32, i32* @mpt3sas_config_done, align 4
  %15 = call i8* @mpt3sas_base_register_callback_handler(i32 %14)
  store i8* %15, i8** @config_cb_idx, align 8
  %16 = load i32, i32* @mpt3sas_ctl_done, align 4
  %17 = call i8* @mpt3sas_base_register_callback_handler(i32 %16)
  store i8* %17, i8** @ctl_cb_idx, align 8
  %18 = load i32, i32* @_scsih_tm_tr_complete, align 4
  %19 = call i8* @mpt3sas_base_register_callback_handler(i32 %18)
  store i8* %19, i8** @tm_tr_cb_idx, align 8
  %20 = load i32, i32* @_scsih_tm_volume_tr_complete, align 4
  %21 = call i8* @mpt3sas_base_register_callback_handler(i32 %20)
  store i8* %21, i8** @tm_tr_volume_cb_idx, align 8
  %22 = load i32, i32* @_scsih_sas_control_complete, align 4
  %23 = call i8* @mpt3sas_base_register_callback_handler(i32 %22)
  store i8* %23, i8** @tm_sas_control_cb_idx, align 8
  ret i32 0
}

declare dso_local i32 @mpt3sas_base_initialize_callback_handler(...) #1

declare dso_local i8* @mpt3sas_base_register_callback_handler(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
