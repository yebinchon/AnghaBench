; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_db8500_thermal.c_db8500_thermal_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_db8500_thermal.c_db8500_thermal_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.db8500_thermal_zone = type { i32 }

@THERMAL_TREND_STABLE = common dso_local global i32 0, align 4
@PRCMU_DEFAULT_LOW_TEMP = common dso_local global i32 0, align 4
@db8500_thermal_points = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @db8500_thermal_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db8500_thermal_resume(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.db8500_thermal_zone*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.db8500_thermal_zone* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.db8500_thermal_zone* %5, %struct.db8500_thermal_zone** %3, align 8
  %6 = load %struct.db8500_thermal_zone*, %struct.db8500_thermal_zone** %3, align 8
  %7 = load i32, i32* @THERMAL_TREND_STABLE, align 4
  %8 = load i32, i32* @PRCMU_DEFAULT_LOW_TEMP, align 4
  %9 = load i32*, i32** @db8500_thermal_points, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @db8500_thermal_update_config(%struct.db8500_thermal_zone* %6, i32 0, i32 %7, i32 %8, i32 %11)
  ret i32 0
}

declare dso_local %struct.db8500_thermal_zone* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @db8500_thermal_update_config(%struct.db8500_thermal_zone*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
