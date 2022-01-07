; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/tegra/extr_soctherm.c_throt_get_cdev_cur_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/tegra/extr_soctherm.c_throt_get_cdev_cur_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_cooling_device = type { %struct.tegra_soctherm* }
%struct.tegra_soctherm = type { i64 }

@THROT_STATUS = common dso_local global i64 0, align 8
@THROT_STATUS_STATE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_cooling_device*, i64*)* @throt_get_cdev_cur_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @throt_get_cdev_cur_state(%struct.thermal_cooling_device* %0, i64* %1) #0 {
  %3 = alloca %struct.thermal_cooling_device*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.tegra_soctherm*, align 8
  %6 = alloca i32, align 4
  store %struct.thermal_cooling_device* %0, %struct.thermal_cooling_device** %3, align 8
  store i64* %1, i64** %4, align 8
  %7 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %3, align 8
  %8 = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %7, i32 0, i32 0
  %9 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %8, align 8
  store %struct.tegra_soctherm* %9, %struct.tegra_soctherm** %5, align 8
  %10 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %5, align 8
  %11 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @THROT_STATUS, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @readl(i64 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @THROT_STATUS_STATE_MASK, align 4
  %18 = call i64 @REG_GET_MASK(i32 %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i64*, i64** %4, align 8
  store i64 1, i64* %21, align 8
  br label %24

22:                                               ; preds = %2
  %23 = load i64*, i64** %4, align 8
  store i64 0, i64* %23, align 8
  br label %24

24:                                               ; preds = %22, %20
  ret i32 0
}

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @REG_GET_MASK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
