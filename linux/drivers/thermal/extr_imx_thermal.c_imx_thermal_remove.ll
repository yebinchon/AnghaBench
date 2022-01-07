; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_imx_thermal.c_imx_thermal_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_imx_thermal.c_imx_thermal_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.imx_thermal_data = type { i32, i32, i32, i32, %struct.TYPE_2__*, %struct.regmap* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.regmap = type { i32 }

@REG_SET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @imx_thermal_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_thermal_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.imx_thermal_data*, align 8
  %4 = alloca %struct.regmap*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.imx_thermal_data* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.imx_thermal_data* %6, %struct.imx_thermal_data** %3, align 8
  %7 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %3, align 8
  %8 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %7, i32 0, i32 5
  %9 = load %struct.regmap*, %struct.regmap** %8, align 8
  store %struct.regmap* %9, %struct.regmap** %4, align 8
  %10 = load %struct.regmap*, %struct.regmap** %4, align 8
  %11 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %3, align 8
  %12 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %11, i32 0, i32 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @REG_SET, align 8
  %17 = add nsw i64 %15, %16
  %18 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %3, align 8
  %19 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %18, i32 0, i32 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @regmap_write(%struct.regmap* %10, i64 %17, i32 %22)
  %24 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %3, align 8
  %25 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @IS_ERR(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %1
  %30 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %3, align 8
  %31 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @clk_disable_unprepare(i32 %32)
  br label %34

34:                                               ; preds = %29, %1
  %35 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %3, align 8
  %36 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @thermal_zone_device_unregister(i32 %37)
  %39 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %3, align 8
  %40 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @cpufreq_cooling_unregister(i32 %41)
  %43 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %3, align 8
  %44 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @cpufreq_cpu_put(i32 %45)
  ret i32 0
}

declare dso_local %struct.imx_thermal_data* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i64, i32) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @thermal_zone_device_unregister(i32) #1

declare dso_local i32 @cpufreq_cooling_unregister(i32) #1

declare dso_local i32 @cpufreq_cpu_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
