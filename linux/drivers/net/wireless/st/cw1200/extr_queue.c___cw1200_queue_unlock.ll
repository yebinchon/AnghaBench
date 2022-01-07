; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_queue.c___cw1200_queue_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_queue.c___cw1200_queue_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_queue = type { i64, i32, %struct.cw1200_queue_stats* }
%struct.cw1200_queue_stats = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"[TX] Queue %d is unlocked.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cw1200_queue*)* @__cw1200_queue_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__cw1200_queue_unlock(%struct.cw1200_queue* %0) #0 {
  %2 = alloca %struct.cw1200_queue*, align 8
  %3 = alloca %struct.cw1200_queue_stats*, align 8
  store %struct.cw1200_queue* %0, %struct.cw1200_queue** %2, align 8
  %4 = load %struct.cw1200_queue*, %struct.cw1200_queue** %2, align 8
  %5 = getelementptr inbounds %struct.cw1200_queue, %struct.cw1200_queue* %4, i32 0, i32 2
  %6 = load %struct.cw1200_queue_stats*, %struct.cw1200_queue_stats** %5, align 8
  store %struct.cw1200_queue_stats* %6, %struct.cw1200_queue_stats** %3, align 8
  %7 = load %struct.cw1200_queue*, %struct.cw1200_queue** %2, align 8
  %8 = getelementptr inbounds %struct.cw1200_queue, %struct.cw1200_queue* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load %struct.cw1200_queue*, %struct.cw1200_queue** %2, align 8
  %15 = getelementptr inbounds %struct.cw1200_queue, %struct.cw1200_queue* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, -1
  store i64 %17, i64* %15, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %1
  %20 = load %struct.cw1200_queue*, %struct.cw1200_queue** %2, align 8
  %21 = getelementptr inbounds %struct.cw1200_queue, %struct.cw1200_queue* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.cw1200_queue_stats*, %struct.cw1200_queue_stats** %3, align 8
  %25 = getelementptr inbounds %struct.cw1200_queue_stats, %struct.cw1200_queue_stats* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.cw1200_queue*, %struct.cw1200_queue** %2, align 8
  %30 = getelementptr inbounds %struct.cw1200_queue, %struct.cw1200_queue* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @ieee80211_wake_queue(i32 %28, i32 %31)
  br label %33

33:                                               ; preds = %19, %1
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @ieee80211_wake_queue(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
