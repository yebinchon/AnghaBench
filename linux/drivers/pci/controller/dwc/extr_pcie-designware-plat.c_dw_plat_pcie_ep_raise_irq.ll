; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware-plat.c_dw_plat_pcie_ep_raise_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware-plat.c_dw_plat_pcie_ep_raise_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_pcie_ep = type { i32 }
%struct.dw_pcie = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"UNKNOWN IRQ type\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dw_pcie_ep*, i32, i32, i32)* @dw_plat_pcie_ep_raise_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_plat_pcie_ep_raise_irq(%struct.dw_pcie_ep* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dw_pcie_ep*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dw_pcie*, align 8
  store %struct.dw_pcie_ep* %0, %struct.dw_pcie_ep** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %6, align 8
  %12 = call %struct.dw_pcie* @to_dw_pcie_from_ep(%struct.dw_pcie_ep* %11)
  store %struct.dw_pcie* %12, %struct.dw_pcie** %10, align 8
  %13 = load i32, i32* %8, align 4
  switch i32 %13, label %28 [
    i32 130, label %14
    i32 129, label %18
    i32 128, label %23
  ]

14:                                               ; preds = %4
  %15 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @dw_pcie_ep_raise_legacy_irq(%struct.dw_pcie_ep* %15, i32 %16)
  store i32 %17, i32* %5, align 4
  br label %34

18:                                               ; preds = %4
  %19 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @dw_pcie_ep_raise_msi_irq(%struct.dw_pcie_ep* %19, i32 %20, i32 %21)
  store i32 %22, i32* %5, align 4
  br label %34

23:                                               ; preds = %4
  %24 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @dw_pcie_ep_raise_msix_irq(%struct.dw_pcie_ep* %24, i32 %25, i32 %26)
  store i32 %27, i32* %5, align 4
  br label %34

28:                                               ; preds = %4
  %29 = load %struct.dw_pcie*, %struct.dw_pcie** %10, align 8
  %30 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %33, %23, %18, %14
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local %struct.dw_pcie* @to_dw_pcie_from_ep(%struct.dw_pcie_ep*) #1

declare dso_local i32 @dw_pcie_ep_raise_legacy_irq(%struct.dw_pcie_ep*, i32) #1

declare dso_local i32 @dw_pcie_ep_raise_msi_irq(%struct.dw_pcie_ep*, i32, i32) #1

declare dso_local i32 @dw_pcie_ep_raise_msix_irq(%struct.dw_pcie_ep*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
