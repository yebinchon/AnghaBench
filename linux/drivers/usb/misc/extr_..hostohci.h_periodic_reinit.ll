; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_..hostohci.h_periodic_reinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_..hostohci.h_periodic_reinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ohci_hcd = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@FIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ohci_hcd*)* @periodic_reinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @periodic_reinit(%struct.ohci_hcd* %0) #0 {
  %2 = alloca %struct.ohci_hcd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ohci_hcd* %0, %struct.ohci_hcd** %2, align 8
  %5 = load %struct.ohci_hcd*, %struct.ohci_hcd** %2, align 8
  %6 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = and i32 %7, 16383
  store i32 %8, i32* %3, align 4
  %9 = load %struct.ohci_hcd*, %struct.ohci_hcd** %2, align 8
  %10 = load %struct.ohci_hcd*, %struct.ohci_hcd** %2, align 8
  %11 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = call i32 @ohci_readl(%struct.ohci_hcd* %9, i32* %13)
  %15 = load i32, i32* @FIT, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %4, align 4
  %17 = load %struct.ohci_hcd*, %struct.ohci_hcd** %2, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @FIT, align 4
  %20 = xor i32 %18, %19
  %21 = load %struct.ohci_hcd*, %struct.ohci_hcd** %2, align 8
  %22 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = or i32 %20, %23
  %25 = load %struct.ohci_hcd*, %struct.ohci_hcd** %2, align 8
  %26 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = call i32 @ohci_writel(%struct.ohci_hcd* %17, i32 %24, i32* %28)
  %30 = load %struct.ohci_hcd*, %struct.ohci_hcd** %2, align 8
  %31 = load i32, i32* %3, align 4
  %32 = mul nsw i32 9, %31
  %33 = sdiv i32 %32, 10
  %34 = and i32 %33, 16383
  %35 = load %struct.ohci_hcd*, %struct.ohci_hcd** %2, align 8
  %36 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = call i32 @ohci_writel(%struct.ohci_hcd* %30, i32 %34, i32* %38)
  ret void
}

declare dso_local i32 @ohci_readl(%struct.ohci_hcd*, i32*) #1

declare dso_local i32 @ohci_writel(%struct.ohci_hcd*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
