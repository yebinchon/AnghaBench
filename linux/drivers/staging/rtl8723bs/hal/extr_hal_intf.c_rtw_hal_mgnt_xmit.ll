; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_intf.c_rtw_hal_mgnt_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_intf.c_rtw_hal_mgnt_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_4__, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32 (%struct.adapter.0*, %struct.xmit_frame*)* }
%struct.adapter.0 = type opaque
%struct.TYPE_5__ = type { i32 }
%struct.xmit_frame = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }

@_FAIL = common dso_local global i32 0, align 4
@_BIP_ = common dso_local global i32 0, align 4
@_AES_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_hal_mgnt_xmit(%struct.adapter* %0, %struct.xmit_frame* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.xmit_frame*, align 8
  %5 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.xmit_frame* %1, %struct.xmit_frame** %4, align 8
  %6 = load i32, i32* @_FAIL, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.adapter*, %struct.adapter** %3, align 8
  %8 = load %struct.xmit_frame*, %struct.xmit_frame** %4, align 8
  %9 = call i32 @update_mgntframe_attrib_addr(%struct.adapter* %7, %struct.xmit_frame* %8)
  %10 = load %struct.adapter*, %struct.adapter** %3, align 8
  %11 = getelementptr inbounds %struct.adapter, %struct.adapter* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %42

15:                                               ; preds = %2
  %16 = load %struct.xmit_frame*, %struct.xmit_frame** %4, align 8
  %17 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @IS_MCAST(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %15
  %23 = load i32, i32* @_BIP_, align 4
  %24 = load %struct.xmit_frame*, %struct.xmit_frame** %4, align 8
  %25 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  store i32 %23, i32* %26, align 4
  br label %35

27:                                               ; preds = %15
  %28 = load i32, i32* @_AES_, align 4
  %29 = load %struct.xmit_frame*, %struct.xmit_frame** %4, align 8
  %30 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 4
  %32 = load %struct.xmit_frame*, %struct.xmit_frame** %4, align 8
  %33 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store i32 1, i32* %34, align 4
  br label %35

35:                                               ; preds = %27, %22
  %36 = load %struct.adapter*, %struct.adapter** %3, align 8
  %37 = load %struct.xmit_frame*, %struct.xmit_frame** %4, align 8
  %38 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.xmit_frame*, %struct.xmit_frame** %4, align 8
  %41 = call i32 @rtw_mgmt_xmitframe_coalesce(%struct.adapter* %36, i32 %39, %struct.xmit_frame* %40)
  br label %42

42:                                               ; preds = %35, %2
  %43 = load %struct.adapter*, %struct.adapter** %3, align 8
  %44 = getelementptr inbounds %struct.adapter, %struct.adapter* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32 (%struct.adapter.0*, %struct.xmit_frame*)*, i32 (%struct.adapter.0*, %struct.xmit_frame*)** %45, align 8
  %47 = icmp ne i32 (%struct.adapter.0*, %struct.xmit_frame*)* %46, null
  br i1 %47, label %48, label %57

48:                                               ; preds = %42
  %49 = load %struct.adapter*, %struct.adapter** %3, align 8
  %50 = getelementptr inbounds %struct.adapter, %struct.adapter* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32 (%struct.adapter.0*, %struct.xmit_frame*)*, i32 (%struct.adapter.0*, %struct.xmit_frame*)** %51, align 8
  %53 = load %struct.adapter*, %struct.adapter** %3, align 8
  %54 = bitcast %struct.adapter* %53 to %struct.adapter.0*
  %55 = load %struct.xmit_frame*, %struct.xmit_frame** %4, align 8
  %56 = call i32 %52(%struct.adapter.0* %54, %struct.xmit_frame* %55)
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %48, %42
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @update_mgntframe_attrib_addr(%struct.adapter*, %struct.xmit_frame*) #1

declare dso_local i64 @IS_MCAST(i32) #1

declare dso_local i32 @rtw_mgmt_xmitframe_coalesce(%struct.adapter*, i32, %struct.xmit_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
