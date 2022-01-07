; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-timer.c_ehci_iaa_watchdog.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-timer.c_ehci_iaa_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehci_hcd = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@EHCI_RH_RUNNING = common dso_local global i64 0, align 8
@STS_IAA = common dso_local global i32 0, align 4
@CMD_IAAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"IAA watchdog: status %x cmd %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ehci_hcd*)* @ehci_iaa_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ehci_iaa_watchdog(%struct.ehci_hcd* %0) #0 {
  %2 = alloca %struct.ehci_hcd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ehci_hcd* %0, %struct.ehci_hcd** %2, align 8
  %5 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %6 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %11 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @EHCI_RH_RUNNING, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9, %1
  br label %58

16:                                               ; preds = %9
  %17 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %18 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %19 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = call i32 @ehci_readl(%struct.ehci_hcd* %17, i32* %21)
  store i32 %22, i32* %3, align 4
  %23 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %24 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %25 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = call i32 @ehci_readl(%struct.ehci_hcd* %23, i32* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @STS_IAA, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %16
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @CMD_IAAD, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %51, label %38

38:                                               ; preds = %33, %16
  %39 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %40 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @INCR(i32 %42)
  %44 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %45 = load i32, i32* @STS_IAA, align 4
  %46 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %47 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = call i32 @ehci_writel(%struct.ehci_hcd* %44, i32 %45, i32* %49)
  br label %51

51:                                               ; preds = %38, %33
  %52 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @ehci_dbg(%struct.ehci_hcd* %52, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %54)
  %56 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %57 = call i32 @end_iaa_cycle(%struct.ehci_hcd* %56)
  br label %58

58:                                               ; preds = %51, %15
  ret void
}

declare dso_local i32 @ehci_readl(%struct.ehci_hcd*, i32*) #1

declare dso_local i32 @INCR(i32) #1

declare dso_local i32 @ehci_writel(%struct.ehci_hcd*, i32, i32*) #1

declare dso_local i32 @ehci_dbg(%struct.ehci_hcd*, i8*, i32, i32) #1

declare dso_local i32 @end_iaa_cycle(%struct.ehci_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
