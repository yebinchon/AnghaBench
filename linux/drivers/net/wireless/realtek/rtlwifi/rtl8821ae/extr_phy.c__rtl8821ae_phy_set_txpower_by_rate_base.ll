; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c__rtl8821ae_phy_set_txpower_by_rate_base.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c__rtl8821ae_phy_set_txpower_by_rate_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i64***, i64*** }

@RF90_PATH_D = common dso_local global i64 0, align 8
@COMP_INIT = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Invalid Rf Path %d in phy_SetTxPowerByRatBase()\0A\00", align 1
@BAND_ON_2_4G = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [84 x i8] c"Invalid RateSection %d in Band 2.4G,Rf Path %d, %dTx in PHY_SetTxPowerByRateBase()\0A\00", align 1
@BAND_ON_5G = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [83 x i8] c"Invalid RateSection %d in Band 5G, Rf Path %d, %dTx in PHY_SetTxPowerByRateBase()\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"Invalid Band %d in PHY_SetTxPowerByRateBase()\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i64, i64, i64, i64, i64)* @_rtl8821ae_phy_set_txpower_by_rate_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl8821ae_phy_set_txpower_by_rate_base(%struct.ieee80211_hw* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.ieee80211_hw*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.rtl_priv*, align 8
  %14 = alloca %struct.rtl_phy*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %16 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %15)
  store %struct.rtl_priv* %16, %struct.rtl_priv** %13, align 8
  %17 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %18 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %17, i32 0, i32 0
  store %struct.rtl_phy* %18, %struct.rtl_phy** %14, align 8
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* @RF90_PATH_D, align 8
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %6
  %23 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %24 = load i32, i32* @COMP_INIT, align 4
  %25 = load i32, i32* @DBG_LOUD, align 4
  %26 = load i64, i64* %9, align 8
  %27 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i64, ...) @RT_TRACE(%struct.rtl_priv* %23, i32 %24, i32 %25, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %26)
  br label %197

28:                                               ; preds = %6
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* @BAND_ON_2_4G, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %115

32:                                               ; preds = %28
  %33 = load i64, i64* %10, align 8
  switch i64 %33, label %106 [
    i64 133, label %34
    i64 130, label %46
    i64 132, label %58
    i64 131, label %70
    i64 129, label %82
    i64 128, label %94
  ]

34:                                               ; preds = %32
  %35 = load i64, i64* %12, align 8
  %36 = load %struct.rtl_phy*, %struct.rtl_phy** %14, align 8
  %37 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %36, i32 0, i32 1
  %38 = load i64***, i64**** %37, align 8
  %39 = load i64, i64* %9, align 8
  %40 = getelementptr inbounds i64**, i64*** %38, i64 %39
  %41 = load i64**, i64*** %40, align 8
  %42 = load i64, i64* %11, align 8
  %43 = getelementptr inbounds i64*, i64** %41, i64 %42
  %44 = load i64*, i64** %43, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 0
  store i64 %35, i64* %45, align 8
  br label %114

46:                                               ; preds = %32
  %47 = load i64, i64* %12, align 8
  %48 = load %struct.rtl_phy*, %struct.rtl_phy** %14, align 8
  %49 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %48, i32 0, i32 1
  %50 = load i64***, i64**** %49, align 8
  %51 = load i64, i64* %9, align 8
  %52 = getelementptr inbounds i64**, i64*** %50, i64 %51
  %53 = load i64**, i64*** %52, align 8
  %54 = load i64, i64* %11, align 8
  %55 = getelementptr inbounds i64*, i64** %53, i64 %54
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 1
  store i64 %47, i64* %57, align 8
  br label %114

58:                                               ; preds = %32
  %59 = load i64, i64* %12, align 8
  %60 = load %struct.rtl_phy*, %struct.rtl_phy** %14, align 8
  %61 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %60, i32 0, i32 1
  %62 = load i64***, i64**** %61, align 8
  %63 = load i64, i64* %9, align 8
  %64 = getelementptr inbounds i64**, i64*** %62, i64 %63
  %65 = load i64**, i64*** %64, align 8
  %66 = load i64, i64* %11, align 8
  %67 = getelementptr inbounds i64*, i64** %65, i64 %66
  %68 = load i64*, i64** %67, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 2
  store i64 %59, i64* %69, align 8
  br label %114

