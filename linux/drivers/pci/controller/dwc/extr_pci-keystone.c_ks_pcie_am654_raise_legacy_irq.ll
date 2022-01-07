; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-keystone.c_ks_pcie_am654_raise_legacy_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-keystone.c_ks_pcie_am654_raise_legacy_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.keystone_pcie = type { %struct.dw_pcie* }
%struct.dw_pcie = type { i32 }

@PCI_INTERRUPT_PIN = common dso_local global i32 0, align 4
@INT_ENABLE = common dso_local global i32 0, align 4
@PCIE_EP_IRQ_SET = common dso_local global i32 0, align 4
@PCIE_EP_IRQ_CLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.keystone_pcie*)* @ks_pcie_am654_raise_legacy_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ks_pcie_am654_raise_legacy_irq(%struct.keystone_pcie* %0) #0 {
  %2 = alloca %struct.keystone_pcie*, align 8
  %3 = alloca %struct.dw_pcie*, align 8
  %4 = alloca i32, align 4
  store %struct.keystone_pcie* %0, %struct.keystone_pcie** %2, align 8
  %5 = load %struct.keystone_pcie*, %struct.keystone_pcie** %2, align 8
  %6 = getelementptr inbounds %struct.keystone_pcie, %struct.keystone_pcie* %5, i32 0, i32 0
  %7 = load %struct.dw_pcie*, %struct.dw_pcie** %6, align 8
  store %struct.dw_pcie* %7, %struct.dw_pcie** %3, align 8
  %8 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %9 = load i32, i32* @PCI_INTERRUPT_PIN, align 4
  %10 = call i32 @dw_pcie_readb_dbi(%struct.dw_pcie* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = icmp sgt i32 %14, 4
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %1
  br label %37

17:                                               ; preds = %13
  %18 = load %struct.keystone_pcie*, %struct.keystone_pcie** %2, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @PCIE_LEGACY_IRQ_ENABLE_SET(i32 %19)
  %21 = load i32, i32* @INT_ENABLE, align 4
  %22 = call i32 @ks_pcie_app_writel(%struct.keystone_pcie* %18, i32 %20, i32 %21)
  %23 = load %struct.keystone_pcie*, %struct.keystone_pcie** %2, align 8
  %24 = load i32, i32* @PCIE_EP_IRQ_SET, align 4
  %25 = load i32, i32* @INT_ENABLE, align 4
  %26 = call i32 @ks_pcie_app_writel(%struct.keystone_pcie* %23, i32 %24, i32 %25)
  %27 = call i32 @mdelay(i32 1)
  %28 = load %struct.keystone_pcie*, %struct.keystone_pcie** %2, align 8
  %29 = load i32, i32* @PCIE_EP_IRQ_CLR, align 4
  %30 = load i32, i32* @INT_ENABLE, align 4
  %31 = call i32 @ks_pcie_app_writel(%struct.keystone_pcie* %28, i32 %29, i32 %30)
  %32 = load %struct.keystone_pcie*, %struct.keystone_pcie** %2, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @PCIE_LEGACY_IRQ_ENABLE_CLR(i32 %33)
  %35 = load i32, i32* @INT_ENABLE, align 4
  %36 = call i32 @ks_pcie_app_writel(%struct.keystone_pcie* %32, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %17, %16
  ret void
}

declare dso_local i32 @dw_pcie_readb_dbi(%struct.dw_pcie*, i32) #1

declare dso_local i32 @ks_pcie_app_writel(%struct.keystone_pcie*, i32, i32) #1

declare dso_local i32 @PCIE_LEGACY_IRQ_ENABLE_SET(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @PCIE_LEGACY_IRQ_ENABLE_CLR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
