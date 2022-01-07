; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_os_intfs.c_rtw_start_drv_threads.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_os_intfs.c_rtw_start_drv_threads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__, i8*, i8* }
%struct.TYPE_2__ = type { i32 }

@_SUCCESS = common dso_local global i32 0, align 4
@_module_os_intfs_c_ = common dso_local global i32 0, align 4
@_drv_info_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"+rtw_start_drv_threads\0A\00", align 1
@rtw_xmit_thread = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"RTW_XMIT_THREAD\00", align 1
@_FAIL = common dso_local global i32 0, align 4
@rtw_cmd_thread = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"RTW_CMD_THREAD\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_start_drv_threads(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %4 = load i32, i32* @_SUCCESS, align 4
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* @_module_os_intfs_c_, align 4
  %6 = load i32, i32* @_drv_info_, align 4
  %7 = call i32 @RT_TRACE(i32 %5, i32 %6, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @rtw_xmit_thread, align 4
  %9 = load %struct.adapter*, %struct.adapter** %2, align 8
  %10 = call i8* @kthread_run(i32 %8, %struct.adapter* %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %11 = load %struct.adapter*, %struct.adapter** %2, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 2
  store i8* %10, i8** %12, align 8
  %13 = load %struct.adapter*, %struct.adapter** %2, align 8
  %14 = getelementptr inbounds %struct.adapter, %struct.adapter* %13, i32 0, i32 2
  %15 = load i8*, i8** %14, align 8
  %16 = call i64 @IS_ERR(i8* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @_FAIL, align 4
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %18, %1
  %21 = load i32, i32* @rtw_cmd_thread, align 4
  %22 = load %struct.adapter*, %struct.adapter** %2, align 8
  %23 = call i8* @kthread_run(i32 %21, %struct.adapter* %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %24 = load %struct.adapter*, %struct.adapter** %2, align 8
  %25 = getelementptr inbounds %struct.adapter, %struct.adapter* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = load %struct.adapter*, %struct.adapter** %2, align 8
  %27 = getelementptr inbounds %struct.adapter, %struct.adapter* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @IS_ERR(i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %20
  %32 = load i32, i32* @_FAIL, align 4
  store i32 %32, i32* %3, align 4
  br label %38

33:                                               ; preds = %20
  %34 = load %struct.adapter*, %struct.adapter** %2, align 8
  %35 = getelementptr inbounds %struct.adapter, %struct.adapter* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call i32 @wait_for_completion(i32* %36)
  br label %38

38:                                               ; preds = %33, %31
  %39 = load %struct.adapter*, %struct.adapter** %2, align 8
  %40 = call i32 @rtw_hal_start_thread(%struct.adapter* %39)
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i8* @kthread_run(i32, %struct.adapter*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @rtw_hal_start_thread(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
