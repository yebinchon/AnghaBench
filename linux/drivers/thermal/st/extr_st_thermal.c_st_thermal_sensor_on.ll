; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/st/extr_st_thermal.c_st_thermal_sensor_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/st/extr_st_thermal.c_st_thermal_sensor_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_thermal_sensor = type { i32, %struct.TYPE_2__*, %struct.device* }
%struct.TYPE_2__ = type { i32 (%struct.st_thermal_sensor*, i32)* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"failed to enable clk\0A\00", align 1
@POWER_ON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to power on sensor\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_thermal_sensor*)* @st_thermal_sensor_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_thermal_sensor_on(%struct.st_thermal_sensor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.st_thermal_sensor*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  store %struct.st_thermal_sensor* %0, %struct.st_thermal_sensor** %3, align 8
  %6 = load %struct.st_thermal_sensor*, %struct.st_thermal_sensor** %3, align 8
  %7 = getelementptr inbounds %struct.st_thermal_sensor, %struct.st_thermal_sensor* %6, i32 0, i32 2
  %8 = load %struct.device*, %struct.device** %7, align 8
  store %struct.device* %8, %struct.device** %5, align 8
  %9 = load %struct.st_thermal_sensor*, %struct.st_thermal_sensor** %3, align 8
  %10 = getelementptr inbounds %struct.st_thermal_sensor, %struct.st_thermal_sensor* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @clk_prepare_enable(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = call i32 @dev_err(%struct.device* %16, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %39

19:                                               ; preds = %1
  %20 = load %struct.st_thermal_sensor*, %struct.st_thermal_sensor** %3, align 8
  %21 = getelementptr inbounds %struct.st_thermal_sensor, %struct.st_thermal_sensor* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (%struct.st_thermal_sensor*, i32)*, i32 (%struct.st_thermal_sensor*, i32)** %23, align 8
  %25 = load %struct.st_thermal_sensor*, %struct.st_thermal_sensor** %3, align 8
  %26 = load i32, i32* @POWER_ON, align 4
  %27 = call i32 %24(%struct.st_thermal_sensor* %25, i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %19
  %31 = load %struct.device*, %struct.device** %5, align 8
  %32 = call i32 @dev_err(%struct.device* %31, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.st_thermal_sensor*, %struct.st_thermal_sensor** %3, align 8
  %34 = getelementptr inbounds %struct.st_thermal_sensor, %struct.st_thermal_sensor* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @clk_disable_unprepare(i32 %35)
  br label %37

37:                                               ; preds = %30, %19
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %37, %15
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
