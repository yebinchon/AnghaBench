; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_rf.c_zd_rf_patch_6m_band_edge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_rf.c_zd_rf_patch_6m_band_edge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_rf = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zd_rf_patch_6m_band_edge(%struct.zd_rf* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zd_rf*, align 8
  %5 = alloca i32, align 4
  store %struct.zd_rf* %0, %struct.zd_rf** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.zd_rf*, %struct.zd_rf** %4, align 8
  %7 = getelementptr inbounds %struct.zd_rf, %struct.zd_rf* %6, i32 0, i32 0
  %8 = bitcast {}** %7 to i32 (%struct.zd_rf*, i32)**
  %9 = load i32 (%struct.zd_rf*, i32)*, i32 (%struct.zd_rf*, i32)** %8, align 8
  %10 = icmp ne i32 (%struct.zd_rf*, i32)* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %20

12:                                               ; preds = %2
  %13 = load %struct.zd_rf*, %struct.zd_rf** %4, align 8
  %14 = getelementptr inbounds %struct.zd_rf, %struct.zd_rf* %13, i32 0, i32 0
  %15 = bitcast {}** %14 to i32 (%struct.zd_rf*, i32)**
  %16 = load i32 (%struct.zd_rf*, i32)*, i32 (%struct.zd_rf*, i32)** %15, align 8
  %17 = load %struct.zd_rf*, %struct.zd_rf** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 %16(%struct.zd_rf* %17, i32 %18)
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %12, %11
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
