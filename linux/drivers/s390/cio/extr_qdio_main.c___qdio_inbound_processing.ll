; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_main.c___qdio_inbound_processing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_main.c___qdio_inbound_processing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_q = type { i32 }

@tasklet_inbound = common dso_local global i32 0, align 4
@tasklet_inbound_resched = common dso_local global i32 0, align 4
@tasklet_inbound_resched2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qdio_q*)* @__qdio_inbound_processing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__qdio_inbound_processing(%struct.qdio_q* %0) #0 {
  %2 = alloca %struct.qdio_q*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.qdio_q* %0, %struct.qdio_q** %2, align 8
  %5 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %6 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  %8 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %9 = load i32, i32* @tasklet_inbound, align 4
  %10 = call i32 @qperf_inc(%struct.qdio_q* %8, i32 %9)
  %11 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @qdio_inbound_q_moved(%struct.qdio_q* %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %53

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @add_buf(i32 %18, i32 %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %23 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @qdio_kick_handler(%struct.qdio_q* %24, i32 %25)
  %27 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @qdio_inbound_q_done(%struct.qdio_q* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %17
  %32 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %33 = load i32, i32* @tasklet_inbound_resched, align 4
  %34 = call i32 @qperf_inc(%struct.qdio_q* %32, i32 %33)
  %35 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %36 = call i32 @qdio_tasklet_schedule(%struct.qdio_q* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %31
  br label %53

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39, %17
  %41 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %42 = call i32 @qdio_stop_polling(%struct.qdio_q* %41)
  %43 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @qdio_inbound_q_done(%struct.qdio_q* %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %40
  %48 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %49 = load i32, i32* @tasklet_inbound_resched2, align 4
  %50 = call i32 @qperf_inc(%struct.qdio_q* %48, i32 %49)
  %51 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %52 = call i32 @qdio_tasklet_schedule(%struct.qdio_q* %51)
  br label %53

53:                                               ; preds = %16, %38, %47, %40
  ret void
}

declare dso_local i32 @qperf_inc(%struct.qdio_q*, i32) #1

declare dso_local i32 @qdio_inbound_q_moved(%struct.qdio_q*, i32) #1

declare dso_local i32 @add_buf(i32, i32) #1

declare dso_local i32 @qdio_kick_handler(%struct.qdio_q*, i32) #1

declare dso_local i32 @qdio_inbound_q_done(%struct.qdio_q*, i32) #1

declare dso_local i32 @qdio_tasklet_schedule(%struct.qdio_q*) #1

declare dso_local i32 @qdio_stop_polling(%struct.qdio_q*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
