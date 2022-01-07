; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_vfio_ccw_ops.c_vfio_ccw_mdev_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_vfio_ccw_ops.c_vfio_ccw_mdev_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdev_device = type { i32 }
%struct.vfio_ccw_private = type { i32, %struct.subchannel* }
%struct.subchannel = type { i32 }

@VFIO_CCW_STATE_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mdev_device*)* @vfio_ccw_mdev_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_ccw_mdev_reset(%struct.mdev_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mdev_device*, align 8
  %4 = alloca %struct.vfio_ccw_private*, align 8
  %5 = alloca %struct.subchannel*, align 8
  %6 = alloca i32, align 4
  store %struct.mdev_device* %0, %struct.mdev_device** %3, align 8
  %7 = load %struct.mdev_device*, %struct.mdev_device** %3, align 8
  %8 = call i32 @mdev_parent_dev(%struct.mdev_device* %7)
  %9 = call %struct.vfio_ccw_private* @dev_get_drvdata(i32 %8)
  store %struct.vfio_ccw_private* %9, %struct.vfio_ccw_private** %4, align 8
  %10 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %4, align 8
  %11 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %10, i32 0, i32 1
  %12 = load %struct.subchannel*, %struct.subchannel** %11, align 8
  store %struct.subchannel* %12, %struct.subchannel** %5, align 8
  %13 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %14 = call i32 @vfio_ccw_sch_quiesce(%struct.subchannel* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %2, align 4
  br label %33

19:                                               ; preds = %1
  %20 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %21 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %22 = ptrtoint %struct.subchannel* %21 to i64
  %23 = trunc i64 %22 to i32
  %24 = call i32 @cio_enable_subchannel(%struct.subchannel* %20, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %19
  %28 = load i32, i32* @VFIO_CCW_STATE_IDLE, align 4
  %29 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %4, align 8
  %30 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  br label %31

31:                                               ; preds = %27, %19
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %31, %17
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.vfio_ccw_private* @dev_get_drvdata(i32) #1

declare dso_local i32 @mdev_parent_dev(%struct.mdev_device*) #1

declare dso_local i32 @vfio_ccw_sch_quiesce(%struct.subchannel*) #1

declare dso_local i32 @cio_enable_subchannel(%struct.subchannel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
