; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_..wlcorehw_ops.h_wlcore_hw_rx_ba_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_..wlcorehw_ops.h_wlcore_hw_rx_ba_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, i32)* @wlcore_hw_rx_ba_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlcore_hw_rx_ba_filter(%struct.wl1271* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %7 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = bitcast {}** %9 to i32 (%struct.wl1271*, i32)**
  %11 = load i32 (%struct.wl1271*, i32)*, i32 (%struct.wl1271*, i32)** %10, align 8
  %12 = icmp ne i32 (%struct.wl1271*, i32)* %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %15 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = bitcast {}** %17 to i32 (%struct.wl1271*, i32)**
  %19 = load i32 (%struct.wl1271*, i32)*, i32 (%struct.wl1271*, i32)** %18, align 8
  %20 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 %19(%struct.wl1271* %20, i32 %21)
  store i32 %22, i32* %3, align 4
  br label %24

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %23, %13
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
