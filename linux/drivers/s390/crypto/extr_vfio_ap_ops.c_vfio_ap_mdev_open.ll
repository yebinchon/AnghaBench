; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_vfio_ap_ops.c_vfio_ap_mdev_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_vfio_ap_ops.c_vfio_ap_mdev_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdev_device = type { i32 }
%struct.ap_matrix_mdev = type { %struct.TYPE_3__, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@THIS_MODULE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@vfio_ap_mdev_group_notifier = common dso_local global i32 0, align 4
@VFIO_GROUP_NOTIFY_SET_KVM = common dso_local global i64 0, align 8
@VFIO_GROUP_NOTIFY = common dso_local global i32 0, align 4
@vfio_ap_mdev_iommu_notifier = common dso_local global i32 0, align 4
@VFIO_IOMMU_NOTIFY_DMA_UNMAP = common dso_local global i64 0, align 8
@VFIO_IOMMU_NOTIFY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mdev_device*)* @vfio_ap_mdev_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_ap_mdev_open(%struct.mdev_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mdev_device*, align 8
  %4 = alloca %struct.ap_matrix_mdev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.mdev_device* %0, %struct.mdev_device** %3, align 8
  %7 = load %struct.mdev_device*, %struct.mdev_device** %3, align 8
  %8 = call %struct.ap_matrix_mdev* @mdev_get_drvdata(%struct.mdev_device* %7)
  store %struct.ap_matrix_mdev* %8, %struct.ap_matrix_mdev** %4, align 8
  %9 = load i32, i32* @THIS_MODULE, align 4
  %10 = call i32 @try_module_get(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %59

15:                                               ; preds = %1
  %16 = load i32, i32* @vfio_ap_mdev_group_notifier, align 4
  %17 = load %struct.ap_matrix_mdev*, %struct.ap_matrix_mdev** %4, align 8
  %18 = getelementptr inbounds %struct.ap_matrix_mdev, %struct.ap_matrix_mdev* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 4
  %20 = load i64, i64* @VFIO_GROUP_NOTIFY_SET_KVM, align 8
  store i64 %20, i64* %5, align 8
  %21 = load %struct.mdev_device*, %struct.mdev_device** %3, align 8
  %22 = call i32 @mdev_dev(%struct.mdev_device* %21)
  %23 = load i32, i32* @VFIO_GROUP_NOTIFY, align 4
  %24 = load %struct.ap_matrix_mdev*, %struct.ap_matrix_mdev** %4, align 8
  %25 = getelementptr inbounds %struct.ap_matrix_mdev, %struct.ap_matrix_mdev* %24, i32 0, i32 0
  %26 = call i32 @vfio_register_notifier(i32 %22, i32 %23, i64* %5, %struct.TYPE_3__* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %15
  %30 = load i32, i32* @THIS_MODULE, align 4
  %31 = call i32 @module_put(i32 %30)
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %2, align 4
  br label %59

33:                                               ; preds = %15
  %34 = load i32, i32* @vfio_ap_mdev_iommu_notifier, align 4
  %35 = load %struct.ap_matrix_mdev*, %struct.ap_matrix_mdev** %4, align 8
  %36 = getelementptr inbounds %struct.ap_matrix_mdev, %struct.ap_matrix_mdev* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 4
  %38 = load i64, i64* @VFIO_IOMMU_NOTIFY_DMA_UNMAP, align 8
  store i64 %38, i64* %5, align 8
  %39 = load %struct.mdev_device*, %struct.mdev_device** %3, align 8
  %40 = call i32 @mdev_dev(%struct.mdev_device* %39)
  %41 = load i32, i32* @VFIO_IOMMU_NOTIFY, align 4
  %42 = load %struct.ap_matrix_mdev*, %struct.ap_matrix_mdev** %4, align 8
  %43 = getelementptr inbounds %struct.ap_matrix_mdev, %struct.ap_matrix_mdev* %42, i32 0, i32 1
  %44 = call i32 @vfio_register_notifier(i32 %40, i32 %41, i64* %5, %struct.TYPE_3__* %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %33
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %2, align 4
  br label %59

49:                                               ; preds = %33
  %50 = load %struct.mdev_device*, %struct.mdev_device** %3, align 8
  %51 = call i32 @mdev_dev(%struct.mdev_device* %50)
  %52 = load i32, i32* @VFIO_GROUP_NOTIFY, align 4
  %53 = load %struct.ap_matrix_mdev*, %struct.ap_matrix_mdev** %4, align 8
  %54 = getelementptr inbounds %struct.ap_matrix_mdev, %struct.ap_matrix_mdev* %53, i32 0, i32 0
  %55 = call i32 @vfio_unregister_notifier(i32 %51, i32 %52, %struct.TYPE_3__* %54)
  %56 = load i32, i32* @THIS_MODULE, align 4
  %57 = call i32 @module_put(i32 %56)
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %49, %47, %29, %12
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.ap_matrix_mdev* @mdev_get_drvdata(%struct.mdev_device*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @vfio_register_notifier(i32, i32, i64*, %struct.TYPE_3__*) #1

declare dso_local i32 @mdev_dev(%struct.mdev_device*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @vfio_unregister_notifier(i32, i32, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
