; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/events/extr_events_base.c_clear_evtchn_to_irq_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/events/extr_events_base.c_clear_evtchn_to_irq_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@evtchn_to_irq = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @clear_evtchn_to_irq_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_evtchn_to_irq_all() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %18, %0
  %3 = load i32, i32* %1, align 4
  %4 = call i32 (...) @xen_evtchn_max_channels()
  %5 = call i32 @EVTCHN_ROW(i32 %4)
  %6 = icmp ult i32 %3, %5
  br i1 %6, label %7, label %21

7:                                                ; preds = %2
  %8 = load i32**, i32*** @evtchn_to_irq, align 8
  %9 = load i32, i32* %1, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds i32*, i32** %8, i64 %10
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %7
  br label %18

15:                                               ; preds = %7
  %16 = load i32, i32* %1, align 4
  %17 = call i32 @clear_evtchn_to_irq_row(i32 %16)
  br label %18

18:                                               ; preds = %15, %14
  %19 = load i32, i32* %1, align 4
  %20 = add i32 %19, 1
  store i32 %20, i32* %1, align 4
  br label %2

21:                                               ; preds = %2
  ret void
}

declare dso_local i32 @EVTCHN_ROW(i32) #1

declare dso_local i32 @xen_evtchn_max_channels(...) #1

declare dso_local i32 @clear_evtchn_to_irq_row(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
