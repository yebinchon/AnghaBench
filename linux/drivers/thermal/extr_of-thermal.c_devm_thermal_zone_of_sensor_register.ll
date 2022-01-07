; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_of-thermal.c_devm_thermal_zone_of_sensor_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_of-thermal.c_devm_thermal_zone_of_sensor_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_zone_device = type { i32 }
%struct.device = type { i32 }
%struct.thermal_zone_of_device_ops = type { i32 }

@devm_thermal_zone_of_sensor_release = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.thermal_zone_device* @devm_thermal_zone_of_sensor_register(%struct.device* %0, i32 %1, i8* %2, %struct.thermal_zone_of_device_ops* %3) #0 {
  %5 = alloca %struct.thermal_zone_device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.thermal_zone_of_device_ops*, align 8
  %10 = alloca %struct.thermal_zone_device**, align 8
  %11 = alloca %struct.thermal_zone_device*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store %struct.thermal_zone_of_device_ops* %3, %struct.thermal_zone_of_device_ops** %9, align 8
  %12 = load i32, i32* @devm_thermal_zone_of_sensor_release, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.thermal_zone_device** @devres_alloc(i32 %12, i32 8, i32 %13)
  store %struct.thermal_zone_device** %14, %struct.thermal_zone_device*** %10, align 8
  %15 = load %struct.thermal_zone_device**, %struct.thermal_zone_device*** %10, align 8
  %16 = icmp ne %struct.thermal_zone_device** %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.thermal_zone_device* @ERR_PTR(i32 %19)
  store %struct.thermal_zone_device* %20, %struct.thermal_zone_device** %5, align 8
  br label %41

21:                                               ; preds = %4
  %22 = load %struct.device*, %struct.device** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i8*, i8** %8, align 8
  %25 = load %struct.thermal_zone_of_device_ops*, %struct.thermal_zone_of_device_ops** %9, align 8
  %26 = call %struct.thermal_zone_device* @thermal_zone_of_sensor_register(%struct.device* %22, i32 %23, i8* %24, %struct.thermal_zone_of_device_ops* %25)
  store %struct.thermal_zone_device* %26, %struct.thermal_zone_device** %11, align 8
  %27 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %11, align 8
  %28 = call i64 @IS_ERR(%struct.thermal_zone_device* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %21
  %31 = load %struct.thermal_zone_device**, %struct.thermal_zone_device*** %10, align 8
  %32 = call i32 @devres_free(%struct.thermal_zone_device** %31)
  %33 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %11, align 8
  store %struct.thermal_zone_device* %33, %struct.thermal_zone_device** %5, align 8
  br label %41

34:                                               ; preds = %21
  %35 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %11, align 8
  %36 = load %struct.thermal_zone_device**, %struct.thermal_zone_device*** %10, align 8
  store %struct.thermal_zone_device* %35, %struct.thermal_zone_device** %36, align 8
  %37 = load %struct.device*, %struct.device** %6, align 8
  %38 = load %struct.thermal_zone_device**, %struct.thermal_zone_device*** %10, align 8
  %39 = call i32 @devres_add(%struct.device* %37, %struct.thermal_zone_device** %38)
  %40 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %11, align 8
  store %struct.thermal_zone_device* %40, %struct.thermal_zone_device** %5, align 8
  br label %41

41:                                               ; preds = %34, %30, %17
  %42 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %5, align 8
  ret %struct.thermal_zone_device* %42
}

declare dso_local %struct.thermal_zone_device** @devres_alloc(i32, i32, i32) #1

declare dso_local %struct.thermal_zone_device* @ERR_PTR(i32) #1

declare dso_local %struct.thermal_zone_device* @thermal_zone_of_sensor_register(%struct.device*, i32, i8*, %struct.thermal_zone_of_device_ops*) #1

declare dso_local i64 @IS_ERR(%struct.thermal_zone_device*) #1

declare dso_local i32 @devres_free(%struct.thermal_zone_device**) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.thermal_zone_device**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
