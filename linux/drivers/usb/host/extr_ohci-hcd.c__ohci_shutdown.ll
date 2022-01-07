; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-hcd.c__ohci_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-hcd.c__ohci_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.ohci_hcd = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@OHCI_HCR = common dso_local global i32 0, align 4
@OHCI_RH_HALTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hcd*)* @_ohci_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ohci_shutdown(%struct.usb_hcd* %0) #0 {
  %2 = alloca %struct.usb_hcd*, align 8
  %3 = alloca %struct.ohci_hcd*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %2, align 8
  %4 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %5 = call %struct.ohci_hcd* @hcd_to_ohci(%struct.usb_hcd* %4)
  store %struct.ohci_hcd* %5, %struct.ohci_hcd** %3, align 8
  %6 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %7 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %8 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  %11 = call i32 @ohci_writel(%struct.ohci_hcd* %6, i32 -1, i32* %10)
  %12 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %13 = load i32, i32* @OHCI_HCR, align 4
  %14 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %15 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = call i32 @ohci_writel(%struct.ohci_hcd* %12, i32 %13, i32* %17)
  %19 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %20 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %21 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = call i32 @ohci_readl(%struct.ohci_hcd* %19, i32* %23)
  %25 = call i32 @udelay(i32 10)
  %26 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %27 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %28 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %31 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 @ohci_writel(%struct.ohci_hcd* %26, i32 %29, i32* %33)
  %35 = load i32, i32* @OHCI_RH_HALTED, align 4
  %36 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %37 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  ret void
}

declare dso_local %struct.ohci_hcd* @hcd_to_ohci(%struct.usb_hcd*) #1

declare dso_local i32 @ohci_writel(%struct.ohci_hcd*, i32, i32*) #1

declare dso_local i32 @ohci_readl(%struct.ohci_hcd*, i32*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
