; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rcar.c_rcar_pcie_resume_noirq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rcar.c_rcar_pcie_resume_noirq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rcar_pcie = type { i32 }

@PMSR = common dso_local global i32 0, align 4
@PCIETCTLR = common dso_local global i32 0, align 4
@DL_DOWN = common dso_local global i32 0, align 4
@CFINIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @rcar_pcie_resume_noirq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_pcie_resume_noirq(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rcar_pcie*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %5 = load %struct.device*, %struct.device** %3, align 8
  %6 = call %struct.rcar_pcie* @dev_get_drvdata(%struct.device* %5)
  store %struct.rcar_pcie* %6, %struct.rcar_pcie** %4, align 8
  %7 = load %struct.rcar_pcie*, %struct.rcar_pcie** %4, align 8
  %8 = load i32, i32* @PMSR, align 4
  %9 = call i32 @rcar_pci_read_reg(%struct.rcar_pcie* %7, i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load %struct.rcar_pcie*, %struct.rcar_pcie** %4, align 8
  %13 = load i32, i32* @PCIETCTLR, align 4
  %14 = call i32 @rcar_pci_read_reg(%struct.rcar_pcie* %12, i32 %13)
  %15 = load i32, i32* @DL_DOWN, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %26

19:                                               ; preds = %11, %1
  %20 = load %struct.rcar_pcie*, %struct.rcar_pcie** %4, align 8
  %21 = load i32, i32* @CFINIT, align 4
  %22 = load i32, i32* @PCIETCTLR, align 4
  %23 = call i32 @rcar_pci_write_reg(%struct.rcar_pcie* %20, i32 %21, i32 %22)
  %24 = load %struct.rcar_pcie*, %struct.rcar_pcie** %4, align 8
  %25 = call i32 @rcar_pcie_wait_for_dl(%struct.rcar_pcie* %24)
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %19, %18
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local %struct.rcar_pcie* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @rcar_pci_read_reg(%struct.rcar_pcie*, i32) #1

declare dso_local i32 @rcar_pci_write_reg(%struct.rcar_pcie*, i32, i32) #1

declare dso_local i32 @rcar_pcie_wait_for_dl(%struct.rcar_pcie*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
