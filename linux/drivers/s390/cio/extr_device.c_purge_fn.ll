; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device.c_purge_fn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device.c_purge_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ccw_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, %struct.ccw_dev_id }
%struct.ccw_dev_id = type { i32, i32 }

@DEV_STATE_OFFLINE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"ccw: purging 0.%x.%04x\0A\00", align 1
@CDEV_TODO_UNREG = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @purge_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @purge_fn(%struct.device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ccw_device*, align 8
  %7 = alloca %struct.ccw_dev_id*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.ccw_device* @to_ccwdev(%struct.device* %8)
  store %struct.ccw_device* %9, %struct.ccw_device** %6, align 8
  %10 = load %struct.ccw_device*, %struct.ccw_device** %6, align 8
  %11 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  store %struct.ccw_dev_id* %13, %struct.ccw_dev_id** %7, align 8
  %14 = load %struct.ccw_device*, %struct.ccw_device** %6, align 8
  %15 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @spin_lock_irq(i32 %16)
  %18 = load %struct.ccw_dev_id*, %struct.ccw_dev_id** %7, align 8
  %19 = getelementptr inbounds %struct.ccw_dev_id, %struct.ccw_dev_id* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ccw_dev_id*, %struct.ccw_dev_id** %7, align 8
  %22 = getelementptr inbounds %struct.ccw_dev_id, %struct.ccw_dev_id* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @is_blacklisted(i32 %20, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %57

26:                                               ; preds = %2
  %27 = load %struct.ccw_device*, %struct.ccw_device** %6, align 8
  %28 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @DEV_STATE_OFFLINE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %57

34:                                               ; preds = %26
  %35 = load %struct.ccw_device*, %struct.ccw_device** %6, align 8
  %36 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = call i64 @atomic_cmpxchg(i32* %38, i32 0, i32 1)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %34
  %42 = load %struct.ccw_dev_id*, %struct.ccw_dev_id** %7, align 8
  %43 = getelementptr inbounds %struct.ccw_dev_id, %struct.ccw_dev_id* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ccw_dev_id*, %struct.ccw_dev_id** %7, align 8
  %46 = getelementptr inbounds %struct.ccw_dev_id, %struct.ccw_dev_id* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @CIO_MSG_EVENT(i32 3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %47)
  %49 = load %struct.ccw_device*, %struct.ccw_device** %6, align 8
  %50 = load i32, i32* @CDEV_TODO_UNREG, align 4
  %51 = call i32 @ccw_device_sched_todo(%struct.ccw_device* %49, i32 %50)
  %52 = load %struct.ccw_device*, %struct.ccw_device** %6, align 8
  %53 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = call i32 @atomic_set(i32* %55, i32 0)
  br label %57

57:                                               ; preds = %41, %34, %26, %2
  %58 = load %struct.ccw_device*, %struct.ccw_device** %6, align 8
  %59 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @spin_unlock_irq(i32 %60)
  %62 = load i32, i32* @current, align 4
  %63 = call i64 @signal_pending(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %57
  %66 = load i32, i32* @EINTR, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %69

68:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %68, %65
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.ccw_device* @to_ccwdev(%struct.device*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i64 @is_blacklisted(i32, i32) #1

declare dso_local i64 @atomic_cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @CIO_MSG_EVENT(i32, i8*, i32, i32) #1

declare dso_local i32 @ccw_device_sched_todo(%struct.ccw_device*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i64 @signal_pending(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
