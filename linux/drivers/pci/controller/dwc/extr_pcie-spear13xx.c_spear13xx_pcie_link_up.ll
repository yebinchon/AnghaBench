; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-spear13xx.c_spear13xx_pcie_link_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-spear13xx.c_spear13xx_pcie_link_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_pcie = type { i32 }
%struct.spear13xx_pcie = type { %struct.pcie_app_reg* }
%struct.pcie_app_reg = type { i32 }

@XMLH_LINK_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dw_pcie*)* @spear13xx_pcie_link_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spear13xx_pcie_link_up(%struct.dw_pcie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dw_pcie*, align 8
  %4 = alloca %struct.spear13xx_pcie*, align 8
  %5 = alloca %struct.pcie_app_reg*, align 8
  store %struct.dw_pcie* %0, %struct.dw_pcie** %3, align 8
  %6 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %7 = call %struct.spear13xx_pcie* @to_spear13xx_pcie(%struct.dw_pcie* %6)
  store %struct.spear13xx_pcie* %7, %struct.spear13xx_pcie** %4, align 8
  %8 = load %struct.spear13xx_pcie*, %struct.spear13xx_pcie** %4, align 8
  %9 = getelementptr inbounds %struct.spear13xx_pcie, %struct.spear13xx_pcie* %8, i32 0, i32 0
  %10 = load %struct.pcie_app_reg*, %struct.pcie_app_reg** %9, align 8
  store %struct.pcie_app_reg* %10, %struct.pcie_app_reg** %5, align 8
  %11 = load %struct.pcie_app_reg*, %struct.pcie_app_reg** %5, align 8
  %12 = getelementptr inbounds %struct.pcie_app_reg, %struct.pcie_app_reg* %11, i32 0, i32 0
  %13 = call i32 @readl(i32* %12)
  %14 = load i32, i32* @XMLH_LINK_UP, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %19

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %18, %17
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local %struct.spear13xx_pcie* @to_spear13xx_pcie(%struct.dw_pcie*) #1

declare dso_local i32 @readl(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
