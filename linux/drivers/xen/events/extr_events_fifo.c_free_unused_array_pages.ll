; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/events/extr_events_fifo.c_free_unused_array_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/events/extr_events_fifo.c_free_unused_array_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@event_array_pages = common dso_local global i32 0, align 4
@MAX_EVENT_ARRAY_PAGES = common dso_local global i32 0, align 4
@event_array = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @free_unused_array_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_unused_array_pages() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @event_array_pages, align 4
  store i32 %2, i32* %1, align 4
  br label %3

3:                                                ; preds = %27, %0
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* @MAX_EVENT_ARRAY_PAGES, align 4
  %6 = icmp ult i32 %4, %5
  br i1 %6, label %7, label %30

7:                                                ; preds = %3
  %8 = load i32**, i32*** @event_array, align 8
  %9 = load i32, i32* %1, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds i32*, i32** %8, i64 %10
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %7
  br label %30

15:                                               ; preds = %7
  %16 = load i32**, i32*** @event_array, align 8
  %17 = load i32, i32* %1, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i32*, i32** %16, i64 %18
  %20 = load i32*, i32** %19, align 8
  %21 = ptrtoint i32* %20 to i64
  %22 = call i32 @free_page(i64 %21)
  %23 = load i32**, i32*** @event_array, align 8
  %24 = load i32, i32* %1, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32*, i32** %23, i64 %25
  store i32* null, i32** %26, align 8
  br label %27

27:                                               ; preds = %15
  %28 = load i32, i32* %1, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %1, align 4
  br label %3

30:                                               ; preds = %14, %3
  ret void
}

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
