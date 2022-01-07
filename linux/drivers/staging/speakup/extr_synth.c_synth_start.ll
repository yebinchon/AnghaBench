; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_synth.c_synth_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_synth.c_synth_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.var_t = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@synth = common dso_local global %struct.TYPE_6__* null, align 8
@TRIGGER = common dso_local global i32 0, align 4
@thread_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @synth_start() #0 {
  %1 = alloca %struct.var_t*, align 8
  %2 = load %struct.TYPE_6__*, %struct.TYPE_6__** @synth, align 8
  %3 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %4 = load i32, i32* %3, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %0
  %7 = call i32 (...) @synth_buffer_clear()
  br label %23

8:                                                ; preds = %0
  %9 = load i32, i32* @TRIGGER, align 4
  %10 = call %struct.var_t* @spk_get_var(i32 %9)
  store %struct.var_t* %10, %struct.var_t** %1, align 8
  %11 = call i32 @timer_pending(i32* @thread_timer)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %8
  %14 = load i64, i64* @jiffies, align 8
  %15 = load %struct.var_t*, %struct.var_t** %1, align 8
  %16 = getelementptr inbounds %struct.var_t, %struct.var_t* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @msecs_to_jiffies(i32 %19)
  %21 = add nsw i64 %14, %20
  %22 = call i32 @mod_timer(i32* @thread_timer, i64 %21)
  br label %23

23:                                               ; preds = %6, %13, %8
  ret void
}

declare dso_local i32 @synth_buffer_clear(...) #1

declare dso_local %struct.var_t* @spk_get_var(i32) #1

declare dso_local i32 @timer_pending(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
