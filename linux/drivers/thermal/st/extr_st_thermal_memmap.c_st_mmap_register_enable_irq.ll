; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/st/extr_st_thermal_memmap.c_st_mmap_register_enable_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/st/extr_st_thermal_memmap.c_st_mmap_register_enable_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_thermal_sensor = type { i32, %struct.device* }
%struct.device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.platform_device = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"failed to register IRQ\0A\00", align 1
@st_mmap_thermal_trip_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to register IRQ %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_thermal_sensor*)* @st_mmap_register_enable_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_mmap_register_enable_irq(%struct.st_thermal_sensor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.st_thermal_sensor*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca i32, align 4
  store %struct.st_thermal_sensor* %0, %struct.st_thermal_sensor** %3, align 8
  %7 = load %struct.st_thermal_sensor*, %struct.st_thermal_sensor** %3, align 8
  %8 = getelementptr inbounds %struct.st_thermal_sensor, %struct.st_thermal_sensor* %7, i32 0, i32 1
  %9 = load %struct.device*, %struct.device** %8, align 8
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.platform_device* @to_platform_device(%struct.device* %10)
  store %struct.platform_device* %11, %struct.platform_device** %5, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %13 = call i32 @platform_get_irq(%struct.platform_device* %12, i32 0)
  %14 = load %struct.st_thermal_sensor*, %struct.st_thermal_sensor** %3, align 8
  %15 = getelementptr inbounds %struct.st_thermal_sensor, %struct.st_thermal_sensor* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.st_thermal_sensor*, %struct.st_thermal_sensor** %3, align 8
  %17 = getelementptr inbounds %struct.st_thermal_sensor, %struct.st_thermal_sensor* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %21, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.st_thermal_sensor*, %struct.st_thermal_sensor** %3, align 8
  %24 = getelementptr inbounds %struct.st_thermal_sensor, %struct.st_thermal_sensor* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %2, align 4
  br label %54

26:                                               ; preds = %1
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = load %struct.st_thermal_sensor*, %struct.st_thermal_sensor** %3, align 8
  %29 = getelementptr inbounds %struct.st_thermal_sensor, %struct.st_thermal_sensor* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @st_mmap_thermal_trip_handler, align 4
  %32 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %33 = load i32, i32* @IRQF_ONESHOT, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = getelementptr inbounds %struct.device, %struct.device* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.st_thermal_sensor*, %struct.st_thermal_sensor** %3, align 8
  %41 = call i32 @devm_request_threaded_irq(%struct.device* %27, i32 %30, i32* null, i32 %31, i32 %34, i32 %39, %struct.st_thermal_sensor* %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %26
  %45 = load %struct.device*, %struct.device** %4, align 8
  %46 = load %struct.st_thermal_sensor*, %struct.st_thermal_sensor** %3, align 8
  %47 = getelementptr inbounds %struct.st_thermal_sensor, %struct.st_thermal_sensor* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %45, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %2, align 4
  br label %54

51:                                               ; preds = %26
  %52 = load %struct.st_thermal_sensor*, %struct.st_thermal_sensor** %3, align 8
  %53 = call i32 @st_mmap_enable_irq(%struct.st_thermal_sensor* %52)
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %51, %44, %20
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32*, i32, i32, i32, %struct.st_thermal_sensor*) #1

declare dso_local i32 @st_mmap_enable_irq(%struct.st_thermal_sensor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
