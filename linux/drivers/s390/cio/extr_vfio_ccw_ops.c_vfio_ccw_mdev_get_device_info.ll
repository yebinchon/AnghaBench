; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_vfio_ccw_ops.c_vfio_ccw_mdev_get_device_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_vfio_ccw_ops.c_vfio_ccw_mdev_get_device_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_device_info = type { i32, i32, i64 }
%struct.mdev_device = type { i32 }
%struct.vfio_ccw_private = type { i64 }

@VFIO_DEVICE_FLAGS_CCW = common dso_local global i32 0, align 4
@VFIO_DEVICE_FLAGS_RESET = common dso_local global i32 0, align 4
@VFIO_CCW_NUM_REGIONS = common dso_local global i64 0, align 8
@VFIO_CCW_NUM_IRQS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfio_device_info*, %struct.mdev_device*)* @vfio_ccw_mdev_get_device_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_ccw_mdev_get_device_info(%struct.vfio_device_info* %0, %struct.mdev_device* %1) #0 {
  %3 = alloca %struct.vfio_device_info*, align 8
  %4 = alloca %struct.mdev_device*, align 8
  %5 = alloca %struct.vfio_ccw_private*, align 8
  store %struct.vfio_device_info* %0, %struct.vfio_device_info** %3, align 8
  store %struct.mdev_device* %1, %struct.mdev_device** %4, align 8
  %6 = load %struct.mdev_device*, %struct.mdev_device** %4, align 8
  %7 = call i32 @mdev_parent_dev(%struct.mdev_device* %6)
  %8 = call %struct.vfio_ccw_private* @dev_get_drvdata(i32 %7)
  store %struct.vfio_ccw_private* %8, %struct.vfio_ccw_private** %5, align 8
  %9 = load i32, i32* @VFIO_DEVICE_FLAGS_CCW, align 4
  %10 = load i32, i32* @VFIO_DEVICE_FLAGS_RESET, align 4
  %11 = or i32 %9, %10
  %12 = load %struct.vfio_device_info*, %struct.vfio_device_info** %3, align 8
  %13 = getelementptr inbounds %struct.vfio_device_info, %struct.vfio_device_info* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load i64, i64* @VFIO_CCW_NUM_REGIONS, align 8
  %15 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %5, align 8
  %16 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %14, %17
  %19 = load %struct.vfio_device_info*, %struct.vfio_device_info** %3, align 8
  %20 = getelementptr inbounds %struct.vfio_device_info, %struct.vfio_device_info* %19, i32 0, i32 2
  store i64 %18, i64* %20, align 8
  %21 = load i32, i32* @VFIO_CCW_NUM_IRQS, align 4
  %22 = load %struct.vfio_device_info*, %struct.vfio_device_info** %3, align 8
  %23 = getelementptr inbounds %struct.vfio_device_info, %struct.vfio_device_info* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  ret i32 0
}

declare dso_local %struct.vfio_ccw_private* @dev_get_drvdata(i32) #1

declare dso_local i32 @mdev_parent_dev(%struct.mdev_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
