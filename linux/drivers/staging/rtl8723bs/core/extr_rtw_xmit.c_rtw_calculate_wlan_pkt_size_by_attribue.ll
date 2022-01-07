; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_xmit.c_rtw_calculate_wlan_pkt_size_by_attribue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_xmit.c_rtw_calculate_wlan_pkt_size_by_attribue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pkt_attrib = type { i64, i32, i64, i64, i64, i64 }

@SNAP_SIZE = common dso_local global i64 0, align 8
@_TKIP_ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rtw_calculate_wlan_pkt_size_by_attribue(%struct.pkt_attrib* %0) #0 {
  %2 = alloca %struct.pkt_attrib*, align 8
  %3 = alloca i64, align 8
  store %struct.pkt_attrib* %0, %struct.pkt_attrib** %2, align 8
  store i64 0, i64* %3, align 8
  %4 = load %struct.pkt_attrib*, %struct.pkt_attrib** %2, align 8
  %5 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %4, i32 0, i32 5
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.pkt_attrib*, %struct.pkt_attrib** %2, align 8
  %8 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %7, i32 0, i32 4
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 %6, %9
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* @SNAP_SIZE, align 8
  %12 = add i64 %11, 4
  %13 = load i64, i64* %3, align 8
  %14 = add i64 %13, %12
  store i64 %14, i64* %3, align 8
  %15 = load %struct.pkt_attrib*, %struct.pkt_attrib** %2, align 8
  %16 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %3, align 8
  %19 = add nsw i64 %18, %17
  store i64 %19, i64* %3, align 8
  %20 = load %struct.pkt_attrib*, %struct.pkt_attrib** %2, align 8
  %21 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @_TKIP_, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load i64, i64* %3, align 8
  %27 = add nsw i64 %26, 8
  store i64 %27, i64* %3, align 8
  br label %28

28:                                               ; preds = %25, %1
  %29 = load %struct.pkt_attrib*, %struct.pkt_attrib** %2, align 8
  %30 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load %struct.pkt_attrib*, %struct.pkt_attrib** %2, align 8
  %35 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  br label %38

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %37, %33
  %39 = phi i32 [ %36, %33 ], [ 0, %37 ]
  %40 = sext i32 %39 to i64
  %41 = load i64, i64* %3, align 8
  %42 = add nsw i64 %41, %40
  store i64 %42, i64* %3, align 8
  %43 = load i64, i64* %3, align 8
  ret i64 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
