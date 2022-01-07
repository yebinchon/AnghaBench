; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c__rtl8821ae_phy_get_txpower_by_rate_base.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c__rtl8821ae_phy_get_txpower_by_rate_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i64***, i64*** }

@RF90_PATH_D = common dso_local global i64 0, align 8
@COMP_INIT = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Invalid Rf Path %d in PHY_GetTxPowerByRateBase()\0A\00", align 1
@BAND_ON_2_4G = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [85 x i8] c"Invalid RateSection %d in Band 2.4G, Rf Path %d, %dTx in PHY_GetTxPowerByRateBase()\0A\00", align 1
@BAND_ON_5G = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [83 x i8] c"Invalid RateSection %d in Band 5G, Rf Path %d, %dTx in PHY_GetTxPowerByRateBase()\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"Invalid Band %d in PHY_GetTxPowerByRateBase()\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ieee80211_hw*, i64, i64, i64, i64)* @_rtl8821ae_phy_get_txpower_by_rate_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_rtl8821ae_phy_get_txpower_by_rate_base(%struct.ieee80211_hw* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.ieee80211_hw*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.rtl_priv*, align 8
  %13 = alloca %struct.rtl_phy*, align 8
  %14 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %16 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %15)
  store %struct.rtl_priv* %16, %struct.rtl_priv** %12, align 8
  %17 = load %struct.rtl_priv*, %struct.rtl_priv** %12, align 8
  %18 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %17, i32 0, i32 0
  store %struct.rtl_phy* %18, %struct.rtl_phy** %13, align 8
  store i64 0, i64* %14, align 8
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* @RF90_PATH_D, align 8
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %5
  %23 = load %struct.rtl_priv*, %struct.rtl_priv** %12, align 8
  %24 = load i32, i32* @COMP_INIT, align 4
  %25 = load i32, i32* @DBG_LOUD, align 4
  %26 = load i64, i64* %9, align 8
  %27 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i64, ...) @RT_TRACE(%struct.rtl_priv* %23, i32 %24, i32 %25, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %26)
  store i64 0, i64* %6, align 8
  br label %199

28:                                               ; preds = %5
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* @BAND_ON_2_4G, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %115

32:                                               ; preds = %28
  %33 = load i64, i64* %11, align 8
  switch i64 %33, label %106 [
    i64 133, label %34
    i64 130, label %46
    i64 132, label %58
    i64 131, label %70
    i64 129, label %82
    i64 128, label %94
  ]

34:                                               ; preds = %32
  %35 = load %struct.rtl_phy*, %struct.rtl_phy** %13, align 8
  %36 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %35, i32 0, i32 0
  %37 = load i64***, i64**** %36, align 8
  %38 = load i64, i64* %9, align 8
  %39 = getelementptr inbounds i64**, i64*** %37, i64 %38
  %40 = load i64**, i64*** %39, align 8
  %41 = load i64, i64* %10, align 8
  %42 = getelementptr inbounds i64*, i64** %40, i64 %41
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %14, align 8
  br label %114

46:                                               ; preds = %32
  %47 = load %struct.rtl_phy*, %struct.rtl_phy** %13, align 8
  %48 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %47, i32 0, i32 0
  %49 = load i64***, i64**** %48, align 8
  %50 = load i64, i64* %9, align 8
  %51 = getelementptr inbounds i64**, i64*** %49, i64 %50
  %52 = load i64**, i64*** %51, align 8
  %53 = load i64, i64* %10, align 8
  %54 = getelementptr inbounds i64*, i64** %52, i64 %53
  %55 = load i64*, i64** %54, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 1
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %14, align 8
  br label %114

58:                                               ; preds = %32
  %59 = load %struct.rtl_phy*, %struct.rtl_phy** %13, align 8
  %60 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %59, i32 0, i32 0
  %61 = load i64***, i64**** %60, align 8
  %62 = load i64, i64* %9, align 8
  %63 = getelementptr inbounds i64**, i64*** %61, i64 %62
  %64 = load i64**, i64*** %63, align 8
  %65 = load i64, i64* %10, align 8
  %66 = getelementptr inbounds i64*, i64** %64, i64 %65
  %67 = load i64*, i64** %66, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 2
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %14, align 8
  br label %114

