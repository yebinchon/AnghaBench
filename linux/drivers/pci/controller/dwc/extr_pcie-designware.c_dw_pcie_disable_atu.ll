; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware.c_dw_pcie_disable_atu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware.c_dw_pcie_disable_atu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_pcie = type { i32 }

@PCIE_ATU_REGION_INBOUND = common dso_local global i32 0, align 4
@PCIE_ATU_REGION_OUTBOUND = common dso_local global i32 0, align 4
@PCIE_ATU_VIEWPORT = common dso_local global i32 0, align 4
@PCIE_ATU_CR2 = common dso_local global i32 0, align 4
@PCIE_ATU_ENABLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dw_pcie_disable_atu(%struct.dw_pcie* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dw_pcie*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dw_pcie* %0, %struct.dw_pcie** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %13 [
    i32 129, label %9
    i32 128, label %11
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* @PCIE_ATU_REGION_INBOUND, align 4
  store i32 %10, i32* %7, align 4
  br label %14

11:                                               ; preds = %3
  %12 = load i32, i32* @PCIE_ATU_REGION_OUTBOUND, align 4
  store i32 %12, i32* %7, align 4
  br label %14

13:                                               ; preds = %3
  br label %27

14:                                               ; preds = %11, %9
  %15 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %16 = load i32, i32* @PCIE_ATU_VIEWPORT, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @dw_pcie_writel_dbi(%struct.dw_pcie* %15, i32 %16, i32 %19)
  %21 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %22 = load i32, i32* @PCIE_ATU_CR2, align 4
  %23 = load i64, i64* @PCIE_ATU_ENABLE, align 8
  %24 = xor i64 %23, -1
  %25 = trunc i64 %24 to i32
  %26 = call i32 @dw_pcie_writel_dbi(%struct.dw_pcie* %21, i32 %22, i32 %25)
  br label %27

27:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @dw_pcie_writel_dbi(%struct.dw_pcie*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
