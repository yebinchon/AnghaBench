; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_thermal_core.c_thermal_zone_device_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_thermal_core.c_thermal_zone_device_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_zone_device = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@in_suspend = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @thermal_zone_device_update(%struct.thermal_zone_device* %0, i32 %1) #0 {
  %3 = alloca %struct.thermal_zone_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.thermal_zone_device* %0, %struct.thermal_zone_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i64 @atomic_read(i32* @in_suspend)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %38

9:                                                ; preds = %2
  %10 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %11 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %9
  br label %38

17:                                               ; preds = %9
  %18 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %19 = call i32 @update_temperature(%struct.thermal_zone_device* %18)
  %20 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %21 = call i32 @thermal_zone_set_trips(%struct.thermal_zone_device* %20)
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %24 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %35, %17
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %28 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @handle_thermal_trip(%struct.thermal_zone_device* %32, i32 %33)
  br label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %25

38:                                               ; preds = %8, %16, %25
  ret void
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @update_temperature(%struct.thermal_zone_device*) #1

declare dso_local i32 @thermal_zone_set_trips(%struct.thermal_zone_device*) #1

declare dso_local i32 @handle_thermal_trip(%struct.thermal_zone_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
