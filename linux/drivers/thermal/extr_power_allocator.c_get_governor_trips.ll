; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_power_allocator.c_get_governor_trips.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_power_allocator.c_get_governor_trips.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_zone_device = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.thermal_zone_device*, i32, i32*)* }
%struct.power_allocator_params = type { i32, i32 }

@INVALID_TRIP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Failed to get trip point %d type: %d\0A\00", align 1
@THERMAL_TRIP_PASSIVE = common dso_local global i32 0, align 4
@THERMAL_TRIP_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thermal_zone_device*, %struct.power_allocator_params*)* @get_governor_trips to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_governor_trips(%struct.thermal_zone_device* %0, %struct.power_allocator_params* %1) #0 {
  %3 = alloca %struct.thermal_zone_device*, align 8
  %4 = alloca %struct.power_allocator_params*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.thermal_zone_device* %0, %struct.thermal_zone_device** %3, align 8
  store %struct.power_allocator_params* %1, %struct.power_allocator_params** %4, align 8
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* @INVALID_TRIP, align 4
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @INVALID_TRIP, align 4
  store i32 %12, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %59, %2
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %16 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %62

19:                                               ; preds = %13
  %20 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %21 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32*)** %23, align 8
  %25 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 %24(%struct.thermal_zone_device* %25, i32 %26, i32* %9)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %19
  %31 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %32 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %31, i32 0, i32 1
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @dev_warn(i32* %32, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34)
  br label %59

36:                                               ; preds = %19
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @THERMAL_TRIP_PASSIVE, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %36
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.power_allocator_params*, %struct.power_allocator_params** %4, align 8
  %46 = getelementptr inbounds %struct.power_allocator_params, %struct.power_allocator_params* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  store i32 1, i32* %8, align 4
  br label %49

47:                                               ; preds = %40
  %48 = load i32, i32* %5, align 4
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %47, %43
  br label %58

50:                                               ; preds = %36
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @THERMAL_TRIP_ACTIVE, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, i32* %5, align 4
  store i32 %55, i32* %6, align 4
  br label %57

56:                                               ; preds = %50
  br label %62

57:                                               ; preds = %54
  br label %58

58:                                               ; preds = %57, %49
  br label %59

59:                                               ; preds = %58, %30
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %13

62:                                               ; preds = %56, %13
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @INVALID_TRIP, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.power_allocator_params*, %struct.power_allocator_params** %4, align 8
  %69 = getelementptr inbounds %struct.power_allocator_params, %struct.power_allocator_params* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  br label %90

70:                                               ; preds = %62
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %70
  %74 = load %struct.power_allocator_params*, %struct.power_allocator_params** %4, align 8
  %75 = getelementptr inbounds %struct.power_allocator_params, %struct.power_allocator_params* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.power_allocator_params*, %struct.power_allocator_params** %4, align 8
  %78 = getelementptr inbounds %struct.power_allocator_params, %struct.power_allocator_params* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* @INVALID_TRIP, align 4
  %80 = load %struct.power_allocator_params*, %struct.power_allocator_params** %4, align 8
  %81 = getelementptr inbounds %struct.power_allocator_params, %struct.power_allocator_params* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  br label %89

82:                                               ; preds = %70
  %83 = load i32, i32* @INVALID_TRIP, align 4
  %84 = load %struct.power_allocator_params*, %struct.power_allocator_params** %4, align 8
  %85 = getelementptr inbounds %struct.power_allocator_params, %struct.power_allocator_params* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* %6, align 4
  %87 = load %struct.power_allocator_params*, %struct.power_allocator_params** %4, align 8
  %88 = getelementptr inbounds %struct.power_allocator_params, %struct.power_allocator_params* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  br label %89

89:                                               ; preds = %82, %73
  br label %90

90:                                               ; preds = %89, %66
  ret void
}

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