70:                                               ; preds = %32
  %71 = load %struct.rtl_phy*, %struct.rtl_phy** %13, align 8
  %72 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %71, i32 0, i32 0
  %73 = load i64***, i64**** %72, align 8
  %74 = load i64, i64* %9, align 8
  %75 = getelementptr inbounds i64**, i64*** %73, i64 %74
  %76 = load i64**, i64*** %75, align 8
  %77 = load i64, i64* %10, align 8
  %78 = getelementptr inbounds i64*, i64** %76, i64 %77
  %79 = load i64*, i64** %78, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 3
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %14, align 8
  br label %114

82:                                               ; preds = %32
  %83 = load %struct.rtl_phy*, %struct.rtl_phy** %13, align 8
  %84 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %83, i32 0, i32 0
  %85 = load i64***, i64**** %84, align 8
  %86 = load i64, i64* %9, align 8
  %87 = getelementptr inbounds i64**, i64*** %85, i64 %86
  %88 = load i64**, i64*** %87, align 8
  %89 = load i64, i64* %10, align 8
  %90 = getelementptr inbounds i64*, i64** %88, i64 %89
  %91 = load i64*, i64** %90, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 4
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %14, align 8
  br label %114

94:                                               ; preds = %32
  %95 = load %struct.rtl_phy*, %struct.rtl_phy** %13, align 8
  %96 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %95, i32 0, i32 0
  %97 = load i64***, i64**** %96, align 8
  %98 = load i64, i64* %9, align 8
  %99 = getelementptr inbounds i64**, i64*** %97, i64 %98
  %100 = load i64**, i64*** %99, align 8
  %101 = load i64, i64* %10, align 8
  %102 = getelementptr inbounds i64*, i64** %100, i64 %101
  %103 = load i64*, i64** %102, align 8
  %104 = getelementptr inbounds i64, i64* %103, i64 5
  %105 = load i64, i64* %104, align 8
  store i64 %105, i64* %14, align 8
  br label %114

106:                                              ; preds = %32
  %107 = load %struct.rtl_priv*, %struct.rtl_priv** %12, align 8
  %108 = load i32, i32* @COMP_INIT, align 4
  %109 = load i32, i32* @DBG_LOUD, align 4
  %110 = load i64, i64* %11, align 8
  %111 = load i64, i64* %9, align 8
  %112 = load i64, i64* %10, align 8
  %113 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i64, ...) @RT_TRACE(%struct.rtl_priv* %107, i32 %108, i32 %109, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i64 0, i64 0), i64 %110, i64 %111, i64 %112)
  br label %114

114:                                              ; preds = %106, %94, %82, %70, %58, %46, %34
  br label %197

115:                                              ; preds = %28
  %116 = load i64, i64* %8, align 8
  %117 = load i64, i64* @BAND_ON_5G, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %190

119:                                              ; preds = %115
  %120 = load i64, i64* %11, align 8
  switch i64 %120, label %181 [
    i64 130, label %121
    i64 132, label %133
    i64 131, label %145
    i64 129, label %157
    i64 128, label %169
  ]

121:                                              ; preds = %119
  %122 = load %struct.rtl_phy*, %struct.rtl_phy** %13, align 8
  %123 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %122, i32 0, i32 1
  %124 = load i64***, i64**** %123, align 8
  %125 = load i64, i64* %9, align 8
  %126 = getelementptr inbounds i64**, i64*** %124, i64 %125
  %127 = load i64**, i64*** %126, align 8
  %128 = load i64, i64* %10, align 8
  %129 = getelementptr inbounds i64*, i64** %127, i64 %128
  %130 = load i64*, i64** %129, align 8
  %131 = getelementptr inbounds i64, i64* %130, i64 0
  %132 = load i64, i64* %131, align 8
  store i64 %132, i64* %14, align 8
  br label %189

