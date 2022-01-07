; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-kirin.c_kirin_pcie_oe_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-kirin.c_kirin_pcie_oe_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kirin_pcie = type { i32 }

@SCTRL_PCIE_OE_OFFSET = common dso_local global i32 0, align 4
@PCIE_DEBOUNCE_PARAM = common dso_local global i32 0, align 4
@PCIE_OE_BYPASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kirin_pcie*)* @kirin_pcie_oe_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kirin_pcie_oe_enable(%struct.kirin_pcie* %0) #0 {
  %2 = alloca %struct.kirin_pcie*, align 8
  %3 = alloca i32, align 4
  store %struct.kirin_pcie* %0, %struct.kirin_pcie** %2, align 8
  %4 = load %struct.kirin_pcie*, %struct.kirin_pcie** %2, align 8
  %5 = getelementptr inbounds %struct.kirin_pcie, %struct.kirin_pcie* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @SCTRL_PCIE_OE_OFFSET, align 4
  %8 = call i32 @regmap_read(i32 %6, i32 %7, i32* %3)
  %9 = load i32, i32* @PCIE_DEBOUNCE_PARAM, align 4
  %10 = load i32, i32* %3, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* @PCIE_OE_BYPASS, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load %struct.kirin_pcie*, %struct.kirin_pcie** %2, align 8
  %17 = getelementptr inbounds %struct.kirin_pcie, %struct.kirin_pcie* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @SCTRL_PCIE_OE_OFFSET, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @regmap_write(i32 %18, i32 %19, i32 %20)
  ret void
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
