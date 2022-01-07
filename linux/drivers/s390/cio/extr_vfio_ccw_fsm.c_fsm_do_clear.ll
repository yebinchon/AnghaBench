; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_vfio_ccw_fsm.c_fsm_do_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_vfio_ccw_fsm.c_fsm_do_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_ccw_private = type { %struct.subchannel* }
%struct.subchannel = type { i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"clearIO\00", align 1
@SCSW_ACTL_CLEAR_PEND = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfio_ccw_private*)* @fsm_do_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsm_do_clear(%struct.vfio_ccw_private* %0) #0 {
  %2 = alloca %struct.vfio_ccw_private*, align 8
  %3 = alloca %struct.subchannel*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vfio_ccw_private* %0, %struct.vfio_ccw_private** %2, align 8
  %7 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %2, align 8
  %8 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %7, i32 0, i32 0
  %9 = load %struct.subchannel*, %struct.subchannel** %8, align 8
  store %struct.subchannel* %9, %struct.subchannel** %3, align 8
  %10 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %11 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @spin_lock_irqsave(i32 %12, i64 %13)
  %15 = call i32 @VFIO_CCW_TRACE_EVENT(i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %17 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %16, i32 0, i32 3
  %18 = call i8* @dev_name(i32* %17)
  %19 = call i32 @VFIO_CCW_TRACE_EVENT(i32 2, i8* %18)
  %20 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %21 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @csch(i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = call i32 @VFIO_CCW_HEX_EVENT(i32 2, i32* %5, i32 4)
  %25 = load i32, i32* %5, align 4
  switch i32 %25, label %36 [
    i32 0, label %26
    i32 3, label %33
  ]

26:                                               ; preds = %1
  %27 = load i32, i32* @SCSW_ACTL_CLEAR_PEND, align 4
  %28 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %29 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32 %27, i32* %32, align 4
  store i32 0, i32* %6, align 4
  br label %38

33:                                               ; preds = %1
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %38

36:                                               ; preds = %1
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %36, %33, %26
  %39 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %40 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* %4, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32 %41, i64 %42)
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @VFIO_CCW_TRACE_EVENT(i32, i8*) #1

declare dso_local i8* @dev_name(i32*) #1

declare dso_local i32 @csch(i32) #1

declare dso_local i32 @VFIO_CCW_HEX_EVENT(i32, i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
