; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ce/extr_phy.c_rtl92c_phy_config_rf_with_headerfile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ce/extr_phy.c_rtl92c_phy_config_rf_with_headerfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_hal = type { i32 }

@RADIOA_2TARRAYLENGTH = common dso_local global i32 0, align 4
@RTL8192CERADIOA_2TARRAY = common dso_local global i32* null, align 8
@RADIOB_2TARRAYLENGTH = common dso_local global i32 0, align 4
@RTL8192CE_RADIOB_2TARRAY = common dso_local global i32* null, align 8
@COMP_INIT = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Radio_A:RTL8192CERADIOA_2TARRAY\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Radio_B:RTL8192CE_RADIOB_2TARRAY\0A\00", align 1
@RADIOA_1TARRAYLENGTH = common dso_local global i32 0, align 4
@RTL8192CE_RADIOA_1TARRAY = common dso_local global i32* null, align 8
@RADIOB_1TARRAYLENGTH = common dso_local global i32 0, align 4
@RTL8192CE_RADIOB_1TARRAY = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"Radio_A:RTL8192CE_RADIOA_1TARRAY\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Radio_B:RTL8192CE_RADIOB_1TARRAY\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Radio No %x\0A\00", align 1
@RFREG_OFFSET_MASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"Incorrect rfpath %#x\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"switch case %#x not processed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl92c_phy_config_rf_with_headerfile(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rtl_priv*, align 8
  %11 = alloca %struct.rtl_hal*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
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
  br i1 %21, label %22, label %35

22:                                               ; preds = %2
  %23 = load i32, i32* @RADIOA_2TARRAYLENGTH, align 4
  store i32 %23, i32* %8, align 4
  %24 = load i32*, i32** @RTL8192CERADIOA_2TARRAY, align 8
  store i32* %24, i32** %6, align 8
  %25 = load i32, i32* @RADIOB_2TARRAYLENGTH, align 4
  store i32 %25, i32* %9, align 4
  %26 = load i32*, i32** @RTL8192CE_RADIOB_2TARRAY, align 8
  store i32* %26, i32** %7, align 8
  %27 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %28 = load i32, i32* @COMP_INIT, align 4
  %29 = load i32, i32* @DBG_TRACE, align 4
  %30 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %27, i32 %28, i32 %29, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %32 = load i32, i32* @COMP_INIT, align 4
  %33 = load i32, i32* @DBG_TRACE, align 4
  %34 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %31, i32 %32, i32 %33, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %48

35:                                               ; preds = %2
  %36 = load i32, i32* @RADIOA_1TARRAYLENGTH, align 4
  store i32 %36, i32* %8, align 4
  %37 = load i32*, i32** @RTL8192CE_RADIOA_1TARRAY, align 8
  store i32* %37, i32** %6, align 8
  %38 = load i32, i32* @RADIOB_1TARRAYLENGTH, align 4
  store i32 %38, i32* %9, align 4
  %39 = load i32*, i32** @RTL8192CE_RADIOB_1TARRAY, align 8
  store i32* %39, i32** %7, align 8
  %40 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %41 = load i32, i32* @COMP_INIT, align 4
  %42 = load i32, i32* @DBG_TRACE, align 4
  %43 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %40, i32 %41, i32 %42, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %44 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %45 = load i32, i32* @COMP_INIT, align 4
  %46 = load i32, i32* @DBG_TRACE, align 4
  %47 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %44, i32 %45, i32 %46, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %48

48:                                               ; preds = %35, %22
  %49 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %50 = load i32, i32* @COMP_INIT, align 4
  %51 = load i32, i32* @DBG_TRACE, align 4
  %52 = load i32, i32* %4, align 4
  %53 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %49, i32 %50, i32 %51, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %4, align 4
  switch i32 %54, label %108 [
    i32 131, label %55
    i32 130, label %80
    i32 129, label %105
    i32 128, label %105
  ]

55:                                               ; preds = %48
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %76, %55
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %79

60:                                               ; preds = %56
  %61 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %62 = load i32, i32* %4, align 4
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %69 = load i32*, i32** %6, align 8
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @rtl_rfreg_delay(%struct.ieee80211_hw* %61, i32 %62, i32 %67, i32 %68, i32 %74)
  br label %76

76:                                               ; preds = %60
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 2
  store i32 %78, i32* %5, align 4
  br label %56

79:                                               ; preds = %56
  br label %111

80:                                               ; preds = %48
  store i32 0, i32* %5, align 4
  br label %81

81:                                               ; preds = %101, %80
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %104

85:                                               ; preds = %81
  %86 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %87 = load i32, i32* %4, align 4
  %88 = load i32*, i32** %7, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %94 = load i32*, i32** %7, align 8
  %95 = load i32, i32* %5, align 4
  %96 = add nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @rtl_rfreg_delay(%struct.ieee80211_hw* %86, i32 %87, i32 %92, i32 %93, i32 %99)
  br label %101

101:                                              ; preds = %85
  %102 = load i32, i32* %5, align 4
  %103 = add nsw i32 %102, 2
  store i32 %103, i32* %5, align 4
  br label %81

104:                                              ; preds = %81
  br label %111

105:                                              ; preds = %48, %48
  %106 = load i32, i32* %4, align 4
  %107 = call i32 @pr_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %106)
  br label %111

108:                                              ; preds = %48
  %109 = load i32, i32* %4, align 4
  %110 = call i32 @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %109)
  br label %111

111:                                              ; preds = %108, %105, %104, %79
  ret i32 1
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i64 @IS_92C_SERIAL(i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @rtl_rfreg_delay(%struct.ieee80211_hw*, i32, i32, i32, i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
