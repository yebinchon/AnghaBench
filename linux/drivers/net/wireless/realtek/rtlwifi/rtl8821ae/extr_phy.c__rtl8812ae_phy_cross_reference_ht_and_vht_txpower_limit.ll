; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c__rtl8812ae_phy_cross_reference_ht_and_vht_txpower_limit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c__rtl8812ae_phy_cross_reference_ht_and_vht_txpower_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i32***** }

@MAX_REGULATION_NUM = common dso_local global i64 0, align 8
@MAX_5G_BANDWIDTH_NUM = common dso_local global i64 0, align 8
@CHANNEL_MAX_NUMBER_5G = common dso_local global i64 0, align 8
@MAX_RATE_SECTION_NUM = common dso_local global i64 0, align 8
@RF90_PATH_A = common dso_local global i64 0, align 8
@MAX_POWER_INDEX = common dso_local global i32 0, align 4
@COMP_INIT = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [101 x i8] c"No power limit table of the specified band %d, bandwidth %d, ratesection %d, channel %d, rf path %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"use other value %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @_rtl8812ae_phy_cross_reference_ht_and_vht_txpower_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl8812ae_phy_cross_reference_ht_and_vht_txpower_limit(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_phy*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %11 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %10)
  store %struct.rtl_priv* %11, %struct.rtl_priv** %3, align 8
  %12 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %13 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %12, i32 0, i32 0
  store %struct.rtl_phy* %13, %struct.rtl_phy** %4, align 8
  store i32 0, i32* %9, align 4
  store i64 0, i64* %5, align 8
  br label %14

14:                                               ; preds = %240, %1
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @MAX_REGULATION_NUM, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %243

18:                                               ; preds = %14
  store i64 0, i64* %6, align 8
  br label %19

19:                                               ; preds = %236, %18
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @MAX_5G_BANDWIDTH_NUM, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %239

23:                                               ; preds = %19
  store i64 0, i64* %7, align 8
  br label %24

24:                                               ; preds = %232, %23
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @CHANNEL_MAX_NUMBER_5G, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %235

28:                                               ; preds = %24
  store i64 0, i64* %8, align 8
  br label %29

29:                                               ; preds = %228, %28
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* @MAX_RATE_SECTION_NUM, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %231

33:                                               ; preds = %29
  %34 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %35 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %34, i32 0, i32 0
  %36 = load i32*****, i32****** %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = getelementptr inbounds i32****, i32***** %36, i64 %37
  %39 = load i32****, i32***** %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds i32***, i32**** %39, i64 %40
  %42 = load i32***, i32**** %41, align 8
  %43 = load i64, i64* %8, align 8
  %44 = getelementptr inbounds i32**, i32*** %42, i64 %43
  %45 = load i32**, i32*** %44, align 8
  %46 = load i64, i64* %7, align 8
  %47 = getelementptr inbounds i32*, i32** %45, i64 %46
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* @RF90_PATH_A, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @MAX_POWER_INDEX, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %227

55:                                               ; preds = %33
  %56 = load i64, i64* %6, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = load i64, i64* %6, align 8
  %60 = icmp eq i64 %59, 1
  br i1 %60, label %61, label %226

61:                                               ; preds = %58, %55
  %62 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %63 = load i32, i32* @COMP_INIT, align 4
  %64 = load i32, i32* @DBG_TRACE, align 4
  %65 = load i64, i64* %6, align 8
  %66 = load i64, i64* %8, align 8
  %67 = load i64, i64* %7, align 8
  %68 = load i64, i64* @RF90_PATH_A, align 8
  %69 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, ...) @RT_TRACE(%struct.rtl_priv* %62, i32 %63, i32 %64, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str, i64 0, i64 0), i32 1, i64 %65, i64 %66, i64 %67, i64 %68)
  %70 = load i64, i64* %8, align 8
  %71 = icmp eq i64 %70, 2
  br i1 %71, label %72, label %106

