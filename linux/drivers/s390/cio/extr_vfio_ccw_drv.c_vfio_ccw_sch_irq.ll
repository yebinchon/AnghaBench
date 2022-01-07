; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_vfio_ccw_drv.c_vfio_ccw_sch_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_vfio_ccw_drv.c_vfio_ccw_sch_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subchannel = type { i32 }
%struct.vfio_ccw_private = type { i32 }

@IRQIO_CIO = common dso_local global i32 0, align 4
@VFIO_CCW_EVENT_INTERRUPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.subchannel*)* @vfio_ccw_sch_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfio_ccw_sch_irq(%struct.subchannel* %0) #0 {
  %2 = alloca %struct.subchannel*, align 8
  %3 = alloca %struct.vfio_ccw_private*, align 8
  store %struct.subchannel* %0, %struct.subchannel** %2, align 8
  %4 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %5 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %4, i32 0, i32 0
  %6 = call %struct.vfio_ccw_private* @dev_get_drvdata(i32* %5)
  store %struct.vfio_ccw_private* %6, %struct.vfio_ccw_private** %3, align 8
  %7 = load i32, i32* @IRQIO_CIO, align 4
  %8 = call i32 @inc_irq_stat(i32 %7)
  %9 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %3, align 8
  %10 = load i32, i32* @VFIO_CCW_EVENT_INTERRUPT, align 4
  %11 = call i32 @vfio_ccw_fsm_event(%struct.vfio_ccw_private* %9, i32 %10)
  ret void
}

declare dso_local %struct.vfio_ccw_private* @dev_get_drvdata(i32*) #1

declare dso_local i32 @inc_irq_stat(i32) #1

declare dso_local i32 @vfio_ccw_fsm_event(%struct.vfio_ccw_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
