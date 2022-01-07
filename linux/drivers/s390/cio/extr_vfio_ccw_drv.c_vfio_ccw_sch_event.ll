; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_vfio_ccw_drv.c_vfio_ccw_sch_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_vfio_ccw_drv.c_vfio_ccw_sch_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subchannel = type { i32, i32, i32 }
%struct.vfio_ccw_private = type { i64, i64 }

@EAGAIN = common dso_local global i32 0, align 4
@VFIO_CCW_EVENT_NOT_OPER = common dso_local global i32 0, align 4
@VFIO_CCW_STATE_NOT_OPER = common dso_local global i64 0, align 8
@VFIO_CCW_STATE_IDLE = common dso_local global i64 0, align 8
@VFIO_CCW_STATE_STANDBY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.subchannel*, i32)* @vfio_ccw_sch_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_ccw_sch_event(%struct.subchannel* %0, i32 %1) #0 {
  %3 = alloca %struct.subchannel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vfio_ccw_private*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.subchannel* %0, %struct.subchannel** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %9 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %8, i32 0, i32 1
  %10 = call %struct.vfio_ccw_private* @dev_get_drvdata(i32* %9)
  store %struct.vfio_ccw_private* %10, %struct.vfio_ccw_private** %5, align 8
  %11 = load i32, i32* @EAGAIN, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %7, align 4
  %13 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %14 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @spin_lock_irqsave(i32 %15, i64 %16)
  %18 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %19 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %18, i32 0, i32 1
  %20 = call i32 @device_is_registered(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  br label %60

23:                                               ; preds = %2
  %24 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %25 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %24, i32 0, i32 2
  %26 = call i64 @work_pending(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %60

29:                                               ; preds = %23
  %30 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %31 = call i64 @cio_update_schib(%struct.subchannel* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %5, align 8
  %35 = load i32, i32* @VFIO_CCW_EVENT_NOT_OPER, align 4
  %36 = call i32 @vfio_ccw_fsm_event(%struct.vfio_ccw_private* %34, i32 %35)
  store i32 0, i32* %7, align 4
  br label %60

37:                                               ; preds = %29
  %38 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %39 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %38, i32 0, i32 1
  %40 = call %struct.vfio_ccw_private* @dev_get_drvdata(i32* %39)
  store %struct.vfio_ccw_private* %40, %struct.vfio_ccw_private** %5, align 8
  %41 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %5, align 8
  %42 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @VFIO_CCW_STATE_NOT_OPER, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %59

46:                                               ; preds = %37
  %47 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %5, align 8
  %48 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i64, i64* @VFIO_CCW_STATE_IDLE, align 8
  br label %55

53:                                               ; preds = %46
  %54 = load i64, i64* @VFIO_CCW_STATE_STANDBY, align 8
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i64 [ %52, %51 ], [ %54, %53 ]
  %57 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %5, align 8
  %58 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  br label %59

59:                                               ; preds = %55, %37
  store i32 0, i32* %7, align 4
  br label %60

60:                                               ; preds = %59, %33, %28, %22
  %61 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %62 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i64, i64* %6, align 8
  %65 = call i32 @spin_unlock_irqrestore(i32 %63, i64 %64)
  %66 = load i32, i32* %7, align 4
  ret i32 %66
}

declare dso_local %struct.vfio_ccw_private* @dev_get_drvdata(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @device_is_registered(i32*) #1

declare dso_local i64 @work_pending(i32*) #1

declare dso_local i64 @cio_update_schib(%struct.subchannel*) #1

declare dso_local i32 @vfio_ccw_fsm_event(%struct.vfio_ccw_private*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