70:                                               ; preds = %32
  %71 = load i64, i64* %12, align 8
  %72 = load %struct.rtl_phy*, %struct.rtl_phy** %14, align 8
  %73 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %72, i32 0, i32 1
  %74 = load i64***, i64**** %73, align 8
  %75 = load i64, i64* %9, align 8
  %76 = getelementptr inbounds i64**, i64*** %74, i64 %75
  %77 = load i64**, i64*** %76, align 8
  %78 = load i64, i64* %11, align 8
  %79 = getelementptr inbounds i64*, i64** %77, i64 %78
  %80 = load i64*, i64** %79, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 3
  store i64 %71, i64* %81, align 8
  br label %114

82:                                               ; preds = %32
  %83 = load i64, i64* %12, align 8
  %84 = load %struct.rtl_phy*, %struct.rtl_phy** %14, align 8
  %85 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %84, i32 0, i32 1
  %86 = load i64***, i64**** %85, align 8
  %87 = load i64, i64* %9, align 8
  %88 = getelementptr inbounds i64**, i64*** %86, i64 %87
  %89 = load i64**, i64*** %88, align 8
  %90 = load i64, i64* %11, align 8
  %91 = getelementptr inbounds i64*, i64** %89, i64 %90
  %92 = load i64*, i64** %91, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 4
  store i64 %83, i64* %93, align 8
  br label %114

94:                                               ; preds = %32
  %95 = load i64, i64* %12, align 8
  %96 = load %struct.rtl_phy*, %struct.rtl_phy** %14, align 8
  %97 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %96, i32 0, i32 1
  %98 = load i64***, i64**** %97, align 8
  %99 = load i64, i64* %9, align 8
  %100 = getelementptr inbounds i64**, i64*** %98, i64 %99
  %101 = load i64**, i64*** %100, align 8
  %102 = load i64, i64* %11, align 8
  %103 = getelementptr inbounds i64*, i64** %101, i64 %102
  %104 = load i64*, i64** %103, align 8
  %105 = getelementptr inbounds i64, i64* %104, i64 5
  store i64 %95, i64* %105, align 8
  br label %114

106:                                              ; preds = %32
  %107 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %108 = load i32, i32* @COMP_INIT, align 4
  %109 = load i32, i32* @DBG_LOUD, align 4
  %110 = load i64, i64* %10, align 8
  %111 = load i64, i64* %9, align 8
  %112 = load i64, i64* %11, align 8
  %113 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i64, ...) @RT_TRACE(%struct.rtl_priv* %107, i32 %108, i32 %109, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.1, i64 0, i64 0), i64 %110, i64 %111, i64 %112)
  br label %114

114:                                              ; preds = %106, %94, %82, %70, %58, %46, %34
  br label %197

115:                                              ; preds = %28
  %116 = load i64, i64* %8, align 8
  %117 = load i64, i64* @BAND_ON_5G, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %190

119:                                              ; preds = %115
  %120 = load i64, i64* %10, align 8
  switch i64 %120, label %181 [
    i64 130, label %121
    i64 132, label %133
    i64 131, label %145
    i64 129, label %157
    i64 128, label %169
  ]

121:                                              ; preds = %119
  %122 = load i64, i64* %12, align 8
  %123 = load %struct.rtl_phy*, %struct.rtl_phy** %14, align 8
  %124 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %123, i32 0, i32 0
  %125 = load i64***, i64**** %124, align 8
  %126 = load i64, i64* %9, align 8
  %127 = getelementptr inbounds i64**, i64*** %125, i64 %126
  %128 = load i64**, i64*** %127, align 8
  %129 = load i64, i64* %11, align 8
  %130 = getelementptr inbounds i64*, i64** %128, i64 %129
  %131 = load i64*, i64** %130, align 8
  %132 = getelementptr inbounds i64, i64* %131, i64 0
  store i64 %122, i64* %132, align 8
  br label %189