133:                                              ; preds = %119
  %134 = load %struct.rtl_phy*, %struct.rtl_phy** %13, align 8
  %135 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %134, i32 0, i32 1
  %136 = load i64***, i64**** %135, align 8
  %137 = load i64, i64* %9, align 8
  %138 = getelementptr inbounds i64**, i64*** %136, i64 %137
  %139 = load i64**, i64*** %138, align 8
  %140 = load i64, i64* %10, align 8
  %141 = getelementptr inbounds i64*, i64** %139, i64 %140
  %142 = load i64*, i64** %141, align 8
  %143 = getelementptr inbounds i64, i64* %142, i64 1
  %144 = load i64, i64* %143, align 8
  store i64 %144, i64* %14, align 8
  br label %189

145:                                              ; preds = %119
  %146 = load %struct.rtl_phy*, %struct.rtl_phy** %13, align 8
  %147 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %146, i32 0, i32 1
  %148 = load i64***, i64**** %147, align 8
  %149 = load i64, i64* %9, align 8
  %150 = getelementptr inbounds i64**, i64*** %148, i64 %149
  %151 = load i64**, i64*** %150, align 8
  %152 = load i64, i64* %10, align 8
  %153 = getelementptr inbounds i64*, i64** %151, i64 %152
  %154 = load i64*, i64** %153, align 8
  %155 = getelementptr inbounds i64, i64* %154, i64 2
  %156 = load i64, i64* %155, align 8
  store i64 %156, i64* %14, align 8
  br label %189

157:                                              ; preds = %119
  %158 = load %struct.rtl_phy*, %struct.rtl_phy** %13, align 8
  %159 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %158, i32 0, i32 1
  %160 = load i64***, i64**** %159, align 8
  %161 = load i64, i64* %9, align 8
  %162 = getelementptr inbounds i64**, i64*** %160, i64 %161
  %163 = load i64**, i64*** %162, align 8
  %164 = load i64, i64* %10, align 8
  %165 = getelementptr inbounds i64*, i64** %163, i64 %164
  %166 = load i64*, i64** %165, align 8
  %167 = getelementptr inbounds i64, i64* %166, i64 3
  %168 = load i64, i64* %167, align 8
  store i64 %168, i64* %14, align 8
  br label %189

169:                                              ; preds = %119
  %170 = load %struct.rtl_phy*, %struct.rtl_phy** %13, align 8
  %171 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %170, i32 0, i32 1
  %172 = load i64***, i64**** %171, align 8
  %173 = load i64, i64* %9, align 8
  %174 = getelementptr inbounds i64**, i64*** %172, i64 %173
  %175 = load i64**, i64*** %174, align 8
  %176 = load i64, i64* %10, align 8
  %177 = getelementptr inbounds i64*, i64** %175, i64 %176
  %178 = load i64*, i64** %177, align 8
  %179 = getelementptr inbounds i64, i64* %178, i64 4
  %180 = load i64, i64* %179, align 8
  store i64 %180, i64* %14, align 8
  br label %189

181:                                              ; preds = %119
  %182 = load %struct.rtl_priv*, %struct.rtl_priv** %12, align 8
  %183 = load i32, i32* @COMP_INIT, align 4
  %184 = load i32, i32* @DBG_LOUD, align 4
  %185 = load i64, i64* %11, align 8
  %186 = load i64, i64* %9, align 8
  %187 = load i64, i64* %10, align 8
  %188 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i64, ...) @RT_TRACE(%struct.rtl_priv* %182, i32 %183, i32 %184, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i64 0, i64 0), i64 %185, i64 %186, i64 %187)
  br label %189

189:                                              ; preds = %181, %169, %157, %145, %133, %121
  br label %196

190:                                              ; preds = %115
  %191 = load %struct.rtl_priv*, %struct.rtl_priv** %12, align 8
  %192 = load i32, i32* @COMP_INIT, align 4
  %193 = load i32, i32* @DBG_LOUD, align 4
  %194 = load i64, i64* %8, align 8
  %195 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i64, ...) @RT_TRACE(%struct.rtl_priv* %191, i32 %192, i32 %193, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i64 %194)
  br label %196

196:                                              ; preds = %190, %189
  br label %197

197:                                              ; preds = %196, %114
  %198 = load i64, i64* %14, align 8
  store i64 %198, i64* %6, align 8
  br label %199

199:                                              ; preds = %197, %22
  %200 = load i64, i64* %6, align 8
  ret i64 %200
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
