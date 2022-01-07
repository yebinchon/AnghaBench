; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-timer.c_turn_on_io_watchdog.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-timer.c_turn_on_io_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehci_hcd = type { i64, i32, i64, i64, i64, i64 }

@EHCI_RH_RUNNING = common dso_local global i64 0, align 8
@EHCI_HRTIMER_IO_WATCHDOG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ehci_hcd*)* @turn_on_io_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @turn_on_io_watchdog(%struct.ehci_hcd* %0) #0 {
  %2 = alloca %struct.ehci_hcd*, align 8
  store %struct.ehci_hcd* %0, %struct.ehci_hcd** %2, align 8
  %3 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %4 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @EHCI_RH_RUNNING, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %10 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @EHCI_HRTIMER_IO_WATCHDOG, align 4
  %13 = call i32 @BIT(i32 %12)
  %14 = and i32 %11, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %8, %1
  br label %40

17:                                               ; preds = %8
  %18 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %19 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %36, label %22

22:                                               ; preds = %17
  %23 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %24 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %23, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %22
  %28 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %29 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %32 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %30, %33
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %27, %17
  %37 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %38 = load i32, i32* @EHCI_HRTIMER_IO_WATCHDOG, align 4
  %39 = call i32 @ehci_enable_event(%struct.ehci_hcd* %37, i32 %38, i32 1)
  br label %40

40:                                               ; preds = %16, %36, %27, %22
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ehci_enable_event(%struct.ehci_hcd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
