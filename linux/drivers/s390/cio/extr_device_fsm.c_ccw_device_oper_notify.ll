; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device_fsm.c_ccw_device_oper_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device_fsm.c_ccw_device_oper_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.subchannel = type { i32 }

@CIO_OPER = common dso_local global i32 0, align 4
@NOTIFY_OK = common dso_local global i64 0, align 8
@CDEV_TODO_ENABLE_CMF = common dso_local global i32 0, align 4
@CDEV_TODO_REBIND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccw_device*)* @ccw_device_oper_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccw_device_oper_notify(%struct.ccw_device* %0) #0 {
  %2 = alloca %struct.ccw_device*, align 8
  %3 = alloca %struct.subchannel*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %2, align 8
  %4 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %5 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = call %struct.subchannel* @to_subchannel(i32 %7)
  store %struct.subchannel* %8, %struct.subchannel** %3, align 8
  %9 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %10 = load i32, i32* @CIO_OPER, align 4
  %11 = call i64 @ccw_device_notify(%struct.ccw_device* %9, i32 %10)
  %12 = load i64, i64* @NOTIFY_OK, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %1
  %15 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %16 = load i32, i32* @CDEV_TODO_ENABLE_CMF, align 4
  %17 = call i32 @ccw_device_sched_todo(%struct.ccw_device* %15, i32 %16)
  %18 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %19 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %22 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32 %20, i32* %24, align 4
  br label %31

25:                                               ; preds = %1
  %26 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %27 = call i32 @ccw_device_set_notoper(%struct.ccw_device* %26)
  %28 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %29 = load i32, i32* @CDEV_TODO_REBIND, align 4
  %30 = call i32 @ccw_device_sched_todo(%struct.ccw_device* %28, i32 %29)
  br label %31

31:                                               ; preds = %25, %14
  ret void
}

declare dso_local %struct.subchannel* @to_subchannel(i32) #1

declare dso_local i64 @ccw_device_notify(%struct.ccw_device*, i32) #1

declare dso_local i32 @ccw_device_sched_todo(%struct.ccw_device*, i32) #1

declare dso_local i32 @ccw_device_set_notoper(%struct.ccw_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
