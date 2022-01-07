; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723bs_xmit.c_rtl8723bs_hal_xmitframe_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723bs_xmit.c_rtl8723bs_hal_xmitframe_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.xmit_priv }
%struct.xmit_priv = type { i32, i32, i32 }
%struct.xmit_frame = type { i32 }

@_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rtl8723bs_hal_xmitframe_enqueue(%struct.adapter* %0, %struct.xmit_frame* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.xmit_frame*, align 8
  %5 = alloca %struct.xmit_priv*, align 8
  %6 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.xmit_frame* %1, %struct.xmit_frame** %4, align 8
  %7 = load %struct.adapter*, %struct.adapter** %3, align 8
  %8 = getelementptr inbounds %struct.adapter, %struct.adapter* %7, i32 0, i32 0
  store %struct.xmit_priv* %8, %struct.xmit_priv** %5, align 8
  %9 = load %struct.adapter*, %struct.adapter** %3, align 8
  %10 = load %struct.xmit_frame*, %struct.xmit_frame** %4, align 8
  %11 = call i64 @rtw_xmitframe_enqueue(%struct.adapter* %9, %struct.xmit_frame* %10)
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @_SUCCESS, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load %struct.xmit_priv*, %struct.xmit_priv** %5, align 8
  %17 = load %struct.xmit_frame*, %struct.xmit_frame** %4, align 8
  %18 = call i32 @rtw_free_xmitframe(%struct.xmit_priv* %16, %struct.xmit_frame* %17)
  %19 = load %struct.xmit_priv*, %struct.xmit_priv** %5, align 8
  %20 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  br label %27

23:                                               ; preds = %2
  %24 = load %struct.xmit_priv*, %struct.xmit_priv** %5, align 8
  %25 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %24, i32 0, i32 0
  %26 = call i32 @complete(i32* %25)
  br label %27

27:                                               ; preds = %23, %15
  %28 = load i64, i64* %6, align 8
  ret i64 %28
}

declare dso_local i64 @rtw_xmitframe_enqueue(%struct.adapter*, %struct.xmit_frame*) #1

declare dso_local i32 @rtw_free_xmitframe(%struct.xmit_priv*, %struct.xmit_frame*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
