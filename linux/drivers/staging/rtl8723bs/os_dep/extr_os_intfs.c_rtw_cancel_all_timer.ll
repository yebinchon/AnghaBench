; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_os_intfs.c_rtw_cancel_all_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_os_intfs.c_rtw_cancel_all_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_4__, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@_module_os_intfs_c_ = common dso_local global i32 0, align 4
@_drv_info_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"+rtw_cancel_all_timer\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"rtw_cancel_all_timer:cancel association timer complete!\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"rtw_cancel_all_timer:cancel scan_to_timer!\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"rtw_cancel_all_timer:cancel dynamic_chk_timer!\0A\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"rtw_cancel_all_timer:cancel set_scan_deny_timer!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_cancel_all_timer(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %3 = load i32, i32* @_module_os_intfs_c_, align 4
  %4 = load i32, i32* @_drv_info_, align 4
  %5 = call i32 @RT_TRACE(i32 %3, i32 %4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.adapter*, %struct.adapter** %2, align 8
  %7 = getelementptr inbounds %struct.adapter, %struct.adapter* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 3
  %9 = call i32 @del_timer_sync(i32* %8)
  %10 = load i32, i32* @_module_os_intfs_c_, align 4
  %11 = load i32, i32* @_drv_info_, align 4
  %12 = call i32 @RT_TRACE(i32 %10, i32 %11, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  %13 = load %struct.adapter*, %struct.adapter** %2, align 8
  %14 = getelementptr inbounds %struct.adapter, %struct.adapter* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 2
  %16 = call i32 @del_timer_sync(i32* %15)
  %17 = load i32, i32* @_module_os_intfs_c_, align 4
  %18 = load i32, i32* @_drv_info_, align 4
  %19 = call i32 @RT_TRACE(i32 %17, i32 %18, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %20 = load %struct.adapter*, %struct.adapter** %2, align 8
  %21 = getelementptr inbounds %struct.adapter, %struct.adapter* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = call i32 @del_timer_sync(i32* %22)
  %24 = load i32, i32* @_module_os_intfs_c_, align 4
  %25 = load i32, i32* @_drv_info_, align 4
  %26 = call i32 @RT_TRACE(i32 %24, i32 %25, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  %27 = load %struct.adapter*, %struct.adapter** %2, align 8
  %28 = call %struct.TYPE_6__* @adapter_to_pwrctl(%struct.adapter* %27)
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = call i32 @del_timer_sync(i32* %29)
  %31 = load %struct.adapter*, %struct.adapter** %2, align 8
  %32 = getelementptr inbounds %struct.adapter, %struct.adapter* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = call i32 @del_timer_sync(i32* %33)
  %35 = load %struct.adapter*, %struct.adapter** %2, align 8
  %36 = call i32 @rtw_clear_scan_deny(%struct.adapter* %35)
  %37 = load i32, i32* @_module_os_intfs_c_, align 4
  %38 = load i32, i32* @_drv_info_, align 4
  %39 = call i32 @RT_TRACE(i32 %37, i32 %38, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  %40 = load %struct.adapter*, %struct.adapter** %2, align 8
  %41 = getelementptr inbounds %struct.adapter, %struct.adapter* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = call i32 @del_timer_sync(i32* %42)
  %44 = load %struct.adapter*, %struct.adapter** %2, align 8
  %45 = call i32 @rtw_hal_dm_deinit(%struct.adapter* %44)
  ret void
}

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local %struct.TYPE_6__* @adapter_to_pwrctl(%struct.adapter*) #1

declare dso_local i32 @rtw_clear_scan_deny(%struct.adapter*) #1

declare dso_local i32 @rtw_hal_dm_deinit(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
