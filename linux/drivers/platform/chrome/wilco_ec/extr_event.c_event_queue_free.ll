; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/wilco_ec/extr_event.c_event_queue_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/wilco_ec/extr_event.c_event_queue_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ec_event_queue = type { i32 }
%struct.ec_event = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ec_event_queue*)* @event_queue_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @event_queue_free(%struct.ec_event_queue* %0) #0 {
  %2 = alloca %struct.ec_event_queue*, align 8
  %3 = alloca %struct.ec_event*, align 8
  store %struct.ec_event_queue* %0, %struct.ec_event_queue** %2, align 8
  br label %4

4:                                                ; preds = %9, %1
  %5 = load %struct.ec_event_queue*, %struct.ec_event_queue** %2, align 8
  %6 = call %struct.ec_event_queue* @event_queue_pop(%struct.ec_event_queue* %5)
  %7 = bitcast %struct.ec_event_queue* %6 to %struct.ec_event*
  store %struct.ec_event* %7, %struct.ec_event** %3, align 8
  %8 = icmp ne %struct.ec_event* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = load %struct.ec_event*, %struct.ec_event** %3, align 8
  %11 = bitcast %struct.ec_event* %10 to %struct.ec_event_queue*
  %12 = call i32 @kfree(%struct.ec_event_queue* %11)
  br label %4

13:                                               ; preds = %4
  %14 = load %struct.ec_event_queue*, %struct.ec_event_queue** %2, align 8
  %15 = call i32 @kfree(%struct.ec_event_queue* %14)
  ret void
}

declare dso_local %struct.ec_event_queue* @event_queue_pop(%struct.ec_event_queue*) #1

declare dso_local i32 @kfree(%struct.ec_event_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
