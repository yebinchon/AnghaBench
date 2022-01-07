; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_phy.c__rtl92ee_get_txpower_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_phy.c__rtl92ee_get_txpower_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_efuse = type { i32**, i32**, i32**, i32**, i32**, i32 }

@COMP_POWER_TRACKING = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Illegal channel!!\0A\00", align 1
@DESC92C_RATE6M = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32, i32, i32, i32)* @_rtl92ee_get_txpower_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl92ee_get_txpower_index(%struct.ieee80211_hw* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
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
  %18 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %19 = call %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv* %18)
  store %struct.rtl_efuse* %19, %struct.rtl_efuse** %12, align 8
  %20 = load i32, i32* %10, align 4
  %21 = sub nsw i32 %20, 1
  store i32 %21, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %22, 1
  br i1 %23, label %27, label %24

24:                                               ; preds = %5
  %25 = load i32, i32* %10, align 4
  %26 = icmp sgt i32 %25, 14
  br i1 %26, label %27, label %32

27:                                               ; preds = %24, %5
  store i32 0, i32* %13, align 4
  %28 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %29 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %30 = load i32, i32* @DBG_DMESG, align 4
  %31 = call i32 @RT_TRACE(%struct.rtl_priv* %28, i32 %29, i32 %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %27, %24
  %33 = load i32, i32* %8, align 4
  %34 = call i64 @IS_CCK_RATE(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %32
  %37 = load %struct.rtl_efuse*, %struct.rtl_efuse** %12, align 8
  %38 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %37, i32 0, i32 0
  %39 = load i32**, i32*** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32*, i32** %39, i64 %41
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %13, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %14, align 4
  br label %65

48:                                               ; preds = %32
  %49 = load i32, i32* @DESC92C_RATE6M, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp sle i32 %49, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %48
  %53 = load %struct.rtl_efuse*, %struct.rtl_efuse** %12, align 8
  %54 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %53, i32 0, i32 1
  %55 = load i32**, i32*** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32*, i32** %55, i64 %57
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %14, align 4
  br label %64

64:                                               ; preds = %52, %48
  br label %65

65:                                               ; preds = %64, %36
  %66 = load i32, i32* @DESC92C_RATE6M, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp sle i32 %66, %67
  br i1 %68, label %69, label %90

69:                                               ; preds = %65
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @DESC92C_RATE54M, align 4
  %72 = icmp sle i32 %70, %71
  br i1 %72, label %73, label %90

73:                                               ; preds = %69
  %74 = load i32, i32* %8, align 4
  %75 = call i64 @IS_CCK_RATE(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %90, label %77

77:                                               ; preds = %73
  %78 = load %struct.rtl_efuse*, %struct.rtl_efuse** %12, align 8
  %79 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %78, i32 0, i32 2
  %80 = load i32**, i32*** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i32*, i32** %80, i64 %82
  %84 = load i32*, i32** %83, align 8
  %85 = load i64, i64* @TX_1S, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %14, align 4
  %89 = add nsw i32 %88, %87
  store i32 %89, i32* %14, align 4
  br label %90

90:                                               ; preds = %77, %73, %69, %65
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @HT_CHANNEL_WIDTH_20, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %137

94:                                               ; preds = %90
  %95 = load i32, i32* @DESC92C_RATEMCS0, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp sle i32 %95, %96
  br i1 %97, label %98, label %115

98:                                               ; preds = %94
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* @DESC92C_RATEMCS15, align 4
  %101 = icmp sle i32 %99, %100
  br i1 %101, label %102, label %115

102:                                              ; preds = %98
  %103 = load %struct.rtl_efuse*, %struct.rtl_efuse** %12, align 8
  %104 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %103, i32 0, i32 3
  %105 = load i32**, i32*** %104, align 8
  %106 = load i32, i32* %7, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i32*, i32** %105, i64 %107
  %109 = load i32*, i32** %108, align 8
  %110 = load i64, i64* @TX_1S, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %14, align 4
  %114 = add nsw i32 %113, %112
  store i32 %114, i32* %14, align 4
  br label %115

115:                                              ; preds = %102, %98, %94
  %116 = load i32, i32* @DESC92C_RATEMCS8, align 4
  %117 = load i32, i32* %8, align 4
  %118 = icmp sle i32 %116, %117
  br i1 %118, label %119, label %136

119:                                              ; preds = %115
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* @DESC92C_RATEMCS15, align 4
  %122 = icmp sle i32 %120, %121
  br i1 %122, label %123, label %136

123:                                              ; preds = %119
  %124 = load %struct.rtl_efuse*, %struct.rtl_efuse** %12, align 8
  %125 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %124, i32 0, i32 3
  %126 = load i32**, i32*** %125, align 8
  %127 = load i32, i32* %7, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds i32*, i32** %126, i64 %128
  %130 = load i32*, i32** %129, align 8
  %131 = load i64, i64* @TX_2S, align 8
  %132 = getelementptr inbounds i32, i32* %130, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %14, align 4
  %135 = add nsw i32 %134, %133
  store i32 %135, i32* %14, align 4
  br label %136

136:                                              ; preds = %123, %119, %115
  br label %185

137:                                              ; preds = %90
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* @HT_CHANNEL_WIDTH_20_40, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %184

141:                                              ; preds = %137
  %142 = load i32, i32* @DESC92C_RATEMCS0, align 4
  %143 = load i32, i32* %8, align 4
  %144 = icmp sle i32 %142, %143
  br i1 %144, label %145, label %162

145:                                              ; preds = %141
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* @DESC92C_RATEMCS15, align 4
  %148 = icmp sle i32 %146, %147
  br i1 %148, label %149, label %162

149:                                              ; preds = %145
  %150 = load %struct.rtl_efuse*, %struct.rtl_efuse** %12, align 8
  %151 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %150, i32 0, i32 4
  %152 = load i32**, i32*** %151, align 8
  %153 = load i32, i32* %7, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds i32*, i32** %152, i64 %154
  %156 = load i32*, i32** %155, align 8
  %157 = load i64, i64* @TX_1S, align 8
  %158 = getelementptr inbounds i32, i32* %156, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %14, align 4
  %161 = add nsw i32 %160, %159
  store i32 %161, i32* %14, align 4
  br label %162

162:                                              ; preds = %149, %145, %141
  %163 = load i32, i32* @DESC92C_RATEMCS8, align 4
  %164 = load i32, i32* %8, align 4
  %165 = icmp sle i32 %163, %164
  br i1 %165, label %166, label %183

166:                                              ; preds = %162
  %167 = load i32, i32* %8, align 4
  %168 = load i32, i32* @DESC92C_RATEMCS15, align 4
  %169 = icmp sle i32 %167, %168
  br i1 %169, label %170, label %183

170:                                              ; preds = %166
  %171 = load %struct.rtl_efuse*, %struct.rtl_efuse** %12, align 8
  %172 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %171, i32 0, i32 4
  %173 = load i32**, i32*** %172, align 8
  %174 = load i32, i32* %7, align 4
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds i32*, i32** %173, i64 %175
  %177 = load i32*, i32** %176, align 8
  %178 = load i64, i64* @TX_2S, align 8
  %179 = getelementptr inbounds i32, i32* %177, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %14, align 4
  %182 = add nsw i32 %181, %180
  store i32 %182, i32* %14, align 4
  br label %183

183:                                              ; preds = %170, %166, %162
  br label %184

184:                                              ; preds = %183, %137
  br label %185

185:                                              ; preds = %184, %136
  %186 = load %struct.rtl_efuse*, %struct.rtl_efuse** %12, align 8
  %187 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %186, i32 0, i32 5
  %188 = load i32, i32* %187, align 8
  %189 = icmp ne i32 %188, 2
  br i1 %189, label %190, label %196

190:                                              ; preds = %185
  %191 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %192 = load i32, i32* @BAND_ON_2_4G, align 4
  %193 = load i32, i32* %7, align 4
  %194 = load i32, i32* %8, align 4
  %195 = call i32 @_rtl92ee_get_txpower_by_rate(%struct.ieee80211_hw* %191, i32 %192, i32 %193, i32 %194)
  store i32 %195, i32* %15, align 4
  br label %196

196:                                              ; preds = %190, %185
  %197 = load i32, i32* %15, align 4
  %198 = load i32, i32* %14, align 4
  %199 = add nsw i32 %198, %197
  store i32 %199, i32* %14, align 4
  %200 = load i32, i32* %14, align 4
  %201 = load i32, i32* @MAX_POWER_INDEX, align 4
  %202 = icmp sgt i32 %200, %201
  br i1 %202, label %203, label %205

203:                                              ; preds = %196
  %204 = load i32, i32* @MAX_POWER_INDEX, align 4
  store i32 %204, i32* %14, align 4
  br label %205

205:                                              ; preds = %203, %196
  %206 = load i32, i32* %14, align 4
  ret i32 %206
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i64 @IS_CCK_RATE(i32) #1

declare dso_local i32 @_rtl92ee_get_txpower_by_rate(%struct.ieee80211_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
