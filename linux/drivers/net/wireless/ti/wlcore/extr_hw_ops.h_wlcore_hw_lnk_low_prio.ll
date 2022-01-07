; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_hw_ops.h_wlcore_hw_lnk_low_prio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_hw_ops.h_wlcore_hw_lnk_low_prio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.wl1271_link = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, i32, %struct.wl1271_link*)* @wlcore_hw_lnk_low_prio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlcore_hw_lnk_low_prio(%struct.wl1271* %0, i32 %1, %struct.wl1271_link* %2) #0 {
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wl1271_link*, align 8
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.wl1271_link* %2, %struct.wl1271_link** %6, align 8
  %7 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %8 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = bitcast {}** %10 to i32 (%struct.wl1271*, i32, %struct.wl1271_link*)**
  %12 = load i32 (%struct.wl1271*, i32, %struct.wl1271_link*)*, i32 (%struct.wl1271*, i32, %struct.wl1271_link*)** %11, align 8
  %13 = icmp ne i32 (%struct.wl1271*, i32, %struct.wl1271_link*)* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  %15 = call i32 @BUG_ON(i32 1)
  br label %16

16:                                               ; preds = %14, %3
  %17 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %18 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = bitcast {}** %20 to i32 (%struct.wl1271*, i32, %struct.wl1271_link*)**
  %22 = load i32 (%struct.wl1271*, i32, %struct.wl1271_link*)*, i32 (%struct.wl1271*, i32, %struct.wl1271_link*)** %21, align 8
  %23 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.wl1271_link*, %struct.wl1271_link** %6, align 8
  %26 = call i32 %22(%struct.wl1271* %23, i32 %24, %struct.wl1271_link* %25)
  ret i32 %26
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
