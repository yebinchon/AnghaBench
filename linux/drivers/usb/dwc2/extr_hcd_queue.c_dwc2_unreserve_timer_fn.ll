; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_queue.c_dwc2_unreserve_timer_fn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_queue.c_dwc2_unreserve_timer_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_qh = type { i64, i32, %struct.dwc2_hsotg* }
%struct.dwc2_hsotg = type { i32 }
%struct.timer_list = type { i32 }

@unreserve_timer = common dso_local global i32 0, align 4
@qh = common dso_local global %struct.dwc2_qh* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @dwc2_unreserve_timer_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc2_unreserve_timer_fn(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.dwc2_qh*, align 8
  %4 = alloca %struct.dwc2_hsotg*, align 8
  %5 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.dwc2_qh*, %struct.dwc2_qh** %3, align 8
  %7 = ptrtoint %struct.dwc2_qh* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* @unreserve_timer, align 4
  %10 = call %struct.dwc2_qh* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.dwc2_qh* %10, %struct.dwc2_qh** %3, align 8
  %11 = load %struct.dwc2_qh*, %struct.dwc2_qh** %3, align 8
  %12 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %11, i32 0, i32 2
  %13 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %12, align 8
  store %struct.dwc2_hsotg* %13, %struct.dwc2_hsotg** %4, align 8
  br label %14

14:                                               ; preds = %27, %1
  %15 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %16 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %15, i32 0, i32 0
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @spin_trylock_irqsave(i32* %16, i64 %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br i1 %20, label %21, label %28

21:                                               ; preds = %14
  %22 = load %struct.dwc2_qh*, %struct.dwc2_qh** %3, align 8
  %23 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %22, i32 0, i32 1
  %24 = call i64 @timer_pending(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %42

27:                                               ; preds = %21
  br label %14

28:                                               ; preds = %14
  %29 = load %struct.dwc2_qh*, %struct.dwc2_qh** %3, align 8
  %30 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %35 = load %struct.dwc2_qh*, %struct.dwc2_qh** %3, align 8
  %36 = call i32 @dwc2_do_unreserve(%struct.dwc2_hsotg* %34, %struct.dwc2_qh* %35)
  br label %37

37:                                               ; preds = %33, %28
  %38 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %39 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %38, i32 0, i32 0
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  br label %42

42:                                               ; preds = %37, %26
  ret void
}

declare dso_local %struct.dwc2_qh* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_trylock_irqsave(i32*, i64) #1

declare dso_local i64 @timer_pending(i32*) #1

declare dso_local i32 @dwc2_do_unreserve(%struct.dwc2_hsotg*, %struct.dwc2_qh*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
