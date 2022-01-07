; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/intel/int340x_thermal/extr_int3403_thermal.c_int3403_sensor_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/intel/int340x_thermal/extr_int3403_thermal.c_int3403_sensor_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.int3403_priv = type { %struct.TYPE_4__*, %struct.int3403_sensor*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.int3403_sensor = type { i32 }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACPI_DEVICE_NOTIFY = common dso_local global i32 0, align 4
@int3403_notify = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.int3403_priv*)* @int3403_sensor_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @int3403_sensor_add(%struct.int3403_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.int3403_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.int3403_sensor*, align 8
  store %struct.int3403_priv* %0, %struct.int3403_priv** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.int3403_priv*, %struct.int3403_priv** %3, align 8
  %7 = getelementptr inbounds %struct.int3403_priv, %struct.int3403_priv* %6, i32 0, i32 2
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.int3403_sensor* @devm_kzalloc(i32* %9, i32 4, i32 %10)
  store %struct.int3403_sensor* %11, %struct.int3403_sensor** %5, align 8
  %12 = load %struct.int3403_sensor*, %struct.int3403_sensor** %5, align 8
  %13 = icmp ne %struct.int3403_sensor* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %58

17:                                               ; preds = %1
  %18 = load %struct.int3403_sensor*, %struct.int3403_sensor** %5, align 8
  %19 = load %struct.int3403_priv*, %struct.int3403_priv** %3, align 8
  %20 = getelementptr inbounds %struct.int3403_priv, %struct.int3403_priv* %19, i32 0, i32 1
  store %struct.int3403_sensor* %18, %struct.int3403_sensor** %20, align 8
  %21 = load %struct.int3403_priv*, %struct.int3403_priv** %3, align 8
  %22 = getelementptr inbounds %struct.int3403_priv, %struct.int3403_priv* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = call i32 @int340x_thermal_zone_add(%struct.TYPE_4__* %23, i32* null)
  %25 = load %struct.int3403_sensor*, %struct.int3403_sensor** %5, align 8
  %26 = getelementptr inbounds %struct.int3403_sensor, %struct.int3403_sensor* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.int3403_sensor*, %struct.int3403_sensor** %5, align 8
  %28 = getelementptr inbounds %struct.int3403_sensor, %struct.int3403_sensor* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @IS_ERR(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %17
  %33 = load %struct.int3403_sensor*, %struct.int3403_sensor** %5, align 8
  %34 = getelementptr inbounds %struct.int3403_sensor, %struct.int3403_sensor* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @PTR_ERR(i32 %35)
  store i32 %36, i32* %2, align 4
  br label %58

37:                                               ; preds = %17
  %38 = load %struct.int3403_priv*, %struct.int3403_priv** %3, align 8
  %39 = getelementptr inbounds %struct.int3403_priv, %struct.int3403_priv* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @ACPI_DEVICE_NOTIFY, align 4
  %44 = load i32, i32* @int3403_notify, align 4
  %45 = load %struct.int3403_priv*, %struct.int3403_priv** %3, align 8
  %46 = bitcast %struct.int3403_priv* %45 to i8*
  %47 = call i32 @acpi_install_notify_handler(i32 %42, i32 %43, i32 %44, i8* %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %37
  br label %52

51:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %58

52:                                               ; preds = %50
  %53 = load %struct.int3403_sensor*, %struct.int3403_sensor** %5, align 8
  %54 = getelementptr inbounds %struct.int3403_sensor, %struct.int3403_sensor* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @int340x_thermal_zone_remove(i32 %55)
  %57 = load i32, i32* %4, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %52, %51, %32, %14
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.int3403_sensor* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @int340x_thermal_zone_add(%struct.TYPE_4__*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @acpi_install_notify_handler(i32, i32, i32, i8*) #1

declare dso_local i32 @int340x_thermal_zone_remove(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