72:                                               ; preds = %61
  %73 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %74 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %73, i32 0, i32 0
  %75 = load i32*****, i32****** %74, align 8
  %76 = load i64, i64* %5, align 8
  %77 = getelementptr inbounds i32****, i32***** %75, i64 %76
  %78 = load i32****, i32***** %77, align 8
  %79 = load i64, i64* %6, align 8
  %80 = getelementptr inbounds i32***, i32**** %78, i64 %79
  %81 = load i32***, i32**** %80, align 8
  %82 = getelementptr inbounds i32**, i32*** %81, i64 4
  %83 = load i32**, i32*** %82, align 8
  %84 = load i64, i64* %7, align 8
  %85 = getelementptr inbounds i32*, i32** %83, i64 %84
  %86 = load i32*, i32** %85, align 8
  %87 = load i64, i64* @RF90_PATH_A, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %91 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %90, i32 0, i32 0
  %92 = load i32*****, i32****** %91, align 8
  %93 = load i64, i64* %5, align 8
  %94 = getelementptr inbounds i32****, i32***** %92, i64 %93
  %95 = load i32****, i32***** %94, align 8
  %96 = load i64, i64* %6, align 8
  %97 = getelementptr inbounds i32***, i32**** %95, i64 %96
  %98 = load i32***, i32**** %97, align 8
  %99 = getelementptr inbounds i32**, i32*** %98, i64 2
  %100 = load i32**, i32*** %99, align 8
  %101 = load i64, i64* %7, align 8
  %102 = getelementptr inbounds i32*, i32** %100, i64 %101
  %103 = load i32*, i32** %102, align 8
  %104 = load i64, i64* @RF90_PATH_A, align 8
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  store i32 %89, i32* %105, align 4
  br label %220

106:                                              ; preds = %61
  %107 = load i64, i64* %8, align 8
  %108 = icmp eq i64 %107, 4
  br i1 %108, label %109, label %143

109:                                              ; preds = %106
  %110 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %111 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %110, i32 0, i32 0
  %112 = load i32*****, i32****** %111, align 8
  %113 = load i64, i64* %5, align 8
  %114 = getelementptr inbounds i32****, i32***** %112, i64 %113
  %115 = load i32****, i32***** %114, align 8
  %116 = load i64, i64* %6, align 8
  %117 = getelementptr inbounds i32***, i32**** %115, i64 %116
  %118 = load i32***, i32**** %117, align 8
  %119 = getelementptr inbounds i32**, i32*** %118, i64 2
  %120 = load i32**, i32*** %119, align 8
  %121 = load i64, i64* %7, align 8
  %122 = getelementptr inbounds i32*, i32** %120, i64 %121
  %123 = load i32*, i32** %122, align 8
  %124 = load i64, i64* @RF90_PATH_A, align 8
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %128 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %127, i32 0, i32 0
  %129 = load i32*****, i32****** %128, align 8
  %130 = load i64, i64* %5, align 8
  %131 = getelementptr inbounds i32****, i32***** %129, i64 %130
  %132 = load i32****, i32***** %131, align 8
  %133 = load i64, i64* %6, align 8
  %134 = getelementptr inbounds i32***, i32**** %132, i64 %133
  %135 = load i32***, i32**** %134, align 8
  %136 = getelementptr inbounds i32**, i32*** %135, i64 4
  %137 = load i32**, i32*** %136, align 8
  %138 = load i64, i64* %7, align 8
  %139 = getelementptr inbounds i32*, i32** %137, i64 %138
  %140 = load i32*, i32** %139, align 8
  %141 = load i64, i64* @RF90_PATH_A, align 8
  %142 = getelementptr inbounds i32, i32* %140, i64 %141
  store i32 %126, i32* %142, align 4
  br label %219

143:                                              ; preds = %106
  %144 = load i64, i64* %8, align 8
  %145 = icmp eq i64 %144, 3
  br i1 %145, label %146, label %180

146:                                              ; preds = %143
  %147 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %148 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %147, i32 0, i32 0
  %149 = load i32*****, i32****** %148, align 8
  %150 = load i64, i64* %5, align 8
  %151 = getelementptr inbounds i32****, i32***** %149, i64 %150
  %152 = load i32****, i32***** %151, align 8
  %153 = load i64, i64* %6, align 8
  %154 = getelementptr inbounds i32***, i32**** %152, i64 %153
  %155 = load i32***, i32**** %154, align 8
  %156 = getelementptr inbounds i32**, i32*** %155, i64 5
  %157 = load i32**, i32*** %156, align 8
  %158 = load i64, i64* %7, align 8
  %159 = getelementptr inbounds i32*, i32** %157, i64 %158
  %160 = load i32*, i32** %159, align 8
  %161 = load i64, i64* @RF90_PATH_A, align 8
  %162 = getelementptr inbounds i32, i32* %160, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %165 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %164, i32 0, i32 0
  %166 = load i32*****, i32****** %165, align 8
  %167 = load i64, i64* %5, align 8
  %168 = getelementptr inbounds i32****, i32***** %166, i64 %167
  %169 = load i32****, i32***** %168, align 8
  %170 = load i64, i64* %6, align 8
  %171 = getelementptr inbounds i32***, i32**** %169, i64 %170
  %172 = load i32***, i32**** %171, align 8
  %173 = getelementptr inbounds i32**, i32*** %172, i64 3
  %174 = load i32**, i32*** %173, align 8
  %175 = load i64, i64* %7, align 8
  %176 = getelementptr inbounds i32*, i32** %174, i64 %175
  %177 = load i32*, i32** %176, align 8
  %178 = load i64, i64* @RF90_PATH_A, align 8
  %179 = getelementptr inbounds i32, i32* %177, i64 %178
  store i32 %163, i32* %179, align 4
  br label %218

