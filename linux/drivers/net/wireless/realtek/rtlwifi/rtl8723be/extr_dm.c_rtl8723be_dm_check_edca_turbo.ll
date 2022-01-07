; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_dm.c_rtl8723be_dm_check_edca_turbo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_dm.c_rtl8723be_dm_check_edca_turbo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.ieee80211_hw*, i32, i32*)* }
%struct.TYPE_6__ = type { i64 }
%struct.rtl_mac = type { i64 }

@rtl8723be_dm_check_edca_turbo.last_txok_cnt = internal global i32 0, align 4
@rtl8723be_dm_check_edca_turbo.last_rxok_cnt = internal global i32 0, align 4
@PEER_RAL = common dso_local global i64 0, align 8
@PEER_ATH = common dso_local global i64 0, align 8
@PEER_CISCO = common dso_local global i64 0, align 8
@WIRELESS_MODE_N_24G = common dso_local global i64 0, align 8
@edca_setting_dl = common dso_local global i64* null, align 8
@edca_setting_ul = common dso_local global i64* null, align 8
@REG_EDCA_BE_PARAM = common dso_local global i32 0, align 4
@AC0_BE = common dso_local global i32 0, align 4
@HW_VAR_AC_PARAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl8723be_dm_check_edca_turbo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8723be_dm_check_edca_turbo(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_mac*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %16 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %15)
  store %struct.rtl_priv* %16, %struct.rtl_priv** %3, align 8
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %18 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %17)
  %19 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %18)
  store %struct.rtl_mac* %19, %struct.rtl_mac** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i64 7250987, i64* %7, align 8
  store i64 7250987, i64* %8, align 8
  store i64 6202411, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %20 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %21 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @rtl8723be_dm_check_edca_turbo.last_txok_cnt, align 4
  %25 = sub nsw i32 %23, %24
  store i32 %25, i32* %5, align 4
  %26 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %27 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @rtl8723be_dm_check_edca_turbo.last_rxok_cnt, align 4
  %31 = sub nsw i32 %29, %30
  store i32 %31, i32* %6, align 4
  %32 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %33 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %10, align 8
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* @PEER_RAL, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %1
  %40 = load i64, i64* %10, align 8
  %41 = load i64, i64* @PEER_ATH, align 8
  %42 = icmp eq i64 %40, %41
  br label %43

43:                                               ; preds = %39, %1
  %44 = phi i1 [ true, %1 ], [ %42, %39 ]
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 1, i32 0
  store i32 %46, i32* %12, align 4
  %47 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %48 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %43
  %53 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %54 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  br label %59

59:                                               ; preds = %52, %43
  %60 = phi i1 [ false, %43 ], [ %58, %52 ]
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 1, i32 0
  store i32 %62, i32* %13, align 4
  %63 = load i64, i64* %10, align 8
  %64 = load i64, i64* @PEER_CISCO, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %81

66:                                               ; preds = %59
  %67 = load %struct.rtl_mac*, %struct.rtl_mac** %4, align 8
  %68 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @WIRELESS_MODE_N_24G, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %66
  %73 = load i64*, i64** @edca_setting_dl, align 8
  %74 = load i64, i64* %10, align 8
  %75 = getelementptr inbounds i64, i64* %73, i64 %74
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %8, align 8
  %77 = load i64*, i64** @edca_setting_ul, align 8
  %78 = load i64, i64* %10, align 8
  %79 = getelementptr inbounds i64, i64* %77, i64 %78
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %7, align 8
  br label %81

81:                                               ; preds = %72, %66, %59
  %82 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %83 = call i64 @rtl8723be_dm_is_edca_turbo_disable(%struct.ieee80211_hw* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  br label %149

86:                                               ; preds = %81
  %87 = load i32, i32* %13, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %126

89:                                               ; preds = %86
  %90 = load i32, i32* %12, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %89
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* %6, align 4
  %95 = mul nsw i32 %94, 4
  %96 = icmp sgt i32 %93, %95
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i32 0, i32 1
  store i32 %98, i32* %11, align 4
  br label %106

99:                                               ; preds = %89
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* %5, align 4
  %102 = mul nsw i32 %101, 4
  %103 = icmp sgt i32 %100, %102
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i32 1, i32 0
  store i32 %105, i32* %11, align 4
  br label %106

106:                                              ; preds = %99, %92
  %107 = load i32, i32* %11, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = load i64, i64* %8, align 8
  br label %113

111:                                              ; preds = %106
  %112 = load i64, i64* %7, align 8
  br label %113

113:                                              ; preds = %111, %109
  %114 = phi i64 [ %110, %109 ], [ %112, %111 ]
  store i64 %114, i64* %9, align 8
  %115 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %116 = load i32, i32* @REG_EDCA_BE_PARAM, align 4
  %117 = load i64, i64* %9, align 8
  %118 = call i32 @rtl_write_dword(%struct.rtl_priv* %115, i32 %116, i64 %117)
  %119 = load i32, i32* %11, align 4
  %120 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %121 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 1
  store i32 %119, i32* %122, align 4
  %123 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %124 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 2
  store i32 1, i32* %125, align 8
  br label %148

126:                                              ; preds = %86
  %127 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %128 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %144

132:                                              ; preds = %126
  %133 = load i32, i32* @AC0_BE, align 4
  store i32 %133, i32* %14, align 4
  %134 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %135 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %134, i32 0, i32 2
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = load i32 (%struct.ieee80211_hw*, i32, i32*)*, i32 (%struct.ieee80211_hw*, i32, i32*)** %139, align 8
  %141 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %142 = load i32, i32* @HW_VAR_AC_PARAM, align 4
  %143 = call i32 %140(%struct.ieee80211_hw* %141, i32 %142, i32* %14)
  br label %144

144:                                              ; preds = %132, %126
  %145 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %146 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 2
  store i32 0, i32* %147, align 8
  br label %148

148:                                              ; preds = %144, %113
  br label %149

149:                                              ; preds = %148, %85
  %150 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %151 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  store i32 0, i32* %152, align 8
  %153 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %154 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  store i32 %156, i32* @rtl8723be_dm_check_edca_turbo.last_txok_cnt, align 4
  %157 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %158 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  store i32 %160, i32* @rtl8723be_dm_check_edca_turbo.last_rxok_cnt, align 4
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local i64 @rtl8723be_dm_is_edca_turbo_disable(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
