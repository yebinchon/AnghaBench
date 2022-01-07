; ModuleID = '/home/carl/AnghaBench/linux/drivers/ptp/extr_ptp_clock.c_enqueue_external_timestamp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ptp/extr_ptp_clock.c_enqueue_external_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timestamp_event_queue = type { i64, i32, i32, %struct.ptp_extts_event* }
%struct.ptp_extts_event = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ptp_clock_event = type { i32, i32 }

@PTP_MAX_TIMESTAMPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timestamp_event_queue*, %struct.ptp_clock_event*)* @enqueue_external_timestamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enqueue_external_timestamp(%struct.timestamp_event_queue* %0, %struct.ptp_clock_event* %1) #0 {
  %3 = alloca %struct.timestamp_event_queue*, align 8
  %4 = alloca %struct.ptp_clock_event*, align 8
  %5 = alloca %struct.ptp_extts_event*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.timestamp_event_queue* %0, %struct.timestamp_event_queue** %3, align 8
  store %struct.ptp_clock_event* %1, %struct.ptp_clock_event** %4, align 8
  %9 = load %struct.ptp_clock_event*, %struct.ptp_clock_event** %4, align 8
  %10 = getelementptr inbounds %struct.ptp_clock_event, %struct.ptp_clock_event* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @div_u64_rem(i32 %11, i32 1000000000, i32* %8)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.timestamp_event_queue*, %struct.timestamp_event_queue** %3, align 8
  %14 = getelementptr inbounds %struct.timestamp_event_queue, %struct.timestamp_event_queue* %13, i32 0, i32 2
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.timestamp_event_queue*, %struct.timestamp_event_queue** %3, align 8
  %18 = getelementptr inbounds %struct.timestamp_event_queue, %struct.timestamp_event_queue* %17, i32 0, i32 3
  %19 = load %struct.ptp_extts_event*, %struct.ptp_extts_event** %18, align 8
  %20 = load %struct.timestamp_event_queue*, %struct.timestamp_event_queue** %3, align 8
  %21 = getelementptr inbounds %struct.timestamp_event_queue, %struct.timestamp_event_queue* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.ptp_extts_event, %struct.ptp_extts_event* %19, i64 %22
  store %struct.ptp_extts_event* %23, %struct.ptp_extts_event** %5, align 8
  %24 = load %struct.ptp_clock_event*, %struct.ptp_clock_event** %4, align 8
  %25 = getelementptr inbounds %struct.ptp_clock_event, %struct.ptp_clock_event* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ptp_extts_event*, %struct.ptp_extts_event** %5, align 8
  %28 = getelementptr inbounds %struct.ptp_extts_event, %struct.ptp_extts_event* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.ptp_extts_event*, %struct.ptp_extts_event** %5, align 8
  %31 = getelementptr inbounds %struct.ptp_extts_event, %struct.ptp_extts_event* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store i32 %29, i32* %32, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.ptp_extts_event*, %struct.ptp_extts_event** %5, align 8
  %35 = getelementptr inbounds %struct.ptp_extts_event, %struct.ptp_extts_event* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 4
  %37 = load %struct.timestamp_event_queue*, %struct.timestamp_event_queue** %3, align 8
  %38 = call i32 @queue_free(%struct.timestamp_event_queue* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %2
  %41 = load %struct.timestamp_event_queue*, %struct.timestamp_event_queue** %3, align 8
  %42 = getelementptr inbounds %struct.timestamp_event_queue, %struct.timestamp_event_queue* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 1
  %45 = load i32, i32* @PTP_MAX_TIMESTAMPS, align 4
  %46 = srem i32 %44, %45
  %47 = load %struct.timestamp_event_queue*, %struct.timestamp_event_queue** %3, align 8
  %48 = getelementptr inbounds %struct.timestamp_event_queue, %struct.timestamp_event_queue* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  br label %49

49:                                               ; preds = %40, %2
  %50 = load %struct.timestamp_event_queue*, %struct.timestamp_event_queue** %3, align 8
  %51 = getelementptr inbounds %struct.timestamp_event_queue, %struct.timestamp_event_queue* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add i64 %52, 1
  %54 = load i32, i32* @PTP_MAX_TIMESTAMPS, align 4
  %55 = sext i32 %54 to i64
  %56 = urem i64 %53, %55
  %57 = load %struct.timestamp_event_queue*, %struct.timestamp_event_queue** %3, align 8
  %58 = getelementptr inbounds %struct.timestamp_event_queue, %struct.timestamp_event_queue* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load %struct.timestamp_event_queue*, %struct.timestamp_event_queue** %3, align 8
  %60 = getelementptr inbounds %struct.timestamp_event_queue, %struct.timestamp_event_queue* %59, i32 0, i32 2
  %61 = load i64, i64* %6, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32* %60, i64 %61)
  ret void
}

declare dso_local i32 @div_u64_rem(i32, i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @queue_free(%struct.timestamp_event_queue*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
