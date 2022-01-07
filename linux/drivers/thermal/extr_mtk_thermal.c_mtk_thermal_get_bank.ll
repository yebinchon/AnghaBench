; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_mtk_thermal.c_mtk_thermal_get_bank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_mtk_thermal.c_mtk_thermal_get_bank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_thermal_bank = type { i32, %struct.mtk_thermal* }
%struct.mtk_thermal = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@PTPCORESEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_thermal_bank*)* @mtk_thermal_get_bank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_thermal_get_bank(%struct.mtk_thermal_bank* %0) #0 {
  %2 = alloca %struct.mtk_thermal_bank*, align 8
  %3 = alloca %struct.mtk_thermal*, align 8
  %4 = alloca i32, align 4
  store %struct.mtk_thermal_bank* %0, %struct.mtk_thermal_bank** %2, align 8
  %5 = load %struct.mtk_thermal_bank*, %struct.mtk_thermal_bank** %2, align 8
  %6 = getelementptr inbounds %struct.mtk_thermal_bank, %struct.mtk_thermal_bank* %5, i32 0, i32 1
  %7 = load %struct.mtk_thermal*, %struct.mtk_thermal** %6, align 8
  store %struct.mtk_thermal* %7, %struct.mtk_thermal** %3, align 8
  %8 = load %struct.mtk_thermal*, %struct.mtk_thermal** %3, align 8
  %9 = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %38

14:                                               ; preds = %1
  %15 = load %struct.mtk_thermal*, %struct.mtk_thermal** %3, align 8
  %16 = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %15, i32 0, i32 1
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.mtk_thermal*, %struct.mtk_thermal** %3, align 8
  %19 = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PTPCORESEL, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @readl(i64 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = and i32 %24, -16
  store i32 %25, i32* %4, align 4
  %26 = load %struct.mtk_thermal_bank*, %struct.mtk_thermal_bank** %2, align 8
  %27 = getelementptr inbounds %struct.mtk_thermal_bank, %struct.mtk_thermal_bank* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.mtk_thermal*, %struct.mtk_thermal** %3, align 8
  %33 = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PTPCORESEL, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @writel(i32 %31, i64 %36)
  br label %38

38:                                               ; preds = %14, %1
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
