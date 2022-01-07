; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_max8973-regulator.c_max8973_thermal_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_max8973-regulator.c_max8973_thermal_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max8973_chip = type { i64, i32, i32 }
%struct.thermal_zone_device = type { i32 }
%struct.irq_data = type { i32 }

@MAX77621 = common dso_local global i64 0, align 8
@max77621_tz_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed to register thermal sensor: %d\0A\00", align 1
@max8973_thermal_irq = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i64 0, align 8
@IRQF_SHARED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to request irq %d, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max8973_chip*)* @max8973_thermal_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8973_thermal_init(%struct.max8973_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.max8973_chip*, align 8
  %4 = alloca %struct.thermal_zone_device*, align 8
  %5 = alloca %struct.irq_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.max8973_chip* %0, %struct.max8973_chip** %3, align 8
  store i64 0, i64* %6, align 8
  %8 = load %struct.max8973_chip*, %struct.max8973_chip** %3, align 8
  %9 = getelementptr inbounds %struct.max8973_chip, %struct.max8973_chip* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @MAX77621, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %80

14:                                               ; preds = %1
  %15 = load %struct.max8973_chip*, %struct.max8973_chip** %3, align 8
  %16 = getelementptr inbounds %struct.max8973_chip, %struct.max8973_chip* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.max8973_chip*, %struct.max8973_chip** %3, align 8
  %19 = call %struct.thermal_zone_device* @devm_thermal_zone_of_sensor_register(i32 %17, i32 0, %struct.max8973_chip* %18, i32* @max77621_tz_ops)
  store %struct.thermal_zone_device* %19, %struct.thermal_zone_device** %4, align 8
  %20 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %21 = call i64 @IS_ERR(%struct.thermal_zone_device* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %14
  %24 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %25 = call i32 @PTR_ERR(%struct.thermal_zone_device* %24)
  store i32 %25, i32* %7, align 4
  %26 = load %struct.max8973_chip*, %struct.max8973_chip** %3, align 8
  %27 = getelementptr inbounds %struct.max8973_chip, %struct.max8973_chip* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %28, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %2, align 4
  br label %80

32:                                               ; preds = %14
  %33 = load %struct.max8973_chip*, %struct.max8973_chip** %3, align 8
  %34 = getelementptr inbounds %struct.max8973_chip, %struct.max8973_chip* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp sle i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %80

38:                                               ; preds = %32
  %39 = load %struct.max8973_chip*, %struct.max8973_chip** %3, align 8
  %40 = getelementptr inbounds %struct.max8973_chip, %struct.max8973_chip* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call %struct.irq_data* @irq_get_irq_data(i32 %41)
  store %struct.irq_data* %42, %struct.irq_data** %5, align 8
  %43 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %44 = icmp ne %struct.irq_data* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %47 = call i64 @irqd_get_trigger_type(%struct.irq_data* %46)
  store i64 %47, i64* %6, align 8
  br label %48

48:                                               ; preds = %45, %38
  %49 = load %struct.max8973_chip*, %struct.max8973_chip** %3, align 8
  %50 = getelementptr inbounds %struct.max8973_chip, %struct.max8973_chip* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.max8973_chip*, %struct.max8973_chip** %3, align 8
  %53 = getelementptr inbounds %struct.max8973_chip, %struct.max8973_chip* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @max8973_thermal_irq, align 4
  %56 = load i64, i64* @IRQF_ONESHOT, align 8
  %57 = load i64, i64* @IRQF_SHARED, align 8
  %58 = or i64 %56, %57
  %59 = load i64, i64* %6, align 8
  %60 = or i64 %58, %59
  %61 = load %struct.max8973_chip*, %struct.max8973_chip** %3, align 8
  %62 = getelementptr inbounds %struct.max8973_chip, %struct.max8973_chip* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @dev_name(i32 %63)
  %65 = load %struct.max8973_chip*, %struct.max8973_chip** %3, align 8
  %66 = call i32 @devm_request_threaded_irq(i32 %51, i32 %54, i32* null, i32 %55, i64 %60, i32 %64, %struct.max8973_chip* %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %48
  %70 = load %struct.max8973_chip*, %struct.max8973_chip** %3, align 8
  %71 = getelementptr inbounds %struct.max8973_chip, %struct.max8973_chip* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.max8973_chip*, %struct.max8973_chip** %3, align 8
  %74 = getelementptr inbounds %struct.max8973_chip, %struct.max8973_chip* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %72, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %75, i32 %76)
  %78 = load i32, i32* %7, align 4
  store i32 %78, i32* %2, align 4
  br label %80

79:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %79, %69, %37, %23, %13
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local %struct.thermal_zone_device* @devm_thermal_zone_of_sensor_register(i32, i32, %struct.max8973_chip*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.thermal_zone_device*) #1

declare dso_local i32 @PTR_ERR(%struct.thermal_zone_device*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local %struct.irq_data* @irq_get_irq_data(i32) #1

declare dso_local i64 @irqd_get_trigger_type(%struct.irq_data*) #1

declare dso_local i32 @devm_request_threaded_irq(i32, i32, i32*, i32, i64, i32, %struct.max8973_chip*) #1

declare dso_local i32 @dev_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
