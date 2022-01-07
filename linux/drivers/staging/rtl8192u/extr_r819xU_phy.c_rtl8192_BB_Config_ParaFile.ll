; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r819xU_phy.c_rtl8192_BB_Config_ParaFile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r819xU_phy.c_rtl8192_BB_Config_ParaFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i64, i32*, i32, i64 }

@BB_GLOBAL_RESET = common dso_local global i32 0, align 4
@BB_GLOBAL_RESET_BIT = common dso_local global i64 0, align 8
@CPU_GEN = common dso_local global i32 0, align 4
@CPU_GEN_BB_RST = common dso_local global i32 0, align 4
@HW90_BLOCK_PHY0 = common dso_local global i64 0, align 8
@HW90_BLOCK_PHY1 = common dso_local global i64 0, align 8
@COMP_ERR = common dso_local global i32 0, align 4
@COMP_PHY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"phy_rf8256_config(): Check PHY%d Fail!!\0A\00", align 1
@rFPGA0_RFMOD = common dso_local global i32 0, align 4
@bCCKEn = common dso_local global i32 0, align 4
@bOFDMEn = common dso_local global i32 0, align 4
@BASEBAND_CONFIG_PHY_REG = common dso_local global i32 0, align 4
@BASEBAND_CONFIG_AGC_TAB = common dso_local global i32 0, align 4
@VERSION_819XU_A = common dso_local global i64 0, align 8
@rFPGA0_TxGainStage = common dso_local global i32 0, align 4
@bXBTxAGC = common dso_local global i32 0, align 4
@bXCTxAGC = common dso_local global i32 0, align 4
@rFPGA0_AnalogParameter1 = common dso_local global i32 0, align 4
@bXtalCap = common dso_local global i32 0, align 4
@rFPGA0_XA_HSSIParameter2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @rtl8192_BB_Config_ParaFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8192_BB_Config_ParaFile(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %8)
  store %struct.r8192_priv* %9, %struct.r8192_priv** %3, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = load i32, i32* @BB_GLOBAL_RESET, align 4
  %12 = call i32 @read_nic_byte(%struct.net_device* %10, i32 %11, i64* %4)
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = load i32, i32* @BB_GLOBAL_RESET, align 4
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* @BB_GLOBAL_RESET_BIT, align 8
  %17 = or i64 %15, %16
  %18 = call i32 @write_nic_byte(%struct.net_device* %13, i32 %14, i64 %17)
  %19 = call i32 @mdelay(i32 50)
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = load i32, i32* @CPU_GEN, align 4
  %22 = call i32 @read_nic_dword(%struct.net_device* %20, i32 %21, i32* %7)
  %23 = load %struct.net_device*, %struct.net_device** %2, align 8
  %24 = load i32, i32* @CPU_GEN, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @CPU_GEN_BB_RST, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  %29 = call i32 @write_nic_dword(%struct.net_device* %23, i32 %24, i32 %28)
  %30 = load i64, i64* @HW90_BLOCK_PHY0, align 8
  %31 = trunc i64 %30 to i32
  %32 = zext i32 %31 to i64
  store i64 %32, i64* %5, align 8
  br label %33

33:                                               ; preds = %52, %1
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* @HW90_BLOCK_PHY1, align 8
  %36 = icmp sle i64 %34, %35
  br i1 %36, label %37, label %55

37:                                               ; preds = %33
  %38 = load %struct.net_device*, %struct.net_device** %2, align 8
  %39 = load i64, i64* %5, align 8
  %40 = trunc i64 %39 to i32
  %41 = call i64 @rtl8192_phy_checkBBAndRF(%struct.net_device* %38, i32 %40, i32 0)
  store i64 %41, i64* %6, align 8
  %42 = load i64, i64* %6, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %37
  %45 = load i32, i32* @COMP_ERR, align 4
  %46 = load i32, i32* @COMP_PHY, align 4
  %47 = or i32 %45, %46
  %48 = load i64, i64* %5, align 8
  %49 = sub nsw i64 %48, 1
  %50 = call i32 @RT_TRACE(i32 %47, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %49)
  br label %119

