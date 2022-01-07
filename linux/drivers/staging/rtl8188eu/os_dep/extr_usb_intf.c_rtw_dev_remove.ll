; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_usb_intf.c_rtw_dev_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_usb_intf.c_rtw_dev_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.dvobj_priv = type { %struct.adapter* }
%struct.adapter = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"+rtw_dev_remove\0A\00", align 1
@_module_hci_intfs_c_ = common dso_local global i32 0, align 4
@_drv_err_ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"+dev_remove()\0A\00", align 1
@IPS_NONE = common dso_local global i32 0, align 4
@PS_MODE_ACTIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"-dev_remove()\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"-r871xu_dev_remove, done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @rtw_dev_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_dev_remove(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.dvobj_priv*, align 8
  %4 = alloca %struct.adapter*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %5 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %6 = call %struct.dvobj_priv* @usb_get_intfdata(%struct.usb_interface* %5)
  store %struct.dvobj_priv* %6, %struct.dvobj_priv** %3, align 8
  %7 = load %struct.dvobj_priv*, %struct.dvobj_priv** %3, align 8
  %8 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %7, i32 0, i32 0
  %9 = load %struct.adapter*, %struct.adapter** %8, align 8
  store %struct.adapter* %9, %struct.adapter** %4, align 8
  %10 = call i32 @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @_module_hci_intfs_c_, align 4
  %12 = load i32, i32* @_drv_err_, align 4
  %13 = call i32 @RT_TRACE(i32 %11, i32 %12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %14 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %15 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load %struct.adapter*, %struct.adapter** %4, align 8
  %20 = getelementptr inbounds %struct.adapter, %struct.adapter* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  br label %21

21:                                               ; preds = %18, %1
  %22 = load %struct.adapter*, %struct.adapter** %4, align 8
  %23 = load i32, i32* @IPS_NONE, align 4
  %24 = call i32 @rtw_pm_set_ips(%struct.adapter* %22, i32 %23)
  %25 = load %struct.adapter*, %struct.adapter** %4, align 8
  %26 = load i32, i32* @PS_MODE_ACTIVE, align 4
  %27 = call i32 @rtw_pm_set_lps(%struct.adapter* %25, i32 %26)
  %28 = load %struct.adapter*, %struct.adapter** %4, align 8
  %29 = call i32 @LeaveAllPowerSaveMode(%struct.adapter* %28)
  %30 = load %struct.adapter*, %struct.adapter** %4, align 8
  %31 = call i32 @rtw_usb_if1_deinit(%struct.adapter* %30)
  %32 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %33 = call i32 @usb_dvobj_deinit(%struct.usb_interface* %32)
  %34 = load i32, i32* @_module_hci_intfs_c_, align 4
  %35 = load i32, i32* @_drv_err_, align 4
  %36 = call i32 @RT_TRACE(i32 %34, i32 %35, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %37 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local %struct.dvobj_priv* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i32 @rtw_pm_set_ips(%struct.adapter*, i32) #1

declare dso_local i32 @rtw_pm_set_lps(%struct.adapter*, i32) #1

declare dso_local i32 @LeaveAllPowerSaveMode(%struct.adapter*) #1

declare dso_local i32 @rtw_usb_if1_deinit(%struct.adapter*) #1

declare dso_local i32 @usb_dvobj_deinit(%struct.usb_interface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
