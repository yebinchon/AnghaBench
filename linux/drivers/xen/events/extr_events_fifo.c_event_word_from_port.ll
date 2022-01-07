; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/events/extr_events_fifo.c_event_word_from_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/events/extr_events_fifo.c_event_word_from_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EVENT_WORDS_PER_PAGE = common dso_local global i32 0, align 4
@event_array = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32)* @event_word_from_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @event_word_from_port(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @EVENT_WORDS_PER_PAGE, align 4
  %6 = udiv i32 %4, %5
  store i32 %6, i32* %3, align 4
  %7 = load i32**, i32*** @event_array, align 8
  %8 = load i32, i32* %3, align 4
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i32*, i32** %7, i64 %9
  %11 = load i32*, i32** %10, align 8
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @EVENT_WORDS_PER_PAGE, align 4
  %14 = urem i32 %12, %13
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %11, i64 %15
  ret i32* %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
