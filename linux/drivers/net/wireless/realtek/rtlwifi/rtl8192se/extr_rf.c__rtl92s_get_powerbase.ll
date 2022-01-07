; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_rf.c__rtl92s_get_powerbase.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_rf.c__rtl92s_get_powerbase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i64 }
%struct.rtl_efuse = type { i32, i32, i32**, i32**, i32, i32**, i32** }

@RF90_PATH_A = common dso_local global i64 0, align 8
@HT_CHANNEL_WIDTH_20 = common dso_local global i64 0, align 8
@HT_CHANNEL_WIDTH_20_40 = common dso_local global i64 0, align 8
@RF90_PATH_B = common dso_local global i64 0, align 8
@COMP_POWER = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"40MHz finalpwr_idx (A / B) = 0x%x / 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"20MHz finalpwr_idx (A / B) = 0x%x / 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32*, i32, i32*, i32*, i32*)* @_rtl92s_get_powerbase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92s_get_powerbase(%struct.ieee80211_hw* %0, i32* %1, i32 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.ieee80211_hw*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.rtl_priv*, align 8
  %14 = alloca %struct.rtl_phy*, align 8
  %15 = alloca %struct.rtl_efuse*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca [4 x i32], align 16
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %22 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %23 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %22)
  store %struct.rtl_priv* %23, %struct.rtl_priv** %13, align 8
  %24 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %25 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %24, i32 0, i32 0
  store %struct.rtl_phy* %25, %struct.rtl_phy** %14, align 8
  %26 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %27 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %26)
  %28 = call %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv* %27)
  store %struct.rtl_efuse* %28, %struct.rtl_efuse** %15, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  br label %29

29:                                               ; preds = %41, %6
  %30 = load i32, i32* %20, align 4
  %31 = icmp slt i32 %30, 2
  br i1 %31, label %32, label %44

32:                                               ; preds = %29
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* %20, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %20, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 %39
  store i32 %37, i32* %40, align 4
  br label %41

41:                                               ; preds = %32
  %42 = load i32, i32* %20, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %20, align 4
  br label %29

44:                                               ; preds = %29
  %45 = load %struct.rtl_efuse*, %struct.rtl_efuse** %15, align 8
  %46 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %47, 2
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 0
  %51 = load i32, i32* %50, align 16
  %52 = load %struct.rtl_efuse*, %struct.rtl_efuse** %15, align 8
  %53 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, 15
  %56 = add nsw i32 %51, %55
  store i32 %56, i32* %16, align 4
  br label %73

57:                                               ; preds = %44
  %58 = load %struct.rtl_efuse*, %struct.rtl_efuse** %15, align 8
  %59 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %58, i32 0, i32 2
  %60 = load i32**, i32*** %59, align 8
  %61 = load i64, i64* @RF90_PATH_A, align 8
  %62 = getelementptr inbounds i32*, i32** %60, i64 %61
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %63, i64 %66
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %18, align 4
  %69 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 0
  %70 = load i32, i32* %69, align 16
  %71 = load i32, i32* %18, align 4
  %72 = add nsw i32 %70, %71
  store i32 %72, i32* %16, align 4
  br label %73

73:                                               ; preds = %57, %49
  %74 = load i32, i32* %16, align 4
  %75 = shl i32 %74, 24
  %76 = load i32, i32* %16, align 4
  %77 = shl i32 %76, 16
  %78 = or i32 %75, %77
  %79 = load i32, i32* %16, align 4
  %80 = shl i32 %79, 8
  %81 = or i32 %78, %80
  %82 = load i32, i32* %16, align 4
  %83 = or i32 %81, %82
  store i32 %83, i32* %16, align 4
  %84 = load i32, i32* %16, align 4
  %85 = load i32*, i32** %10, align 8
  store i32 %84, i32* %85, align 4
  %86 = load %struct.rtl_efuse*, %struct.rtl_efuse** %15, align 8
  %87 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp sge i32 %88, 2
  br i1 %89, label %90, label %136

90:                                               ; preds = %73
  %91 = load %struct.rtl_phy*, %struct.rtl_phy** %14, align 8
  %92 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @HT_CHANNEL_WIDTH_20, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %135

96:                                               ; preds = %90
  store i32 0, i32* %20, align 4
  br label %97

97:                                               ; preds = %131, %96
  %98 = load i32, i32* %20, align 4
  %99 = icmp slt i32 %98, 2
  br i1 %99, label %100, label %134

100:                                              ; preds = %97
  %101 = load %struct.rtl_efuse*, %struct.rtl_efuse** %15, align 8
  %102 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %101, i32 0, i32 3
  %103 = load i32**, i32*** %102, align 8
  %104 = load i32, i32* %20, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32*, i32** %103, i64 %105
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sub nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %107, i64 %110
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %19, align 4
  %113 = load i32, i32* %19, align 4
  %114 = icmp slt i32 %113, 8
  br i1 %114, label %115, label %122

115:                                              ; preds = %100
  %116 = load i32, i32* %19, align 4
  %117 = load i32, i32* %20, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, %116
  store i32 %121, i32* %119, align 4
  br label %130

122:                                              ; preds = %100
  %123 = load i32, i32* %19, align 4
  %124 = sub nsw i32 16, %123
  %125 = load i32, i32* %20, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = sub nsw i32 %128, %124
  store i32 %129, i32* %127, align 4
  br label %130

130:                                              ; preds = %122, %115
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %20, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %20, align 4
  br label %97

134:                                              ; preds = %97
  br label %135

135:                                              ; preds = %134, %90
  br label %136

