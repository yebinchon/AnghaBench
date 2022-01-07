; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_vfio_ap_ops.c_vfio_ap_mdev_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_vfio_ap_ops.c_vfio_ap_mdev_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.mdev_device = type { i32 }
%struct.ap_matrix_mdev = type { i32, i64 }

@EBUSY = common dso_local global i32 0, align 4
@matrix_dev = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mdev_device*)* @vfio_ap_mdev_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_ap_mdev_remove(%struct.mdev_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mdev_device*, align 8
  %4 = alloca %struct.ap_matrix_mdev*, align 8
  store %struct.mdev_device* %0, %struct.mdev_device** %3, align 8
  %5 = load %struct.mdev_device*, %struct.mdev_device** %3, align 8
  %6 = call %struct.ap_matrix_mdev* @mdev_get_drvdata(%struct.mdev_device* %5)
  store %struct.ap_matrix_mdev* %6, %struct.ap_matrix_mdev** %4, align 8
  %7 = load %struct.ap_matrix_mdev*, %struct.ap_matrix_mdev** %4, align 8
  %8 = getelementptr inbounds %struct.ap_matrix_mdev, %struct.ap_matrix_mdev* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @EBUSY, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %33

14:                                               ; preds = %1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @matrix_dev, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.mdev_device*, %struct.mdev_device** %3, align 8
  %19 = call i32 @vfio_ap_mdev_reset_queues(%struct.mdev_device* %18)
  %20 = load %struct.ap_matrix_mdev*, %struct.ap_matrix_mdev** %4, align 8
  %21 = getelementptr inbounds %struct.ap_matrix_mdev, %struct.ap_matrix_mdev* %20, i32 0, i32 0
  %22 = call i32 @list_del(i32* %21)
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @matrix_dev, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = call i32 @mutex_unlock(i32* %24)
  %26 = load %struct.ap_matrix_mdev*, %struct.ap_matrix_mdev** %4, align 8
  %27 = call i32 @kfree(%struct.ap_matrix_mdev* %26)
  %28 = load %struct.mdev_device*, %struct.mdev_device** %3, align 8
  %29 = call i32 @mdev_set_drvdata(%struct.mdev_device* %28, i32* null)
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @matrix_dev, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 @atomic_inc(i32* %31)
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %14, %11
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.ap_matrix_mdev* @mdev_get_drvdata(%struct.mdev_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vfio_ap_mdev_reset_queues(%struct.mdev_device*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.ap_matrix_mdev*) #1

declare dso_local i32 @mdev_set_drvdata(%struct.mdev_device*, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
