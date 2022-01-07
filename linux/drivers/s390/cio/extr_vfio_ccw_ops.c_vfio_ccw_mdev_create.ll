; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_vfio_ccw_ops.c_vfio_ccw_mdev_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_vfio_ccw_ops.c_vfio_ccw_mdev_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.mdev_device = type { i32 }
%struct.vfio_ccw_private = type { i64, %struct.TYPE_4__*, %struct.mdev_device*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@VFIO_CCW_STATE_NOT_OPER = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@VFIO_CCW_STATE_IDLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"mdev %pUl, sch %x.%x.%04x: create\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.mdev_device*)* @vfio_ccw_mdev_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_ccw_mdev_create(%struct.kobject* %0, %struct.mdev_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kobject*, align 8
  %5 = alloca %struct.mdev_device*, align 8
  %6 = alloca %struct.vfio_ccw_private*, align 8
  store %struct.kobject* %0, %struct.kobject** %4, align 8
  store %struct.mdev_device* %1, %struct.mdev_device** %5, align 8
  %7 = load %struct.mdev_device*, %struct.mdev_device** %5, align 8
  %8 = call i32 @mdev_parent_dev(%struct.mdev_device* %7)
  %9 = call %struct.vfio_ccw_private* @dev_get_drvdata(i32 %8)
  store %struct.vfio_ccw_private* %9, %struct.vfio_ccw_private** %6, align 8
  %10 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %6, align 8
  %11 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @VFIO_CCW_STATE_NOT_OPER, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %54

18:                                               ; preds = %2
  %19 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %6, align 8
  %20 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %19, i32 0, i32 3
  %21 = call i64 @atomic_dec_if_positive(i32* %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @EPERM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %54

26:                                               ; preds = %18
  %27 = load %struct.mdev_device*, %struct.mdev_device** %5, align 8
  %28 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %6, align 8
  %29 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %28, i32 0, i32 2
  store %struct.mdev_device* %27, %struct.mdev_device** %29, align 8
  %30 = load i64, i64* @VFIO_CCW_STATE_IDLE, align 8
  %31 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %6, align 8
  %32 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.mdev_device*, %struct.mdev_device** %5, align 8
  %34 = call i32 @mdev_uuid(%struct.mdev_device* %33)
  %35 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %6, align 8
  %36 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %6, align 8
  %42 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %6, align 8
  %48 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @VFIO_CCW_MSG_EVENT(i32 2, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %40, i32 %46, i32 %52)
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %26, %23, %15
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.vfio_ccw_private* @dev_get_drvdata(i32) #1

declare dso_local i32 @mdev_parent_dev(%struct.mdev_device*) #1

declare dso_local i64 @atomic_dec_if_positive(i32*) #1

declare dso_local i32 @VFIO_CCW_MSG_EVENT(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @mdev_uuid(%struct.mdev_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
