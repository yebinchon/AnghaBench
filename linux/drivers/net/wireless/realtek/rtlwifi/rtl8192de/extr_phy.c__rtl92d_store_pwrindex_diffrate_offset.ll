; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_phy.c__rtl92d_store_pwrindex_diffrate_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_phy.c__rtl92d_store_pwrindex_diffrate_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i64, i64** }

@RTXAGC_A_RATE18_06 = common dso_local global i64 0, align 8
@RTXAGC_A_RATE54_24 = common dso_local global i64 0, align 8
@RTXAGC_A_CCK1_MCS32 = common dso_local global i64 0, align 8
@RTXAGC_B_CCK11_A_CCK2_11 = common dso_local global i64 0, align 8
@RTXAGC_A_MCS03_MCS00 = common dso_local global i64 0, align 8
@RTXAGC_A_MCS07_MCS04 = common dso_local global i64 0, align 8
@RTXAGC_A_MCS11_MCS08 = common dso_local global i64 0, align 8
@RTXAGC_A_MCS15_MCS12 = common dso_local global i64 0, align 8
@RTXAGC_B_RATE18_06 = common dso_local global i64 0, align 8
@RTXAGC_B_RATE54_24 = common dso_local global i64 0, align 8
@RTXAGC_B_CCK1_55_MCS32 = common dso_local global i64 0, align 8
@RTXAGC_B_MCS03_MCS00 = common dso_local global i64 0, align 8
@RTXAGC_B_MCS07_MCS04 = common dso_local global i64 0, align 8
@RTXAGC_B_MCS11_MCS08 = common dso_local global i64 0, align 8
@RTXAGC_B_MCS15_MCS12 = common dso_local global i64 0, align 8
@COMP_INIT = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"MCSTxPowerLevelOriginalOffset[%d][%d] = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i64, i64, i64)* @_rtl92d_store_pwrindex_diffrate_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92d_store_pwrindex_diffrate_offset(%struct.ieee80211_hw* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.rtl_priv*, align 8
  %10 = alloca %struct.rtl_phy*, align 8
  %11 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %13 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %12)
  store %struct.rtl_priv* %13, %struct.rtl_priv** %9, align 8
  %14 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %15 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %14, i32 0, i32 0
  store %struct.rtl_phy* %15, %struct.rtl_phy** %10, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @RTXAGC_A_RATE18_06, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %117

20:                                               ; preds = %4
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @RTXAGC_A_RATE54_24, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 1, i32* %11, align 4
  br label %116

25:                                               ; preds = %20
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* @RTXAGC_A_CCK1_MCS32, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 6, i32* %11, align 4
  br label %115

30:                                               ; preds = %25
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* @RTXAGC_B_CCK11_A_CCK2_11, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i64, i64* %7, align 8
  %36 = icmp eq i64 %35, 4294967040
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 7, i32* %11, align 4
  br label %114

38:                                               ; preds = %34, %30
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* @RTXAGC_A_MCS03_MCS00, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 2, i32* %11, align 4
  br label %113

43:                                               ; preds = %38
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* @RTXAGC_A_MCS07_MCS04, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 3, i32* %11, align 4
  br label %112

48:                                               ; preds = %43
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* @RTXAGC_A_MCS11_MCS08, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i32 4, i32* %11, align 4
  br label %111

53:                                               ; preds = %48
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* @RTXAGC_A_MCS15_MCS12, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 5, i32* %11, align 4
  br label %110

58:                                               ; preds = %53
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* @RTXAGC_B_RATE18_06, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i32 8, i32* %11, align 4
  br label %109

63:                                               ; preds = %58
  %64 = load i64, i64* %6, align 8
  %65 = load i64, i64* @RTXAGC_B_RATE54_24, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store i32 9, i32* %11, align 4
  br label %108

68:                                               ; preds = %63
  %69 = load i64, i64* %6, align 8
  %70 = load i64, i64* @RTXAGC_B_CCK1_55_MCS32, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  store i32 14, i32* %11, align 4
  br label %107

73:                                               ; preds = %68
  %74 = load i64, i64* %6, align 8
  %75 = load i64, i64* @RTXAGC_B_CCK11_A_CCK2_11, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = load i64, i64* %7, align 8
  %79 = icmp eq i64 %78, 255
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  store i32 15, i32* %11, align 4
  br label %106

81:                                               ; preds = %77, %73
  %82 = load i64, i64* %6, align 8
  %83 = load i64, i64* @RTXAGC_B_MCS03_MCS00, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  store i32 10, i32* %11, align 4
  br label %105

86:                                               ; preds = %81
  %87 = load i64, i64* %6, align 8
  %88 = load i64, i64* @RTXAGC_B_MCS07_MCS04, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  store i32 11, i32* %11, align 4
  br label %104

91:                                               ; preds = %86
  %92 = load i64, i64* %6, align 8
  %93 = load i64, i64* @RTXAGC_B_MCS11_MCS08, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  store i32 12, i32* %11, align 4
  br label %103

96:                                               ; preds = %91
  %97 = load i64, i64* %6, align 8
  %98 = load i64, i64* @RTXAGC_B_MCS15_MCS12, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  store i32 13, i32* %11, align 4
  br label %102

101:                                              ; preds = %96
  br label %157

102:                                              ; preds = %100
  br label %103

103:                                              ; preds = %102, %95
  br label %104

104:                                              ; preds = %103, %90
  br label %105

105:                                              ; preds = %104, %85
  br label %106

106:                                              ; preds = %105, %80
  br label %107

107:                                              ; preds = %106, %72
  br label %108

108:                                              ; preds = %107, %67
  br label %109

109:                                              ; preds = %108, %62
  br label %110

110:                                              ; preds = %109, %57
  br label %111

111:                                              ; preds = %110, %52
  br label %112

112:                                              ; preds = %111, %47
  br label %113

113:                                              ; preds = %112, %42
  br label %114

114:                                              ; preds = %113, %37
  br label %115

115:                                              ; preds = %114, %29
  br label %116

116:                                              ; preds = %115, %24
  br label %117

117:                                              ; preds = %116, %19
  %118 = load i64, i64* %8, align 8
  %119 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %120 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %119, i32 0, i32 1
  %121 = load i64**, i64*** %120, align 8
  %122 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %123 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds i64*, i64** %121, i64 %124
  %126 = load i64*, i64** %125, align 8
  %127 = load i32, i32* %11, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i64, i64* %126, i64 %128
  store i64 %118, i64* %129, align 8
  %130 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %131 = load i32, i32* @COMP_INIT, align 4
  %132 = load i32, i32* @DBG_TRACE, align 4
  %133 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %134 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i32, i32* %11, align 4
  %137 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %138 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %137, i32 0, i32 1
  %139 = load i64**, i64*** %138, align 8
  %140 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %141 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = getelementptr inbounds i64*, i64** %139, i64 %142
  %144 = load i64*, i64** %143, align 8
  %145 = load i32, i32* %11, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i64, i64* %144, i64 %146
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @RT_TRACE(%struct.rtl_priv* %130, i32 %131, i32 %132, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %135, i32 %136, i64 %148)
  %150 = load i32, i32* %11, align 4
  %151 = icmp eq i32 %150, 13
  br i1 %151, label %152, label %157

152:                                              ; preds = %117
  %153 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %154 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = add i64 %155, 1
  store i64 %156, i64* %154, align 8
  br label %157

157:                                              ; preds = %101, %152, %117
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
