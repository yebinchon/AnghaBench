; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_phy.c__rtl8723be_get_txpower_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_phy.c__rtl8723be_get_txpower_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_efuse = type { i32**, i32**, i32**, i32**, i32**, i32 }

@COMP_POWER_TRACKING = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Illegal channel!\0A\00", align 1
@DESC92C_RATE6M = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"invalid rate\0A\00", align 1
@DESC92C_RATE54M = common dso_local global i32 0, align 4
@TX_1S = common dso_local global i64 0, align 8
@HT_CHANNEL_WIDTH_20 = common dso_local global i32 0, align 4
@DESC92C_RATEMCS0 = common dso_local global i32 0, align 4
@DESC92C_RATEMCS15 = common dso_local global i32 0, align 4
@DESC92C_RATEMCS8 = common dso_local global i32 0, align 4
@TX_2S = common dso_local global i64 0, align 8
@HT_CHANNEL_WIDTH_20_40 = common dso_local global i32 0, align 4
@BAND_ON_2_4G = common dso_local global i32 0, align 4
@MAX_POWER_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32, i32, i32, i32)* @_rtl8723be_get_txpower_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl8723be_get_txpower_index(%struct.ieee80211_hw* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.rtl_priv*, align 8
  %12 = alloca %struct.rtl_efuse*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %17 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %16)
  store %struct.rtl_priv* %17, %struct.rtl_priv** %11, align 8
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %19 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %18)
  %20 = call %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv* %19)
  store %struct.rtl_efuse* %20, %struct.rtl_efuse** %12, align 8
  %21 = load i32, i32* %10, align 4
  %22 = sub nsw i32 %21, 1
  store i32 %22, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp sgt i32 %23, 14
  br i1 %24, label %28, label %25

25:                                               ; preds = %5
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %26, 1
  br i1 %27, label %28, label %33

