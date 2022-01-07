; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_common.c_clear_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_common.c_clear_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cardstate = type { i32, i32, i32, %struct.event_t* }
%struct.event_t = type { i32 }

@MAX_EVENTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cardstate*)* @clear_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_events(%struct.cardstate* %0) #0 {
  %2 = alloca %struct.cardstate*, align 8
  %3 = alloca %struct.event_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.cardstate* %0, %struct.cardstate** %2, align 8
  %7 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %8 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %7, i32 0, i32 2
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %12 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %4, align 4
  %14 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %15 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %21, %1
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %17
  %22 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %23 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %22, i32 0, i32 3
  %24 = load %struct.event_t*, %struct.event_t** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.event_t, %struct.event_t* %24, i64 %26
  store %struct.event_t* %27, %struct.event_t** %3, align 8
  %28 = load %struct.event_t*, %struct.event_t** %3, align 8
  %29 = getelementptr inbounds %struct.event_t, %struct.event_t* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @kfree(i32 %30)
  %32 = load i32, i32* %4, align 4
  %33 = add i32 %32, 1
  %34 = load i32, i32* @MAX_EVENTS, align 4
  %35 = urem i32 %33, %34
  store i32 %35, i32* %4, align 4
  br label %17

36:                                               ; preds = %17
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %39 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %41 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %40, i32 0, i32 2
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
