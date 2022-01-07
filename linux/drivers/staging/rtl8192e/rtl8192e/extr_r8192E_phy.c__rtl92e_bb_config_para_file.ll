; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_r8192E_phy.c__rtl92e_bb_config_para_file.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_r8192E_phy.c__rtl92e_bb_config_para_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i64, i64, i32*, i32 }

@BB_GLOBAL_RESET = common dso_local global i32 0, align 4
@BB_GLOBAL_RESET_BIT = common dso_local global i64 0, align 8
@CPU_GEN = common dso_local global i32 0, align 4
@CPU_GEN_BB_RST = common dso_local global i32 0, align 4
@HW90_BLOCK_PHY0 = common dso_local global i64 0, align 8
@HW90_BLOCK_PHY1 = common dso_local global i64 0, align 8
@COMP_ERR = common dso_local global i32 0, align 4
@COMP_PHY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"rtl92e_config_rf():Check PHY%d Fail!!\0A\00", align 1
@rFPGA0_RFMOD = common dso_local global i32 0, align 4
@bCCKEn = common dso_local global i32 0, align 4
@bOFDMEn = common dso_local global i32 0, align 4
@BaseBand_Config_PHY_REG = common dso_local global i32 0, align 4
@BaseBand_Config_AGC_TAB = common dso_local global i32 0, align 4
@VERSION_8190_BD = common dso_local global i64 0, align 8
@RF_2T4R = common dso_local global i64 0, align 8
@rFPGA0_TxGainStage = common dso_local global i32 0, align 4
@bXBTxAGC = common dso_local global i32 0, align 4
@bXCTxAGC = common dso_local global i32 0, align 4
@bXDTxAGC = common dso_local global i32 0, align 4
@rFPGA0_AnalogParameter1 = common dso_local global i32 0, align 4
@bXtalCap92x = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @_rtl92e_bb_config_para_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl92e_bb_config_para_file(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.r8192_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.r8192_priv* @rtllib_priv(%struct.net_device* %9)
  store %struct.r8192_priv* %10, %struct.r8192_priv** %4, align 8
  store i32 1, i32* %5, align 4
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = load i32, i32* @BB_GLOBAL_RESET, align 4
  %13 = call i64 @rtl92e_readb(%struct.net_device* %11, i32 %12)
  store i64 %13, i64* %6, align 8
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = load i32, i32* @BB_GLOBAL_RESET, align 4
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @BB_GLOBAL_RESET_BIT, align 8
  %18 = or i64 %16, %17
  %19 = call i32 @rtl92e_writeb(%struct.net_device* %14, i32 %15, i64 %18)
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = load i32, i32* @CPU_GEN, align 4
  %22 = call i32 @rtl92e_readl(%struct.net_device* %20, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load %struct.net_device*, %struct.net_device** %3, align 8
  %24 = load i32, i32* @CPU_GEN, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @CPU_GEN_BB_RST, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  %29 = call i32 @rtl92e_writel(%struct.net_device* %23, i32 %24, i32 %28)
  %30 = load i64, i64* @HW90_BLOCK_PHY0, align 8
  %31 = trunc i64 %30 to i32
  %32 = zext i32 %31 to i64
  store i64 %32, i64* %7, align 8
  br label %33

33:                                               ; preds = %53, %1
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* @HW90_BLOCK_PHY1, align 8
  %36 = icmp sle i64 %34, %35
  br i1 %36, label %37, label %56

37:                                               ; preds = %33
  %38 = load %struct.net_device*, %struct.net_device** %3, align 8
  %39 = load i64, i64* %7, align 8
  %40 = trunc i64 %39 to i32
  %41 = call i32 @rtl92e_check_bb_and_rf(%struct.net_device* %38, i32 %40, i32 0)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %37
  %45 = load i32, i32* @COMP_ERR, align 4
  %46 = load i32, i32* @COMP_PHY, align 4
  %47 = or i32 %45, %46
  %48 = load i64, i64* %7, align 8
  %49 = sub nsw i64 %48, 1
  %50 = call i32 @RT_TRACE(i32 %47, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %49)
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %2, align 4
  br label %130

52:                                               ; preds = %37
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %7, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %7, align 8
  br label %33

56:                                               ; preds = %33
  %57 = load %struct.net_device*, %struct.net_device** %3, align 8
  %58 = load i32, i32* @rFPGA0_RFMOD, align 4
  %59 = load i32, i32* @bCCKEn, align 4
  %60 = load i32, i32* @bOFDMEn, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @rtl92e_set_bb_reg(%struct.net_device* %57, i32 %58, i32 %61, i32 0)
  %63 = load %struct.net_device*, %struct.net_device** %3, align 8
  %64 = load i32, i32* @BaseBand_Config_PHY_REG, align 4
  %65 = call i32 @_rtl92e_phy_config_bb(%struct.net_device* %63, i32 %64)
  %66 = load %struct.net_device*, %struct.net_device** %3, align 8
  %67 = load i32, i32* @CPU_GEN, align 4
  %68 = call i32 @rtl92e_readl(%struct.net_device* %66, i32 %67)
  store i32 %68, i32* %8, align 4
  %69 = load %struct.net_device*, %struct.net_device** %3, align 8
  %70 = load i32, i32* @CPU_GEN, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @CPU_GEN_BB_RST, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @rtl92e_writel(%struct.net_device* %69, i32 %70, i32 %73)
  %75 = load %struct.net_device*, %struct.net_device** %3, align 8
  %76 = load i32, i32* @BaseBand_Config_AGC_TAB, align 4
  %77 = call i32 @_rtl92e_phy_config_bb(%struct.net_device* %75, i32 %76)
  %78 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %79 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @VERSION_8190_BD, align 8
  %82 = icmp sgt i64 %80, %81
  br i1 %82, label %83, label %128

83:                                               ; preds = %56
  %84 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %85 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @RF_2T4R, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %109

89:                                               ; preds = %83
  %90 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %91 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 2
  %94 = load i32, i32* %93, align 4
  %95 = shl i32 %94, 8
  %96 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %97 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 1
  %100 = load i32, i32* %99, align 4
  %101 = shl i32 %100, 4
  %102 = or i32 %95, %101
  %103 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %104 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %102, %107
  store i32 %108, i32* %8, align 4
  br label %110

109:                                              ; preds = %83
  store i32 0, i32* %8, align 4
  br label %110

110:                                              ; preds = %109, %89
  %111 = load %struct.net_device*, %struct.net_device** %3, align 8
  %112 = load i32, i32* @rFPGA0_TxGainStage, align 4
  %113 = load i32, i32* @bXBTxAGC, align 4
  %114 = load i32, i32* @bXCTxAGC, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @bXDTxAGC, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* %8, align 4
  %119 = call i32 @rtl92e_set_bb_reg(%struct.net_device* %111, i32 %112, i32 %117, i32 %118)
  %120 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %121 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  store i32 %122, i32* %8, align 4
  %123 = load %struct.net_device*, %struct.net_device** %3, align 8
  %124 = load i32, i32* @rFPGA0_AnalogParameter1, align 4
  %125 = load i32, i32* @bXtalCap92x, align 4
  %126 = load i32, i32* %8, align 4
  %127 = call i32 @rtl92e_set_bb_reg(%struct.net_device* %123, i32 %124, i32 %125, i32 %126)
  br label %128

128:                                              ; preds = %110, %56
  %129 = load i32, i32* %5, align 4
  store i32 %129, i32* %2, align 4
  br label %130

130:                                              ; preds = %128, %44
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local %struct.r8192_priv* @rtllib_priv(%struct.net_device*) #1

declare dso_local i64 @rtl92e_readb(%struct.net_device*, i32) #1

declare dso_local i32 @rtl92e_writeb(%struct.net_device*, i32, i64) #1

declare dso_local i32 @rtl92e_readl(%struct.net_device*, i32) #1

declare dso_local i32 @rtl92e_writel(%struct.net_device*, i32, i32) #1

declare dso_local i32 @rtl92e_check_bb_and_rf(%struct.net_device*, i32, i32) #1

declare dso_local i32 @RT_TRACE(i32, i8*, i64) #1

declare dso_local i32 @rtl92e_set_bb_reg(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @_rtl92e_phy_config_bb(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
