; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_vfio_ccw_ops.c_vfio_ccw_mdev_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_vfio_ccw_ops.c_vfio_ccw_mdev_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdev_device = type { i32 }
%struct.vfio_ccw_private = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@VFIO_IOMMU_NOTIFY_DMA_UNMAP = common dso_local global i64 0, align 8
@vfio_ccw_mdev_notifier = common dso_local global i32 0, align 4
@VFIO_IOMMU_NOTIFY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mdev_device*)* @vfio_ccw_mdev_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_ccw_mdev_open(%struct.mdev_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mdev_device*, align 8
  %4 = alloca %struct.vfio_ccw_private*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.mdev_device* %0, %struct.mdev_device** %3, align 8
  %7 = load %struct.mdev_device*, %struct.mdev_device** %3, align 8
  %8 = call i32 @mdev_parent_dev(%struct.mdev_device* %7)
  %9 = call %struct.vfio_ccw_private* @dev_get_drvdata(i32 %8)
  store %struct.vfio_ccw_private* %9, %struct.vfio_ccw_private** %4, align 8
  %10 = load i64, i64* @VFIO_IOMMU_NOTIFY_DMA_UNMAP, align 8
  store i64 %10, i64* %5, align 8
  %11 = load i32, i32* @vfio_ccw_mdev_notifier, align 4
  %12 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %4, align 8
  %13 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i32 %11, i32* %14, align 4
  %15 = load %struct.mdev_device*, %struct.mdev_device** %3, align 8
  %16 = call i32 @mdev_dev(%struct.mdev_device* %15)
  %17 = load i32, i32* @VFIO_IOMMU_NOTIFY, align 4
  %18 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %4, align 8
  %19 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %18, i32 0, i32 0
  %20 = call i32 @vfio_register_notifier(i32 %16, i32 %17, i64* %5, %struct.TYPE_3__* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %2, align 4
  br label %39

25:                                               ; preds = %1
  %26 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %4, align 8
  %27 = call i32 @vfio_ccw_register_async_dev_regions(%struct.vfio_ccw_private* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load %struct.mdev_device*, %struct.mdev_device** %3, align 8
  %32 = call i32 @mdev_dev(%struct.mdev_device* %31)
  %33 = load i32, i32* @VFIO_IOMMU_NOTIFY, align 4
  %34 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %4, align 8
  %35 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %34, i32 0, i32 0
  %36 = call i32 @vfio_unregister_notifier(i32 %32, i32 %33, %struct.TYPE_3__* %35)
  br label %37

37:                                               ; preds = %30, %25
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %37, %23
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local %struct.vfio_ccw_private* @dev_get_drvdata(i32) #1

declare dso_local i32 @mdev_parent_dev(%struct.mdev_device*) #1

declare dso_local i32 @vfio_register_notifier(i32, i32, i64*, %struct.TYPE_3__*) #1

declare dso_local i32 @mdev_dev(%struct.mdev_device*) #1

declare dso_local i32 @vfio_ccw_register_async_dev_regions(%struct.vfio_ccw_private*) #1

declare dso_local i32 @vfio_unregister_notifier(i32, i32, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
