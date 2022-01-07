; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c__rtl8821ae_phy_init_txpower_limit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c__rtl8821ae_phy_init_txpower_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i8******, i8****** }

@COMP_INIT = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"=====> _rtl8821ae_phy_init_txpower_limit()!\0A\00", align 1
@MAX_REGULATION_NUM = common dso_local global i64 0, align 8
@MAX_2_4G_BANDWIDTH_NUM = common dso_local global i64 0, align 8
@MAX_RATE_SECTION_NUM = common dso_local global i64 0, align 8
@CHANNEL_MAX_NUMBER_2G = common dso_local global i64 0, align 8
@MAX_RF_PATH_NUM = common dso_local global i64 0, align 8
@MAX_POWER_INDEX = common dso_local global i8* null, align 8
@MAX_5G_BANDWIDTH_NUM = common dso_local global i64 0, align 8
@CHANNEL_MAX_NUMBER_5G = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"<===== _rtl8821ae_phy_init_txpower_limit()!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @_rtl8821ae_phy_init_txpower_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl8821ae_phy_init_txpower_limit(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_phy*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %11 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %10)
  store %struct.rtl_priv* %11, %struct.rtl_priv** %3, align 8
  %12 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %13 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %12, i32 0, i32 0
  store %struct.rtl_phy* %13, %struct.rtl_phy** %4, align 8
  %14 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %15 = load i32, i32* @COMP_INIT, align 4
  %16 = load i32, i32* @DBG_LOUD, align 4
  %17 = call i32 @RT_TRACE(%struct.rtl_priv* %14, i32 %15, i32 %16, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %5, align 8
  br label %18

18:                                               ; preds = %77, %1
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @MAX_REGULATION_NUM, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %80

22:                                               ; preds = %18
  store i64 0, i64* %6, align 8
  br label %23

23:                                               ; preds = %73, %22
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* @MAX_2_4G_BANDWIDTH_NUM, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %76

27:                                               ; preds = %23
  store i64 0, i64* %7, align 8
  br label %28

28:                                               ; preds = %69, %27
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @MAX_RATE_SECTION_NUM, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %72

32:                                               ; preds = %28
  store i64 0, i64* %9, align 8
  br label %33

33:                                               ; preds = %65, %32
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* @CHANNEL_MAX_NUMBER_2G, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %68

37:                                               ; preds = %33
  store i64 0, i64* %8, align 8
  br label %38

38:                                               ; preds = %61, %37
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* @MAX_RF_PATH_NUM, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %64

42:                                               ; preds = %38
  %43 = load i8*, i8** @MAX_POWER_INDEX, align 8
  %44 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %45 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %44, i32 0, i32 1
  %46 = load i8******, i8******* %45, align 8
  %47 = load i64, i64* %5, align 8
  %48 = getelementptr inbounds i8*****, i8****** %46, i64 %47
  %49 = load i8*****, i8****** %48, align 8
  %50 = load i64, i64* %6, align 8
  %51 = getelementptr inbounds i8****, i8***** %49, i64 %50
  %52 = load i8****, i8***** %51, align 8
  %53 = load i64, i64* %7, align 8
  %54 = getelementptr inbounds i8***, i8**** %52, i64 %53
  %55 = load i8***, i8**** %54, align 8
  %56 = load i64, i64* %9, align 8
  %57 = getelementptr inbounds i8**, i8*** %55, i64 %56
  %58 = load i8**, i8*** %57, align 8
  %59 = load i64, i64* %8, align 8
  %60 = getelementptr inbounds i8*, i8** %58, i64 %59
  store i8* %43, i8** %60, align 8
  br label %61

61:                                               ; preds = %42
  %62 = load i64, i64* %8, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %8, align 8
  br label %38

64:                                               ; preds = %38
  br label %65

65:                                               ; preds = %64
  %66 = load i64, i64* %9, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %9, align 8
  br label %33

68:                                               ; preds = %33
  br label %69

69:                                               ; preds = %68
  %70 = load i64, i64* %7, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %7, align 8
  br label %28

72:                                               ; preds = %28
  br label %73

73:                                               ; preds = %72
  %74 = load i64, i64* %6, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %6, align 8
  br label %23

76:                                               ; preds = %23
  br label %77

77:                                               ; preds = %76
  %78 = load i64, i64* %5, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %5, align 8
  br label %18

80:                                               ; preds = %18
  store i64 0, i64* %5, align 8
  br label %81

81:                                               ; preds = %140, %80
  %82 = load i64, i64* %5, align 8
  %83 = load i64, i64* @MAX_REGULATION_NUM, align 8
  %84 = icmp ult i64 %82, %83
  br i1 %84, label %85, label %143

85:                                               ; preds = %81
  store i64 0, i64* %6, align 8
  br label %86

86:                                               ; preds = %136, %85
  %87 = load i64, i64* %6, align 8
  %88 = load i64, i64* @MAX_5G_BANDWIDTH_NUM, align 8
  %89 = icmp ult i64 %87, %88
  br i1 %89, label %90, label %139

90:                                               ; preds = %86
  store i64 0, i64* %7, align 8
  br label %91

91:                                               ; preds = %132, %90
  %92 = load i64, i64* %7, align 8
  %93 = load i64, i64* @MAX_RATE_SECTION_NUM, align 8
  %94 = icmp ult i64 %92, %93
  br i1 %94, label %95, label %135

95:                                               ; preds = %91
  store i64 0, i64* %9, align 8
  br label %96

96:                                               ; preds = %128, %95
  %97 = load i64, i64* %9, align 8
  %98 = load i64, i64* @CHANNEL_MAX_NUMBER_5G, align 8
  %99 = icmp ult i64 %97, %98
  br i1 %99, label %100, label %131

100:                                              ; preds = %96
  store i64 0, i64* %8, align 8
  br label %101

101:                                              ; preds = %124, %100
  %102 = load i64, i64* %8, align 8
  %103 = load i64, i64* @MAX_RF_PATH_NUM, align 8
  %104 = icmp ult i64 %102, %103
  br i1 %104, label %105, label %127

105:                                              ; preds = %101
  %106 = load i8*, i8** @MAX_POWER_INDEX, align 8
  %107 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %108 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %107, i32 0, i32 0
  %109 = load i8******, i8******* %108, align 8
  %110 = load i64, i64* %5, align 8
  %111 = getelementptr inbounds i8*****, i8****** %109, i64 %110
  %112 = load i8*****, i8****** %111, align 8
  %113 = load i64, i64* %6, align 8
  %114 = getelementptr inbounds i8****, i8***** %112, i64 %113
  %115 = load i8****, i8***** %114, align 8
  %116 = load i64, i64* %7, align 8
  %117 = getelementptr inbounds i8***, i8**** %115, i64 %116
  %118 = load i8***, i8**** %117, align 8
  %119 = load i64, i64* %9, align 8
  %120 = getelementptr inbounds i8**, i8*** %118, i64 %119
  %121 = load i8**, i8*** %120, align 8
  %122 = load i64, i64* %8, align 8
  %123 = getelementptr inbounds i8*, i8** %121, i64 %122
  store i8* %106, i8** %123, align 8
  br label %124

124:                                              ; preds = %105
  %125 = load i64, i64* %8, align 8
  %126 = add i64 %125, 1
  store i64 %126, i64* %8, align 8
  br label %101

127:                                              ; preds = %101
  br label %128

128:                                              ; preds = %127
  %129 = load i64, i64* %9, align 8
  %130 = add i64 %129, 1
  store i64 %130, i64* %9, align 8
  br label %96

131:                                              ; preds = %96
  br label %132

132:                                              ; preds = %131
  %133 = load i64, i64* %7, align 8
  %134 = add i64 %133, 1
  store i64 %134, i64* %7, align 8
  br label %91

135:                                              ; preds = %91
  br label %136

136:                                              ; preds = %135
  %137 = load i64, i64* %6, align 8
  %138 = add i64 %137, 1
  store i64 %138, i64* %6, align 8
  br label %86

139:                                              ; preds = %86
  br label %140

140:                                              ; preds = %139
  %141 = load i64, i64* %5, align 8
  %142 = add i64 %141, 1
  store i64 %142, i64* %5, align 8
  br label %81

143:                                              ; preds = %81
  %144 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %145 = load i32, i32* @COMP_INIT, align 4
  %146 = load i32, i32* @DBG_LOUD, align 4
  %147 = call i32 @RT_TRACE(%struct.rtl_priv* %144, i32 %145, i32 %146, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
