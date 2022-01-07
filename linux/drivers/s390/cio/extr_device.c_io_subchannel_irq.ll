; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device.c_io_subchannel_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device.c_io_subchannel_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subchannel = type { i32 }
%struct.ccw_device = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"IRQ\00", align 1
@DEV_EVENT_INTERRUPT = common dso_local global i32 0, align 4
@IRQIO_CIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.subchannel*)* @io_subchannel_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @io_subchannel_irq(%struct.subchannel* %0) #0 {
  %2 = alloca %struct.subchannel*, align 8
  %3 = alloca %struct.ccw_device*, align 8
  store %struct.subchannel* %0, %struct.subchannel** %2, align 8
  %4 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %5 = call %struct.ccw_device* @sch_get_cdev(%struct.subchannel* %4)
  store %struct.ccw_device* %5, %struct.ccw_device** %3, align 8
  %6 = call i32 @CIO_TRACE_EVENT(i32 6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %8 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %7, i32 0, i32 0
  %9 = call i8* @dev_name(i32* %8)
  %10 = call i32 @CIO_TRACE_EVENT(i32 6, i8* %9)
  %11 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %12 = icmp ne %struct.ccw_device* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %15 = load i32, i32* @DEV_EVENT_INTERRUPT, align 4
  %16 = call i32 @dev_fsm_event(%struct.ccw_device* %14, i32 %15)
  br label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @IRQIO_CIO, align 4
  %19 = call i32 @inc_irq_stat(i32 %18)
  br label %20

20:                                               ; preds = %17, %13
  ret void
}

declare dso_local %struct.ccw_device* @sch_get_cdev(%struct.subchannel*) #1

declare dso_local i32 @CIO_TRACE_EVENT(i32, i8*) #1

declare dso_local i8* @dev_name(i32*) #1

declare dso_local i32 @dev_fsm_event(%struct.ccw_device*, i32) #1

declare dso_local i32 @inc_irq_stat(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
