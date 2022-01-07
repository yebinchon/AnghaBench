; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_power_allocator.c_power_allocator_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_power_allocator.c_power_allocator_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_zone_device = type { i64, %struct.power_allocator_params*, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.power_allocator_params = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (%struct.thermal_zone_device*, i32, i32*)* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"power_allocator: sustainable_power will be estimated\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_zone_device*)* @power_allocator_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @power_allocator_bind(%struct.thermal_zone_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.thermal_zone_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_allocator_params*, align 8
  %6 = alloca i32, align 4
  store %struct.thermal_zone_device* %0, %struct.thermal_zone_device** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call i8* @kzalloc(i32 12, i32 %7)
  %9 = bitcast i8* %8 to %struct.power_allocator_params*
  store %struct.power_allocator_params* %9, %struct.power_allocator_params** %5, align 8
  %10 = load %struct.power_allocator_params*, %struct.power_allocator_params** %5, align 8
  %11 = icmp ne %struct.power_allocator_params* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %91

15:                                               ; preds = %1
  %16 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %17 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %16, i32 0, i32 2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = icmp ne %struct.TYPE_4__* %18, null
  br i1 %19, label %36, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i8* @kzalloc(i32 4, i32 %21)
  %23 = bitcast i8* %22 to %struct.TYPE_4__*
  %24 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %25 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %24, i32 0, i32 2
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %25, align 8
  %26 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %27 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %26, i32 0, i32 2
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = icmp ne %struct.TYPE_4__* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %20
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %87

33:                                               ; preds = %20
  %34 = load %struct.power_allocator_params*, %struct.power_allocator_params** %5, align 8
  %35 = getelementptr inbounds %struct.power_allocator_params, %struct.power_allocator_params* %34, i32 0, i32 0
  store i32 1, i32* %35, align 4
  br label %36

36:                                               ; preds = %33, %15
  %37 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %38 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %37, i32 0, i32 2
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %36
  %44 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %45 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %44, i32 0, i32 4
  %46 = call i32 @dev_warn(i32* %45, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %43, %36
  %48 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %49 = load %struct.power_allocator_params*, %struct.power_allocator_params** %5, align 8
  %50 = call i32 @get_governor_trips(%struct.thermal_zone_device* %48, %struct.power_allocator_params* %49)
  %51 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %52 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %81

55:                                               ; preds = %47
  %56 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %57 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %56, i32 0, i32 3
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32*)** %59, align 8
  %61 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %62 = load %struct.power_allocator_params*, %struct.power_allocator_params** %5, align 8
  %63 = getelementptr inbounds %struct.power_allocator_params, %struct.power_allocator_params* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 %60(%struct.thermal_zone_device* %61, i32 %64, i32* %6)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %80, label %68

68:                                               ; preds = %55
  %69 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %70 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %71 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %70, i32 0, i32 2
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.power_allocator_params*, %struct.power_allocator_params** %5, align 8
  %76 = getelementptr inbounds %struct.power_allocator_params, %struct.power_allocator_params* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @estimate_pid_constants(%struct.thermal_zone_device* %69, i32 %74, i32 %77, i32 %78, i32 0)
  br label %80

80:                                               ; preds = %68, %55
  br label %81

81:                                               ; preds = %80, %47
  %82 = load %struct.power_allocator_params*, %struct.power_allocator_params** %5, align 8
  %83 = call i32 @reset_pid_controller(%struct.power_allocator_params* %82)
  %84 = load %struct.power_allocator_params*, %struct.power_allocator_params** %5, align 8
  %85 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %86 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %85, i32 0, i32 1
  store %struct.power_allocator_params* %84, %struct.power_allocator_params** %86, align 8
  store i32 0, i32* %2, align 4
  br label %91

87:                                               ; preds = %30
  %88 = load %struct.power_allocator_params*, %struct.power_allocator_params** %5, align 8
  %89 = call i32 @kfree(%struct.power_allocator_params* %88)
  %90 = load i32, i32* %4, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %87, %81, %12
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @get_governor_trips(%struct.thermal_zone_device*, %struct.power_allocator_params*) #1

declare dso_local i32 @estimate_pid_constants(%struct.thermal_zone_device*, i32, i32, i32, i32) #1

declare dso_local i32 @reset_pid_controller(%struct.power_allocator_params*) #1

declare dso_local i32 @kfree(%struct.power_allocator_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
