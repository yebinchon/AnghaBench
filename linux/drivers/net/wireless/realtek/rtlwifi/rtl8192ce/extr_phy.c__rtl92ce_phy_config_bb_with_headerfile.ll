; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ce/extr_phy.c__rtl92ce_phy_config_bb_with_headerfile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ce/extr_phy.c__rtl92ce_phy_config_bb_with_headerfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_hal = type { i32 }

@AGCTAB_2TARRAYLENGTH = common dso_local global i32 0, align 4
@RTL8192CEAGCTAB_2TARRAY = common dso_local global i32* null, align 8
@PHY_REG_2TARRAY_LENGTH = common dso_local global i32 0, align 4
@RTL8192CEPHY_REG_2TARRAY = common dso_local global i32* null, align 8
@AGCTAB_1TARRAYLENGTH = common dso_local global i32 0, align 4
@RTL8192CEAGCTAB_1TARRAY = common dso_local global i32* null, align 8
@PHY_REG_1TARRAY_LENGTH = common dso_local global i32 0, align 4
@RTL8192CEPHY_REG_1TARRAY = common dso_local global i32* null, align 8
@BASEBAND_CONFIG_PHY_REG = common dso_local global i64 0, align 8
@MASKDWORD = common dso_local global i32 0, align 4
@COMP_INIT = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"The phy_regarray_table[0] is %x Rtl819XPHY_REGArray[1] is %x\0A\00", align 1
@BASEBAND_CONFIG_AGC_TAB = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [62 x i8] c"The agctab_array_table[0] is %x Rtl819XPHY_REGArray[1] is %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_rtl92ce_phy_config_bb_with_headerfile(%struct.ieee80211_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rtl_priv*, align 8
  %11 = alloca %struct.rtl_hal*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %13 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %12)
  store %struct.rtl_priv* %13, %struct.rtl_priv** %10, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %15 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %14)
  %16 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %15)
  store %struct.rtl_hal* %16, %struct.rtl_hal** %11, align 8
  %17 = load %struct.rtl_hal*, %struct.rtl_hal** %11, align 8
  %18 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @IS_92C_SERIAL(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load i32, i32* @AGCTAB_2TARRAYLENGTH, align 4
  store i32 %23, i32* %9, align 4
  %24 = load i32*, i32** @RTL8192CEAGCTAB_2TARRAY, align 8
  store i32* %24, i32** %7, align 8
  %25 = load i32, i32* @PHY_REG_2TARRAY_LENGTH, align 4
  store i32 %25, i32* %8, align 4
  %26 = load i32*, i32** @RTL8192CEPHY_REG_2TARRAY, align 8
  store i32* %26, i32** %6, align 8
  br label %32

27:                                               ; preds = %2
  %28 = load i32, i32* @AGCTAB_1TARRAYLENGTH, align 4
  store i32 %28, i32* %9, align 4
  %29 = load i32*, i32** @RTL8192CEAGCTAB_1TARRAY, align 8
  store i32* %29, i32** %7, align 8
  %30 = load i32, i32* @PHY_REG_1TARRAY_LENGTH, align 4
  store i32 %30, i32* %8, align 4
  %31 = load i32*, i32** @RTL8192CEPHY_REG_1TARRAY, align 8
  store i32* %31, i32** %6, align 8
  br label %32

32:                                               ; preds = %27, %22
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* @BASEBAND_CONFIG_PHY_REG, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %82

36:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %78, %36
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %81

41:                                               ; preds = %37
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @rtl_addr_delay(i32 %46)
  %48 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @MASKDWORD, align 4
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %48, i32 %53, i32 %54, i32 %60)
  %62 = call i32 @udelay(i32 1)
  %63 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %64 = load i32, i32* @COMP_INIT, align 4
  %65 = load i32, i32* @DBG_TRACE, align 4
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %6, align 8
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @RT_TRACE(%struct.rtl_priv* %63, i32 %64, i32 %65, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %70, i32 %76)
  br label %78

78:                                               ; preds = %41
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 2
  store i32 %80, i32* %5, align 4
  br label %37

81:                                               ; preds = %37
  br label %127

82:                                               ; preds = %32
  %83 = load i64, i64* %4, align 8
  %84 = load i64, i64* @BASEBAND_CONFIG_AGC_TAB, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %126

86:                                               ; preds = %82
  store i32 0, i32* %5, align 4
  br label %87

87:                                               ; preds = %122, %86
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %125

91:                                               ; preds = %87
  %92 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %93 = load i32*, i32** %7, align 8
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @MASKDWORD, align 4
  %99 = load i32*, i32** %7, align 8
  %100 = load i32, i32* %5, align 4
  %101 = add nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %99, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %92, i32 %97, i32 %98, i32 %104)
  %106 = call i32 @udelay(i32 1)
  %107 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %108 = load i32, i32* @COMP_INIT, align 4
  %109 = load i32, i32* @DBG_TRACE, align 4
  %110 = load i32*, i32** %7, align 8
  %111 = load i32, i32* %5, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load i32*, i32** %7, align 8
  %116 = load i32, i32* %5, align 4
  %117 = add nsw i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %115, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @RT_TRACE(%struct.rtl_priv* %107, i32 %108, i32 %109, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %114, i32 %120)
  br label %122

122:                                              ; preds = %91
  %123 = load i32, i32* %5, align 4
  %124 = add nsw i32 %123, 2
  store i32 %124, i32* %5, align 4
  br label %87

125:                                              ; preds = %87
  br label %126

126:                                              ; preds = %125, %82
  br label %127

127:                                              ; preds = %126, %81
  ret i32 1
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i64 @IS_92C_SERIAL(i32) #1

declare dso_local i32 @rtl_addr_delay(i32) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
