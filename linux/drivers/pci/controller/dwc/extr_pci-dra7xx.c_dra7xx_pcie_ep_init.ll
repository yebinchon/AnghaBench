; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-dra7xx.c_dra7xx_pcie_ep_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-dra7xx.c_dra7xx_pcie_ep_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_pcie_ep = type { i32 }
%struct.dw_pcie = type { i32 }
%struct.dra7xx_pcie = type { i32 }

@BAR_0 = common dso_local global i32 0, align 4
@BAR_5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_pcie_ep*)* @dra7xx_pcie_ep_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dra7xx_pcie_ep_init(%struct.dw_pcie_ep* %0) #0 {
  %2 = alloca %struct.dw_pcie_ep*, align 8
  %3 = alloca %struct.dw_pcie*, align 8
  %4 = alloca %struct.dra7xx_pcie*, align 8
  %5 = alloca i32, align 4
  store %struct.dw_pcie_ep* %0, %struct.dw_pcie_ep** %2, align 8
  %6 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %2, align 8
  %7 = call %struct.dw_pcie* @to_dw_pcie_from_ep(%struct.dw_pcie_ep* %6)
  store %struct.dw_pcie* %7, %struct.dw_pcie** %3, align 8
  %8 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %9 = call %struct.dra7xx_pcie* @to_dra7xx_pcie(%struct.dw_pcie* %8)
  store %struct.dra7xx_pcie* %9, %struct.dra7xx_pcie** %4, align 8
  %10 = load i32, i32* @BAR_0, align 4
  store i32 %10, i32* %5, align 4
  br label %11

11:                                               ; preds = %19, %1
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @BAR_5, align 4
  %14 = icmp ule i32 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  %16 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @dw_pcie_ep_reset_bar(%struct.dw_pcie* %16, i32 %17)
  br label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %5, align 4
  %21 = add i32 %20, 1
  store i32 %21, i32* %5, align 4
  br label %11

22:                                               ; preds = %11
  %23 = load %struct.dra7xx_pcie*, %struct.dra7xx_pcie** %4, align 8
  %24 = call i32 @dra7xx_pcie_enable_wrapper_interrupts(%struct.dra7xx_pcie* %23)
  ret void
}

declare dso_local %struct.dw_pcie* @to_dw_pcie_from_ep(%struct.dw_pcie_ep*) #1

declare dso_local %struct.dra7xx_pcie* @to_dra7xx_pcie(%struct.dw_pcie*) #1

declare dso_local i32 @dw_pcie_ep_reset_bar(%struct.dw_pcie*, i32) #1

declare dso_local i32 @dra7xx_pcie_enable_wrapper_interrupts(%struct.dra7xx_pcie*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
