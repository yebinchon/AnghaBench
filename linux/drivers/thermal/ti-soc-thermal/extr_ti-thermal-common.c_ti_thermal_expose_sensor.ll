; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/ti-soc-thermal/extr_ti-thermal-common.c_ti_thermal_expose_sensor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/ti-soc-thermal/extr_ti-thermal-common.c_ti_thermal_expose_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_bandgap = type { i32 }
%struct.ti_thermal_data = type { i32, %struct.ti_thermal_data*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ti_of_thermal_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"thermal zone device is NULL\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ti_thermal_expose_sensor(%struct.ti_bandgap* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ti_bandgap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ti_thermal_data*, align 8
  store %struct.ti_bandgap* %0, %struct.ti_bandgap** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load %struct.ti_bandgap*, %struct.ti_bandgap** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call %struct.ti_thermal_data* @ti_bandgap_get_sensor_data(%struct.ti_bandgap* %9, i32 %10)
  store %struct.ti_thermal_data* %11, %struct.ti_thermal_data** %8, align 8
  %12 = load %struct.ti_thermal_data*, %struct.ti_thermal_data** %8, align 8
  %13 = icmp ne %struct.ti_thermal_data* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load %struct.ti_thermal_data*, %struct.ti_thermal_data** %8, align 8
  %16 = call i64 @IS_ERR(%struct.ti_thermal_data* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14, %3
  %19 = load %struct.ti_bandgap*, %struct.ti_bandgap** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call %struct.ti_thermal_data* @ti_thermal_build_data(%struct.ti_bandgap* %19, i32 %20)
  store %struct.ti_thermal_data* %21, %struct.ti_thermal_data** %8, align 8
  br label %22

22:                                               ; preds = %18, %14
  %23 = load %struct.ti_thermal_data*, %struct.ti_thermal_data** %8, align 8
  %24 = icmp ne %struct.ti_thermal_data* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %66

28:                                               ; preds = %22
  %29 = load %struct.ti_bandgap*, %struct.ti_bandgap** %5, align 8
  %30 = getelementptr inbounds %struct.ti_bandgap, %struct.ti_bandgap* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.ti_thermal_data*, %struct.ti_thermal_data** %8, align 8
  %34 = call %struct.ti_thermal_data* @devm_thermal_zone_of_sensor_register(i32 %31, i32 %32, %struct.ti_thermal_data* %33, i32* @ti_of_thermal_ops)
  %35 = load %struct.ti_thermal_data*, %struct.ti_thermal_data** %8, align 8
  %36 = getelementptr inbounds %struct.ti_thermal_data, %struct.ti_thermal_data* %35, i32 0, i32 1
  store %struct.ti_thermal_data* %34, %struct.ti_thermal_data** %36, align 8
  %37 = load %struct.ti_thermal_data*, %struct.ti_thermal_data** %8, align 8
  %38 = getelementptr inbounds %struct.ti_thermal_data, %struct.ti_thermal_data* %37, i32 0, i32 1
  %39 = load %struct.ti_thermal_data*, %struct.ti_thermal_data** %38, align 8
  %40 = call i64 @IS_ERR(%struct.ti_thermal_data* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %28
  %43 = load %struct.ti_bandgap*, %struct.ti_bandgap** %5, align 8
  %44 = getelementptr inbounds %struct.ti_bandgap, %struct.ti_bandgap* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %47 = load %struct.ti_thermal_data*, %struct.ti_thermal_data** %8, align 8
  %48 = getelementptr inbounds %struct.ti_thermal_data, %struct.ti_thermal_data* %47, i32 0, i32 1
  %49 = load %struct.ti_thermal_data*, %struct.ti_thermal_data** %48, align 8
  %50 = call i32 @PTR_ERR(%struct.ti_thermal_data* %49)
  store i32 %50, i32* %4, align 4
  br label %66

51:                                               ; preds = %28
  %52 = load %struct.ti_bandgap*, %struct.ti_bandgap** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.ti_thermal_data*, %struct.ti_thermal_data** %8, align 8
  %55 = call i32 @ti_bandgap_set_sensor_data(%struct.ti_bandgap* %52, i32 %53, %struct.ti_thermal_data* %54)
  %56 = load %struct.ti_bandgap*, %struct.ti_bandgap** %5, align 8
  %57 = load %struct.ti_thermal_data*, %struct.ti_thermal_data** %8, align 8
  %58 = getelementptr inbounds %struct.ti_thermal_data, %struct.ti_thermal_data* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.ti_thermal_data*, %struct.ti_thermal_data** %8, align 8
  %61 = getelementptr inbounds %struct.ti_thermal_data, %struct.ti_thermal_data* %60, i32 0, i32 1
  %62 = load %struct.ti_thermal_data*, %struct.ti_thermal_data** %61, align 8
  %63 = getelementptr inbounds %struct.ti_thermal_data, %struct.ti_thermal_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @ti_bandgap_write_update_interval(%struct.ti_bandgap* %56, i32 %59, i32 %64)
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %51, %42, %25
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local %struct.ti_thermal_data* @ti_bandgap_get_sensor_data(%struct.ti_bandgap*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ti_thermal_data*) #1

declare dso_local %struct.ti_thermal_data* @ti_thermal_build_data(%struct.ti_bandgap*, i32) #1

declare dso_local %struct.ti_thermal_data* @devm_thermal_zone_of_sensor_register(i32, i32, %struct.ti_thermal_data*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.ti_thermal_data*) #1

declare dso_local i32 @ti_bandgap_set_sensor_data(%struct.ti_bandgap*, i32, %struct.ti_thermal_data*) #1

declare dso_local i32 @ti_bandgap_write_update_interval(%struct.ti_bandgap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
