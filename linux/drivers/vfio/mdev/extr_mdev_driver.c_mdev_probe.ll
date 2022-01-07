; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/mdev/extr_mdev_driver.c_mdev_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/mdev/extr_mdev_driver.c_mdev_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.mdev_driver = type { i32 (%struct.device.0*)* }
%struct.device.0 = type opaque
%struct.mdev_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @mdev_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdev_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.mdev_driver*, align 8
  %5 = alloca %struct.mdev_device*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.mdev_driver* @to_mdev_driver(i32 %9)
  store %struct.mdev_driver* %10, %struct.mdev_driver** %4, align 8
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = call %struct.mdev_device* @to_mdev_device(%struct.device* %11)
  store %struct.mdev_device* %12, %struct.mdev_device** %5, align 8
  %13 = load %struct.mdev_device*, %struct.mdev_device** %5, align 8
  %14 = call i32 @mdev_attach_iommu(%struct.mdev_device* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %2, align 4
  br label %42

19:                                               ; preds = %1
  %20 = load %struct.mdev_driver*, %struct.mdev_driver** %4, align 8
  %21 = icmp ne %struct.mdev_driver* %20, null
  br i1 %21, label %22, label %40

22:                                               ; preds = %19
  %23 = load %struct.mdev_driver*, %struct.mdev_driver** %4, align 8
  %24 = getelementptr inbounds %struct.mdev_driver, %struct.mdev_driver* %23, i32 0, i32 0
  %25 = load i32 (%struct.device.0*)*, i32 (%struct.device.0*)** %24, align 8
  %26 = icmp ne i32 (%struct.device.0*)* %25, null
  br i1 %26, label %27, label %40

27:                                               ; preds = %22
  %28 = load %struct.mdev_driver*, %struct.mdev_driver** %4, align 8
  %29 = getelementptr inbounds %struct.mdev_driver, %struct.mdev_driver* %28, i32 0, i32 0
  %30 = load i32 (%struct.device.0*)*, i32 (%struct.device.0*)** %29, align 8
  %31 = load %struct.device*, %struct.device** %3, align 8
  %32 = bitcast %struct.device* %31 to %struct.device.0*
  %33 = call i32 %30(%struct.device.0* %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load %struct.mdev_device*, %struct.mdev_device** %5, align 8
  %38 = call i32 @mdev_detach_iommu(%struct.mdev_device* %37)
  br label %39

39:                                               ; preds = %36, %27
  br label %40

40:                                               ; preds = %39, %22, %19
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %40, %17
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.mdev_driver* @to_mdev_driver(i32) #1

declare dso_local %struct.mdev_device* @to_mdev_device(%struct.device*) #1

declare dso_local i32 @mdev_attach_iommu(%struct.mdev_device*) #1

declare dso_local i32 @mdev_detach_iommu(%struct.mdev_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
