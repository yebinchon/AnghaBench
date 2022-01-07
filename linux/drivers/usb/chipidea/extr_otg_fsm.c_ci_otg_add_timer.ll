; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_otg_fsm.c_ci_otg_add_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_otg_fsm.c_ci_otg_add_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ci_hdrc = type { i32, i32, i32, i32*, i32 }

@NUM_OTG_FSM_TIMERS = common dso_local global i32 0, align 4
@otg_timer_ms = common dso_local global i64* null, align 8
@MSEC_PER_SEC = common dso_local global i64 0, align 8
@NSEC_PER_MSEC = common dso_local global i64 0, align 8
@HRTIMER_MODE_ABS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ci_hdrc*, i32)* @ci_otg_add_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ci_otg_add_timer(%struct.ci_hdrc* %0, i32 %1) #0 {
  %3 = alloca %struct.ci_hdrc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.ci_hdrc* %0, %struct.ci_hdrc** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @NUM_OTG_FSM_TIMERS, align 4
  %10 = icmp uge i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %95

12:                                               ; preds = %2
  %13 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %14 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %13, i32 0, i32 2
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load i64*, i64** @otg_timer_ms, align 8
  %18 = load i32, i32* %4, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MSEC_PER_SEC, align 8
  %23 = udiv i64 %21, %22
  store i64 %23, i64* %6, align 8
  %24 = load i64*, i64** @otg_timer_ms, align 8
  %25 = load i32, i32* %4, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @MSEC_PER_SEC, align 8
  %30 = urem i64 %28, %29
  %31 = load i64, i64* @NSEC_PER_MSEC, align 8
  %32 = mul i64 %30, %31
  store i64 %32, i64* %7, align 8
  %33 = call i32 (...) @ktime_get()
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @ktime_set(i64 %34, i64 %35)
  %37 = call i32 @ktime_add(i32 %33, i32 %36)
  %38 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %39 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32 %37, i32* %43, align 4
  %44 = load i32, i32* %4, align 4
  %45 = shl i32 1, %44
  %46 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %47 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  %50 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %51 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @NUM_OTG_FSM_TIMERS, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %74, label %55

55:                                               ; preds = %12
  %56 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %57 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %56, i32 0, i32 3
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %60 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %58, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %66 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %65, i32 0, i32 3
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @ktime_after(i32 %64, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %90

74:                                               ; preds = %55, %12
  %75 = load i32, i32* %4, align 4
  %76 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %77 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %79 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %78, i32 0, i32 4
  %80 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %81 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %80, i32 0, i32 3
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %4, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i64, i64* @NSEC_PER_MSEC, align 8
  %88 = load i32, i32* @HRTIMER_MODE_ABS, align 4
  %89 = call i32 @hrtimer_start_range_ns(i32* %79, i32 %86, i64 %87, i32 %88)
  br label %90

90:                                               ; preds = %74, %55
  %91 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %92 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %91, i32 0, i32 2
  %93 = load i64, i64* %5, align 8
  %94 = call i32 @spin_unlock_irqrestore(i32* %92, i64 %93)
  br label %95

95:                                               ; preds = %90, %11
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ktime_add(i32, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @ktime_set(i64, i64) #1

declare dso_local i64 @ktime_after(i32, i32) #1

declare dso_local i32 @hrtimer_start_range_ns(i32*, i32, i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
