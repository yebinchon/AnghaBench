; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_vfio_ccw_ops.c_vfio_ccw_mdev_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_vfio_ccw_ops.c_vfio_ccw_mdev_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdev_device = type { i32 }
%struct.vfio_ccw_private = type { i64, i32, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.vfio_ccw_private*, %struct.TYPE_5__*)* }

@VFIO_CCW_STATE_NOT_OPER = common dso_local global i64 0, align 8
@VFIO_CCW_STATE_STANDBY = common dso_local global i64 0, align 8
@VFIO_IOMMU_NOTIFY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mdev_device*)* @vfio_ccw_mdev_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfio_ccw_mdev_release(%struct.mdev_device* %0) #0 {
  %2 = alloca %struct.mdev_device*, align 8
  %3 = alloca %struct.vfio_ccw_private*, align 8
  %4 = alloca i32, align 4
  store %struct.mdev_device* %0, %struct.mdev_device** %2, align 8
  %5 = load %struct.mdev_device*, %struct.mdev_device** %2, align 8
  %6 = call i32 @mdev_parent_dev(%struct.mdev_device* %5)
  %7 = call %struct.vfio_ccw_private* @dev_get_drvdata(i32 %6)
  store %struct.vfio_ccw_private* %7, %struct.vfio_ccw_private** %3, align 8
  %8 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %3, align 8
  %9 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @VFIO_CCW_STATE_NOT_OPER, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %28

13:                                               ; preds = %1
  %14 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %3, align 8
  %15 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @VFIO_CCW_STATE_STANDBY, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %13
  %20 = load %struct.mdev_device*, %struct.mdev_device** %2, align 8
  %21 = call i32 @vfio_ccw_mdev_reset(%struct.mdev_device* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i64, i64* @VFIO_CCW_STATE_STANDBY, align 8
  %25 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %3, align 8
  %26 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  br label %27

27:                                               ; preds = %23, %19
  br label %28

28:                                               ; preds = %27, %13, %1
  %29 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %3, align 8
  %30 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %29, i32 0, i32 4
  %31 = call i32 @cp_free(i32* %30)
  %32 = load %struct.mdev_device*, %struct.mdev_device** %2, align 8
  %33 = call i32 @mdev_dev(%struct.mdev_device* %32)
  %34 = load i32, i32* @VFIO_IOMMU_NOTIFY, align 4
  %35 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %3, align 8
  %36 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %35, i32 0, i32 3
  %37 = call i32 @vfio_unregister_notifier(i32 %33, i32 %34, i32* %36)
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %63, %28
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %3, align 8
  %41 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %66

44:                                               ; preds = %38
  %45 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %3, align 8
  %46 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %45, i32 0, i32 2
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32 (%struct.vfio_ccw_private*, %struct.TYPE_5__*)*, i32 (%struct.vfio_ccw_private*, %struct.TYPE_5__*)** %53, align 8
  %55 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %3, align 8
  %56 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %3, align 8
  %57 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %56, i32 0, i32 2
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i64 %60
  %62 = call i32 %54(%struct.vfio_ccw_private* %55, %struct.TYPE_5__* %61)
  br label %63

63:                                               ; preds = %44
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %4, align 4
  br label %38

66:                                               ; preds = %38
  %67 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %3, align 8
  %68 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %67, i32 0, i32 1
  store i32 0, i32* %68, align 8
  %69 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %3, align 8
  %70 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %69, i32 0, i32 2
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = call i32 @kfree(%struct.TYPE_5__* %71)
  %73 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %3, align 8
  %74 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %73, i32 0, i32 2
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %74, align 8
  ret void
}

declare dso_local %struct.vfio_ccw_private* @dev_get_drvdata(i32) #1

declare dso_local i32 @mdev_parent_dev(%struct.mdev_device*) #1

declare dso_local i32 @vfio_ccw_mdev_reset(%struct.mdev_device*) #1

declare dso_local i32 @cp_free(i32*) #1

declare dso_local i32 @vfio_unregister_notifier(i32, i32, i32*) #1

declare dso_local i32 @mdev_dev(%struct.mdev_device*) #1

declare dso_local i32 @kfree(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
