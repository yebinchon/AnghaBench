; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_sta.c___cw1200_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_sta.c___cw1200_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32 }

@HZ = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cw1200_common*, i32)* @__cw1200_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cw1200_flush(%struct.cw1200_common* %0, i32 %1) #0 {
  %3 = alloca %struct.cw1200_common*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cw1200_common* %0, %struct.cw1200_common** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %7

7:                                                ; preds = %54, %2
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %7
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %22, %10
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 4
  br i1 %13, label %14, label %25

14:                                               ; preds = %11
  %15 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %16 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = call i32 @cw1200_queue_clear(i32* %20)
  br label %22

22:                                               ; preds = %14
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %11

25:                                               ; preds = %11
  br label %37

26:                                               ; preds = %7
  %27 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %28 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %32 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %31, i32 0, i32 0
  %33 = call i32 @cw1200_queue_stats_is_empty(%struct.TYPE_2__* %32, i32 -1)
  %34 = load i32, i32* @HZ, align 4
  %35 = mul nsw i32 2, %34
  %36 = call i32 @wait_event_timeout(i32 %30, i32 %33, i32 %35)
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %26, %25
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %6, align 4
  %42 = icmp sle i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* @ETIMEDOUT, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %6, align 4
  br label %58

46:                                               ; preds = %40, %37
  store i32 0, i32* %6, align 4
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %49 = call i32 @wsm_lock_tx(%struct.cw1200_common* %48)
  %50 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %51 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %50, i32 0, i32 0
  %52 = call i32 @cw1200_queue_stats_is_empty(%struct.TYPE_2__* %51, i32 -1)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %47
  %55 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %56 = call i32 @wsm_unlock_tx(%struct.cw1200_common* %55)
  br label %7

57:                                               ; preds = %47
  br label %58

58:                                               ; preds = %57, %43
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local i32 @cw1200_queue_clear(i32*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @cw1200_queue_stats_is_empty(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @wsm_lock_tx(%struct.cw1200_common*) #1

declare dso_local i32 @wsm_unlock_tx(%struct.cw1200_common*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
