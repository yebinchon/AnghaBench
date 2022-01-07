; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_thermal_sysfs.c_mode_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_thermal_sysfs.c_mode_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.thermal_zone_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.thermal_zone_device*, i32)* }

@EPERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@THERMAL_DEVICE_ENABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@THERMAL_DEVICE_DISABLED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @mode_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mode_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
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
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (%struct.thermal_zone_device*, i32)*, i32 (%struct.thermal_zone_device*, i32)** %17, align 8
  %19 = icmp ne i32 (%struct.thermal_zone_device*, i32)* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @EPERM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %61

23:                                               ; preds = %4
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @strncmp(i8* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %23
  %28 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %10, align 8
  %29 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (%struct.thermal_zone_device*, i32)*, i32 (%struct.thermal_zone_device*, i32)** %31, align 8
  %33 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %10, align 8
  %34 = load i32, i32* @THERMAL_DEVICE_ENABLED, align 4
  %35 = call i32 %32(%struct.thermal_zone_device* %33, i32 %34)
  store i32 %35, i32* %11, align 4
  br label %53

36:                                               ; preds = %23
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @strncmp(i8* %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %36
  %41 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %10, align 8
  %42 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32 (%struct.thermal_zone_device*, i32)*, i32 (%struct.thermal_zone_device*, i32)** %44, align 8
  %46 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %10, align 8
  %47 = load i32, i32* @THERMAL_DEVICE_DISABLED, align 4
  %48 = call i32 %45(%struct.thermal_zone_device* %46, i32 %47)
  store i32 %48, i32* %11, align 4
  br label %52

49:                                               ; preds = %36
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %49, %40
  br label %53

53:                                               ; preds = %52, %27
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i32, i32* %11, align 4
  store i32 %57, i32* %5, align 4
  br label %61

58:                                               ; preds = %53
  %59 = load i64, i64* %9, align 8
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %58, %56, %20
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local %struct.thermal_zone_device* @to_thermal_zone(%struct.device*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
