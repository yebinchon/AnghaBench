; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c_rtl8821ae_phy_sw_chnl_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c_rtl8821ae_phy_sw_chnl_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i32, i32 }
%struct.rtl_hal = type { i64 }

@COMP_SCAN = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"switch to channel%d\0A\00", align 1
@RFC_AREA = common dso_local global i32 0, align 4
@RF90_PATH_A = common dso_local global i32 0, align 4
@RF_CHNLBW = common dso_local global i32 0, align 4
@BMASKBYTE0 = common dso_local global i32 0, align 4
@HARDWARE_TYPE_RTL8821AE = common dso_local global i64 0, align 8
@RF_APK = common dso_local global i32 0, align 4
@BRFREGOFFSETMASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8821ae_phy_sw_chnl_callback(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_hal*, align 8
  %5 = alloca %struct.rtl_phy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %10 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %9)
  store %struct.rtl_priv* %10, %struct.rtl_priv** %3, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %12 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %11)
  %13 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %12)
  store %struct.rtl_hal* %13, %struct.rtl_hal** %4, align 8
  %14 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %15 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %14, i32 0, i32 0
  store %struct.rtl_phy* %15, %struct.rtl_phy** %5, align 8
  %16 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %17 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %20 = load i32, i32* @COMP_SCAN, align 4
  %21 = load i32, i32* @DBG_TRACE, align 4
  %22 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %23 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %19, i32 %20, i32 %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %27 = call i64 @is_hal_stop(%struct.rtl_hal* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %1
  br label %154

30:                                               ; preds = %1
  %31 = load i32, i32* %6, align 4
  %32 = icmp sle i32 36, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i32, i32* %6, align 4
  %35 = icmp sle i32 %34, 48
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 1172, i32* %8, align 4
  br label %59

37:                                               ; preds = %33, %30
  %38 = load i32, i32* %6, align 4
  %39 = icmp sle i32 50, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i32, i32* %6, align 4
  %42 = icmp sle i32 %41, 64
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 1107, i32* %8, align 4
  br label %58

44:                                               ; preds = %40, %37
  %45 = load i32, i32* %6, align 4
  %46 = icmp sle i32 100, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i32, i32* %6, align 4
  %49 = icmp sle i32 %48, 116
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 1106, i32* %8, align 4
  br label %57

51:                                               ; preds = %47, %44
  %52 = load i32, i32* %6, align 4
  %53 = icmp sle i32 118, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 1042, i32* %8, align 4
  br label %56

55:                                               ; preds = %51
  store i32 2410, i32* %8, align 4
  br label %56

56:                                               ; preds = %55, %54
  br label %57

57:                                               ; preds = %56, %50
  br label %58

58:                                               ; preds = %57, %43
  br label %59

59:                                               ; preds = %58, %36
  %60 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %61 = load i32, i32* @RFC_AREA, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %60, i32 %61, i32 536739840, i32 %62)
  %64 = load i32, i32* @RF90_PATH_A, align 4
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %146, %59
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %68 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %149

71:                                               ; preds = %65
  %72 = load i32, i32* %6, align 4
  %73 = icmp sle i32 36, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load i32, i32* %6, align 4
  %76 = icmp sle i32 %75, 64
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  store i32 257, i32* %8, align 4
  br label %92

78:                                               ; preds = %74, %71
  %79 = load i32, i32* %6, align 4
  %80 = icmp sle i32 100, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load i32, i32* %6, align 4
  %83 = icmp sle i32 %82, 140
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  store i32 769, i32* %8, align 4
  br label %91

85:                                               ; preds = %81, %78
  %86 = load i32, i32* %6, align 4
  %87 = icmp slt i32 140, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  store i32 1281, i32* %8, align 4
  br label %90

89:                                               ; preds = %85
  store i32 0, i32* %8, align 4
  br label %90

90:                                               ; preds = %89, %88
  br label %91

91:                                               ; preds = %90, %84
  br label %92

92:                                               ; preds = %91, %77
  %93 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @RF_CHNLBW, align 4
  %96 = call i32 @BIT(i32 18)
  %97 = call i32 @BIT(i32 17)
  %98 = or i32 %96, %97
  %99 = call i32 @BIT(i32 16)
  %100 = or i32 %98, %99
  %101 = call i32 @BIT(i32 9)
  %102 = or i32 %100, %101
  %103 = call i32 @BIT(i32 8)
  %104 = or i32 %102, %103
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @rtl8821ae_phy_set_rf_reg(%struct.ieee80211_hw* %93, i32 %94, i32 %95, i32 %104, i32 %105)
  %107 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* @RF_CHNLBW, align 4
  %110 = load i32, i32* @BMASKBYTE0, align 4
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @rtl8821ae_phy_set_rf_reg(%struct.ieee80211_hw* %107, i32 %108, i32 %109, i32 %110, i32 %111)
  %113 = load i32, i32* %6, align 4
  %114 = icmp sgt i32 %113, 14
  br i1 %114, label %115, label %145

115:                                              ; preds = %92
  %116 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %117 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @HARDWARE_TYPE_RTL8821AE, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %144

121:                                              ; preds = %115
  %122 = load i32, i32* %6, align 4
  %123 = icmp sle i32 36, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %121
  %125 = load i32, i32* %6, align 4
  %126 = icmp sle i32 %125, 64
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  store i32 70889, i32* %8, align 4
  br label %137

128:                                              ; preds = %124, %121
  %129 = load i32, i32* %6, align 4
  %130 = icmp sle i32 100, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %128
  %132 = load i32, i32* %6, align 4
  %133 = icmp sle i32 %132, 140
  br i1 %133, label %134, label %135

134:                                              ; preds = %131
  store i32 69865, i32* %8, align 4
  br label %136

135:                                              ; preds = %131, %128
  store i32 69865, i32* %8, align 4
  br label %136

136:                                              ; preds = %135, %134
  br label %137

137:                                              ; preds = %136, %127
  %138 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* @RF_APK, align 4
  %141 = load i32, i32* @BRFREGOFFSETMASK, align 4
  %142 = load i32, i32* %8, align 4
  %143 = call i32 @rtl8821ae_phy_set_rf_reg(%struct.ieee80211_hw* %138, i32 %139, i32 %140, i32 %141, i32 %142)
  br label %144

144:                                              ; preds = %137, %115
  br label %145

145:                                              ; preds = %144, %92
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %7, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %7, align 4
  br label %65

149:                                              ; preds = %65
  %150 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %151 = load i32, i32* @COMP_SCAN, align 4
  %152 = load i32, i32* @DBG_TRACE, align 4
  %153 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %150, i32 %151, i32 %152, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %154

154:                                              ; preds = %149, %29
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i64 @is_hal_stop(%struct.rtl_hal*) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @rtl8821ae_phy_set_rf_reg(%struct.ieee80211_hw*, i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
