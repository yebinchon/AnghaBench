; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_hw.c_rtl92cu_update_hal_rate_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_hw.c_rtl92cu_update_hal_rate_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_sta = type { i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i32 }
%struct.rtl_mac = type { i32, i32, i32, i64 }
%struct.rtl_hal = type { i64 }

@IEEE80211_SMPS_OFF = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_40 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_20 = common dso_local global i32 0, align 4
@BAND_ON_5G = common dso_local global i64 0, align 8
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@IEEE80211_SMPS_STATIC = common dso_local global i32 0, align 4
@RF_1T2R = common dso_local global i32 0, align 4
@RF_1T1R = common dso_local global i32 0, align 4
@REG_ARFR0 = common dso_local global i64 0, align 8
@COMP_RATR = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_sta*)* @rtl92cu_update_hal_rate_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl92cu_update_hal_rate_table(%struct.ieee80211_hw* %0, %struct.ieee80211_sta* %1) #0 {
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
  %32 = load i32, i32* %31, align 8
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
  %57 = load i32, i32* %56, align 8
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
  %77 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %78 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  store i32 4095, i32* %9, align 4
  br label %83

83:                                               ; preds = %82, %76
  %84 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %4, align 8
  %85 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = shl i32 %90, 20
  %92 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %4, align 8
  %93 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = load i32, i32* %97, align 4
  %99 = shl i32 %98, 12
  %100 = or i32 %91, %99
  %101 = load i32, i32* %9, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %18, align 4
  switch i32 %103, label %142 [
    i32 131, label %104
    i32 130, label %115
    i32 129, label %118
    i32 128, label %118
  ]

104:                                              ; preds = %83
  %105 = load i32, i32* %9, align 4
  %106 = and i32 %105, 12
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = load i32, i32* %9, align 4
  %110 = and i32 %109, 13
  store i32 %110, i32* %9, align 4
  br label %114

111:                                              ; preds = %104
  %112 = load i32, i32* %9, align 4
  %113 = and i32 %112, 15
  store i32 %113, i32* %9, align 4
  br label %114

114:                                              ; preds = %111, %108
  br label %155

115:                                              ; preds = %83
  %116 = load i32, i32* %9, align 4
  %117 = and i32 %116, 4085
  store i32 %117, i32* %9, align 4
  br label %155

118:                                              ; preds = %83, %83
  store i32 1, i32* %11, align 4
  %119 = load i32, i32* %12, align 4
  %120 = load i32, i32* @IEEE80211_SMPS_STATIC, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %118
  %123 = load i32, i32* %9, align 4
  %124 = and i32 %123, 520197
  store i32 %124, i32* %9, align 4
  br label %141

125:                                              ; preds = %118
  %126 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %127 = call i32 @get_rf_type(%struct.rtl_phy* %126)
  %128 = load i32, i32* @RF_1T2R, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %135, label %130

130:                                              ; preds = %125
  %131 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %132 = call i32 @get_rf_type(%struct.rtl_phy* %131)
  %133 = load i32, i32* @RF_1T1R, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %130, %125
  store i32 1044485, i32* %19, align 4
  br label %137

136:                                              ; preds = %130
  store i32 252702725, i32* %19, align 4
  br label %137

137:                                              ; preds = %136, %135
  %138 = load i32, i32* %19, align 4
  %139 = load i32, i32* %9, align 4
  %140 = and i32 %139, %138
  store i32 %140, i32* %9, align 4
  br label %141

141:                                              ; preds = %137, %122
  br label %155

142:                                              ; preds = %83
  %143 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %144 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @RF_1T2R, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %142
  %149 = load i32, i32* %9, align 4
  %150 = and i32 %149, 1044735
  store i32 %150, i32* %9, align 4
  br label %154

151:                                              ; preds = %142
  %152 = load i32, i32* %9, align 4
  %153 = and i32 %152, 252702975
  store i32 %153, i32* %9, align 4
  br label %154

154:                                              ; preds = %151, %148
  br label %155

155:                                              ; preds = %154, %141, %115, %114
  %156 = load i32, i32* %9, align 4
  %157 = and i32 %156, 268435455
  store i32 %157, i32* %9, align 4
  %158 = load i32, i32* %11, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %202

160:                                              ; preds = %155
  %161 = load i32, i32* %15, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %160
  %164 = load i32, i32* %16, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %172, label %166

166:                                              ; preds = %163, %160
  %167 = load i32, i32* %15, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %202, label %169

169:                                              ; preds = %166
  %170 = load i32, i32* %17, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %202

172:                                              ; preds = %169, %163
  %173 = load i32, i32* %9, align 4
  %174 = or i32 %173, 268435456
  store i32 %174, i32* %9, align 4
  %175 = load i32, i32* %9, align 4
  %176 = ashr i32 %175, 12
  store i32 %176, i32* %14, align 4
  store i32 15, i32* %13, align 4
  br label %177

177:                                              ; preds = %188, %172
  %178 = load i32, i32* %13, align 4
  %179 = icmp sgt i32 %178, 0
  br i1 %179, label %180, label %191

180:                                              ; preds = %177
  %181 = load i32, i32* %13, align 4
  %182 = shl i32 1, %181
  %183 = load i32, i32* %14, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %180
  br label %191

187:                                              ; preds = %180
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %13, align 4
  %190 = add nsw i32 %189, -1
  store i32 %190, i32* %13, align 4
  br label %177

191:                                              ; preds = %186, %177
  %192 = load i32, i32* %13, align 4
  %193 = shl i32 %192, 12
  %194 = load i32, i32* %13, align 4
  %195 = shl i32 %194, 8
  %196 = or i32 %193, %195
  %197 = load i32, i32* %13, align 4
  %198 = shl i32 %197, 4
  %199 = or i32 %196, %198
  %200 = load i32, i32* %13, align 4
  %201 = or i32 %199, %200
  store i32 %201, i32* %13, align 4
  br label %202

202:                                              ; preds = %191, %169, %166, %155
  %203 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %204 = load i64, i64* @REG_ARFR0, align 8
  %205 = load i32, i32* %10, align 4
  %206 = mul nsw i32 %205, 4
  %207 = sext i32 %206 to i64
  %208 = add nsw i64 %204, %207
  %209 = load i32, i32* %9, align 4
  %210 = call i32 @rtl_write_dword(%struct.rtl_priv* %203, i64 %208, i32 %209)
  %211 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %212 = load i32, i32* @COMP_RATR, align 4
  %213 = load i32, i32* @DBG_DMESG, align 4
  %214 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %215 = load i64, i64* @REG_ARFR0, align 8
  %216 = call i32 @rtl_read_dword(%struct.rtl_priv* %214, i64 %215)
  %217 = call i32 @RT_TRACE(%struct.rtl_priv* %211, i32 %212, i32 %213, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %216)
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
