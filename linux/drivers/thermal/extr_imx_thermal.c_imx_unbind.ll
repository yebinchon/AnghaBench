; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_imx_thermal.c_imx_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_imx_thermal.c_imx_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_zone_device = type { i32, i32 }
%struct.thermal_cooling_device = type { i32 }

@IMX_TRIP_PASSIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"unbinding zone %s with cdev %s failed:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_zone_device*, %struct.thermal_cooling_device*)* @imx_unbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_unbind(%struct.thermal_zone_device* %0, %struct.thermal_cooling_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thermal_zone_device*, align 8
  %5 = alloca %struct.thermal_cooling_device*, align 8
  %6 = alloca i32, align 4
  store %struct.thermal_zone_device* %0, %struct.thermal_zone_device** %4, align 8
  store %struct.thermal_cooling_device* %1, %struct.thermal_cooling_device** %5, align 8
  %7 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %8 = load i32, i32* @IMX_TRIP_PASSIVE, align 4
  %9 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %5, align 8
  %10 = call i32 @thermal_zone_unbind_cooling_device(%struct.thermal_zone_device* %7, i32 %8, %struct.thermal_cooling_device* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %2
  %14 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %15 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %14, i32 0, i32 1
  %16 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %17 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %5, align 8
  %20 = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @dev_err(i32* %15, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21, i32 %22)
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %26

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %25, %13
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @thermal_zone_unbind_cooling_device(%struct.thermal_zone_device*, i32, %struct.thermal_cooling_device*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
