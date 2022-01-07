; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_hisi_thermal.c_hisi_thermal_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_hisi_thermal.c_hisi_thermal_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.hisi_thermal_data = type { i32, %struct.TYPE_2__*, %struct.hisi_thermal_sensor* }
%struct.TYPE_2__ = type { i32 (%struct.hisi_thermal_sensor*)* }
%struct.hisi_thermal_sensor = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @hisi_thermal_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_thermal_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.hisi_thermal_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hisi_thermal_sensor*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.hisi_thermal_data* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.hisi_thermal_data* %7, %struct.hisi_thermal_data** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %30, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %3, align 8
  %11 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %33

14:                                               ; preds = %8
  %15 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %3, align 8
  %16 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %15, i32 0, i32 2
  %17 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %17, i64 %19
  store %struct.hisi_thermal_sensor* %20, %struct.hisi_thermal_sensor** %5, align 8
  %21 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %5, align 8
  %22 = call i32 @hisi_thermal_toggle_sensor(%struct.hisi_thermal_sensor* %21, i32 0)
  %23 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %3, align 8
  %24 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.hisi_thermal_sensor*)*, i32 (%struct.hisi_thermal_sensor*)** %26, align 8
  %28 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %5, align 8
  %29 = call i32 %27(%struct.hisi_thermal_sensor* %28)
  br label %30

30:                                               ; preds = %14
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %8

33:                                               ; preds = %8
  ret i32 0
}

declare dso_local %struct.hisi_thermal_data* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @hisi_thermal_toggle_sensor(%struct.hisi_thermal_sensor*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