136:                                              ; preds = %135, %73
  %137 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 0
  %138 = load i32, i32* %137, align 16
  store i32 %138, i32* %17, align 4
  %139 = load i32, i32* %17, align 4
  %140 = shl i32 %139, 24
  %141 = load i32, i32* %17, align 4
  %142 = shl i32 %141, 16
  %143 = or i32 %140, %142
  %144 = load i32, i32* %17, align 4
  %145 = shl i32 %144, 8
  %146 = or i32 %143, %145
  %147 = load i32, i32* %17, align 4
  %148 = or i32 %146, %147
  store i32 %148, i32* %17, align 4
  %149 = load i32, i32* %17, align 4
  %150 = load i32*, i32** %11, align 8
  store i32 %149, i32* %150, align 4
  %151 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 0
  %152 = load i32, i32* %151, align 16
  %153 = load i32*, i32** %12, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 0
  store i32 %152, i32* %154, align 4
  %155 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 1
  %156 = load i32, i32* %155, align 4
  %157 = load i32*, i32** %12, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 1
  store i32 %156, i32* %158, align 4
  %159 = load %struct.rtl_efuse*, %struct.rtl_efuse** %15, align 8
  %160 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 8
  switch i32 %161, label %231 [
    i32 3, label %162
  ]

162:                                              ; preds = %136
  %163 = load %struct.rtl_phy*, %struct.rtl_phy** %14, align 8
  %164 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @HT_CHANNEL_WIDTH_20_40, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %199

168:                                              ; preds = %162
  %169 = load %struct.rtl_efuse*, %struct.rtl_efuse** %15, align 8
  %170 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %169, i32 0, i32 6
  %171 = load i32**, i32*** %170, align 8
  %172 = load i64, i64* @RF90_PATH_A, align 8
  %173 = getelementptr inbounds i32*, i32** %171, i64 %172
  %174 = load i32*, i32** %173, align 8
  %175 = load i32, i32* %9, align 4
  %176 = sub nsw i32 %175, 1
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %174, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = load i32*, i32** %12, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 0
  %182 = load i32, i32* %181, align 4
  %183 = add nsw i32 %182, %179
  store i32 %183, i32* %181, align 4
  %184 = load %struct.rtl_efuse*, %struct.rtl_efuse** %15, align 8
  %185 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %184, i32 0, i32 6
  %186 = load i32**, i32*** %185, align 8
  %187 = load i64, i64* @RF90_PATH_B, align 8
  %188 = getelementptr inbounds i32*, i32** %186, i64 %187
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* %9, align 4
  %191 = sub nsw i32 %190, 1
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %189, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = load i32*, i32** %12, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 1
  %197 = load i32, i32* %196, align 4
  %198 = add nsw i32 %197, %194
  store i32 %198, i32* %196, align 4
  br label %230

199:                                              ; preds = %162
  %200 = load %struct.rtl_efuse*, %struct.rtl_efuse** %15, align 8
  %201 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %200, i32 0, i32 5
  %202 = load i32**, i32*** %201, align 8
  %203 = load i64, i64* @RF90_PATH_A, align 8
  %204 = getelementptr inbounds i32*, i32** %202, i64 %203
  %205 = load i32*, i32** %204, align 8
  %206 = load i32, i32* %9, align 4
  %207 = sub nsw i32 %206, 1
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %205, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = load i32*, i32** %12, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 0
  %213 = load i32, i32* %212, align 4
  %214 = add nsw i32 %213, %210
  store i32 %214, i32* %212, align 4
  %215 = load %struct.rtl_efuse*, %struct.rtl_efuse** %15, align 8
  %216 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %215, i32 0, i32 5
  %217 = load i32**, i32*** %216, align 8
  %218 = load i64, i64* @RF90_PATH_B, align 8
  %219 = getelementptr inbounds i32*, i32** %217, i64 %218
  %220 = load i32*, i32** %219, align 8
  %221 = load i32, i32* %9, align 4
  %222 = sub nsw i32 %221, 1
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %220, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = load i32*, i32** %12, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 1
  %228 = load i32, i32* %227, align 4
  %229 = add nsw i32 %228, %225
  store i32 %229, i32* %227, align 4
  br label %230

230:                                              ; preds = %199, %168
  br label %232

231:                                              ; preds = %136
  br label %232

232:                                              ; preds = %231, %230
  %233 = load %struct.rtl_phy*, %struct.rtl_phy** %14, align 8
  %234 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* @HT_CHANNEL_WIDTH_20_40, align 8
  %237 = icmp eq i64 %235, %236
  br i1 %237, label %238, label %249

238:                                              ; preds = %232
  %239 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %240 = load i32, i32* @COMP_POWER, align 4
  %241 = load i32, i32* @DBG_LOUD, align 4
  %242 = load i32*, i32** %12, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 0
  %244 = load i32, i32* %243, align 4
  %245 = load i32*, i32** %12, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 1
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @RT_TRACE(%struct.rtl_priv* %239, i32 %240, i32 %241, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %244, i32 %247)
  br label %260

249:                                              ; preds = %232
  %250 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %251 = load i32, i32* @COMP_POWER, align 4
  %252 = load i32, i32* @DBG_LOUD, align 4
  %253 = load i32*, i32** %12, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 0
  %255 = load i32, i32* %254, align 4
  %256 = load i32*, i32** %12, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 1
  %258 = load i32, i32* %257, align 4
  %259 = call i32 @RT_TRACE(%struct.rtl_priv* %250, i32 %251, i32 %252, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %255, i32 %258)
  br label %260

260:                                              ; preds = %249, %238
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
