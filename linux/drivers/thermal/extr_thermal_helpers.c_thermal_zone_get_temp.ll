; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_thermal_helpers.c_thermal_zone_get_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_thermal_helpers.c_thermal_zone_get_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_zone_device = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}*, i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32*)* }

@EINVAL = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@CONFIG_THERMAL_EMULATION = common dso_local global i32 0, align 4
@THERMAL_TRIP_CRITICAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @thermal_zone_get_temp(%struct.thermal_zone_device* %0, i32* %1) #0 {
  %3 = alloca %struct.thermal_zone_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.thermal_zone_device* %0, %struct.thermal_zone_device** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @INT_MAX, align 4
  store i32 %11, i32* %7, align 4
  %12 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %13 = icmp ne %struct.thermal_zone_device* %12, null
  br i1 %13, label %14, label %26

14:                                               ; preds = %2
  %15 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %16 = call i64 @IS_ERR(%struct.thermal_zone_device* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %20 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %19, i32 0, i32 3
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = bitcast {}** %22 to i32 (%struct.thermal_zone_device*, i32*)**
  %24 = load i32 (%struct.thermal_zone_device*, i32*)*, i32 (%struct.thermal_zone_device*, i32*)** %23, align 8
  %25 = icmp ne i32 (%struct.thermal_zone_device*, i32*)* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %18, %14, %2
  br label %101

27:                                               ; preds = %18
  %28 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %29 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %28, i32 0, i32 2
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %32 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %31, i32 0, i32 3
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = bitcast {}** %34 to i32 (%struct.thermal_zone_device*, i32*)**
  %36 = load i32 (%struct.thermal_zone_device*, i32*)*, i32 (%struct.thermal_zone_device*, i32*)** %35, align 8
  %37 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 %36(%struct.thermal_zone_device* %37, i32* %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* @CONFIG_THERMAL_EMULATION, align 4
  %41 = call i64 @IS_ENABLED(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %97

43:                                               ; preds = %27
  %44 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %45 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %97

48:                                               ; preds = %43
  store i32 0, i32* %6, align 4
  br label %49

49:                                               ; preds = %80, %48
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %52 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %83

55:                                               ; preds = %49
  %56 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %57 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %56, i32 0, i32 3
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32*)** %59, align 8
  %61 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 %60(%struct.thermal_zone_device* %61, i32 %62, i32* %8)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %79, label %66

66:                                               ; preds = %55
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @THERMAL_TRIP_CRITICAL, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %66
  %71 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %72 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %71, i32 0, i32 3
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 2
  %75 = load i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32*)** %74, align 8
  %76 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i32 %75(%struct.thermal_zone_device* %76, i32 %77, i32* %7)
  store i32 %78, i32* %5, align 4
  br label %83

79:                                               ; preds = %66, %55
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %6, align 4
  br label %49

83:                                               ; preds = %70, %49
  %84 = load i32, i32* %5, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %96, label %86

86:                                               ; preds = %83
  %87 = load i32*, i32** %4, align 8
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %93 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32*, i32** %4, align 8
  store i32 %94, i32* %95, align 4
  br label %96

96:                                               ; preds = %91, %86, %83
  br label %97

97:                                               ; preds = %96, %43, %27
  %98 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %99 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %98, i32 0, i32 2
  %100 = call i32 @mutex_unlock(i32* %99)
  br label %101

101:                                              ; preds = %97, %26
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local i64 @IS_ERR(%struct.thermal_zone_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
