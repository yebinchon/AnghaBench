; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_power_allocator.c_power_allocator_throttle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_power_allocator.c_power_allocator_throttle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_zone_device = type { i32, i32, i32, %struct.TYPE_2__*, %struct.power_allocator_params* }
%struct.TYPE_2__ = type { i32 (%struct.thermal_zone_device*, i32, i32*)* }
%struct.power_allocator_params = type { i32, i32 }

@.str = private unnamed_addr constant [51 x i8] c"Failed to get the maximum desired temperature: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_zone_device*, i32)* @power_allocator_throttle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @power_allocator_throttle(%struct.thermal_zone_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thermal_zone_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.power_allocator_params*, align 8
  store %struct.thermal_zone_device* %0, %struct.thermal_zone_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %11 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %10, i32 0, i32 4
  %12 = load %struct.power_allocator_params*, %struct.power_allocator_params** %11, align 8
  store %struct.power_allocator_params* %12, %struct.power_allocator_params** %9, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.power_allocator_params*, %struct.power_allocator_params** %9, align 8
  %15 = getelementptr inbounds %struct.power_allocator_params, %struct.power_allocator_params* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %70

19:                                               ; preds = %2
  %20 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %21 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %20, i32 0, i32 3
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32*)** %23, align 8
  %25 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %26 = load %struct.power_allocator_params*, %struct.power_allocator_params** %9, align 8
  %27 = getelementptr inbounds %struct.power_allocator_params, %struct.power_allocator_params* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 %24(%struct.thermal_zone_device* %25, i32 %28, i32* %7)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %45, label %32

32:                                               ; preds = %19
  %33 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %34 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %39 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %40 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %39, i32 0, i32 1
  store i32 0, i32* %40, align 4
  %41 = load %struct.power_allocator_params*, %struct.power_allocator_params** %9, align 8
  %42 = call i32 @reset_pid_controller(%struct.power_allocator_params* %41)
  %43 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %44 = call i32 @allow_maximum_power(%struct.thermal_zone_device* %43)
  store i32 0, i32* %3, align 4
  br label %70

45:                                               ; preds = %32, %19
  %46 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %47 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %46, i32 0, i32 1
  store i32 1, i32* %47, align 4
  %48 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %49 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %48, i32 0, i32 3
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32*)** %51, align 8
  %53 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %54 = load %struct.power_allocator_params*, %struct.power_allocator_params** %9, align 8
  %55 = getelementptr inbounds %struct.power_allocator_params, %struct.power_allocator_params* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 %52(%struct.thermal_zone_device* %53, i32 %56, i32* %8)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %45
  %61 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %62 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %61, i32 0, i32 2
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @dev_warn(i32* %62, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %3, align 4
  br label %70

66:                                               ; preds = %45
  %67 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @allocate_power(%struct.thermal_zone_device* %67, i32 %68)
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %66, %60, %38, %18
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @reset_pid_controller(%struct.power_allocator_params*) #1

declare dso_local i32 @allow_maximum_power(%struct.thermal_zone_device*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @allocate_power(%struct.thermal_zone_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
