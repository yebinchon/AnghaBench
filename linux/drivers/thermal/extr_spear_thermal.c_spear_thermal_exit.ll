; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_spear_thermal.c_spear_thermal_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_spear_thermal.c_spear_thermal_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.thermal_zone_device = type { %struct.spear_thermal_dev* }
%struct.spear_thermal_dev = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @spear_thermal_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spear_thermal_exit(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.thermal_zone_device*, align 8
  %5 = alloca %struct.spear_thermal_dev*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.thermal_zone_device* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.thermal_zone_device* %7, %struct.thermal_zone_device** %4, align 8
  %8 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %9 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %8, i32 0, i32 0
  %10 = load %struct.spear_thermal_dev*, %struct.spear_thermal_dev** %9, align 8
  store %struct.spear_thermal_dev* %10, %struct.spear_thermal_dev** %5, align 8
  %11 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %12 = call i32 @thermal_zone_device_unregister(%struct.thermal_zone_device* %11)
  %13 = load %struct.spear_thermal_dev*, %struct.spear_thermal_dev** %5, align 8
  %14 = getelementptr inbounds %struct.spear_thermal_dev, %struct.spear_thermal_dev* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @readl_relaxed(i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.spear_thermal_dev*, %struct.spear_thermal_dev** %5, align 8
  %19 = getelementptr inbounds %struct.spear_thermal_dev, %struct.spear_thermal_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %17, %21
  %23 = load %struct.spear_thermal_dev*, %struct.spear_thermal_dev** %5, align 8
  %24 = getelementptr inbounds %struct.spear_thermal_dev, %struct.spear_thermal_dev* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @writel_relaxed(i32 %22, i32 %25)
  %27 = load %struct.spear_thermal_dev*, %struct.spear_thermal_dev** %5, align 8
  %28 = getelementptr inbounds %struct.spear_thermal_dev, %struct.spear_thermal_dev* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @clk_disable(i32 %29)
  ret i32 0
}

declare dso_local %struct.thermal_zone_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @thermal_zone_device_unregister(%struct.thermal_zone_device*) #1

declare dso_local i32 @readl_relaxed(i32) #1

declare dso_local i32 @writel_relaxed(i32, i32) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
