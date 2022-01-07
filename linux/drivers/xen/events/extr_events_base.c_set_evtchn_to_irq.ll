; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/events/extr_events_base.c_set_evtchn_to_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/events/extr_events_base.c_set_evtchn_to_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@evtchn_to_irq = common dso_local global i32** null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @set_evtchn_to_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_evtchn_to_irq(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 (...) @xen_evtchn_max_channels()
  %10 = icmp uge i32 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %59

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @EVTCHN_ROW(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @EVTCHN_COL(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32**, i32*** @evtchn_to_irq, align 8
  %20 = load i32, i32* %6, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i32*, i32** %19, i64 %21
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %49

25:                                               ; preds = %14
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %59

29:                                               ; preds = %25
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i64 @get_zeroed_page(i32 %30)
  %32 = inttoptr i64 %31 to i32*
  %33 = load i32**, i32*** @evtchn_to_irq, align 8
  %34 = load i32, i32* %6, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32*, i32** %33, i64 %35
  store i32* %32, i32** %36, align 8
  %37 = load i32**, i32*** @evtchn_to_irq, align 8
  %38 = load i32, i32* %6, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32*, i32** %37, i64 %39
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %29
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %59

46:                                               ; preds = %29
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @clear_evtchn_to_irq_row(i32 %47)
  br label %49

49:                                               ; preds = %46, %14
  %50 = load i32, i32* %5, align 4
  %51 = load i32**, i32*** @evtchn_to_irq, align 8
  %52 = load i32, i32* %6, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32*, i32** %51, i64 %53
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 %50, i32* %58, align 4
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %49, %43, %28, %11
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @xen_evtchn_max_channels(...) #1

declare dso_local i32 @EVTCHN_ROW(i32) #1

declare dso_local i32 @EVTCHN_COL(i32) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @clear_evtchn_to_irq_row(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
