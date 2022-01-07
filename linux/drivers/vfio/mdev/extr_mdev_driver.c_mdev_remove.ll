; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/mdev/extr_mdev_driver.c_mdev_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/mdev/extr_mdev_driver.c_mdev_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.mdev_driver = type { i32 (%struct.device.0*)* }
%struct.device.0 = type opaque
%struct.mdev_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @mdev_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdev_remove(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.mdev_driver*, align 8
  %4 = alloca %struct.mdev_device*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.mdev_driver* @to_mdev_driver(i32 %7)
  store %struct.mdev_driver* %8, %struct.mdev_driver** %3, align 8
  %9 = load %struct.device*, %struct.device** %2, align 8
  %10 = call %struct.mdev_device* @to_mdev_device(%struct.device* %9)
  store %struct.mdev_device* %10, %struct.mdev_device** %4, align 8
  %11 = load %struct.mdev_driver*, %struct.mdev_driver** %3, align 8
  %12 = icmp ne %struct.mdev_driver* %11, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %1
  %14 = load %struct.mdev_driver*, %struct.mdev_driver** %3, align 8
  %15 = getelementptr inbounds %struct.mdev_driver, %struct.mdev_driver* %14, i32 0, i32 0
  %16 = load i32 (%struct.device.0*)*, i32 (%struct.device.0*)** %15, align 8
  %17 = icmp ne i32 (%struct.device.0*)* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  %19 = load %struct.mdev_driver*, %struct.mdev_driver** %3, align 8
  %20 = getelementptr inbounds %struct.mdev_driver, %struct.mdev_driver* %19, i32 0, i32 0
  %21 = load i32 (%struct.device.0*)*, i32 (%struct.device.0*)** %20, align 8
  %22 = load %struct.device*, %struct.device** %2, align 8
  %23 = bitcast %struct.device* %22 to %struct.device.0*
  %24 = call i32 %21(%struct.device.0* %23)
  br label %25

25:                                               ; preds = %18, %13, %1
  %26 = load %struct.mdev_device*, %struct.mdev_device** %4, align 8
  %27 = call i32 @mdev_detach_iommu(%struct.mdev_device* %26)
  ret i32 0
}

declare dso_local %struct.mdev_driver* @to_mdev_driver(i32) #1

declare dso_local %struct.mdev_device* @to_mdev_device(%struct.device*) #1

declare dso_local i32 @mdev_detach_iommu(%struct.mdev_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
