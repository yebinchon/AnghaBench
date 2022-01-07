; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/samsung/extr_exynos_tmu.c_exynos_tmu_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/samsung/extr_exynos_tmu.c_exynos_tmu_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.exynos_tmu_data = type { i32, i32, i32, i32, %struct.thermal_zone_device* }
%struct.thermal_zone_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @exynos_tmu_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_tmu_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.exynos_tmu_data*, align 8
  %4 = alloca %struct.thermal_zone_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.exynos_tmu_data* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.exynos_tmu_data* %6, %struct.exynos_tmu_data** %3, align 8
  %7 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %3, align 8
  %8 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %7, i32 0, i32 4
  %9 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %8, align 8
  store %struct.thermal_zone_device* %9, %struct.thermal_zone_device** %4, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %13 = call i32 @thermal_zone_of_sensor_unregister(i32* %11, %struct.thermal_zone_device* %12)
  %14 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %15 = call i32 @exynos_tmu_control(%struct.platform_device* %14, i32 0)
  %16 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %3, align 8
  %17 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @clk_disable_unprepare(i32 %18)
  %20 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %3, align 8
  %21 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @clk_unprepare(i32 %22)
  %24 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %3, align 8
  %25 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @IS_ERR(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %1
  %30 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %3, align 8
  %31 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @clk_unprepare(i32 %32)
  br label %34

34:                                               ; preds = %29, %1
  %35 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %3, align 8
  %36 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @IS_ERR(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %34
  %41 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %3, align 8
  %42 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @regulator_disable(i32 %43)
  br label %45

45:                                               ; preds = %40, %34
  ret i32 0
}

declare dso_local %struct.exynos_tmu_data* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @thermal_zone_of_sensor_unregister(i32*, %struct.thermal_zone_device*) #1

declare dso_local i32 @exynos_tmu_control(%struct.platform_device*, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @clk_unprepare(i32) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
