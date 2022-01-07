; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-dra7xx.c_dra7xx_pcie_raise_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-dra7xx.c_dra7xx_pcie_raise_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_pcie_ep = type { i32 }
%struct.dw_pcie = type { i32 }
%struct.dra7xx_pcie = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"UNKNOWN IRQ type\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dw_pcie_ep*, i32, i32, i32)* @dra7xx_pcie_raise_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dra7xx_pcie_raise_irq(%struct.dw_pcie_ep* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.dw_pcie_ep*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dw_pcie*, align 8
  %10 = alloca %struct.dra7xx_pcie*, align 8
  store %struct.dw_pcie_ep* %0, %struct.dw_pcie_ep** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %5, align 8
  %12 = call %struct.dw_pcie* @to_dw_pcie_from_ep(%struct.dw_pcie_ep* %11)
  store %struct.dw_pcie* %12, %struct.dw_pcie** %9, align 8
  %13 = load %struct.dw_pcie*, %struct.dw_pcie** %9, align 8
  %14 = call %struct.dra7xx_pcie* @to_dra7xx_pcie(%struct.dw_pcie* %13)
  store %struct.dra7xx_pcie* %14, %struct.dra7xx_pcie** %10, align 8
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %23 [
    i32 129, label %16
    i32 128, label %19
  ]

16:                                               ; preds = %4
  %17 = load %struct.dra7xx_pcie*, %struct.dra7xx_pcie** %10, align 8
  %18 = call i32 @dra7xx_pcie_raise_legacy_irq(%struct.dra7xx_pcie* %17)
  br label %28

19:                                               ; preds = %4
  %20 = load %struct.dra7xx_pcie*, %struct.dra7xx_pcie** %10, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @dra7xx_pcie_raise_msi_irq(%struct.dra7xx_pcie* %20, i32 %21)
  br label %28

23:                                               ; preds = %4
  %24 = load %struct.dw_pcie*, %struct.dw_pcie** %9, align 8
  %25 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %23, %19, %16
  ret i32 0
}

declare dso_local %struct.dw_pcie* @to_dw_pcie_from_ep(%struct.dw_pcie_ep*) #1

declare dso_local %struct.dra7xx_pcie* @to_dra7xx_pcie(%struct.dw_pcie*) #1

declare dso_local i32 @dra7xx_pcie_raise_legacy_irq(%struct.dra7xx_pcie*) #1

declare dso_local i32 @dra7xx_pcie_raise_msi_irq(%struct.dra7xx_pcie*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
