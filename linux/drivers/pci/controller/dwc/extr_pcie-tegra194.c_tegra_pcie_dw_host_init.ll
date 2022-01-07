; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-tegra194.c_tegra_pcie_dw_host_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-tegra194.c_tegra_pcie_dw_host_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcie_port = type { i32 }
%struct.dw_pcie = type { i32 }
%struct.tegra_pcie_dw = type { i32, i64, i32 }

@APPL_DEBUG = common dso_local global i32 0, align 4
@APPL_DEBUG_LTSSM_STATE_MASK = common dso_local global i32 0, align 4
@APPL_DEBUG_LTSSM_STATE_SHIFT = common dso_local global i32 0, align 4
@APPL_LINK_STATUS = common dso_local global i32 0, align 4
@APPL_LINK_STATUS_RDLH_LINK_UP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Link is down in DLL\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Trying again with DLFE disabled\0A\00", align 1
@APPL_CTRL = common dso_local global i32 0, align 4
@APPL_CTRL_LTSSM_EN = common dso_local global i32 0, align 4
@PCI_EXT_CAP_ID_DLF = common dso_local global i32 0, align 4
@PCI_DLF_CAP = common dso_local global i32 0, align 4
@PCI_DLF_EXCHANGE_ENABLE = common dso_local global i32 0, align 4
@PCI_EXP_LNKSTA = common dso_local global i64 0, align 8
@PCI_EXP_LNKSTA_CLS = common dso_local global i32 0, align 4
@pcie_gen_freq = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcie_port*)* @tegra_pcie_dw_host_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_pcie_dw_host_init(%struct.pcie_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcie_port*, align 8
  %4 = alloca %struct.dw_pcie*, align 8
  %5 = alloca %struct.tegra_pcie_dw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pcie_port* %0, %struct.pcie_port** %3, align 8
  %10 = load %struct.pcie_port*, %struct.pcie_port** %3, align 8
  %11 = call %struct.dw_pcie* @to_dw_pcie_from_pp(%struct.pcie_port* %10)
  store %struct.dw_pcie* %11, %struct.dw_pcie** %4, align 8
  %12 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %13 = call %struct.tegra_pcie_dw* @to_tegra_pcie(%struct.dw_pcie* %12)
  store %struct.tegra_pcie_dw* %13, %struct.tegra_pcie_dw** %5, align 8
  %14 = load %struct.pcie_port*, %struct.pcie_port** %3, align 8
  %15 = call i32 @tegra_pcie_prepare_host(%struct.pcie_port* %14)
  %16 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %17 = call i64 @dw_pcie_wait_for_link(%struct.dw_pcie* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %92

19:                                               ; preds = %1
  %20 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %5, align 8
  %21 = load i32, i32* @APPL_DEBUG, align 4
  %22 = call i32 @appl_readl(%struct.tegra_pcie_dw* %20, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* @APPL_DEBUG_LTSSM_STATE_MASK, align 4
  %24 = load i32, i32* %6, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* @APPL_DEBUG_LTSSM_STATE_SHIFT, align 4
  %27 = load i32, i32* %6, align 4
  %28 = ashr i32 %27, %26
  store i32 %28, i32* %6, align 4
  %29 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %5, align 8
  %30 = load i32, i32* @APPL_LINK_STATUS, align 4
  %31 = call i32 @appl_readl(%struct.tegra_pcie_dw* %29, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* @APPL_LINK_STATUS_RDLH_LINK_UP, align 4
  %33 = load i32, i32* %7, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp eq i32 %35, 17
  br i1 %36, label %37, label %40

37:                                               ; preds = %19
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37, %19
  store i32 0, i32* %2, align 4
  br label %114

41:                                               ; preds = %37
  %42 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %43 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dev_info(i32 %44, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %47 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dev_info(i32 %48, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %50 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %5, align 8
  %51 = load i32, i32* @APPL_CTRL, align 4
  %52 = call i32 @appl_readl(%struct.tegra_pcie_dw* %50, i32 %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* @APPL_CTRL_LTSSM_EN, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %6, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %6, align 4
  %57 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @APPL_CTRL, align 4
  %60 = call i32 @appl_writel(%struct.tegra_pcie_dw* %57, i32 %58, i32 %59)
  %61 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %5, align 8
  %62 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @reset_control_assert(i32 %63)
  %65 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %5, align 8
  %66 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @reset_control_deassert(i32 %67)
  %69 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %70 = load i32, i32* @PCI_EXT_CAP_ID_DLF, align 4
  %71 = call i32 @dw_pcie_find_ext_capability(%struct.dw_pcie* %69, i32 %70)
  store i32 %71, i32* %8, align 4
  %72 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @PCI_DLF_CAP, align 4
  %75 = add nsw i32 %73, %74
  %76 = call i32 @dw_pcie_readl_dbi(%struct.dw_pcie* %72, i32 %75)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* @PCI_DLF_EXCHANGE_ENABLE, align 4
  %78 = xor i32 %77, -1
  %79 = load i32, i32* %6, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %6, align 4
  %81 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @dw_pcie_writel_dbi(%struct.dw_pcie* %81, i32 %82, i32 %83)
  %85 = load %struct.pcie_port*, %struct.pcie_port** %3, align 8
  %86 = call i32 @tegra_pcie_prepare_host(%struct.pcie_port* %85)
  %87 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %88 = call i64 @dw_pcie_wait_for_link(%struct.dw_pcie* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %114

91:                                               ; preds = %41
  br label %92

92:                                               ; preds = %91, %1
  %93 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %94 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %5, align 8
  %95 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @PCI_EXP_LNKSTA, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 @dw_pcie_readw_dbi(%struct.dw_pcie* %93, i64 %98)
  %100 = load i32, i32* @PCI_EXP_LNKSTA_CLS, align 4
  %101 = and i32 %99, %100
  store i32 %101, i32* %9, align 4
  %102 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %5, align 8
  %103 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32*, i32** @pcie_gen_freq, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sub nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %105, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @clk_set_rate(i32 %104, i32 %110)
  %112 = load %struct.pcie_port*, %struct.pcie_port** %3, align 8
  %113 = call i32 @tegra_pcie_enable_interrupts(%struct.pcie_port* %112)
  store i32 0, i32* %2, align 4
  br label %114

114:                                              ; preds = %92, %90, %40
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local %struct.dw_pcie* @to_dw_pcie_from_pp(%struct.pcie_port*) #1

declare dso_local %struct.tegra_pcie_dw* @to_tegra_pcie(%struct.dw_pcie*) #1

declare dso_local i32 @tegra_pcie_prepare_host(%struct.pcie_port*) #1

declare dso_local i64 @dw_pcie_wait_for_link(%struct.dw_pcie*) #1

declare dso_local i32 @appl_readl(%struct.tegra_pcie_dw*, i32) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @appl_writel(%struct.tegra_pcie_dw*, i32, i32) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @dw_pcie_find_ext_capability(%struct.dw_pcie*, i32) #1

declare dso_local i32 @dw_pcie_readl_dbi(%struct.dw_pcie*, i32) #1

declare dso_local i32 @dw_pcie_writel_dbi(%struct.dw_pcie*, i32, i32) #1

declare dso_local i32 @dw_pcie_readw_dbi(%struct.dw_pcie*, i64) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @tegra_pcie_enable_interrupts(%struct.pcie_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
