; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-timer.c_ehci_handle_controller_death.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-timer.c_ehci_handle_controller_death.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehci_hcd = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@STS_HALT = common dso_local global i32 0, align 4
@EHCI_HRTIMER_POLL_DEAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Waited too long for the controller to stop, giving up\0A\00", align 1
@EHCI_RH_HALTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ehci_hcd*)* @ehci_handle_controller_death to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ehci_handle_controller_death(%struct.ehci_hcd* %0) #0 {
  %2 = alloca %struct.ehci_hcd*, align 8
  store %struct.ehci_hcd* %0, %struct.ehci_hcd** %2, align 8
  %3 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %4 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %5 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 2
  %8 = call i32 @ehci_readl(%struct.ehci_hcd* %3, i32* %7)
  %9 = load i32, i32* @STS_HALT, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %25, label %12

12:                                               ; preds = %1
  %13 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %14 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 4
  %17 = icmp slt i32 %15, 5
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %20 = load i32, i32* @EHCI_HRTIMER_POLL_DEAD, align 4
  %21 = call i32 @ehci_enable_event(%struct.ehci_hcd* %19, i32 %20, i32 1)
  br label %45

22:                                               ; preds = %12
  %23 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %24 = call i32 @ehci_warn(%struct.ehci_hcd* %23, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %1
  %26 = load i32, i32* @EHCI_RH_HALTED, align 4
  %27 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %28 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %30 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %31 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = call i32 @ehci_writel(%struct.ehci_hcd* %29, i32 0, i32* %33)
  %35 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %36 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %37 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = call i32 @ehci_writel(%struct.ehci_hcd* %35, i32 0, i32* %39)
  %41 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %42 = call i32 @ehci_work(%struct.ehci_hcd* %41)
  %43 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %44 = call i32 @end_unlink_async(%struct.ehci_hcd* %43)
  br label %45

45:                                               ; preds = %25, %18
  ret void
}

declare dso_local i32 @ehci_readl(%struct.ehci_hcd*, i32*) #1

declare dso_local i32 @ehci_enable_event(%struct.ehci_hcd*, i32, i32) #1

declare dso_local i32 @ehci_warn(%struct.ehci_hcd*, i8*) #1

declare dso_local i32 @ehci_writel(%struct.ehci_hcd*, i32, i32*) #1

declare dso_local i32 @ehci_work(%struct.ehci_hcd*) #1

declare dso_local i32 @end_unlink_async(%struct.ehci_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
