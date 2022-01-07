; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-hub.c_ohci_root_hub_state_changes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-hub.c_ohci_root_hub_state_changes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ohci_hcd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@OHCI_INTR_RHSC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ohci_hcd*, i32, i32, i32)* @ohci_root_hub_state_changes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ohci_root_hub_state_changes(%struct.ohci_hcd* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ohci_hcd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ohci_hcd* %0, %struct.ohci_hcd** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load %struct.ohci_hcd*, %struct.ohci_hcd** %6, align 8
  %11 = load %struct.ohci_hcd*, %struct.ohci_hcd** %6, align 8
  %12 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call i32 @ohci_readl(%struct.ohci_hcd* %10, i32* %14)
  %16 = load i32, i32* @OHCI_INTR_RHSC, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %35

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %20
  store i32 1, i32* %5, align 4
  br label %35

27:                                               ; preds = %23
  %28 = load %struct.ohci_hcd*, %struct.ohci_hcd** %6, align 8
  %29 = load i32, i32* @OHCI_INTR_RHSC, align 4
  %30 = load %struct.ohci_hcd*, %struct.ohci_hcd** %6, align 8
  %31 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 @ohci_writel(%struct.ohci_hcd* %28, i32 %29, i32* %33)
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %27, %26, %19
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @ohci_readl(%struct.ohci_hcd*, i32*) #1

declare dso_local i32 @ohci_writel(%struct.ohci_hcd*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
