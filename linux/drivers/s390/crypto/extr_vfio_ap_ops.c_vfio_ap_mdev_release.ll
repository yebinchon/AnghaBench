; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_vfio_ap_ops.c_vfio_ap_mdev_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_vfio_ap_ops.c_vfio_ap_mdev_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.mdev_device = type { i32 }
%struct.ap_matrix_mdev = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }

@matrix_dev = common dso_local global %struct.TYPE_8__* null, align 8
@VFIO_IOMMU_NOTIFY = common dso_local global i32 0, align 4
@VFIO_GROUP_NOTIFY = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mdev_device*)* @vfio_ap_mdev_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfio_ap_mdev_release(%struct.mdev_device* %0) #0 {
  %2 = alloca %struct.mdev_device*, align 8
  %3 = alloca %struct.ap_matrix_mdev*, align 8
  store %struct.mdev_device* %0, %struct.mdev_device** %2, align 8
  %4 = load %struct.mdev_device*, %struct.mdev_device** %2, align 8
  %5 = call %struct.ap_matrix_mdev* @mdev_get_drvdata(%struct.mdev_device* %4)
  store %struct.ap_matrix_mdev* %5, %struct.ap_matrix_mdev** %3, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** @matrix_dev, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.ap_matrix_mdev*, %struct.ap_matrix_mdev** %3, align 8
  %10 = getelementptr inbounds %struct.ap_matrix_mdev, %struct.ap_matrix_mdev* %9, i32 0, i32 2
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %12 = icmp ne %struct.TYPE_9__* %11, null
  br i1 %12, label %13, label %32

13:                                               ; preds = %1
  %14 = load %struct.ap_matrix_mdev*, %struct.ap_matrix_mdev** %3, align 8
  %15 = getelementptr inbounds %struct.ap_matrix_mdev, %struct.ap_matrix_mdev* %14, i32 0, i32 2
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %17 = call i32 @kvm_arch_crypto_clear_masks(%struct.TYPE_9__* %16)
  %18 = load %struct.ap_matrix_mdev*, %struct.ap_matrix_mdev** %3, align 8
  %19 = getelementptr inbounds %struct.ap_matrix_mdev, %struct.ap_matrix_mdev* %18, i32 0, i32 2
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store i32* null, i32** %23, align 8
  %24 = load %struct.mdev_device*, %struct.mdev_device** %2, align 8
  %25 = call i32 @vfio_ap_mdev_reset_queues(%struct.mdev_device* %24)
  %26 = load %struct.ap_matrix_mdev*, %struct.ap_matrix_mdev** %3, align 8
  %27 = getelementptr inbounds %struct.ap_matrix_mdev, %struct.ap_matrix_mdev* %26, i32 0, i32 2
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = call i32 @kvm_put_kvm(%struct.TYPE_9__* %28)
  %30 = load %struct.ap_matrix_mdev*, %struct.ap_matrix_mdev** %3, align 8
  %31 = getelementptr inbounds %struct.ap_matrix_mdev, %struct.ap_matrix_mdev* %30, i32 0, i32 2
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %31, align 8
  br label %32

32:                                               ; preds = %13, %1
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** @matrix_dev, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = call i32 @mutex_unlock(i32* %34)
  %36 = load %struct.mdev_device*, %struct.mdev_device** %2, align 8
  %37 = call i32 @mdev_dev(%struct.mdev_device* %36)
  %38 = load i32, i32* @VFIO_IOMMU_NOTIFY, align 4
  %39 = load %struct.ap_matrix_mdev*, %struct.ap_matrix_mdev** %3, align 8
  %40 = getelementptr inbounds %struct.ap_matrix_mdev, %struct.ap_matrix_mdev* %39, i32 0, i32 1
  %41 = call i32 @vfio_unregister_notifier(i32 %37, i32 %38, i32* %40)
  %42 = load %struct.mdev_device*, %struct.mdev_device** %2, align 8
  %43 = call i32 @mdev_dev(%struct.mdev_device* %42)
  %44 = load i32, i32* @VFIO_GROUP_NOTIFY, align 4
  %45 = load %struct.ap_matrix_mdev*, %struct.ap_matrix_mdev** %3, align 8
  %46 = getelementptr inbounds %struct.ap_matrix_mdev, %struct.ap_matrix_mdev* %45, i32 0, i32 0
  %47 = call i32 @vfio_unregister_notifier(i32 %43, i32 %44, i32* %46)
  %48 = load i32, i32* @THIS_MODULE, align 4
  %49 = call i32 @module_put(i32 %48)
  ret void
}

declare dso_local %struct.ap_matrix_mdev* @mdev_get_drvdata(%struct.mdev_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kvm_arch_crypto_clear_masks(%struct.TYPE_9__*) #1

declare dso_local i32 @vfio_ap_mdev_reset_queues(%struct.mdev_device*) #1

declare dso_local i32 @kvm_put_kvm(%struct.TYPE_9__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @vfio_unregister_notifier(i32, i32, i32*) #1

declare dso_local i32 @mdev_dev(%struct.mdev_device*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
