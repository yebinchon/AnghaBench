; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/pcie/extr_topaz_pcie.c_qtnf_post_init_ep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/pcie/extr_topaz_pcie.c_qtnf_post_init_ep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_pcie_topaz_state = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@QTN_BDA_FW_QLINK_DONE = common dso_local global i32 0, align 4
@QTN_FW_QLINK_TIMEOUT_MS = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qtnf_pcie_topaz_state*)* @qtnf_post_init_ep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qtnf_post_init_ep(%struct.qtnf_pcie_topaz_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qtnf_pcie_topaz_state*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  store %struct.qtnf_pcie_topaz_state* %0, %struct.qtnf_pcie_topaz_state** %3, align 8
  %5 = load %struct.qtnf_pcie_topaz_state*, %struct.qtnf_pcie_topaz_state** %3, align 8
  %6 = getelementptr inbounds %struct.qtnf_pcie_topaz_state, %struct.qtnf_pcie_topaz_state* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  store %struct.pci_dev* %8, %struct.pci_dev** %4, align 8
  %9 = load %struct.qtnf_pcie_topaz_state*, %struct.qtnf_pcie_topaz_state** %3, align 8
  %10 = call i32 @setup_rx_irqs(%struct.qtnf_pcie_topaz_state* %9)
  %11 = load %struct.qtnf_pcie_topaz_state*, %struct.qtnf_pcie_topaz_state** %3, align 8
  %12 = call i32 @disable_rx_irqs(%struct.qtnf_pcie_topaz_state* %11)
  %13 = load %struct.qtnf_pcie_topaz_state*, %struct.qtnf_pcie_topaz_state** %3, align 8
  %14 = getelementptr inbounds %struct.qtnf_pcie_topaz_state, %struct.qtnf_pcie_topaz_state* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* @QTN_BDA_FW_QLINK_DONE, align 4
  %18 = load i32, i32* @QTN_FW_QLINK_TIMEOUT_MS, align 4
  %19 = call i64 @qtnf_poll_state(i32* %16, i32 %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i32, i32* @ETIMEDOUT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %29

24:                                               ; preds = %1
  %25 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %26 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @enable_irq(i32 %27)
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %24, %21
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @setup_rx_irqs(%struct.qtnf_pcie_topaz_state*) #1

declare dso_local i32 @disable_rx_irqs(%struct.qtnf_pcie_topaz_state*) #1

declare dso_local i64 @qtnf_poll_state(i32*, i32, i32) #1

declare dso_local i32 @enable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
