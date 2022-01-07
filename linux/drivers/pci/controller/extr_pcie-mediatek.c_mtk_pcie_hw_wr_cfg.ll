; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-mediatek.c_mtk_pcie_hw_wr_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-mediatek.c_mtk_pcie_hw_wr_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_pcie_port = type { i64 }

@CFG_WRRD_TYPE_0 = common dso_local global i32 0, align 4
@CFG_WR_FMT = common dso_local global i32 0, align 4
@PCIE_CFG_HEADER0 = common dso_local global i64 0, align 8
@PCIE_CFG_HEADER1 = common dso_local global i64 0, align 8
@PCIE_CFG_HEADER2 = common dso_local global i64 0, align 8
@PCIE_CFG_WDATA = common dso_local global i64 0, align 8
@PCIE_APP_TLP_REQ = common dso_local global i64 0, align 8
@APP_CFG_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_pcie_port*, i32, i32, i32, i32, i32)* @mtk_pcie_hw_wr_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_pcie_hw_wr_cfg(%struct.mtk_pcie_port* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.mtk_pcie_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mtk_pcie_port* %0, %struct.mtk_pcie_port** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load i32, i32* @CFG_WRRD_TYPE_0, align 4
  %14 = load i32, i32* @CFG_WR_FMT, align 4
  %15 = call i32 @CFG_HEADER_DW0(i32 %13, i32 %14)
  %16 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %7, align 8
  %17 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PCIE_CFG_HEADER0, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @writel(i32 %15, i64 %20)
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @CFG_HEADER_DW1(i32 %22, i32 %23)
  %25 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %7, align 8
  %26 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @PCIE_CFG_HEADER1, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writel(i32 %24, i64 %29)
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @PCI_FUNC(i32 %32)
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @PCI_SLOT(i32 %34)
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @CFG_HEADER_DW2(i32 %31, i32 %33, i32 %35, i32 %36)
  %38 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %7, align 8
  %39 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @PCIE_CFG_HEADER2, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writel(i32 %37, i64 %42)
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %10, align 4
  %46 = and i32 %45, 3
  %47 = mul nsw i32 8, %46
  %48 = shl i32 %44, %47
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %7, align 8
  %51 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @PCIE_CFG_WDATA, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @writel(i32 %49, i64 %54)
  %56 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %7, align 8
  %57 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @PCIE_APP_TLP_REQ, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @readl(i64 %60)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* @APP_CFG_REQ, align 4
  %63 = load i32, i32* %12, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %7, align 8
  %67 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @PCIE_APP_TLP_REQ, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @writel(i32 %65, i64 %70)
  %72 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %7, align 8
  %73 = call i32 @mtk_pcie_check_cfg_cpld(%struct.mtk_pcie_port* %72)
  ret i32 %73
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @CFG_HEADER_DW0(i32, i32) #1

declare dso_local i32 @CFG_HEADER_DW1(i32, i32) #1

declare dso_local i32 @CFG_HEADER_DW2(i32, i32, i32, i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @mtk_pcie_check_cfg_cpld(%struct.mtk_pcie_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
