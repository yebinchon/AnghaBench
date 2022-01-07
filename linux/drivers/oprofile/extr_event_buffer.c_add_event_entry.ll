; ModuleID = '/home/carl/AnghaBench/linux/drivers/oprofile/extr_event_buffer.c_add_event_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/oprofile/extr_event_buffer.c_add_event_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@event_buffer = common dso_local global i64* null, align 8
@buffer_pos = common dso_local global i64 0, align 8
@buffer_size = common dso_local global i64 0, align 8
@oprofile_stats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@buffer_watershed = common dso_local global i64 0, align 8
@buffer_ready = common dso_local global i32 0, align 4
@buffer_wait = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_event_entry(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64*, i64** @event_buffer, align 8
  %4 = icmp ne i64* %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = call i32 @WARN_ON_ONCE(i32 1)
  br label %27

7:                                                ; preds = %1
  %8 = load i64, i64* @buffer_pos, align 8
  %9 = load i64, i64* @buffer_size, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = call i32 @atomic_inc(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @oprofile_stats, i32 0, i32 0))
  br label %27

13:                                               ; preds = %7
  %14 = load i64, i64* %2, align 8
  %15 = load i64*, i64** @event_buffer, align 8
  %16 = load i64, i64* @buffer_pos, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  store i64 %14, i64* %17, align 8
  %18 = load i64, i64* @buffer_pos, align 8
  %19 = add i64 %18, 1
  store i64 %19, i64* @buffer_pos, align 8
  %20 = load i64, i64* @buffer_size, align 8
  %21 = load i64, i64* @buffer_watershed, align 8
  %22 = sub i64 %20, %21
  %23 = icmp eq i64 %19, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %13
  %25 = call i32 @atomic_set(i32* @buffer_ready, i32 1)
  %26 = call i32 @wake_up(i32* @buffer_wait)
  br label %27

27:                                               ; preds = %5, %11, %24, %13
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
