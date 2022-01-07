; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/st/extr_st_thermal_syscfg.c_st_syscfg_alloc_regfields.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/st/extr_st_thermal_syscfg.c_st_syscfg_alloc_regfields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_thermal_sensor = type { i32, %struct.TYPE_2__*, i32, %struct.device* }
%struct.TYPE_2__ = type { i32* }
%struct.device = type { i32 }

@TEMP_PWR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"failed to alloc syscfg regfields\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_thermal_sensor*)* @st_syscfg_alloc_regfields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_syscfg_alloc_regfields(%struct.st_thermal_sensor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.st_thermal_sensor*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.st_thermal_sensor* %0, %struct.st_thermal_sensor** %3, align 8
  %5 = load %struct.st_thermal_sensor*, %struct.st_thermal_sensor** %3, align 8
  %6 = getelementptr inbounds %struct.st_thermal_sensor, %struct.st_thermal_sensor* %5, i32 0, i32 3
  %7 = load %struct.device*, %struct.device** %6, align 8
  store %struct.device* %7, %struct.device** %4, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = load %struct.st_thermal_sensor*, %struct.st_thermal_sensor** %3, align 8
  %10 = getelementptr inbounds %struct.st_thermal_sensor, %struct.st_thermal_sensor* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.st_thermal_sensor*, %struct.st_thermal_sensor** %3, align 8
  %13 = getelementptr inbounds %struct.st_thermal_sensor, %struct.st_thermal_sensor* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i64, i64* @TEMP_PWR, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @devm_regmap_field_alloc(%struct.device* %8, i32 %11, i32 %19)
  %21 = load %struct.st_thermal_sensor*, %struct.st_thermal_sensor** %3, align 8
  %22 = getelementptr inbounds %struct.st_thermal_sensor, %struct.st_thermal_sensor* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.st_thermal_sensor*, %struct.st_thermal_sensor** %3, align 8
  %24 = getelementptr inbounds %struct.st_thermal_sensor, %struct.st_thermal_sensor* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @IS_ERR(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %1
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = call i32 @dev_err(%struct.device* %29, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.st_thermal_sensor*, %struct.st_thermal_sensor** %3, align 8
  %32 = getelementptr inbounds %struct.st_thermal_sensor, %struct.st_thermal_sensor* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @PTR_ERR(i32 %33)
  store i32 %34, i32* %2, align 4
  br label %36

35:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %28
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @devm_regmap_field_alloc(%struct.device*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
