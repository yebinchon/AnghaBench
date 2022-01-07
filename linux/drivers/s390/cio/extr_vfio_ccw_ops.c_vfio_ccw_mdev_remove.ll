; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_vfio_ccw_ops.c_vfio_ccw_mdev_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_vfio_ccw_ops.c_vfio_ccw_mdev_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdev_device = type { i32 }
%struct.vfio_ccw_private = type { i64, i32, i32*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"mdev %pUl, sch %x.%x.%04x: remove\0A\00", align 1
@VFIO_CCW_STATE_NOT_OPER = common dso_local global i64 0, align 8
@VFIO_CCW_STATE_STANDBY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mdev_device*)* @vfio_ccw_mdev_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_ccw_mdev_remove(%struct.mdev_device* %0) #0 {
  %2 = alloca %struct.mdev_device*, align 8
  %3 = alloca %struct.vfio_ccw_private*, align 8
  store %struct.mdev_device* %0, %struct.mdev_device** %2, align 8
  %4 = load %struct.mdev_device*, %struct.mdev_device** %2, align 8
  %5 = call i32 @mdev_parent_dev(%struct.mdev_device* %4)
  %6 = call %struct.vfio_ccw_private* @dev_get_drvdata(i32 %5)
  store %struct.vfio_ccw_private* %6, %struct.vfio_ccw_private** %3, align 8
  %7 = load %struct.mdev_device*, %struct.mdev_device** %2, align 8
  %8 = call i32 @mdev_uuid(%struct.mdev_device* %7)
  %9 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %3, align 8
  %10 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %9, i32 0, i32 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %3, align 8
  %16 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %15, i32 0, i32 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %3, align 8
  %22 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %21, i32 0, i32 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @VFIO_CCW_MSG_EVENT(i32 2, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %14, i32 %20, i32 %26)
  %28 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %3, align 8
  %29 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @VFIO_CCW_STATE_NOT_OPER, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %50

33:                                               ; preds = %1
  %34 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %3, align 8
  %35 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @VFIO_CCW_STATE_STANDBY, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %33
  %40 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %3, align 8
  %41 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %40, i32 0, i32 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = call i32 @vfio_ccw_sch_quiesce(%struct.TYPE_4__* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %39
  %46 = load i64, i64* @VFIO_CCW_STATE_STANDBY, align 8
  %47 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %3, align 8
  %48 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  br label %49

49:                                               ; preds = %45, %39
  br label %50

50:                                               ; preds = %49, %33, %1
  %51 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %3, align 8
  %52 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %51, i32 0, i32 3
  %53 = call i32 @cp_free(i32* %52)
  %54 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %3, align 8
  %55 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %54, i32 0, i32 2
  store i32* null, i32** %55, align 8
  %56 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %3, align 8
  %57 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %56, i32 0, i32 1
  %58 = call i32 @atomic_inc(i32* %57)
  ret i32 0
}

declare dso_local %struct.vfio_ccw_private* @dev_get_drvdata(i32) #1

declare dso_local i32 @mdev_parent_dev(%struct.mdev_device*) #1

declare dso_local i32 @VFIO_CCW_MSG_EVENT(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @mdev_uuid(%struct.mdev_device*) #1

declare dso_local i32 @vfio_ccw_sch_quiesce(%struct.TYPE_4__*) #1

declare dso_local i32 @cp_free(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
