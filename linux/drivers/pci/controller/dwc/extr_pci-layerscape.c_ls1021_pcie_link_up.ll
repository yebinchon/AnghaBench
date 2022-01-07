; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-layerscape.c_ls1021_pcie_link_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-layerscape.c_ls1021_pcie_link_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_pcie = type { i32 }
%struct.ls_pcie = type { i32, i32 }

@LTSSM_STATE_SHIFT = common dso_local global i32 0, align 4
@LTSSM_STATE_MASK = common dso_local global i32 0, align 4
@LTSSM_PCIE_L0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dw_pcie*)* @ls1021_pcie_link_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ls1021_pcie_link_up(%struct.dw_pcie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dw_pcie*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ls_pcie*, align 8
  store %struct.dw_pcie* %0, %struct.dw_pcie** %3, align 8
  %6 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %7 = call %struct.ls_pcie* @to_ls_pcie(%struct.dw_pcie* %6)
  store %struct.ls_pcie* %7, %struct.ls_pcie** %5, align 8
  %8 = load %struct.ls_pcie*, %struct.ls_pcie** %5, align 8
  %9 = getelementptr inbounds %struct.ls_pcie, %struct.ls_pcie* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %32

13:                                               ; preds = %1
  %14 = load %struct.ls_pcie*, %struct.ls_pcie** %5, align 8
  %15 = getelementptr inbounds %struct.ls_pcie, %struct.ls_pcie* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ls_pcie*, %struct.ls_pcie** %5, align 8
  %18 = getelementptr inbounds %struct.ls_pcie, %struct.ls_pcie* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @SCFG_PEXMSCPORTSR(i32 %19)
  %21 = call i32 @regmap_read(i32 %16, i32 %20, i32* %4)
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @LTSSM_STATE_SHIFT, align 4
  %24 = ashr i32 %22, %23
  %25 = load i32, i32* @LTSSM_STATE_MASK, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @LTSSM_PCIE_L0, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %32

31:                                               ; preds = %13
  store i32 1, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %30, %12
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.ls_pcie* @to_ls_pcie(%struct.dw_pcie*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @SCFG_PEXMSCPORTSR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
