; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-hcd.c_ehci_quiesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-hcd.c_ehci_quiesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehci_hcd = type { i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@EHCI_RH_RUNNING = common dso_local global i64 0, align 8
@STS_ASS = common dso_local global i32 0, align 4
@STS_PSS = common dso_local global i32 0, align 4
@CMD_ASE = common dso_local global i32 0, align 4
@CMD_PSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ehci_hcd*)* @ehci_quiesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ehci_quiesce(%struct.ehci_hcd* %0) #0 {
  %2 = alloca %struct.ehci_hcd*, align 8
  %3 = alloca i32, align 4
  store %struct.ehci_hcd* %0, %struct.ehci_hcd** %2, align 8
  %4 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %5 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @EHCI_RH_RUNNING, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %61

10:                                               ; preds = %1
  %11 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %12 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = shl i32 %13, 10
  %15 = load i32, i32* @STS_ASS, align 4
  %16 = load i32, i32* @STS_PSS, align 4
  %17 = or i32 %15, %16
  %18 = and i32 %14, %17
  store i32 %18, i32* %3, align 4
  %19 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %20 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %21 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* @STS_ASS, align 4
  %25 = load i32, i32* @STS_PSS, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @ehci_handshake(%struct.ehci_hcd* %19, i32* %23, i32 %26, i32 %27, i32 2000)
  %29 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %30 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %29, i32 0, i32 3
  %31 = call i32 @spin_lock_irq(i32* %30)
  %32 = load i32, i32* @CMD_ASE, align 4
  %33 = load i32, i32* @CMD_PSE, align 4
  %34 = or i32 %32, %33
  %35 = xor i32 %34, -1
  %36 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %37 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 8
  %40 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %41 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %42 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %45 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %44, i32 0, i32 2
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = call i32 @ehci_writel(%struct.ehci_hcd* %40, i32 %43, i32* %47)
  %49 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %50 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %49, i32 0, i32 3
  %51 = call i32 @spin_unlock_irq(i32* %50)
  %52 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %53 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %54 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %53, i32 0, i32 2
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* @STS_ASS, align 4
  %58 = load i32, i32* @STS_PSS, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @ehci_handshake(%struct.ehci_hcd* %52, i32* %56, i32 %59, i32 0, i32 2000)
  br label %61

61:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @ehci_handshake(%struct.ehci_hcd*, i32*, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @ehci_writel(%struct.ehci_hcd*, i32, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
