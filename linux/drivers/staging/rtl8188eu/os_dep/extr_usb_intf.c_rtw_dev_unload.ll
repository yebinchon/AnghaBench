; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_usb_intf.c_rtw_dev_unload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_usb_intf.c_rtw_dev_unload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32, i32, %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@_module_hci_intfs_c_ = common dso_local global i32 0, align 4
@_drv_err_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"+rtw_dev_unload\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"===> rtw_dev_unload\0A\00", align 1
@RTW_SCTX_DONE_DRV_STOP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"r871x_dev_unload():padapter->bup == false\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"<=== rtw_dev_unload\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"-rtw_dev_unload\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @rtw_dev_unload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_dev_unload(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %3 = load i32, i32* @_module_hci_intfs_c_, align 4
  %4 = load i32, i32* @_drv_err_, align 4
  %5 = call i32 @RT_TRACE(i32 %3, i32 %4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.adapter*, %struct.adapter** %2, align 8
  %7 = getelementptr inbounds %struct.adapter, %struct.adapter* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %48

10:                                               ; preds = %1
  %11 = call i32 @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %12 = load %struct.adapter*, %struct.adapter** %2, align 8
  %13 = getelementptr inbounds %struct.adapter, %struct.adapter* %12, i32 0, i32 1
  store i32 1, i32* %13, align 4
  %14 = load %struct.adapter*, %struct.adapter** %2, align 8
  %15 = getelementptr inbounds %struct.adapter, %struct.adapter* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %10
  %20 = load %struct.adapter*, %struct.adapter** %2, align 8
  %21 = getelementptr inbounds %struct.adapter, %struct.adapter* %20, i32 0, i32 4
  %22 = load i32, i32* @RTW_SCTX_DONE_DRV_STOP, align 4
  %23 = call i32 @rtw_ack_tx_done(%struct.TYPE_4__* %21, i32 %22)
  br label %24

24:                                               ; preds = %19, %10
  %25 = load %struct.adapter*, %struct.adapter** %2, align 8
  %26 = call i32 @usb_intf_stop(%struct.adapter* %25)
  %27 = load %struct.adapter*, %struct.adapter** %2, align 8
  %28 = getelementptr inbounds %struct.adapter, %struct.adapter* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %24
  %33 = load %struct.adapter*, %struct.adapter** %2, align 8
  %34 = call i32 @rtw_stop_drv_threads(%struct.adapter* %33)
  br label %35

35:                                               ; preds = %32, %24
  %36 = load %struct.adapter*, %struct.adapter** %2, align 8
  %37 = getelementptr inbounds %struct.adapter, %struct.adapter* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = load %struct.adapter*, %struct.adapter** %2, align 8
  %42 = call i32 @rtw_hal_deinit(%struct.adapter* %41)
  %43 = load %struct.adapter*, %struct.adapter** %2, align 8
  %44 = getelementptr inbounds %struct.adapter, %struct.adapter* %43, i32 0, i32 2
  store i32 1, i32* %44, align 8
  br label %45

45:                                               ; preds = %40, %35
  %46 = load %struct.adapter*, %struct.adapter** %2, align 8
  %47 = getelementptr inbounds %struct.adapter, %struct.adapter* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  br label %52

48:                                               ; preds = %1
  %49 = load i32, i32* @_module_hci_intfs_c_, align 4
  %50 = load i32, i32* @_drv_err_, align 4
  %51 = call i32 @RT_TRACE(i32 %49, i32 %50, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %52

52:                                               ; preds = %48, %45
  %53 = call i32 @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %54 = load i32, i32* @_module_hci_intfs_c_, align 4
  %55 = load i32, i32* @_drv_err_, align 4
  %56 = call i32 @RT_TRACE(i32 %54, i32 %55, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @rtw_ack_tx_done(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @usb_intf_stop(%struct.adapter*) #1

declare dso_local i32 @rtw_stop_drv_threads(%struct.adapter*) #1

declare dso_local i32 @rtw_hal_deinit(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
