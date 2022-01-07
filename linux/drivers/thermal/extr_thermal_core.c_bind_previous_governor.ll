; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_thermal_core.c_bind_previous_governor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_thermal_core.c_bind_previous_governor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_zone_device = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i64 (%struct.thermal_zone_device*)* }

@.str = private unnamed_addr constant [108 x i8] c"governor %s failed to bind and the previous one (%s) failed to bind again, thermal zone %s has no governor\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thermal_zone_device*, i8*)* @bind_previous_governor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bind_previous_governor(%struct.thermal_zone_device* %0, i8* %1) #0 {
  %3 = alloca %struct.thermal_zone_device*, align 8
  %4 = alloca i8*, align 8
  store %struct.thermal_zone_device* %0, %struct.thermal_zone_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %6 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = icmp ne %struct.TYPE_2__* %7, null
  br i1 %8, label %9, label %41

9:                                                ; preds = %2
  %10 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %11 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i64 (%struct.thermal_zone_device*)*, i64 (%struct.thermal_zone_device*)** %13, align 8
  %15 = icmp ne i64 (%struct.thermal_zone_device*)* %14, null
  br i1 %15, label %16, label %41

16:                                               ; preds = %9
  %17 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %18 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i64 (%struct.thermal_zone_device*)*, i64 (%struct.thermal_zone_device*)** %20, align 8
  %22 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %23 = call i64 %21(%struct.thermal_zone_device* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %16
  %26 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %27 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %26, i32 0, i32 2
  %28 = load i8*, i8** %4, align 8
  %29 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %30 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %35 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str, i64 0, i64 0), i8* %28, i32 %33, i32 %36)
  %38 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %39 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %38, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %39, align 8
  br label %40

40:                                               ; preds = %25, %16
  br label %41

41:                                               ; preds = %40, %9, %2
  ret void
}

declare dso_local i32 @dev_err(i32*, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
