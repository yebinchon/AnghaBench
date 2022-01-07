; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_phy.c__rtl92d_phy_reload_lck_setting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_phy.c__rtl92d_phy_reload_lck_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32, i32, i32, i32 }

@BAND_ON_5G = common dso_local global i64 0, align 8
@RF90_PATH_A = common dso_local global i32 0, align 4
@RF90_PATH_B = common dso_local global i32 0, align 4
@COMP_CMD = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"path %d\0A\00", align 1
@FINIT = common dso_local global i32 0, align 4
@INIT_IQK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"band type = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"channel = %d\0A\00", align 1
@curveindex_5g = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [36 x i8] c"ver 1 set RF-A, 5G,\090x28 = 0x%x !!\0A\00", align 1
@DUALMAC_DUALPHY = common dso_local global i64 0, align 8
@RF_SYN_G4 = common dso_local global i32 0, align 4
@BAND_ON_2_4G = common dso_local global i64 0, align 8
@curveindex_2g = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [36 x i8] c"ver 3 set RF-B, 2G, 0x28 = 0x%x !!\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"<====\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32)* @_rtl92d_phy_reload_lck_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92d_phy_reload_lck_setting(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %11 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %10)
  store %struct.rtl_priv* %11, %struct.rtl_priv** %5, align 8
  %12 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %13 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @BAND_ON_5G, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @RF90_PATH_A, align 4
  br label %33

