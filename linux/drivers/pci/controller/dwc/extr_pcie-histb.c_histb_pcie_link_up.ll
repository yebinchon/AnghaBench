; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-histb.c_histb_pcie_link_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-histb.c_histb_pcie_link_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_pcie = type { i32 }
%struct.histb_pcie = type { i32 }

@PCIE_SYS_STAT0 = common dso_local global i32 0, align 4
@PCIE_SYS_STAT4 = common dso_local global i32 0, align 4
@PCIE_LTSSM_STATE_MASK = common dso_local global i32 0, align 4
@PCIE_XMLH_LINK_UP = common dso_local global i32 0, align 4
@PCIE_RDLH_LINK_UP = common dso_local global i32 0, align 4
@PCIE_LTSSM_STATE_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dw_pcie*)* @histb_pcie_link_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @histb_pcie_link_up(%struct.dw_pcie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dw_pcie*, align 8
  %4 = alloca %struct.histb_pcie*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dw_pcie* %0, %struct.dw_pcie** %3, align 8
  %7 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %8 = call %struct.histb_pcie* @to_histb_pcie(%struct.dw_pcie* %7)
  store %struct.histb_pcie* %8, %struct.histb_pcie** %4, align 8
  %9 = load %struct.histb_pcie*, %struct.histb_pcie** %4, align 8
  %10 = load i32, i32* @PCIE_SYS_STAT0, align 4
  %11 = call i32 @histb_pcie_readl(%struct.histb_pcie* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.histb_pcie*, %struct.histb_pcie** %4, align 8
  %13 = load i32, i32* @PCIE_SYS_STAT4, align 4
  %14 = call i32 @histb_pcie_readl(%struct.histb_pcie* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @PCIE_LTSSM_STATE_MASK, align 4
  %16 = load i32, i32* %6, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @PCIE_XMLH_LINK_UP, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %1
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @PCIE_RDLH_LINK_UP, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @PCIE_LTSSM_STATE_ACTIVE, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 1, i32* %2, align 4
  br label %33

32:                                               ; preds = %27, %22, %1
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %31
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.histb_pcie* @to_histb_pcie(%struct.dw_pcie*) #1

declare dso_local i32 @histb_pcie_readl(%struct.histb_pcie*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
