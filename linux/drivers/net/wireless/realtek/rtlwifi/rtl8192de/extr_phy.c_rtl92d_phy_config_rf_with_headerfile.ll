; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_phy.c_rtl92d_phy_config_rf_with_headerfile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_phy.c_rtl92d_phy_config_rf_with_headerfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64* }

@RADIOA_2T_ARRAYLENGTH = common dso_local global i32 0, align 4
@rtl8192de_radioa_2tarray = common dso_local global i32* null, align 8
@RADIOB_2T_ARRAYLENGTH = common dso_local global i32 0, align 4
@rtl8192de_radiob_2tarray = common dso_local global i32* null, align 8
@RADIOA_2T_INT_PA_ARRAYLENGTH = common dso_local global i32 0, align 4
@rtl8192de_radioa_2t_int_paarray = common dso_local global i32* null, align 8
@RADIOB_2T_INT_PA_ARRAYLENGTH = common dso_local global i32 0, align 4
@rtl8192de_radiob_2t_int_paarray = common dso_local global i32* null, align 8
@COMP_INIT = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"PHY_ConfigRFWithHeaderFile() Radio_A:Rtl819XRadioA_1TArray\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"PHY_ConfigRFWithHeaderFile() Radio_B:Rtl819XRadioB_1TArray\0A\00", align 1
@DBG_TRACE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"Radio No %x\0A\00", align 1
@radiob_txt = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c" ===> althougth Path A, we load radiob.txt\0A\00", align 1
@RFREG_OFFSET_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"switch case %#x not processed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl92d_phy_config_rf_with_headerfile(%struct.ieee80211_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.rtl_priv*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %14 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %13)
  store %struct.rtl_priv* %14, %struct.rtl_priv** %12, align 8
  %15 = load i32, i32* @RADIOA_2T_ARRAYLENGTH, align 4
  store i32 %15, i32* %10, align 4
  %16 = load i32*, i32** @rtl8192de_radioa_2tarray, align 8
  store i32* %16, i32** %8, align 8
  %17 = load i32, i32* @RADIOB_2T_ARRAYLENGTH, align 4
  store i32 %17, i32* %11, align 4
  %18 = load i32*, i32** @rtl8192de_radiob_2tarray, align 8
  store i32* %18, i32** %9, align 8
  %19 = load %struct.rtl_priv*, %struct.rtl_priv** %12, align 8
  %20 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @RADIOA_2T_INT_PA_ARRAYLENGTH, align 4
  store i32 %27, i32* %10, align 4
  %28 = load i32*, i32** @rtl8192de_radioa_2t_int_paarray, align 8
  store i32* %28, i32** %8, align 8
  br label %29

29:                                               ; preds = %26, %3
  %30 = load %struct.rtl_priv*, %struct.rtl_priv** %12, align 8
  %31 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = load i32, i32* @RADIOB_2T_INT_PA_ARRAYLENGTH, align 4
  store i32 %38, i32* %11, align 4
  %39 = load i32*, i32** @rtl8192de_radiob_2t_int_paarray, align 8
  store i32* %39, i32** %9, align 8
  br label %40

40:                                               ; preds = %37, %29
  %41 = load %struct.rtl_priv*, %struct.rtl_priv** %12, align 8
  %42 = load i32, i32* @COMP_INIT, align 4
  %43 = load i32, i32* @DBG_LOUD, align 4
  %44 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %41, i32 %42, i32 %43, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.rtl_priv*, %struct.rtl_priv** %12, align 8
  %46 = load i32, i32* @COMP_INIT, align 4
  %47 = load i32, i32* @DBG_LOUD, align 4
  %48 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %45, i32 %46, i32 %47, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  %49 = load %struct.rtl_priv*, %struct.rtl_priv** %12, align 8
  %50 = load i32, i32* @COMP_INIT, align 4
  %51 = load i32, i32* @DBG_TRACE, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %49, i32 %50, i32 %51, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @radiob_txt, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %40
  %58 = load i32, i32* %6, align 4
  %59 = icmp eq i32 %58, 131
  br i1 %59, label %60, label %67

60:                                               ; preds = %57
  %61 = load %struct.rtl_priv*, %struct.rtl_priv** %12, align 8
  %62 = load i32, i32* @COMP_INIT, align 4
  %63 = load i32, i32* @DBG_LOUD, align 4
  %64 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %61, i32 %62, i32 %63, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %10, align 4
  %66 = load i32*, i32** %9, align 8
  store i32* %66, i32** %8, align 8
  br label %67

67:                                               ; preds = %60, %57, %40
  %68 = load i32, i32* %6, align 4
  switch i32 %68, label %122 [
    i32 131, label %69
    i32 130, label %94
    i32 129, label %119
    i32 128, label %119
  ]

69:                                               ; preds = %67
  store i32 0, i32* %7, align 4
  br label %70

70:                                               ; preds = %90, %69
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %93

74:                                               ; preds = %70
  %75 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %76 = load i32, i32* %6, align 4
  %77 = load i32*, i32** %8, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %83 = load i32*, i32** %8, align 8
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %83, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @rtl_rfreg_delay(%struct.ieee80211_hw* %75, i32 %76, i32 %81, i32 %82, i32 %88)
  br label %90

90:                                               ; preds = %74
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, 2
  store i32 %92, i32* %7, align 4
  br label %70

93:                                               ; preds = %70
  br label %122

94:                                               ; preds = %67
  store i32 0, i32* %7, align 4
  br label %95

95:                                               ; preds = %115, %94
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %11, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %118

99:                                               ; preds = %95
  %100 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %101 = load i32, i32* %6, align 4
  %102 = load i32*, i32** %9, align 8
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %108 = load i32*, i32** %9, align 8
  %109 = load i32, i32* %7, align 4
  %110 = add nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %108, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @rtl_rfreg_delay(%struct.ieee80211_hw* %100, i32 %101, i32 %106, i32 %107, i32 %113)
  br label %115

115:                                              ; preds = %99
  %116 = load i32, i32* %7, align 4
  %117 = add nsw i32 %116, 2
  store i32 %117, i32* %7, align 4
  br label %95

118:                                              ; preds = %95
  br label %122

119:                                              ; preds = %67, %67
  %120 = load i32, i32* %6, align 4
  %121 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %120)
  br label %122

122:                                              ; preds = %67, %119, %118, %93
  ret i32 1
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @rtl_rfreg_delay(%struct.ieee80211_hw*, i32, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
