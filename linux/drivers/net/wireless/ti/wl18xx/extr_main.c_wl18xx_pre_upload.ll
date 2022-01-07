; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_main.c_wl18xx_pre_upload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_main.c_wl18xx_pre_upload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32*, i32 }

@WL18XX_PHY_INIT_MEM_SIZE = common dso_local global i32 0, align 4
@PART_BOOT = common dso_local global i64 0, align 8
@WL18XX_EEPROMLESS_IND = common dso_local global i32 0, align 4
@REG_CHIP_ID_B = common dso_local global i32 0, align 4
@DEBUG_BOOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"chip id 0x%x\00", align 1
@WL18XX_SCR_PAD2 = common dso_local global i32 0, align 4
@PART_PHY_INIT = common dso_local global i64 0, align 8
@WL18XX_PHY_FPGA_SPARE_1 = common dso_local global i32 0, align 4
@MEM_FDSP_CLK_120_DISABLE = common dso_local global i32 0, align 4
@MEM_FDSP_CODERAM_FUNC_CLK_SEL = common dso_local global i32 0, align 4
@MEM_FDSP_CLK_120_ENABLE = common dso_local global i32 0, align 4
@IRQ_TYPE_LEVEL_LOW = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_FALLING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"using inverted interrupt logic: %d\00", align 1
@PART_TOP_PRCM_ELP_SOC = common dso_local global i64 0, align 8
@TOP_FN0_CCCR_REG_32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*)* @wl18xx_pre_upload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl18xx_pre_upload(%struct.wl1271* %0) #0 {
  %2 = alloca %struct.wl1271*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %2, align 8
  %6 = load i32, i32* @WL18XX_PHY_INIT_MEM_SIZE, align 4
  %7 = sext i32 %6 to i64
  %8 = icmp ugt i64 4, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUILD_BUG_ON(i32 %9)
  %11 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %12 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %13 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* @PART_BOOT, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = call i32 @wlcore_set_partition(%struct.wl1271* %11, i32* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %133

21:                                               ; preds = %1
  %22 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %23 = load i32, i32* @WL18XX_EEPROMLESS_IND, align 4
  %24 = load i32, i32* @WL18XX_EEPROMLESS_IND, align 4
  %25 = call i32 @wlcore_write32(%struct.wl1271* %22, i32 %23, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %133

29:                                               ; preds = %21
  %30 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %31 = load i32, i32* @REG_CHIP_ID_B, align 4
  %32 = call i32 @wlcore_read_reg(%struct.wl1271* %30, i32 %31, i32* %3)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %133

36:                                               ; preds = %29
  %37 = load i32, i32* @DEBUG_BOOT, align 4
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @wl1271_debug(i32 %37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %41 = load i32, i32* @WL18XX_SCR_PAD2, align 4
  %42 = call i32 @wlcore_read32(%struct.wl1271* %40, i32 %41, i32* %3)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  br label %133

46:                                               ; preds = %36
  %47 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %48 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %49 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* @PART_PHY_INIT, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = call i32 @wlcore_set_partition(%struct.wl1271* %47, i32* %52)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  br label %133

57:                                               ; preds = %46
  %58 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %59 = load i32, i32* @WL18XX_PHY_FPGA_SPARE_1, align 4
  %60 = load i32, i32* @MEM_FDSP_CLK_120_DISABLE, align 4
  %61 = call i32 @wlcore_write32(%struct.wl1271* %58, i32 %59, i32 %60)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %133

65:                                               ; preds = %57
  %66 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %67 = load i32, i32* @WL18XX_PHY_FPGA_SPARE_1, align 4
  %68 = load i32, i32* @MEM_FDSP_CODERAM_FUNC_CLK_SEL, align 4
  %69 = call i32 @wlcore_write32(%struct.wl1271* %66, i32 %67, i32 %68)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  br label %133

73:                                               ; preds = %65
  %74 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %75 = load i32, i32* @WL18XX_PHY_FPGA_SPARE_1, align 4
  %76 = load i32, i32* @MEM_FDSP_CLK_120_ENABLE, align 4
  %77 = call i32 @wlcore_write32(%struct.wl1271* %74, i32 %75, i32 %76)
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  br label %133

81:                                               ; preds = %73
  %82 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %83 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @irq_get_trigger_type(i32 %84)
  store i32 %85, i32* %4, align 4
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @IRQ_TYPE_LEVEL_LOW, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %93, label %89

89:                                               ; preds = %81
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @IRQ_TYPE_EDGE_FALLING, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %132

93:                                               ; preds = %89, %81
  %94 = load i32, i32* %4, align 4
  %95 = call i32 @wl1271_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  %96 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %97 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %98 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i64, i64* @PART_TOP_PRCM_ELP_SOC, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  %102 = call i32 @wlcore_set_partition(%struct.wl1271* %96, i32* %101)
  store i32 %102, i32* %4, align 4
  %103 = load i32, i32* %4, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %93
  br label %133

106:                                              ; preds = %93
  %107 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %108 = load i32, i32* @TOP_FN0_CCCR_REG_32, align 4
  %109 = call i32 @wl18xx_top_reg_read(%struct.wl1271* %107, i32 %108, i32* %5)
  store i32 %109, i32* %4, align 4
  %110 = load i32, i32* %4, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %106
  br label %133

113:                                              ; preds = %106
  %114 = call i32 @BIT(i32 1)
  %115 = load i32, i32* %5, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %5, align 4
  %117 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %118 = load i32, i32* @TOP_FN0_CCCR_REG_32, align 4
  %119 = load i32, i32* %5, align 4
  %120 = call i32 @wl18xx_top_reg_write(%struct.wl1271* %117, i32 %118, i32 %119)
  store i32 %120, i32* %4, align 4
  %121 = load i32, i32* %4, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %113
  br label %133

124:                                              ; preds = %113
  %125 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %126 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %127 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = load i64, i64* @PART_PHY_INIT, align 8
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  %131 = call i32 @wlcore_set_partition(%struct.wl1271* %125, i32* %130)
  store i32 %131, i32* %4, align 4
  br label %132

132:                                              ; preds = %124, %89
  br label %133

133:                                              ; preds = %132, %123, %112, %105, %80, %72, %64, %56, %45, %35, %28, %20
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @wlcore_set_partition(%struct.wl1271*, i32*) #1

declare dso_local i32 @wlcore_write32(%struct.wl1271*, i32, i32) #1

declare dso_local i32 @wlcore_read_reg(%struct.wl1271*, i32, i32*) #1

declare dso_local i32 @wl1271_debug(i32, i8*, i32) #1

declare dso_local i32 @wlcore_read32(%struct.wl1271*, i32, i32*) #1

declare dso_local i32 @irq_get_trigger_type(i32) #1

declare dso_local i32 @wl1271_info(i8*, i32) #1

declare dso_local i32 @wl18xx_top_reg_read(%struct.wl1271*, i32, i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @wl18xx_top_reg_write(%struct.wl1271*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
