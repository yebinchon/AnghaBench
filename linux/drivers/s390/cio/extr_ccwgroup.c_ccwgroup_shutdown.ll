; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_ccwgroup.c_ccwgroup_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_ccwgroup.c_ccwgroup_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ccwgroup_device = type { i32 }
%struct.ccwgroup_driver = type { i32 (%struct.ccwgroup_device.0*)* }
%struct.ccwgroup_device.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @ccwgroup_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccwgroup_shutdown(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.ccwgroup_device*, align 8
  %4 = alloca %struct.ccwgroup_driver*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.ccwgroup_device* @to_ccwgroupdev(%struct.device* %5)
  store %struct.ccwgroup_device* %6, %struct.ccwgroup_device** %3, align 8
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.ccwgroup_driver* @to_ccwgroupdrv(i32 %9)
  store %struct.ccwgroup_driver* %10, %struct.ccwgroup_driver** %4, align 8
  %11 = load %struct.device*, %struct.device** %2, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %28

16:                                               ; preds = %1
  %17 = load %struct.ccwgroup_driver*, %struct.ccwgroup_driver** %4, align 8
  %18 = getelementptr inbounds %struct.ccwgroup_driver, %struct.ccwgroup_driver* %17, i32 0, i32 0
  %19 = load i32 (%struct.ccwgroup_device.0*)*, i32 (%struct.ccwgroup_device.0*)** %18, align 8
  %20 = icmp ne i32 (%struct.ccwgroup_device.0*)* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load %struct.ccwgroup_driver*, %struct.ccwgroup_driver** %4, align 8
  %23 = getelementptr inbounds %struct.ccwgroup_driver, %struct.ccwgroup_driver* %22, i32 0, i32 0
  %24 = load i32 (%struct.ccwgroup_device.0*)*, i32 (%struct.ccwgroup_device.0*)** %23, align 8
  %25 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %26 = bitcast %struct.ccwgroup_device* %25 to %struct.ccwgroup_device.0*
  %27 = call i32 %24(%struct.ccwgroup_device.0* %26)
  br label %28

28:                                               ; preds = %15, %21, %16
  ret void
}

declare dso_local %struct.ccwgroup_device* @to_ccwgroupdev(%struct.device*) #1

declare dso_local %struct.ccwgroup_driver* @to_ccwgroupdrv(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
