; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_usb_intf.c_rtw_drv_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_usb_intf.c_rtw_drv_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.adapter = type { i32 }
%struct.dvobj_priv = type { i32 }

@_module_hci_intfs_c_ = common dso_local global i32 0, align 4
@_drv_err_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"initialize device object priv Failed!\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"rtw_init_primarystruct adapter Failed!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @rtw_drv_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw_drv_init(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca %struct.dvobj_priv*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  store %struct.adapter* null, %struct.adapter** %6, align 8
  %8 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %9 = call %struct.dvobj_priv* @usb_dvobj_init(%struct.usb_interface* %8)
  store %struct.dvobj_priv* %9, %struct.dvobj_priv** %7, align 8
  %10 = load %struct.dvobj_priv*, %struct.dvobj_priv** %7, align 8
  %11 = icmp ne %struct.dvobj_priv* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @_module_hci_intfs_c_, align 4
  %14 = load i32, i32* @_drv_err_, align 4
  %15 = call i32 @RT_TRACE(i32 %13, i32 %14, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %29

16:                                               ; preds = %2
  %17 = load %struct.dvobj_priv*, %struct.dvobj_priv** %7, align 8
  %18 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %19 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %20 = call %struct.adapter* @rtw_usb_if1_init(%struct.dvobj_priv* %17, %struct.usb_interface* %18, %struct.usb_device_id* %19)
  store %struct.adapter* %20, %struct.adapter** %6, align 8
  %21 = load %struct.adapter*, %struct.adapter** %6, align 8
  %22 = icmp ne %struct.adapter* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %16
  %24 = call i32 @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %26

25:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %32

26:                                               ; preds = %23
  %27 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %28 = call i32 @usb_dvobj_deinit(%struct.usb_interface* %27)
  br label %29

29:                                               ; preds = %26, %12
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %29, %25
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local %struct.dvobj_priv* @usb_dvobj_init(%struct.usb_interface*) #1

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local %struct.adapter* @rtw_usb_if1_init(%struct.dvobj_priv*, %struct.usb_interface*, %struct.usb_device_id*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @usb_dvobj_deinit(%struct.usb_interface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
