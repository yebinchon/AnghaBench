; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_main.c___tiqdio_inbound_processing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_main.c___tiqdio_inbound_processing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_q = type { i32, i32 }

@tasklet_inbound = common dso_local global i32 0, align 4
@tasklet_inbound_resched = common dso_local global i32 0, align 4
@tasklet_inbound_resched2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qdio_q*)* @__tiqdio_inbound_processing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__tiqdio_inbound_processing(%struct.qdio_q* %0) #0 {
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
  %12 = call i64 @need_siga_sync(%struct.qdio_q* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %16 = call i64 @need_siga_sync_after_ai(%struct.qdio_q* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %20 = call i32 @qdio_sync_queues(%struct.qdio_q* %19)
  br label %21

21:                                               ; preds = %18, %14, %1
  %22 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %23 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @qdio_check_outbound_pci_queues(i32 %24)
  %26 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @qdio_inbound_q_moved(%struct.qdio_q* %26, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  br label %68

32:                                               ; preds = %21
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @add_buf(i32 %33, i32 %34)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %38 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @qdio_kick_handler(%struct.qdio_q* %39, i32 %40)
  %42 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @qdio_inbound_q_done(%struct.qdio_q* %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %32
  %47 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %48 = load i32, i32* @tasklet_inbound_resched, align 4
  %49 = call i32 @qperf_inc(%struct.qdio_q* %47, i32 %48)
  %50 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %51 = call i32 @qdio_tasklet_schedule(%struct.qdio_q* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %46
  br label %68

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %54, %32
  %56 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %57 = call i32 @qdio_stop_polling(%struct.qdio_q* %56)
  %58 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @qdio_inbound_q_done(%struct.qdio_q* %58, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %55
  %63 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %64 = load i32, i32* @tasklet_inbound_resched2, align 4
  %65 = call i32 @qperf_inc(%struct.qdio_q* %63, i32 %64)
  %66 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %67 = call i32 @qdio_tasklet_schedule(%struct.qdio_q* %66)
  br label %68

68:                                               ; preds = %31, %53, %62, %55
  ret void
}

declare dso_local i32 @qperf_inc(%struct.qdio_q*, i32) #1

declare dso_local i64 @need_siga_sync(%struct.qdio_q*) #1

declare dso_local i64 @need_siga_sync_after_ai(%struct.qdio_q*) #1

declare dso_local i32 @qdio_sync_queues(%struct.qdio_q*) #1

declare dso_local i32 @qdio_check_outbound_pci_queues(i32) #1

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
