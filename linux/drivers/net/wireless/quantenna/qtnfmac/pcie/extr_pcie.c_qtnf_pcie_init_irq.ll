; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/pcie/extr_pcie.c_qtnf_pcie_init_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/pcie/extr_pcie.c_qtnf_pcie_init_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_pcie_bus_priv = type { i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"enabled MSI interrupt\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to enable MSI interrupts\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"legacy PCIE interrupts enabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qtnf_pcie_bus_priv*, i32)* @qtnf_pcie_init_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qtnf_pcie_init_irq(%struct.qtnf_pcie_bus_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.qtnf_pcie_bus_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  store %struct.qtnf_pcie_bus_priv* %0, %struct.qtnf_pcie_bus_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %3, align 8
  %7 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %6, i32 0, i32 1
  %8 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  store %struct.pci_dev* %8, %struct.pci_dev** %5, align 8
  %9 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %3, align 8
  %10 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %9, i32 0, i32 0
  store i32 0, i32* %10, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %2
  %14 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %15 = call i32 @pci_enable_msi(%struct.pci_dev* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %3, align 8
  %20 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  br label %23

21:                                               ; preds = %13
  %22 = call i32 @pr_warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %17
  br label %24

24:                                               ; preds = %23, %2
  %25 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %3, align 8
  %26 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = call i32 @pr_warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %31 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %32 = call i32 @pci_intx(%struct.pci_dev* %31, i32 1)
  br label %33

33:                                               ; preds = %29, %24
  ret void
}

declare dso_local i32 @pci_enable_msi(%struct.pci_dev*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @pci_intx(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
