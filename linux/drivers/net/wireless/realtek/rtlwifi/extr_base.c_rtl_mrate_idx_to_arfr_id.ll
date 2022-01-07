; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_base.c_rtl_mrate_idx_to_arfr_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_base.c_rtl_mrate_idx_to_arfr_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i32, i32 }

@RF_1T1R = common dso_local global i32 0, align 4
@RATEID_IDX_BGN_40M_1SS = common dso_local global i32 0, align 4
@RATEID_IDX_BGN_40M_2SS = common dso_local global i32 0, align 4
@RATEID_IDX_GN_N1SS = common dso_local global i32 0, align 4
@RATEID_IDX_GN_N2SS = common dso_local global i32 0, align 4
@RATEID_IDX_BGN_20M_1SS_BN = common dso_local global i32 0, align 4
@RATEID_IDX_BGN_20M_2SS_BN = common dso_local global i32 0, align 4
@RATEID_IDX_BG = common dso_local global i32 0, align 4
@RATEID_IDX_G = common dso_local global i32 0, align 4
@RATEID_IDX_B = common dso_local global i32 0, align 4
@WIRELESS_MODE_B = common dso_local global i32 0, align 4
@WIRELESS_MODE_G = common dso_local global i32 0, align 4
@WIRELESS_MODE_N_24G = common dso_local global i32 0, align 4
@WIRELESS_MODE_AC_24G = common dso_local global i32 0, align 4
@RATEID_IDX_VHT_1SS = common dso_local global i32 0, align 4
@RATEID_IDX_VHT_2SS = common dso_local global i32 0, align 4
@HT_CHANNEL_WIDTH_80 = common dso_local global i32 0, align 4
@RATEID_IDX_MIX1 = common dso_local global i32 0, align 4
@RATEID_IDX_MIX2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl_mrate_idx_to_arfr_id(%struct.ieee80211_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtl_priv*, align 8
  %8 = alloca %struct.rtl_phy*, align 8
  %9 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %11 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %10)
  store %struct.rtl_priv* %11, %struct.rtl_priv** %7, align 8
  %12 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %13 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %12, i32 0, i32 0
  store %struct.rtl_phy* %13, %struct.rtl_phy** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %115 [
    i32 128, label %15
    i32 131, label %26
    i32 129, label %26
    i32 130, label %37
    i32 133, label %48
    i32 134, label %50
    i32 135, label %52
    i32 132, label %54
    i32 136, label %75
    i32 137, label %86
  ]

15:                                               ; preds = %3
  %16 = load %struct.rtl_phy*, %struct.rtl_phy** %8, align 8
  %17 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @RF_1T1R, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* @RATEID_IDX_BGN_40M_1SS, align 4
  store i32 %22, i32* %9, align 4
  br label %25

23:                                               ; preds = %15
  %24 = load i32, i32* @RATEID_IDX_BGN_40M_2SS, align 4
  store i32 %24, i32* %9, align 4
  br label %25

25:                                               ; preds = %23, %21
  br label %117

26:                                               ; preds = %3, %3
  %27 = load %struct.rtl_phy*, %struct.rtl_phy** %8, align 8
  %28 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @RF_1T1R, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @RATEID_IDX_GN_N1SS, align 4
  store i32 %33, i32* %9, align 4
  br label %36

34:                                               ; preds = %26
  %35 = load i32, i32* @RATEID_IDX_GN_N2SS, align 4
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %34, %32
  br label %117

37:                                               ; preds = %3
  %38 = load %struct.rtl_phy*, %struct.rtl_phy** %8, align 8
  %39 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @RF_1T1R, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* @RATEID_IDX_BGN_20M_1SS_BN, align 4
  store i32 %44, i32* %9, align 4
  br label %47

45:                                               ; preds = %37
  %46 = load i32, i32* @RATEID_IDX_BGN_20M_2SS_BN, align 4
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %45, %43
  br label %117

48:                                               ; preds = %3
  %49 = load i32, i32* @RATEID_IDX_BG, align 4
  store i32 %49, i32* %9, align 4
  br label %117

50:                                               ; preds = %3
  %51 = load i32, i32* @RATEID_IDX_G, align 4
  store i32 %51, i32* %9, align 4
  br label %117

52:                                               ; preds = %3
  %53 = load i32, i32* @RATEID_IDX_B, align 4
  store i32 %53, i32* %9, align 4
  br label %117

54:                                               ; preds = %3
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @WIRELESS_MODE_B, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %70, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @WIRELESS_MODE_G, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %70, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @WIRELESS_MODE_N_24G, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @WIRELESS_MODE_AC_24G, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66, %62, %58, %54
  %71 = load i32, i32* @RATEID_IDX_BG, align 4
  store i32 %71, i32* %9, align 4
  br label %74

72:                                               ; preds = %66
  %73 = load i32, i32* @RATEID_IDX_G, align 4
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %72, %70
  br label %117

75:                                               ; preds = %3
  %76 = load %struct.rtl_phy*, %struct.rtl_phy** %8, align 8
  %77 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @RF_1T1R, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = load i32, i32* @RATEID_IDX_VHT_1SS, align 4
  store i32 %82, i32* %9, align 4
  br label %85

83:                                               ; preds = %75
  %84 = load i32, i32* @RATEID_IDX_VHT_2SS, align 4
  store i32 %84, i32* %9, align 4
  br label %85

85:                                               ; preds = %83, %81
  br label %117

86:                                               ; preds = %3
  %87 = load %struct.rtl_phy*, %struct.rtl_phy** %8, align 8
  %88 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @HT_CHANNEL_WIDTH_80, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %103

92:                                               ; preds = %86
  %93 = load %struct.rtl_phy*, %struct.rtl_phy** %8, align 8
  %94 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @RF_1T1R, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %92
  %99 = load i32, i32* @RATEID_IDX_VHT_1SS, align 4
  store i32 %99, i32* %9, align 4
  br label %102

100:                                              ; preds = %92
  %101 = load i32, i32* @RATEID_IDX_VHT_2SS, align 4
  store i32 %101, i32* %9, align 4
  br label %102

102:                                              ; preds = %100, %98
  br label %114

103:                                              ; preds = %86
  %104 = load %struct.rtl_phy*, %struct.rtl_phy** %8, align 8
  %105 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @RF_1T1R, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %103
  %110 = load i32, i32* @RATEID_IDX_MIX1, align 4
  store i32 %110, i32* %9, align 4
  br label %113

111:                                              ; preds = %103
  %112 = load i32, i32* @RATEID_IDX_MIX2, align 4
  store i32 %112, i32* %9, align 4
  br label %113

113:                                              ; preds = %111, %109
  br label %114

114:                                              ; preds = %113, %102
  br label %117

115:                                              ; preds = %3
  %116 = load i32, i32* @RATEID_IDX_BGN_40M_2SS, align 4
  store i32 %116, i32* %9, align 4
  br label %117

117:                                              ; preds = %115, %114, %85, %74, %52, %50, %48, %47, %36, %25
  %118 = load i32, i32* %9, align 4
  ret i32 %118
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
