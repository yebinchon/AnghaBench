; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_hw.c_rtl92de_update_hal_rate_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_hw.c_rtl92de_update_hal_rate_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_sta = type { i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i32 }
%struct.rtl_mac = type { i32, i32, i32 }
%struct.rtl_hal = type { i64 }

@IEEE80211_SMPS_OFF = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_40 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_20 = common dso_local global i32 0, align 4
@BAND_ON_5G = common dso_local global i64 0, align 8
@IEEE80211_SMPS_STATIC = common dso_local global i32 0, align 4
@RF_1T2R = common dso_local global i32 0, align 4
@RF_1T1R = common dso_local global i32 0, align 4
@REG_ARFR0 = common dso_local global i64 0, align 8
@COMP_RATR = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_sta*)* @rtl92de_update_hal_rate_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl92de_update_hal_rate_table(%struct.ieee80211_hw* %0, %struct.ieee80211_sta* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_sta*, align 8
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.rtl_phy*, align 8
  %7 = alloca %struct.rtl_mac*, align 8
  %8 = alloca %struct.rtl_hal*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %4, align 8
  %20 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %21 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %20)
  store %struct.rtl_priv* %21, %struct.rtl_priv** %5, align 8
  %22 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %23 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %22, i32 0, i32 0
  store %struct.rtl_phy* %23, %struct.rtl_phy** %6, align 8
  %24 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %25 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %24)
  %26 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %25)
  store %struct.rtl_mac* %26, %struct.rtl_mac** %7, align 8
  %27 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %28 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %27)
  %29 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %28)
  store %struct.rtl_hal* %29, %struct.rtl_hal** %8, align 8
  store i32 0, i32* %10, align 4
  %30 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %31 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* @IEEE80211_SMPS_OFF, align 4
  store i32 %33, i32* %12, align 4
  %34 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %35 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %15, align 4
  %37 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %4, align 8
  %38 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @IEEE80211_HT_CAP_SGI_40, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 1, i32 0
  store i32 %45, i32* %16, align 4
  %46 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %4, align 8
  %47 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @IEEE80211_HT_CAP_SGI_20, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 1, i32 0
  store i32 %54, i32* %17, align 4
  %55 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %56 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %18, align 4
  %58 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %59 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @BAND_ON_5G, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %2
  %64 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %4, align 8
  %65 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = shl i32 %68, 4
  store i32 %69, i32* %9, align 4
  br label %76

70:                                               ; preds = %2
  %71 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %4, align 8
  %72 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %70, %63
  %77 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %4, align 8
  %78 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  %83 = load i32, i32* %82, align 4
  %84 = shl i32 %83, 20
  %85 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %4, align 8
  %86 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = shl i32 %91, 12
  %93 = or i32 %84, %92
  %94 = load i32, i32* %9, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %18, align 4
  switch i32 %96, label %138 [
    i32 132, label %97
    i32 131, label %100
    i32 130, label %111
    i32 129, label %114
    i32 128, label %114
  ]

97:                                               ; preds = %76
  %98 = load i32, i32* %9, align 4
  %99 = and i32 %98, 4080
  store i32 %99, i32* %9, align 4
  br label %151

100:                                              ; preds = %76
  %101 = load i32, i32* %9, align 4
  %102 = and i32 %101, 12
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = load i32, i32* %9, align 4
  %106 = and i32 %105, 13
  store i32 %106, i32* %9, align 4
  br label %110

107:                                              ; preds = %100
  %108 = load i32, i32* %9, align 4
  %109 = and i32 %108, 15
  store i32 %109, i32* %9, align 4
  br label %110

110:                                              ; preds = %107, %104
  br label %151

111:                                              ; preds = %76
  %112 = load i32, i32* %9, align 4
  %113 = and i32 %112, 4085
  store i32 %113, i32* %9, align 4
  br label %151

114:                                              ; preds = %76, %76
  store i32 1, i32* %11, align 4
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* @IEEE80211_SMPS_STATIC, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %114
  %119 = load i32, i32* %9, align 4
  %120 = and i32 %119, 520197
  store i32 %120, i32* %9, align 4
  br label %137

121:                                              ; preds = %114
  %122 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %123 = call i32 @get_rf_type(%struct.rtl_phy* %122)
  %124 = load i32, i32* @RF_1T2R, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %131, label %126

