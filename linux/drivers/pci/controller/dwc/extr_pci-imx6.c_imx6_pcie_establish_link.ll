; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-imx6.c_imx6_pcie_establish_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-imx6.c_imx6_pcie_establish_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx6_pcie = type { i32, %struct.TYPE_2__*, %struct.dw_pcie* }
%struct.TYPE_2__ = type { i32 }
%struct.dw_pcie = type { %struct.device* }
%struct.device = type { i32 }

@PCIE_RC_LCR = common dso_local global i32 0, align 4
@PCIE_RC_LCR_MAX_LINK_SPEEDS_MASK = common dso_local global i32 0, align 4
@PCIE_RC_LCR_MAX_LINK_SPEEDS_GEN1 = common dso_local global i32 0, align 4
@PCIE_RC_LCR_MAX_LINK_SPEEDS_GEN2 = common dso_local global i32 0, align 4
@PCIE_LINK_WIDTH_SPEED_CONTROL = common dso_local global i32 0, align 4
@PORT_LOGIC_SPEED_CHANGE = common dso_local global i32 0, align 4
@IMX6_PCIE_FLAG_IMX6_SPEED_CHANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to bring link up!\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Link: Gen2 disabled\0A\00", align 1
@PCIE_RC_LCSR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"Link up, Gen%i\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"PHY DEBUG_R0=0x%08x DEBUG_R1=0x%08x\0A\00", align 1
@PCIE_PORT_DEBUG0 = common dso_local global i32 0, align 4
@PCIE_PORT_DEBUG1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imx6_pcie*)* @imx6_pcie_establish_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx6_pcie_establish_link(%struct.imx6_pcie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.imx6_pcie*, align 8
  %4 = alloca %struct.dw_pcie*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.imx6_pcie* %0, %struct.imx6_pcie** %3, align 8
  %8 = load %struct.imx6_pcie*, %struct.imx6_pcie** %3, align 8
  %9 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %8, i32 0, i32 2
  %10 = load %struct.dw_pcie*, %struct.dw_pcie** %9, align 8
  store %struct.dw_pcie* %10, %struct.dw_pcie** %4, align 8
  %11 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %12 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %11, i32 0, i32 0
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %5, align 8
  %14 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %15 = load i32, i32* @PCIE_RC_LCR, align 4
  %16 = call i32 @dw_pcie_readl_dbi(%struct.dw_pcie* %14, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* @PCIE_RC_LCR_MAX_LINK_SPEEDS_MASK, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* @PCIE_RC_LCR_MAX_LINK_SPEEDS_GEN1, align 4
  %22 = load i32, i32* %6, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %6, align 4
  %24 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %25 = load i32, i32* @PCIE_RC_LCR, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @dw_pcie_writel_dbi(%struct.dw_pcie* %24, i32 %25, i32 %26)
  %28 = load %struct.device*, %struct.device** %5, align 8
  %29 = call i32 @imx6_pcie_ltssm_enable(%struct.device* %28)
  %30 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %31 = call i32 @dw_pcie_wait_for_link(%struct.dw_pcie* %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %1
  br label %103

35:                                               ; preds = %1
  %36 = load %struct.imx6_pcie*, %struct.imx6_pcie** %3, align 8
  %37 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 2
  br i1 %39, label %40, label %91

40:                                               ; preds = %35
  %41 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %42 = load i32, i32* @PCIE_RC_LCR, align 4
  %43 = call i32 @dw_pcie_readl_dbi(%struct.dw_pcie* %41, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* @PCIE_RC_LCR_MAX_LINK_SPEEDS_MASK, align 4
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %6, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* @PCIE_RC_LCR_MAX_LINK_SPEEDS_GEN2, align 4
  %49 = load i32, i32* %6, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %6, align 4
  %51 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %52 = load i32, i32* @PCIE_RC_LCR, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @dw_pcie_writel_dbi(%struct.dw_pcie* %51, i32 %52, i32 %53)
  %55 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %56 = load i32, i32* @PCIE_LINK_WIDTH_SPEED_CONTROL, align 4
  %57 = call i32 @dw_pcie_readl_dbi(%struct.dw_pcie* %55, i32 %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* @PORT_LOGIC_SPEED_CHANGE, align 4
  %59 = load i32, i32* %6, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %6, align 4
  %61 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %62 = load i32, i32* @PCIE_LINK_WIDTH_SPEED_CONTROL, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @dw_pcie_writel_dbi(%struct.dw_pcie* %61, i32 %62, i32 %63)
  %65 = load %struct.imx6_pcie*, %struct.imx6_pcie** %3, align 8
  %66 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @IMX6_PCIE_FLAG_IMX6_SPEED_CHANGE, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %40
  %74 = load %struct.imx6_pcie*, %struct.imx6_pcie** %3, align 8
  %75 = call i32 @imx6_pcie_wait_for_speed_change(%struct.imx6_pcie* %74)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load %struct.device*, %struct.device** %5, align 8
  %80 = call i32 @dev_err(%struct.device* %79, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %103

81:                                               ; preds = %73
  br label %82

82:                                               ; preds = %81, %40
  %83 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %84 = call i32 @dw_pcie_wait_for_link(%struct.dw_pcie* %83)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load %struct.device*, %struct.device** %5, align 8
  %89 = call i32 @dev_err(%struct.device* %88, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %103

90:                                               ; preds = %82
  br label %94

91:                                               ; preds = %35
  %92 = load %struct.device*, %struct.device** %5, align 8
  %93 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %92, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %94

94:                                               ; preds = %91, %90
  %95 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %96 = load i32, i32* @PCIE_RC_LCSR, align 4
  %97 = call i32 @dw_pcie_readl_dbi(%struct.dw_pcie* %95, i32 %96)
  store i32 %97, i32* %6, align 4
  %98 = load %struct.device*, %struct.device** %5, align 8
  %99 = load i32, i32* %6, align 4
  %100 = ashr i32 %99, 16
  %101 = and i32 %100, 15
  %102 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %98, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  store i32 0, i32* %2, align 4
  br label %115

103:                                              ; preds = %87, %78, %34
  %104 = load %struct.device*, %struct.device** %5, align 8
  %105 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %106 = load i32, i32* @PCIE_PORT_DEBUG0, align 4
  %107 = call i32 @dw_pcie_readl_dbi(%struct.dw_pcie* %105, i32 %106)
  %108 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %109 = load i32, i32* @PCIE_PORT_DEBUG1, align 4
  %110 = call i32 @dw_pcie_readl_dbi(%struct.dw_pcie* %108, i32 %109)
  %111 = call i32 @dev_dbg(%struct.device* %104, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %107, i32 %110)
  %112 = load %struct.imx6_pcie*, %struct.imx6_pcie** %3, align 8
  %113 = call i32 @imx6_pcie_reset_phy(%struct.imx6_pcie* %112)
  %114 = load i32, i32* %7, align 4
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %103, %94
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i32 @dw_pcie_readl_dbi(%struct.dw_pcie*, i32) #1

declare dso_local i32 @dw_pcie_writel_dbi(%struct.dw_pcie*, i32, i32) #1

declare dso_local i32 @imx6_pcie_ltssm_enable(%struct.device*) #1

declare dso_local i32 @dw_pcie_wait_for_link(%struct.dw_pcie*) #1

declare dso_local i32 @imx6_pcie_wait_for_speed_change(%struct.imx6_pcie*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, ...) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @imx6_pcie_reset_phy(%struct.imx6_pcie*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
