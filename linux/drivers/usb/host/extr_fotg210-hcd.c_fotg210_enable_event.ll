; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_fotg210_enable_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_fotg210_enable_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fotg210_hcd = type { i32, i32, i32, i32* }

@event_delays_ns = common dso_local global i32* null, align 8
@NSEC_PER_MSEC = common dso_local global i32 0, align 4
@HRTIMER_MODE_ABS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fotg210_hcd*, i32, i32)* @fotg210_enable_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fotg210_enable_event(%struct.fotg210_hcd* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.fotg210_hcd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.fotg210_hcd* %0, %struct.fotg210_hcd** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %4, align 8
  %9 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %8, i32 0, i32 3
  %10 = load i32*, i32** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  store i32* %13, i32** %7, align 8
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %3
  %17 = call i32 (...) @ktime_get()
  %18 = load i32*, i32** @event_delays_ns, align 8
  %19 = load i32, i32* %5, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ktime_add(i32 %17, i32 %22)
  %24 = load i32*, i32** %7, align 8
  store i32 %23, i32* %24, align 4
  br label %25

25:                                               ; preds = %16, %3
  %26 = load i32, i32* %5, align 4
  %27 = shl i32 1, %26
  %28 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %4, align 8
  %29 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %4, align 8
  %34 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ult i32 %32, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %25
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %4, align 8
  %40 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %4, align 8
  %42 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %41, i32 0, i32 2
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @NSEC_PER_MSEC, align 4
  %46 = load i32, i32* @HRTIMER_MODE_ABS, align 4
  %47 = call i32 @hrtimer_start_range_ns(i32* %42, i32 %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %37, %25
  ret void
}

declare dso_local i32 @ktime_add(i32, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @hrtimer_start_range_ns(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
