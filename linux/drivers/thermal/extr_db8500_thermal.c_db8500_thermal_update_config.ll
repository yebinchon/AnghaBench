; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_db8500_thermal.c_db8500_thermal_update_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_db8500_thermal.c_db8500_thermal_update_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.db8500_thermal_zone = type { i32, i64, i32 }

@PRCMU_DEFAULT_MEASURE_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.db8500_thermal_zone*, i32, i32, i64, i64)* @db8500_thermal_update_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @db8500_thermal_update_config(%struct.db8500_thermal_zone* %0, i32 %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.db8500_thermal_zone*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.db8500_thermal_zone* %0, %struct.db8500_thermal_zone** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %11 = call i32 (...) @prcmu_stop_temp_sense()
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.db8500_thermal_zone*, %struct.db8500_thermal_zone** %6, align 8
  %14 = getelementptr inbounds %struct.db8500_thermal_zone, %struct.db8500_thermal_zone* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load i64, i64* %9, align 8
  %16 = load i64, i64* %10, align 8
  %17 = add i64 %15, %16
  %18 = udiv i64 %17, 2
  %19 = load %struct.db8500_thermal_zone*, %struct.db8500_thermal_zone** %6, align 8
  %20 = getelementptr inbounds %struct.db8500_thermal_zone, %struct.db8500_thermal_zone* %19, i32 0, i32 1
  store i64 %18, i64* %20, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.db8500_thermal_zone*, %struct.db8500_thermal_zone** %6, align 8
  %23 = getelementptr inbounds %struct.db8500_thermal_zone, %struct.db8500_thermal_zone* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load i64, i64* %9, align 8
  %25 = udiv i64 %24, 1000
  %26 = trunc i64 %25 to i32
  %27 = load i64, i64* %10, align 8
  %28 = udiv i64 %27, 1000
  %29 = trunc i64 %28 to i32
  %30 = call i32 @prcmu_config_hotmon(i32 %26, i32 %29)
  %31 = load i32, i32* @PRCMU_DEFAULT_MEASURE_TIME, align 4
  %32 = call i32 @prcmu_start_temp_sense(i32 %31)
  ret void
}

declare dso_local i32 @prcmu_stop_temp_sense(...) #1

declare dso_local i32 @prcmu_config_hotmon(i32, i32) #1

declare dso_local i32 @prcmu_start_temp_sense(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
