; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_common.h_rsi_wait_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_common.h_rsi_wait_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsi_event = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsi_event*, i32)* @rsi_wait_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsi_wait_event(%struct.rsi_event* %0, i32 %1) #0 {
  %3 = alloca %struct.rsi_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rsi_event* %0, %struct.rsi_event** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %2
  %9 = load %struct.rsi_event*, %struct.rsi_event** %3, align 8
  %10 = getelementptr inbounds %struct.rsi_event, %struct.rsi_event* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.rsi_event*, %struct.rsi_event** %3, align 8
  %13 = getelementptr inbounds %struct.rsi_event, %struct.rsi_event* %12, i32 0, i32 0
  %14 = call i64 @atomic_read(i32* %13)
  %15 = icmp eq i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @wait_event_interruptible(i32 %11, i32 %16)
  store i32 %17, i32* %5, align 4
  br label %29

18:                                               ; preds = %2
  %19 = load %struct.rsi_event*, %struct.rsi_event** %3, align 8
  %20 = getelementptr inbounds %struct.rsi_event, %struct.rsi_event* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.rsi_event*, %struct.rsi_event** %3, align 8
  %23 = getelementptr inbounds %struct.rsi_event, %struct.rsi_event* %22, i32 0, i32 0
  %24 = call i64 @atomic_read(i32* %23)
  %25 = icmp eq i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @wait_event_interruptible_timeout(i32 %21, i32 %26, i32 %27)
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %18, %8
  %30 = load i32, i32* %5, align 4
  ret i32 %30
}

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
