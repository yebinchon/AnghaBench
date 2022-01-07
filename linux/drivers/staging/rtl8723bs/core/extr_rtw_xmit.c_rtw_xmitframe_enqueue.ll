; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_xmit.c_rtw_xmitframe_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_xmit.c_rtw_xmitframe_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.xmit_frame = type { i32 }

@_FAIL = common dso_local global i64 0, align 8
@_module_rtl871x_xmit_c_ = common dso_local global i32 0, align 4
@_drv_err_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"rtw_xmitframe_enqueue: drop xmit pkt for classifier fail\0A\00", align 1
@_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rtw_xmitframe_enqueue(%struct.adapter* %0, %struct.xmit_frame* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.xmit_frame*, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store %struct.xmit_frame* %1, %struct.xmit_frame** %5, align 8
  %6 = load %struct.adapter*, %struct.adapter** %4, align 8
  %7 = getelementptr inbounds %struct.adapter, %struct.adapter* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @DBG_COUNTER(i32 %9)
  %11 = load %struct.adapter*, %struct.adapter** %4, align 8
  %12 = load %struct.xmit_frame*, %struct.xmit_frame** %5, align 8
  %13 = call i64 @rtw_xmit_classifier(%struct.adapter* %11, %struct.xmit_frame* %12)
  %14 = load i64, i64* @_FAIL, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load i32, i32* @_module_rtl871x_xmit_c_, align 4
  %18 = load i32, i32* @_drv_err_, align 4
  %19 = call i32 @RT_TRACE(i32 %17, i32 %18, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %20 = load i64, i64* @_FAIL, align 8
  store i64 %20, i64* %3, align 8
  br label %23

21:                                               ; preds = %2
  %22 = load i64, i64* @_SUCCESS, align 8
  store i64 %22, i64* %3, align 8
  br label %23

23:                                               ; preds = %21, %16
  %24 = load i64, i64* %3, align 8
  ret i64 %24
}

declare dso_local i32 @DBG_COUNTER(i32) #1

declare dso_local i64 @rtw_xmit_classifier(%struct.adapter*, %struct.xmit_frame*) #1

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