20:                                               ; preds = %2
  %21 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %22 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @IS_92D_SINGLEPHY(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* @RF90_PATH_B, align 4
  br label %31

29:                                               ; preds = %20
  %30 = load i32, i32* @RF90_PATH_A, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  br label %33

33:                                               ; preds = %31, %18
  %34 = phi i32 [ %19, %18 ], [ %32, %31 ]
  store i32 %34, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %35 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %36 = load i32, i32* @COMP_CMD, align 4
  %37 = load i32, i32* @DBG_LOUD, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %35, i32 %36, i32 %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %41 = load i32, i32* @FINIT, align 4
  %42 = load i32, i32* @INIT_IQK, align 4
  %43 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %44 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = call i32 @RTPRINT(%struct.rtl_priv* %40, i32 %41, i32 %42, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %50 = load i32, i32* @FINIT, align 4
  %51 = load i32, i32* @INIT_IQK, align 4
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @RTPRINT(%struct.rtl_priv* %49, i32 %50, i32 %51, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  %54 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %55 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @BAND_ON_5G, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %119

60:                                               ; preds = %33
  %61 = load i32*, i32** @curveindex_5g, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %7, align 4
  %67 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %68 = load i32, i32* @FINIT, align 4
  %69 = load i32, i32* @INIT_IQK, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @RTPRINT(%struct.rtl_priv* %67, i32 %68, i32 %69, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %70)
  %72 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %73 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @DUALMAC_DUALPHY, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %97

78:                                               ; preds = %60
  %79 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %80 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %97

84:                                               ; preds = %78
  %85 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %86 = call i32 @rtl92d_phy_enable_anotherphy(%struct.ieee80211_hw* %85, i32 0)
  store i32 %86, i32* %9, align 4
  %87 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %88 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 3
  store i32 1, i32* %89, align 4
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %84
  %93 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @_rtl92d_phy_enable_rf_env(%struct.ieee80211_hw* %93, i32 %94, i32* %8)
  br label %96

96:                                               ; preds = %92, %84
  br label %97

97:                                               ; preds = %96, %78, %60
  %98 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* @RF_SYN_G4, align 4
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %98, i32 %99, i32 %100, i32 260096, i32 %101)
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %97
  %106 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @_rtl92d_phy_restore_rf_env(%struct.ieee80211_hw* %106, i32 %107, i32* %8)
  br label %109

109:                                              ; preds = %105, %97
  %110 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %111 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %109
  %116 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %117 = call i32 @rtl92d_phy_powerdown_anotherphy(%struct.ieee80211_hw* %116, i32 0)
  br label %118

118:                                              ; preds = %115, %109
  br label %194

119:                                              ; preds = %33
  %120 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %121 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @BAND_ON_2_4G, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %193

126:                                              ; preds = %119
  %127 = load i32*, i32** @curveindex_2g, align 8
  %128 = load i32, i32* %4, align 4
  %129 = sub nsw i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %127, i64 %130
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %7, align 4
  %133 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %134 = load i32, i32* @FINIT, align 4
  %135 = load i32, i32* @INIT_IQK, align 4
  %136 = load i32, i32* %7, align 4
  %137 = call i32 @RTPRINT(%struct.rtl_priv* %133, i32 %134, i32 %135, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %136)
  %138 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %139 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @DUALMAC_DUALPHY, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %163

144:                                              ; preds = %126
  %145 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %146 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %163

150:                                              ; preds = %144
  %151 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %152 = call i32 @rtl92d_phy_enable_anotherphy(%struct.ieee80211_hw* %151, i32 1)
  store i32 %152, i32* %9, align 4
  %153 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %154 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 4
  store i32 1, i32* %155, align 8
  %156 = load i32, i32* %9, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %150
  %159 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %160 = load i32, i32* %6, align 4
  %161 = call i32 @_rtl92d_phy_enable_rf_env(%struct.ieee80211_hw* %159, i32 %160, i32* %8)
  br label %162

162:                                              ; preds = %158, %150
  br label %163

163:                                              ; preds = %162, %144, %126
  %164 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %165 = load i32, i32* %6, align 4
  %166 = load i32, i32* @RF_SYN_G4, align 4
  %167 = load i32, i32* %7, align 4
  %168 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %164, i32 %165, i32 %166, i32 260096, i32 %167)
  %169 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %170 = load i32, i32* @FINIT, align 4
  %171 = load i32, i32* @INIT_IQK, align 4
  %172 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %173 = load i32, i32* %6, align 4
  %174 = load i32, i32* @RF_SYN_G4, align 4
  %175 = call i32 @rtl_get_rfreg(%struct.ieee80211_hw* %172, i32 %173, i32 %174, i32 260096)
  %176 = call i32 @RTPRINT(%struct.rtl_priv* %169, i32 %170, i32 %171, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %175)
  %177 = load i32, i32* %9, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %163
  %180 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %181 = load i32, i32* %6, align 4
  %182 = call i32 @_rtl92d_phy_restore_rf_env(%struct.ieee80211_hw* %180, i32 %181, i32* %8)
  br label %183

183:                                              ; preds = %179, %163
  %184 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %185 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 4
  %187 = load i32, i32* %186, align 8
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %183
  %190 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %191 = call i32 @rtl92d_phy_powerdown_anotherphy(%struct.ieee80211_hw* %190, i32 1)
  br label %192

192:                                              ; preds = %189, %183
  br label %193

193:                                              ; preds = %192, %119
  br label %194

194:                                              ; preds = %193, %118
  %195 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %196 = load i32, i32* @COMP_CMD, align 4
  %197 = load i32, i32* @DBG_LOUD, align 4
  %198 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %195, i32 %196, i32 %197, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i64 @IS_92D_SINGLEPHY(i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @RTPRINT(%struct.rtl_priv*, i32, i32, i8*, i32) #1

declare dso_local i32 @rtl92d_phy_enable_anotherphy(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @_rtl92d_phy_enable_rf_env(%struct.ieee80211_hw*, i32, i32*) #1

declare dso_local i32 @rtl_set_rfreg(%struct.ieee80211_hw*, i32, i32, i32, i32) #1

declare dso_local i32 @_rtl92d_phy_restore_rf_env(%struct.ieee80211_hw*, i32, i32*) #1

declare dso_local i32 @rtl92d_phy_powerdown_anotherphy(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @rtl_get_rfreg(%struct.ieee80211_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
