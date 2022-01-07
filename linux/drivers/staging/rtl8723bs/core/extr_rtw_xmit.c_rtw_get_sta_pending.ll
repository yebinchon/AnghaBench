; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_xmit.c_rtw_get_sta_pending.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_xmit.c_rtw_get_sta_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tx_servq = type { i32 }
%struct.adapter = type { i32 }
%struct.sta_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq }

@_module_rtl871x_xmit_c_ = common dso_local global i32 0, align 4
@_drv_info_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"rtw_get_sta_pending : BK\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"rtw_get_sta_pending : VI\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"rtw_get_sta_pending : VO\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"rtw_get_sta_pending : BE\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tx_servq* @rtw_get_sta_pending(%struct.adapter* %0, %struct.sta_info* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca %struct.sta_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.tx_servq*, align 8
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store %struct.sta_info* %1, %struct.sta_info** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store %struct.tx_servq* null, %struct.tx_servq** %9, align 8
  %10 = load i32, i32* %7, align 4
  switch i32 %10, label %36 [
    i32 1, label %11
    i32 2, label %11
    i32 4, label %19
    i32 5, label %19
    i32 6, label %27
    i32 7, label %27
    i32 0, label %35
    i32 3, label %35
  ]

11:                                               ; preds = %4, %4
  %12 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %13 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 3
  store %struct.tx_servq* %14, %struct.tx_servq** %9, align 8
  %15 = load i32*, i32** %8, align 8
  store i32 3, i32* %15, align 4
  %16 = load i32, i32* @_module_rtl871x_xmit_c_, align 4
  %17 = load i32, i32* @_drv_info_, align 4
  %18 = call i32 @RT_TRACE(i32 %16, i32 %17, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %44

19:                                               ; preds = %4, %4
  %20 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %21 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  store %struct.tx_servq* %22, %struct.tx_servq** %9, align 8
  %23 = load i32*, i32** %8, align 8
  store i32 1, i32* %23, align 4
  %24 = load i32, i32* @_module_rtl871x_xmit_c_, align 4
  %25 = load i32, i32* @_drv_info_, align 4
  %26 = call i32 @RT_TRACE(i32 %24, i32 %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %44

27:                                               ; preds = %4, %4
  %28 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %29 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  store %struct.tx_servq* %30, %struct.tx_servq** %9, align 8
  %31 = load i32*, i32** %8, align 8
  store i32 0, i32* %31, align 4
  %32 = load i32, i32* @_module_rtl871x_xmit_c_, align 4
  %33 = load i32, i32* @_drv_info_, align 4
  %34 = call i32 @RT_TRACE(i32 %32, i32 %33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %44

35:                                               ; preds = %4, %4
  br label %36

36:                                               ; preds = %4, %35
  %37 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %38 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store %struct.tx_servq* %39, %struct.tx_servq** %9, align 8
  %40 = load i32*, i32** %8, align 8
  store i32 2, i32* %40, align 4
  %41 = load i32, i32* @_module_rtl871x_xmit_c_, align 4
  %42 = load i32, i32* @_drv_info_, align 4
  %43 = call i32 @RT_TRACE(i32 %41, i32 %42, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %44

44:                                               ; preds = %36, %27, %19, %11
  %45 = load %struct.tx_servq*, %struct.tx_servq** %9, align 8
  ret %struct.tx_servq* %45
}

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
