; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-mediatek.c_mtk_pcie_hw_rd_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-mediatek.c_mtk_pcie_hw_rd_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_pcie_port = type { i64 }

@CFG_WRRD_TYPE_0 = common dso_local global i32 0, align 4
@CFG_RD_FMT = common dso_local global i32 0, align 4
@PCIE_CFG_HEADER0 = common dso_local global i64 0, align 8
@PCIE_CFG_HEADER1 = common dso_local global i64 0, align 8
@PCIE_CFG_HEADER2 = common dso_local global i64 0, align 8
@PCIE_APP_TLP_REQ = common dso_local global i64 0, align 8
@APP_CFG_REQ = common dso_local global i32 0, align 4
@PCIBIOS_SET_FAILED = common dso_local global i32 0, align 4
@PCIE_CFG_RDATA = common dso_local global i64 0, align 8
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_pcie_port*, i32, i32, i32, i32, i32*)* @mtk_pcie_hw_rd_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_pcie_hw_rd_cfg(%struct.mtk_pcie_port* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mtk_pcie_port*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.mtk_pcie_port* %0, %struct.mtk_pcie_port** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %15 = load i32, i32* @CFG_WRRD_TYPE_0, align 4
  %16 = load i32, i32* @CFG_RD_FMT, align 4
  %17 = call i32 @CFG_HEADER_DW0(i32 %15, i32 %16)
  %18 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %8, align 8
  %19 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PCIE_CFG_HEADER0, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @writel(i32 %17, i64 %22)
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %12, align 4
  %26 = call i32 @CFG_HEADER_DW1(i32 %24, i32 %25)
  %27 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %8, align 8
  %28 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @PCIE_CFG_HEADER1, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writel(i32 %26, i64 %31)
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @PCI_FUNC(i32 %34)
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @PCI_SLOT(i32 %36)
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @CFG_HEADER_DW2(i32 %33, i32 %35, i32 %37, i32 %38)
  %40 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %8, align 8
  %41 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @PCIE_CFG_HEADER2, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @writel(i32 %39, i64 %44)
  %46 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %8, align 8
  %47 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @PCIE_APP_TLP_REQ, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @readl(i64 %50)
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* @APP_CFG_REQ, align 4
  %53 = load i32, i32* %14, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %8, align 8
  %57 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @PCIE_APP_TLP_REQ, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @writel(i32 %55, i64 %60)
  %62 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %8, align 8
  %63 = call i64 @mtk_pcie_check_cfg_cpld(%struct.mtk_pcie_port* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %6
  %66 = load i32, i32* @PCIBIOS_SET_FAILED, align 4
  store i32 %66, i32* %7, align 4
  br label %101

67:                                               ; preds = %6
  %68 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %8, align 8
  %69 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @PCIE_CFG_RDATA, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @readl(i64 %72)
  %74 = load i32*, i32** %13, align 8
  store i32 %73, i32* %74, align 4
  %75 = load i32, i32* %12, align 4
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %86

77:                                               ; preds = %67
  %78 = load i32*, i32** %13, align 8
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %11, align 4
  %81 = and i32 %80, 3
  %82 = mul nsw i32 8, %81
  %83 = ashr i32 %79, %82
  %84 = and i32 %83, 255
  %85 = load i32*, i32** %13, align 8
  store i32 %84, i32* %85, align 4
  br label %99

86:                                               ; preds = %67
  %87 = load i32, i32* %12, align 4
  %88 = icmp eq i32 %87, 2
  br i1 %88, label %89, label %98

89:                                               ; preds = %86
  %90 = load i32*, i32** %13, align 8
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %11, align 4
  %93 = and i32 %92, 3
  %94 = mul nsw i32 8, %93
  %95 = ashr i32 %91, %94
  %96 = and i32 %95, 65535
  %97 = load i32*, i32** %13, align 8
  store i32 %96, i32* %97, align 4
  br label %98

98:                                               ; preds = %89, %86
  br label %99

99:                                               ; preds = %98, %77
  %100 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %100, i32* %7, align 4
  br label %101

101:                                              ; preds = %99, %65
  %102 = load i32, i32* %7, align 4
  ret i32 %102
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @CFG_HEADER_DW0(i32, i32) #1

declare dso_local i32 @CFG_HEADER_DW1(i32, i32) #1

declare dso_local i32 @CFG_HEADER_DW2(i32, i32, i32, i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @mtk_pcie_check_cfg_cpld(%struct.mtk_pcie_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
