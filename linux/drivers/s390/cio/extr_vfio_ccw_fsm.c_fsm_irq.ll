; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_vfio_ccw_fsm.c_fsm_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_vfio_ccw_fsm.c_fsm_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_ccw_private = type { i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.irb = type { i32 }

@cio_irb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"IRQ\00", align 1
@vfio_ccw_work_q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfio_ccw_private*, i32)* @fsm_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsm_irq(%struct.vfio_ccw_private* %0, i32 %1) #0 {
  %3 = alloca %struct.vfio_ccw_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.irb*, align 8
  store %struct.vfio_ccw_private* %0, %struct.vfio_ccw_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call %struct.irb* @this_cpu_ptr(i32* @cio_irb)
  store %struct.irb* %6, %struct.irb** %5, align 8
  %7 = call i32 @VFIO_CCW_TRACE_EVENT(i32 6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %3, align 8
  %9 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %8, i32 0, i32 3
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i8* @dev_name(i32* %11)
  %13 = call i32 @VFIO_CCW_TRACE_EVENT(i32 6, i8* %12)
  %14 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %3, align 8
  %15 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %14, i32 0, i32 2
  %16 = load %struct.irb*, %struct.irb** %5, align 8
  %17 = call i32 @memcpy(i32* %15, %struct.irb* %16, i32 4)
  %18 = load i32, i32* @vfio_ccw_work_q, align 4
  %19 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %3, align 8
  %20 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %19, i32 0, i32 1
  %21 = call i32 @queue_work(i32 %18, i32* %20)
  %22 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %3, align 8
  %23 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %2
  %27 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %3, align 8
  %28 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @complete(i64 %29)
  br label %31

31:                                               ; preds = %26, %2
  ret void
}

declare dso_local %struct.irb* @this_cpu_ptr(i32*) #1

declare dso_local i32 @VFIO_CCW_TRACE_EVENT(i32, i8*) #1

declare dso_local i8* @dev_name(i32*) #1

declare dso_local i32 @memcpy(i32*, %struct.irb*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @complete(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
