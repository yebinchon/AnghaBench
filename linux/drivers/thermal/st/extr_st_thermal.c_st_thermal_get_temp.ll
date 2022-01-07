; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/st/extr_st_thermal.c_st_thermal_get_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/st/extr_st_thermal.c_st_thermal_get_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_zone_device = type { %struct.st_thermal_sensor* }
%struct.st_thermal_sensor = type { %struct.TYPE_2__*, i32, i32, %struct.device* }
%struct.TYPE_2__ = type { i64 }
%struct.device = type { i32 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"temperature: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_zone_device*, i32*)* @st_thermal_get_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_thermal_get_temp(%struct.thermal_zone_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thermal_zone_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.st_thermal_sensor*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.thermal_zone_device* %0, %struct.thermal_zone_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %12 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %11, i32 0, i32 0
  %13 = load %struct.st_thermal_sensor*, %struct.st_thermal_sensor** %12, align 8
  store %struct.st_thermal_sensor* %13, %struct.st_thermal_sensor** %6, align 8
  %14 = load %struct.st_thermal_sensor*, %struct.st_thermal_sensor** %6, align 8
  %15 = getelementptr inbounds %struct.st_thermal_sensor, %struct.st_thermal_sensor* %14, i32 0, i32 3
  %16 = load %struct.device*, %struct.device** %15, align 8
  store %struct.device* %16, %struct.device** %7, align 8
  %17 = load %struct.st_thermal_sensor*, %struct.st_thermal_sensor** %6, align 8
  %18 = getelementptr inbounds %struct.st_thermal_sensor, %struct.st_thermal_sensor* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @regmap_field_read(i32 %19, i32* %9)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %3, align 4
  br label %57

25:                                               ; preds = %2
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %57

31:                                               ; preds = %25
  %32 = load %struct.st_thermal_sensor*, %struct.st_thermal_sensor** %6, align 8
  %33 = getelementptr inbounds %struct.st_thermal_sensor, %struct.st_thermal_sensor* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @regmap_field_read(i32 %34, i32* %8)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %3, align 4
  br label %57

40:                                               ; preds = %31
  %41 = load %struct.st_thermal_sensor*, %struct.st_thermal_sensor** %6, align 8
  %42 = getelementptr inbounds %struct.st_thermal_sensor, %struct.st_thermal_sensor* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = zext i32 %46 to i64
  %48 = add nsw i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @mcelsius(i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load %struct.device*, %struct.device** %7, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @dev_dbg(%struct.device* %52, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %8, align 4
  %56 = load i32*, i32** %5, align 8
  store i32 %55, i32* %56, align 4
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %40, %38, %28, %23
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @regmap_field_read(i32, i32*) #1

declare dso_local i32 @mcelsius(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
