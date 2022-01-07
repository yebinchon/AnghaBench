; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_usb_intf.c_usb_intf_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_usb_intf.c_usb_intf_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@_module_hci_intfs_c_ = common dso_local global i32 0, align 4
@_drv_err_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"+usb_intf_stop\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"SurpriseRemoved == false\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"-usb_intf_stop\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_intf_stop(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %3 = load i32, i32* @_module_hci_intfs_c_, align 4
  %4 = load i32, i32* @_drv_err_, align 4
  %5 = call i32 @RT_TRACE(i32 %3, i32 %4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.adapter*, %struct.adapter** %2, align 8
  %7 = getelementptr inbounds %struct.adapter, %struct.adapter* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @_module_hci_intfs_c_, align 4
  %12 = load i32, i32* @_drv_err_, align 4
  %13 = call i32 @RT_TRACE(i32 %11, i32 %12, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %14

14:                                               ; preds = %10, %1
  %15 = load %struct.adapter*, %struct.adapter** %2, align 8
  %16 = call i32 @rtw_hal_inirp_deinit(%struct.adapter* %15)
  %17 = load %struct.adapter*, %struct.adapter** %2, align 8
  %18 = call i32 @usb_write_port_cancel(%struct.adapter* %17)
  %19 = load i32, i32* @_module_hci_intfs_c_, align 4
  %20 = load i32, i32* @_drv_err_, align 4
  %21 = call i32 @RT_TRACE(i32 %19, i32 %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i32 @rtw_hal_inirp_deinit(%struct.adapter*) #1

declare dso_local i32 @usb_write_port_cancel(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