51:                                               ; preds = %37
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %5, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %5, align 8
  br label %33

55:                                               ; preds = %33
  %56 = load %struct.net_device*, %struct.net_device** %2, align 8
  %57 = load i32, i32* @rFPGA0_RFMOD, align 4
  %58 = load i32, i32* @bCCKEn, align 4
  %59 = load i32, i32* @bOFDMEn, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @rtl8192_setBBreg(%struct.net_device* %56, i32 %57, i32 %60, i32 0)
  %62 = load %struct.net_device*, %struct.net_device** %2, align 8
  %63 = load i32, i32* @BASEBAND_CONFIG_PHY_REG, align 4
  %64 = call i32 @rtl8192_phyConfigBB(%struct.net_device* %62, i32 %63)
  %65 = load %struct.net_device*, %struct.net_device** %2, align 8
  %66 = load i32, i32* @CPU_GEN, align 4
  %67 = call i32 @read_nic_dword(%struct.net_device* %65, i32 %66, i32* %7)
  %68 = load %struct.net_device*, %struct.net_device** %2, align 8
  %69 = load i32, i32* @CPU_GEN, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @CPU_GEN_BB_RST, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @write_nic_dword(%struct.net_device* %68, i32 %69, i32 %72)
  %74 = load %struct.net_device*, %struct.net_device** %2, align 8
  %75 = load i32, i32* @BASEBAND_CONFIG_AGC_TAB, align 4
  %76 = call i32 @rtl8192_phyConfigBB(%struct.net_device* %74, i32 %75)
  %77 = load %struct.net_device*, %struct.net_device** %2, align 8
  %78 = call i32 @write_nic_byte_E(%struct.net_device* %77, i32 94, i32 0)
  %79 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %80 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @VERSION_819XU_A, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %113

84:                                               ; preds = %55
  %85 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %86 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  %89 = load i32, i32* %88, align 4
  %90 = shl i32 %89, 4
  %91 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %92 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %90, %95
  store i32 %96, i32* %7, align 4
  %97 = load %struct.net_device*, %struct.net_device** %2, align 8
  %98 = load i32, i32* @rFPGA0_TxGainStage, align 4
  %99 = load i32, i32* @bXBTxAGC, align 4
  %100 = load i32, i32* @bXCTxAGC, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @rtl8192_setBBreg(%struct.net_device* %97, i32 %98, i32 %101, i32 %102)
  %104 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %105 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = and i32 %106, 15
  store i32 %107, i32* %7, align 4
  %108 = load %struct.net_device*, %struct.net_device** %2, align 8
  %109 = load i32, i32* @rFPGA0_AnalogParameter1, align 4
  %110 = load i32, i32* @bXtalCap, align 4
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @rtl8192_setBBreg(%struct.net_device* %108, i32 %109, i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %84, %55
  %114 = load %struct.net_device*, %struct.net_device** %2, align 8
  %115 = load i32, i32* @rFPGA0_XA_HSSIParameter2, align 4
  %116 = call i64 @rtl8192_QueryBBReg(%struct.net_device* %114, i32 %115, i32 512)
  %117 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %118 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %117, i32 0, i32 3
  store i64 %116, i64* %118, align 8
  br label %119

119:                                              ; preds = %113, %44
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @read_nic_byte(%struct.net_device*, i32, i64*) #1

declare dso_local i32 @write_nic_byte(%struct.net_device*, i32, i64) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @read_nic_dword(%struct.net_device*, i32, i32*) #1

declare dso_local i32 @write_nic_dword(%struct.net_device*, i32, i32) #1

declare dso_local i64 @rtl8192_phy_checkBBAndRF(%struct.net_device*, i32, i32) #1

declare dso_local i32 @RT_TRACE(i32, i8*, i64) #1

declare dso_local i32 @rtl8192_setBBreg(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @rtl8192_phyConfigBB(%struct.net_device*, i32) #1

declare dso_local i32 @write_nic_byte_E(%struct.net_device*, i32, i32) #1

declare dso_local i64 @rtl8192_QueryBBReg(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
