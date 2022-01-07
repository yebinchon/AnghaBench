; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device.c_ccw_device_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device.c_ccw_device_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ccw_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ccw_device*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @ccw_device_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccw_device_shutdown(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.ccw_device*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = call %struct.ccw_device* @to_ccwdev(%struct.device* %4)
  store %struct.ccw_device* %5, %struct.ccw_device** %3, align 8
  %6 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %7 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = icmp ne %struct.TYPE_2__* %8, null
  br i1 %9, label %10, label %25

10:                                               ; preds = %1
  %11 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %12 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (%struct.ccw_device*)*, i32 (%struct.ccw_device*)** %14, align 8
  %16 = icmp ne i32 (%struct.ccw_device*)* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %10
  %18 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %19 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (%struct.ccw_device*)*, i32 (%struct.ccw_device*)** %21, align 8
  %23 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %24 = call i32 %22(%struct.ccw_device* %23)
  br label %25

25:                                               ; preds = %17, %10, %1
  %26 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %27 = call i32 @__disable_cmf(%struct.ccw_device* %26)
  ret void
}

declare dso_local %struct.ccw_device* @to_ccwdev(%struct.device*) #1

declare dso_local i32 @__disable_cmf(%struct.ccw_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