126:                                              ; preds = %121
  %127 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %128 = call i32 @get_rf_type(%struct.rtl_phy* %127)
  %129 = load i32, i32* @RF_1T1R, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %126, %121
  store i32 1044485, i32* %19, align 4
  br label %133

132:                                              ; preds = %126
  store i32 252702725, i32* %19, align 4
  br label %133

133:                                              ; preds = %132, %131
  %134 = load i32, i32* %19, align 4
  %135 = load i32, i32* %9, align 4
  %136 = and i32 %135, %134
  store i32 %136, i32* %9, align 4
  br label %137

137:                                              ; preds = %133, %118
  br label %151

138:                                              ; preds = %76
  %139 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %140 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @RF_1T2R, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %138
  %145 = load i32, i32* %9, align 4
  %146 = and i32 %145, 1044735
  store i32 %146, i32* %9, align 4
  br label %150

147:                                              ; preds = %138
  %148 = load i32, i32* %9, align 4
  %149 = and i32 %148, 252702975
  store i32 %149, i32* %9, align 4
  br label %150

150:                                              ; preds = %147, %144
  br label %151

151:                                              ; preds = %150, %137, %111, %110, %97
  %152 = load i32, i32* %9, align 4
  %153 = and i32 %152, 268435455
  store i32 %153, i32* %9, align 4
  %154 = load i32, i32* %11, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %198

156:                                              ; preds = %151
  %157 = load i32, i32* %15, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %156
  %160 = load i32, i32* %16, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %168, label %162

162:                                              ; preds = %159, %156
  %163 = load i32, i32* %15, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %198, label %165

165:                                              ; preds = %162
  %166 = load i32, i32* %17, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %198

168:                                              ; preds = %165, %159
  %169 = load i32, i32* %9, align 4
  %170 = or i32 %169, 268435456
  store i32 %170, i32* %9, align 4
  %171 = load i32, i32* %9, align 4
  %172 = ashr i32 %171, 12
  store i32 %172, i32* %14, align 4
  store i32 15, i32* %13, align 4
  br label %173

173:                                              ; preds = %184, %168
  %174 = load i32, i32* %13, align 4
  %175 = icmp sgt i32 %174, 0
  br i1 %175, label %176, label %187

176:                                              ; preds = %173
  %177 = load i32, i32* %13, align 4
  %178 = shl i32 1, %177
  %179 = load i32, i32* %14, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %176
  br label %187

183:                                              ; preds = %176
  br label %184

184:                                              ; preds = %183
  %185 = load i32, i32* %13, align 4
  %186 = add nsw i32 %185, -1
  store i32 %186, i32* %13, align 4
  br label %173

187:                                              ; preds = %182, %173
  %188 = load i32, i32* %13, align 4
  %189 = shl i32 %188, 12
  %190 = load i32, i32* %13, align 4
  %191 = shl i32 %190, 8
  %192 = or i32 %189, %191
  %193 = load i32, i32* %13, align 4
  %194 = shl i32 %193, 4
  %195 = or i32 %192, %194
  %196 = load i32, i32* %13, align 4
  %197 = or i32 %195, %196
  store i32 %197, i32* %13, align 4
  br label %198

198:                                              ; preds = %187, %165, %162, %151
  %199 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %200 = load i64, i64* @REG_ARFR0, align 8
  %201 = load i32, i32* %10, align 4
  %202 = mul nsw i32 %201, 4
  %203 = sext i32 %202 to i64
  %204 = add nsw i64 %200, %203
  %205 = load i32, i32* %9, align 4
  %206 = call i32 @rtl_write_dword(%struct.rtl_priv* %199, i64 %204, i32 %205)
  %207 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %208 = load i32, i32* @COMP_RATR, align 4
  %209 = load i32, i32* @DBG_DMESG, align 4
  %210 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %211 = load i64, i64* @REG_ARFR0, align 8
  %212 = call i32 @rtl_read_dword(%struct.rtl_priv* %210, i64 %211)
  %213 = call i32 @RT_TRACE(%struct.rtl_priv* %207, i32 %208, i32 %209, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %212)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @get_rf_type(%struct.rtl_phy*) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i64, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32) #1

declare dso_local i32 @rtl_read_dword(%struct.rtl_priv*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
