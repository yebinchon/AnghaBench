; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_thermal_sysfs.c_sustainable_power_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_thermal_sysfs.c_sustainable_power_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.thermal_zone_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EIO = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @sustainable_power_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sustainable_power_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.thermal_zone_device*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = call %struct.thermal_zone_device* @to_thermal_zone(%struct.device* %12)
  store %struct.thermal_zone_device* %13, %struct.thermal_zone_device** %10, align 8
  %14 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %10, align 8
  %15 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = icmp ne %struct.TYPE_2__* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i64, i64* @EIO, align 8
  %20 = sub i64 0, %19
  store i64 %20, i64* %5, align 8
  br label %35

21:                                               ; preds = %4
  %22 = load i8*, i8** %8, align 8
  %23 = call i64 @kstrtou32(i8* %22, i32 10, i32* %11)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i64, i64* @EINVAL, align 8
  %27 = sub i64 0, %26
  store i64 %27, i64* %5, align 8
  br label %35

28:                                               ; preds = %21
  %29 = load i32, i32* %11, align 4
  %30 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %10, align 8
  %31 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 %29, i32* %33, align 4
  %34 = load i64, i64* %9, align 8
  store i64 %34, i64* %5, align 8
  br label %35

35:                                               ; preds = %28, %25, %18
  %36 = load i64, i64* %5, align 8
  ret i64 %36
}

declare dso_local %struct.thermal_zone_device* @to_thermal_zone(%struct.device*) #1

declare dso_local i64 @kstrtou32(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