28:                                               ; preds = %25, %5
  store i32 0, i32* %13, align 4
  %29 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %30 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %31 = load i32, i32* @DBG_LOUD, align 4
  %32 = call i32 @RT_TRACE(%struct.rtl_priv* %29, i32 %30, i32 %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %28, %25
  %34 = load i32, i32* %8, align 4
  %35 = call i64 @RX_HAL_IS_CCK_RATE(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %33
  %38 = load %struct.rtl_efuse*, %struct.rtl_efuse** %12, align 8
  %39 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %38, i32 0, i32 0
  %40 = load i32**, i32*** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32*, i32** %40, i64 %42
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %13, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %14, align 4
  br label %71

49:                                               ; preds = %33
  %50 = load i32, i32* @DESC92C_RATE6M, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp sle i32 %50, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %49
  %54 = load %struct.rtl_efuse*, %struct.rtl_efuse** %12, align 8
  %55 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %54, i32 0, i32 1
  %56 = load i32**, i32*** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32*, i32** %56, i64 %58
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %14, align 4
  br label %70

65:                                               ; preds = %49
  %66 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %67 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %68 = load i32, i32* @DBG_LOUD, align 4
  %69 = call i32 @RT_TRACE(%struct.rtl_priv* %66, i32 %67, i32 %68, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %70

70:                                               ; preds = %65, %53
  br label %71

71:                                               ; preds = %70, %37
  %72 = load i32, i32* @DESC92C_RATE6M, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp sle i32 %72, %73
  br i1 %74, label %75, label %94

75:                                               ; preds = %71
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @DESC92C_RATE54M, align 4
  %78 = icmp sle i32 %76, %77
  br i1 %78, label %79, label %94

79:                                               ; preds = %75
  %80 = load i32, i32* %8, align 4
  %81 = call i64 @RX_HAL_IS_CCK_RATE(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %94, label %83

83:                                               ; preds = %79
  %84 = load %struct.rtl_efuse*, %struct.rtl_efuse** %12, align 8
  %85 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %84, i32 0, i32 2
  %86 = load i32**, i32*** %85, align 8
  %87 = getelementptr inbounds i32*, i32** %86, i64 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i64, i64* @TX_1S, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %14, align 4
  %93 = add nsw i32 %92, %91
  store i32 %93, i32* %14, align 4
  br label %94

94:                                               ; preds = %83, %79, %75, %71
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* @HT_CHANNEL_WIDTH_20, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %137

98:                                               ; preds = %94
  %99 = load i32, i32* @DESC92C_RATEMCS0, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp sle i32 %99, %100
  br i1 %101, label %102, label %117

102:                                              ; preds = %98
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* @DESC92C_RATEMCS15, align 4
  %105 = icmp sle i32 %103, %104
  br i1 %105, label %106, label %117

106:                                              ; preds = %102
  %107 = load %struct.rtl_efuse*, %struct.rtl_efuse** %12, align 8
  %108 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %107, i32 0, i32 3
  %109 = load i32**, i32*** %108, align 8
  %110 = getelementptr inbounds i32*, i32** %109, i64 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i64, i64* @TX_1S, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %14, align 4
  %116 = add nsw i32 %115, %114
  store i32 %116, i32* %14, align 4
  br label %117

117:                                              ; preds = %106, %102, %98
  %118 = load i32, i32* @DESC92C_RATEMCS8, align 4
  %119 = load i32, i32* %8, align 4
  %120 = icmp sle i32 %118, %119
  br i1 %120, label %121, label %136

121:                                              ; preds = %117
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* @DESC92C_RATEMCS15, align 4
  %124 = icmp sle i32 %122, %123
  br i1 %124, label %125, label %136

125:                                              ; preds = %121
  %126 = load %struct.rtl_efuse*, %struct.rtl_efuse** %12, align 8
  %127 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %126, i32 0, i32 3
  %128 = load i32**, i32*** %127, align 8
  %129 = getelementptr inbounds i32*, i32** %128, i64 0
  %130 = load i32*, i32** %129, align 8
  %131 = load i64, i64* @TX_2S, align 8
  %132 = getelementptr inbounds i32, i32* %130, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %14, align 4
  %135 = add nsw i32 %134, %133
  store i32 %135, i32* %14, align 4
  br label %136

136:                                              ; preds = %125, %121, %117
  br label %181

137:                                              ; preds = %94
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* @HT_CHANNEL_WIDTH_20_40, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %180

141:                                              ; preds = %137
  %142 = load i32, i32* @DESC92C_RATEMCS0, align 4
  %143 = load i32, i32* %8, align 4
  %144 = icmp sle i32 %142, %143
  br i1 %144, label %145, label %160

145:                                              ; preds = %141
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* @DESC92C_RATEMCS15, align 4
  %148 = icmp sle i32 %146, %147
  br i1 %148, label %149, label %160

149:                                              ; preds = %145
  %150 = load %struct.rtl_efuse*, %struct.rtl_efuse** %12, align 8
  %151 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %150, i32 0, i32 4
  %152 = load i32**, i32*** %151, align 8
  %153 = getelementptr inbounds i32*, i32** %152, i64 0
  %154 = load i32*, i32** %153, align 8
  %155 = load i64, i64* @TX_1S, align 8
  %156 = getelementptr inbounds i32, i32* %154, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %14, align 4
  %159 = add nsw i32 %158, %157
  store i32 %159, i32* %14, align 4
  br label %160

160:                                              ; preds = %149, %145, %141
  %161 = load i32, i32* @DESC92C_RATEMCS8, align 4
  %162 = load i32, i32* %8, align 4
  %163 = icmp sle i32 %161, %162
  br i1 %163, label %164, label %179

164:                                              ; preds = %160
  %165 = load i32, i32* %8, align 4
  %166 = load i32, i32* @DESC92C_RATEMCS15, align 4
  %167 = icmp sle i32 %165, %166
  br i1 %167, label %168, label %179

168:                                              ; preds = %164
  %169 = load %struct.rtl_efuse*, %struct.rtl_efuse** %12, align 8
  %170 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %169, i32 0, i32 4
  %171 = load i32**, i32*** %170, align 8
  %172 = getelementptr inbounds i32*, i32** %171, i64 0
  %173 = load i32*, i32** %172, align 8
  %174 = load i64, i64* @TX_2S, align 8
  %175 = getelementptr inbounds i32, i32* %173, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %14, align 4
  %178 = add nsw i32 %177, %176
  store i32 %178, i32* %14, align 4
  br label %179

179:                                              ; preds = %168, %164, %160
  br label %180

180:                                              ; preds = %179, %137
  br label %181

181:                                              ; preds = %180, %136
  %182 = load %struct.rtl_efuse*, %struct.rtl_efuse** %12, align 8
  %183 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %182, i32 0, i32 5
  %184 = load i32, i32* %183, align 8
  %185 = icmp ne i32 %184, 2
  br i1 %185, label %186, label %192

186:                                              ; preds = %181
  %187 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %188 = load i32, i32* @BAND_ON_2_4G, align 4
  %189 = load i32, i32* %7, align 4
  %190 = load i32, i32* %8, align 4
  %191 = call i32 @_rtl8723be_get_txpower_by_rate(%struct.ieee80211_hw* %187, i32 %188, i32 %189, i32 %190)
  store i32 %191, i32* %15, align 4
  br label %192

192:                                              ; preds = %186, %181
  %193 = load i32, i32* %15, align 4
  %194 = load i32, i32* %14, align 4
  %195 = add nsw i32 %194, %193
  store i32 %195, i32* %14, align 4
  %196 = load i32, i32* %14, align 4
  %197 = load i32, i32* @MAX_POWER_INDEX, align 4
  %198 = icmp sgt i32 %196, %197
  br i1 %198, label %199, label %201

199:                                              ; preds = %192
  %200 = load i32, i32* @MAX_POWER_INDEX, align 4
  store i32 %200, i32* %14, align 4
  br label %201

201:                                              ; preds = %199, %192
  %202 = load i32, i32* %14, align 4
  ret i32 %202
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i64 @RX_HAL_IS_CCK_RATE(i32) #1

declare dso_local i32 @_rtl8723be_get_txpower_by_rate(%struct.ieee80211_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
