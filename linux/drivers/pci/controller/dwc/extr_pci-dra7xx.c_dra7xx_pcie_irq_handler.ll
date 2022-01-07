; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-dra7xx.c_dra7xx_pcie_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-dra7xx.c_dra7xx_pcie_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dra7xx_pcie = type { i64, %struct.dw_pcie* }
%struct.dw_pcie = type { %struct.dw_pcie_ep, %struct.device* }
%struct.dw_pcie_ep = type { i32 }
%struct.device = type { i32 }

@PCIECTRL_DRA7XX_CONF_IRQSTATUS_MAIN = common dso_local global i32 0, align 4
@ERR_SYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"System Error\0A\00", align 1
@ERR_FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"Fatal Error\0A\00", align 1
@ERR_NONFATAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"Non Fatal Error\0A\00", align 1
@ERR_COR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"Correctable Error\0A\00", align 1
@ERR_AXI = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"AXI tag lookup fatal Error\0A\00", align 1
@ERR_ECRC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"ECRC Error\0A\00", align 1
@PME_TURN_OFF = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [50 x i8] c"Power Management Event Turn-Off message received\0A\00", align 1
@PME_TO_ACK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [48 x i8] c"Power Management Turn-Off Ack message received\0A\00", align 1
@PM_PME = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [44 x i8] c"PM Power Management Event message received\0A\00", align 1
@LINK_REQ_RST = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [20 x i8] c"Link Request Reset\0A\00", align 1
@LINK_UP_EVT = common dso_local global i32 0, align 4
@DW_PCIE_EP_TYPE = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [22 x i8] c"Link-up state change\0A\00", align 1
@CFG_BME_EVT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [32 x i8] c"CFG 'Bus Master Enable' change\0A\00", align 1
@CFG_MSE_EVT = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [34 x i8] c"CFG 'Memory Space Enable' change\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @dra7xx_pcie_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dra7xx_pcie_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dra7xx_pcie*, align 8
  %6 = alloca %struct.dw_pcie*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.dw_pcie_ep*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.dra7xx_pcie*
  store %struct.dra7xx_pcie* %11, %struct.dra7xx_pcie** %5, align 8
  %12 = load %struct.dra7xx_pcie*, %struct.dra7xx_pcie** %5, align 8
  %13 = getelementptr inbounds %struct.dra7xx_pcie, %struct.dra7xx_pcie* %12, i32 0, i32 1
  %14 = load %struct.dw_pcie*, %struct.dw_pcie** %13, align 8
  store %struct.dw_pcie* %14, %struct.dw_pcie** %6, align 8
  %15 = load %struct.dw_pcie*, %struct.dw_pcie** %6, align 8
  %16 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %15, i32 0, i32 1
  %17 = load %struct.device*, %struct.device** %16, align 8
  store %struct.device* %17, %struct.device** %7, align 8
  %18 = load %struct.dw_pcie*, %struct.dw_pcie** %6, align 8
  %19 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %18, i32 0, i32 0
  store %struct.dw_pcie_ep* %19, %struct.dw_pcie_ep** %8, align 8
  %20 = load %struct.dra7xx_pcie*, %struct.dra7xx_pcie** %5, align 8
  %21 = load i32, i32* @PCIECTRL_DRA7XX_CONF_IRQSTATUS_MAIN, align 4
  %22 = call i32 @dra7xx_pcie_readl(%struct.dra7xx_pcie* %20, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @ERR_SYS, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load %struct.device*, %struct.device** %7, align 8
  %29 = call i32 @dev_dbg(%struct.device* %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %2
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @ERR_FATAL, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.device*, %struct.device** %7, align 8
  %37 = call i32 @dev_dbg(%struct.device* %36, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %30
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @ERR_NONFATAL, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load %struct.device*, %struct.device** %7, align 8
  %45 = call i32 @dev_dbg(%struct.device* %44, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %38
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @ERR_COR, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load %struct.device*, %struct.device** %7, align 8
  %53 = call i32 @dev_dbg(%struct.device* %52, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %46
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @ERR_AXI, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load %struct.device*, %struct.device** %7, align 8
  %61 = call i32 @dev_dbg(%struct.device* %60, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %54
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @ERR_ECRC, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load %struct.device*, %struct.device** %7, align 8
  %69 = call i32 @dev_dbg(%struct.device* %68, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  br label %70

70:                                               ; preds = %67, %62
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @PME_TURN_OFF, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load %struct.device*, %struct.device** %7, align 8
  %77 = call i32 @dev_dbg(%struct.device* %76, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0))
  br label %78

78:                                               ; preds = %75, %70
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @PME_TO_ACK, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load %struct.device*, %struct.device** %7, align 8
  %85 = call i32 @dev_dbg(%struct.device* %84, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0))
  br label %86

86:                                               ; preds = %83, %78
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @PM_PME, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load %struct.device*, %struct.device** %7, align 8
  %93 = call i32 @dev_dbg(%struct.device* %92, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0))
  br label %94

94:                                               ; preds = %91, %86
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* @LINK_REQ_RST, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load %struct.device*, %struct.device** %7, align 8
  %101 = call i32 @dev_dbg(%struct.device* %100, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  br label %102

102:                                              ; preds = %99, %94
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* @LINK_UP_EVT, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %119

107:                                              ; preds = %102
  %108 = load %struct.dra7xx_pcie*, %struct.dra7xx_pcie** %5, align 8
  %109 = getelementptr inbounds %struct.dra7xx_pcie, %struct.dra7xx_pcie* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @DW_PCIE_EP_TYPE, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %107
  %114 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %8, align 8
  %115 = call i32 @dw_pcie_ep_linkup(%struct.dw_pcie_ep* %114)
  br label %116

116:                                              ; preds = %113, %107
  %117 = load %struct.device*, %struct.device** %7, align 8
  %118 = call i32 @dev_dbg(%struct.device* %117, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  br label %119

119:                                              ; preds = %116, %102
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* @CFG_BME_EVT, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %119
  %125 = load %struct.device*, %struct.device** %7, align 8
  %126 = call i32 @dev_dbg(%struct.device* %125, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0))
  br label %127

127:                                              ; preds = %124, %119
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* @CFG_MSE_EVT, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %127
  %133 = load %struct.device*, %struct.device** %7, align 8
  %134 = call i32 @dev_dbg(%struct.device* %133, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0))
  br label %135

135:                                              ; preds = %132, %127
  %136 = load %struct.dra7xx_pcie*, %struct.dra7xx_pcie** %5, align 8
  %137 = load i32, i32* @PCIECTRL_DRA7XX_CONF_IRQSTATUS_MAIN, align 4
  %138 = load i32, i32* %9, align 4
  %139 = call i32 @dra7xx_pcie_writel(%struct.dra7xx_pcie* %136, i32 %137, i32 %138)
  %140 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %140
}

declare dso_local i32 @dra7xx_pcie_readl(%struct.dra7xx_pcie*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @dw_pcie_ep_linkup(%struct.dw_pcie_ep*) #1

declare dso_local i32 @dra7xx_pcie_writel(%struct.dra7xx_pcie*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