180:                                              ; preds = %143
  %181 = load i64, i64* %8, align 8
  %182 = icmp eq i64 %181, 5
  br i1 %182, label %183, label %217

183:                                              ; preds = %180
  %184 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %185 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %184, i32 0, i32 0
  %186 = load i32*****, i32****** %185, align 8
  %187 = load i64, i64* %5, align 8
  %188 = getelementptr inbounds i32****, i32***** %186, i64 %187
  %189 = load i32****, i32***** %188, align 8
  %190 = load i64, i64* %6, align 8
  %191 = getelementptr inbounds i32***, i32**** %189, i64 %190
  %192 = load i32***, i32**** %191, align 8
  %193 = getelementptr inbounds i32**, i32*** %192, i64 3
  %194 = load i32**, i32*** %193, align 8
  %195 = load i64, i64* %7, align 8
  %196 = getelementptr inbounds i32*, i32** %194, i64 %195
  %197 = load i32*, i32** %196, align 8
  %198 = load i64, i64* @RF90_PATH_A, align 8
  %199 = getelementptr inbounds i32, i32* %197, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %202 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %201, i32 0, i32 0
  %203 = load i32*****, i32****** %202, align 8
  %204 = load i64, i64* %5, align 8
  %205 = getelementptr inbounds i32****, i32***** %203, i64 %204
  %206 = load i32****, i32***** %205, align 8
  %207 = load i64, i64* %6, align 8
  %208 = getelementptr inbounds i32***, i32**** %206, i64 %207
  %209 = load i32***, i32**** %208, align 8
  %210 = getelementptr inbounds i32**, i32*** %209, i64 5
  %211 = load i32**, i32*** %210, align 8
  %212 = load i64, i64* %7, align 8
  %213 = getelementptr inbounds i32*, i32** %211, i64 %212
  %214 = load i32*, i32** %213, align 8
  %215 = load i64, i64* @RF90_PATH_A, align 8
  %216 = getelementptr inbounds i32, i32* %214, i64 %215
  store i32 %200, i32* %216, align 4
  br label %217

217:                                              ; preds = %183, %180
  br label %218

218:                                              ; preds = %217, %146
  br label %219

219:                                              ; preds = %218, %109
  br label %220

220:                                              ; preds = %219, %72
  %221 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %222 = load i32, i32* @COMP_INIT, align 4
  %223 = load i32, i32* @DBG_TRACE, align 4
  %224 = load i32, i32* %9, align 4
  %225 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, ...) @RT_TRACE(%struct.rtl_priv* %221, i32 %222, i32 %223, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %224)
  br label %226

226:                                              ; preds = %220, %58
  br label %227

227:                                              ; preds = %226, %33
  br label %228

228:                                              ; preds = %227
  %229 = load i64, i64* %8, align 8
  %230 = add i64 %229, 1
  store i64 %230, i64* %8, align 8
  br label %29

231:                                              ; preds = %29
  br label %232

232:                                              ; preds = %231
  %233 = load i64, i64* %7, align 8
  %234 = add i64 %233, 1
  store i64 %234, i64* %7, align 8
  br label %24

235:                                              ; preds = %24
  br label %236

236:                                              ; preds = %235
  %237 = load i64, i64* %6, align 8
  %238 = add i64 %237, 1
  store i64 %238, i64* %6, align 8
  br label %19

239:                                              ; preds = %19
  br label %240

240:                                              ; preds = %239
  %241 = load i64, i64* %5, align 8
  %242 = add i64 %241, 1
  store i64 %242, i64* %5, align 8
  br label %14

243:                                              ; preds = %14
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