133:                                              ; preds = %119
  %134 = load i64, i64* %12, align 8
  %135 = load %struct.rtl_phy*, %struct.rtl_phy** %14, align 8
  %136 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %135, i32 0, i32 0
  %137 = load i64***, i64**** %136, align 8
  %138 = load i64, i64* %9, align 8
  %139 = getelementptr inbounds i64**, i64*** %137, i64 %138
  %140 = load i64**, i64*** %139, align 8
  %141 = load i64, i64* %11, align 8
  %142 = getelementptr inbounds i64*, i64** %140, i64 %141
  %143 = load i64*, i64** %142, align 8
  %144 = getelementptr inbounds i64, i64* %143, i64 1
  store i64 %134, i64* %144, align 8
  br label %189

145:                                              ; preds = %119
  %146 = load i64, i64* %12, align 8
  %147 = load %struct.rtl_phy*, %struct.rtl_phy** %14, align 8
  %148 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %147, i32 0, i32 0
  %149 = load i64***, i64**** %148, align 8
  %150 = load i64, i64* %9, align 8
  %151 = getelementptr inbounds i64**, i64*** %149, i64 %150
  %152 = load i64**, i64*** %151, align 8
  %153 = load i64, i64* %11, align 8
  %154 = getelementptr inbounds i64*, i64** %152, i64 %153
  %155 = load i64*, i64** %154, align 8
  %156 = getelementptr inbounds i64, i64* %155, i64 2
  store i64 %146, i64* %156, align 8
  br label %189

157:                                              ; preds = %119
  %158 = load i64, i64* %12, align 8
  %159 = load %struct.rtl_phy*, %struct.rtl_phy** %14, align 8
  %160 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %159, i32 0, i32 0
  %161 = load i64***, i64**** %160, align 8
  %162 = load i64, i64* %9, align 8
  %163 = getelementptr inbounds i64**, i64*** %161, i64 %162
  %164 = load i64**, i64*** %163, align 8
  %165 = load i64, i64* %11, align 8
  %166 = getelementptr inbounds i64*, i64** %164, i64 %165
  %167 = load i64*, i64** %166, align 8
  %168 = getelementptr inbounds i64, i64* %167, i64 3
  store i64 %158, i64* %168, align 8
  br label %189

169:                                              ; preds = %119
  %170 = load i64, i64* %12, align 8
  %171 = load %struct.rtl_phy*, %struct.rtl_phy** %14, align 8
  %172 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %171, i32 0, i32 0
  %173 = load i64***, i64**** %172, align 8
  %174 = load i64, i64* %9, align 8
  %175 = getelementptr inbounds i64**, i64*** %173, i64 %174
  %176 = load i64**, i64*** %175, align 8
  %177 = load i64, i64* %11, align 8
  %178 = getelementptr inbounds i64*, i64** %176, i64 %177
  %179 = load i64*, i64** %178, align 8
  %180 = getelementptr inbounds i64, i64* %179, i64 4
  store i64 %170, i64* %180, align 8
  br label %189

181:                                              ; preds = %119
  %182 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %183 = load i32, i32* @COMP_INIT, align 4
  %184 = load i32, i32* @DBG_LOUD, align 4
  %185 = load i64, i64* %10, align 8
  %186 = load i64, i64* %9, align 8
  %187 = load i64, i64* %11, align 8
  %188 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i64, ...) @RT_TRACE(%struct.rtl_priv* %182, i32 %183, i32 %184, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i64 0, i64 0), i64 %185, i64 %186, i64 %187)
  br label %189

189:                                              ; preds = %181, %169, %157, %145, %133, %121
  br label %196

190:                                              ; preds = %115
  %191 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %192 = load i32, i32* @COMP_INIT, align 4
  %193 = load i32, i32* @DBG_LOUD, align 4
  %194 = load i64, i64* %8, align 8
  %195 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i64, ...) @RT_TRACE(%struct.rtl_priv* %191, i32 %192, i32 %193, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i64 %194)
  br label %196

196:                                              ; preds = %190, %189
  br label %197

197:                                              ; preds = %22, %196, %114
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
