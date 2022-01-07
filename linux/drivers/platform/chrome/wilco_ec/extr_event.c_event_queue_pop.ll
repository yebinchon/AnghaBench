; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/wilco_ec/extr_event.c_event_queue_pop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/wilco_ec/extr_event.c_event_queue_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ec_event = type { i32 }
%struct.ec_event_queue = type { i64, i32, %struct.ec_event** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ec_event* (%struct.ec_event_queue*)* @event_queue_pop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ec_event* @event_queue_pop(%struct.ec_event_queue* %0) #0 {
  %2 = alloca %struct.ec_event*, align 8
  %3 = alloca %struct.ec_event_queue*, align 8
  %4 = alloca %struct.ec_event*, align 8
  store %struct.ec_event_queue* %0, %struct.ec_event_queue** %3, align 8
  %5 = load %struct.ec_event_queue*, %struct.ec_event_queue** %3, align 8
  %6 = call i64 @event_queue_empty(%struct.ec_event_queue* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.ec_event* null, %struct.ec_event** %2, align 8
  br label %37

9:                                                ; preds = %1
  %10 = load %struct.ec_event_queue*, %struct.ec_event_queue** %3, align 8
  %11 = getelementptr inbounds %struct.ec_event_queue, %struct.ec_event_queue* %10, i32 0, i32 2
  %12 = load %struct.ec_event**, %struct.ec_event*** %11, align 8
  %13 = load %struct.ec_event_queue*, %struct.ec_event_queue** %3, align 8
  %14 = getelementptr inbounds %struct.ec_event_queue, %struct.ec_event_queue* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.ec_event*, %struct.ec_event** %12, i64 %15
  %17 = load %struct.ec_event*, %struct.ec_event** %16, align 8
  store %struct.ec_event* %17, %struct.ec_event** %4, align 8
  %18 = load %struct.ec_event_queue*, %struct.ec_event_queue** %3, align 8
  %19 = getelementptr inbounds %struct.ec_event_queue, %struct.ec_event_queue* %18, i32 0, i32 2
  %20 = load %struct.ec_event**, %struct.ec_event*** %19, align 8
  %21 = load %struct.ec_event_queue*, %struct.ec_event_queue** %3, align 8
  %22 = getelementptr inbounds %struct.ec_event_queue, %struct.ec_event_queue* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.ec_event*, %struct.ec_event** %20, i64 %23
  store %struct.ec_event* null, %struct.ec_event** %24, align 8
  %25 = load %struct.ec_event_queue*, %struct.ec_event_queue** %3, align 8
  %26 = getelementptr inbounds %struct.ec_event_queue, %struct.ec_event_queue* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add i64 %27, 1
  %29 = load %struct.ec_event_queue*, %struct.ec_event_queue** %3, align 8
  %30 = getelementptr inbounds %struct.ec_event_queue, %struct.ec_event_queue* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = urem i64 %28, %32
  %34 = load %struct.ec_event_queue*, %struct.ec_event_queue** %3, align 8
  %35 = getelementptr inbounds %struct.ec_event_queue, %struct.ec_event_queue* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.ec_event*, %struct.ec_event** %4, align 8
  store %struct.ec_event* %36, %struct.ec_event** %2, align 8
  br label %37

37:                                               ; preds = %9, %8
  %38 = load %struct.ec_event*, %struct.ec_event** %2, align 8
  ret %struct.ec_event* %38
}

declare dso_local i64 @event_queue_empty(%struct.ec_event_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
