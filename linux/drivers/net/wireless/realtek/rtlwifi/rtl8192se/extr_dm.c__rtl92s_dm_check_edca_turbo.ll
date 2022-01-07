; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_dm.c__rtl92s_dm_check_edca_turbo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_dm.c__rtl92s_dm_check_edca_turbo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.ieee80211_hw*, i32, i32*)* }
%struct.TYPE_6__ = type { i64 }
%struct.rtl_mac = type { i64, i64, i64 }

@_rtl92s_dm_check_edca_turbo.last_txok_cnt = internal global i32 0, align 4
@_rtl92s_dm_check_edca_turbo.last_rxok_cnt = internal global i32 0, align 4
@edca_setting_ul = common dso_local global i32* null, align 8
@edca_setting_dl = common dso_local global i32* null, align 8
@edca_setting_dl_gmode = common dso_local global i32* null, align 8
@MAC80211_LINKED = common dso_local global i64 0, align 8
@RF_1T2R = common dso_local global i64 0, align 8
@EDCAPARA_BE = common dso_local global i32 0, align 4
@WIRELESS_MODE_G = common dso_local global i64 0, align 8
@WIRELESS_MODE_B = common dso_local global i64 0, align 8
@AC0_BE = common dso_local global i32 0, align 4
@HW_VAR_AC_PARAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @_rtl92s_dm_check_edca_turbo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92s_dm_check_edca_turbo(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_mac*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %12 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %11)
  store %struct.rtl_priv* %12, %struct.rtl_priv** %3, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %14 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %13)
  %15 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %14)
  store %struct.rtl_mac* %15, %struct.rtl_mac** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %16 = load i32*, i32** @edca_setting_ul, align 8
  %17 = load %struct.rtl_mac*, %struct.rtl_mac** %4, align 8
  %18 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  %22 = load i32*, i32** @edca_setting_dl, align 8
  %23 = load %struct.rtl_mac*, %struct.rtl_mac** %4, align 8
  %24 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  %28 = load i32*, i32** @edca_setting_dl_gmode, align 8
  %29 = load %struct.rtl_mac*, %struct.rtl_mac** %4, align 8
  %30 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %9, align 4
  %34 = load %struct.rtl_mac*, %struct.rtl_mac** %4, align 8
  %35 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @MAC80211_LINKED, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %1
  %40 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %41 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  store i32 0, i32* %42, align 8
  br label %236

43:                                               ; preds = %1
  %44 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %45 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %213, label %49

49:                                               ; preds = %43
  %50 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %51 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %213, label %55

55:                                               ; preds = %49
  %56 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %57 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @_rtl92s_dm_check_edca_turbo.last_txok_cnt, align 4
  %61 = sub nsw i32 %59, %60
  store i32 %61, i32* %5, align 4
  %62 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %63 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @_rtl92s_dm_check_edca_turbo.last_rxok_cnt, align 4
  %67 = sub nsw i32 %65, %66
  store i32 %67, i32* %6, align 4
  %68 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %69 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @RF_1T2R, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %143

74:                                               ; preds = %55
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* %6, align 4
  %77 = mul nsw i32 4, %76
  %78 = icmp sgt i32 %75, %77
  br i1 %78, label %79, label %100

79:                                               ; preds = %74
  %80 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %81 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %91, label %85

85:                                               ; preds = %79
  %86 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %87 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %99, label %91

91:                                               ; preds = %85, %79
  %92 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %93 = load i32, i32* @EDCAPARA_BE, align 4
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @rtl_write_dword(%struct.rtl_priv* %92, i32 %93, i32 %94)
  %96 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %97 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 2
  store i32 0, i32* %98, align 8
  br label %99

99:                                               ; preds = %91, %85
  br label %139

100:                                              ; preds = %74
  %101 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %102 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %100
  %107 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %108 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %138, label %112

112:                                              ; preds = %106, %100
  %113 = load %struct.rtl_mac*, %struct.rtl_mac** %4, align 8
  %114 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @WIRELESS_MODE_G, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %124, label %118

118:                                              ; preds = %112
  %119 = load %struct.rtl_mac*, %struct.rtl_mac** %4, align 8
  %120 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @WIRELESS_MODE_B, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %129

124:                                              ; preds = %118, %112
  %125 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %126 = load i32, i32* @EDCAPARA_BE, align 4
  %127 = load i32, i32* %9, align 4
  %128 = call i32 @rtl_write_dword(%struct.rtl_priv* %125, i32 %126, i32 %127)
  br label %134

129:                                              ; preds = %118
  %130 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %131 = load i32, i32* @EDCAPARA_BE, align 4
  %132 = load i32, i32* %8, align 4
  %133 = call i32 @rtl_write_dword(%struct.rtl_priv* %130, i32 %131, i32 %132)
  br label %134

134:                                              ; preds = %129, %124
  %135 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %136 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 2
  store i32 1, i32* %137, align 8
  br label %138

138:                                              ; preds = %134, %106
  br label %139

139:                                              ; preds = %138, %99
  %140 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %141 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 0
  store i32 1, i32* %142, align 8
  br label %212

143:                                              ; preds = %55
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* %5, align 4
  %146 = mul nsw i32 4, %145
  %147 = icmp sgt i32 %144, %146
  br i1 %147, label %148, label %187

148:                                              ; preds = %143
  %149 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %150 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %148
  %155 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %156 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %186, label %160

160:                                              ; preds = %154, %148
  %161 = load %struct.rtl_mac*, %struct.rtl_mac** %4, align 8
  %162 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @WIRELESS_MODE_G, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %172, label %166

166:                                              ; preds = %160
  %167 = load %struct.rtl_mac*, %struct.rtl_mac** %4, align 8
  %168 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @WIRELESS_MODE_B, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %177

172:                                              ; preds = %166, %160
  %173 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %174 = load i32, i32* @EDCAPARA_BE, align 4
  %175 = load i32, i32* %9, align 4
  %176 = call i32 @rtl_write_dword(%struct.rtl_priv* %173, i32 %174, i32 %175)
  br label %182

177:                                              ; preds = %166
  %178 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %179 = load i32, i32* @EDCAPARA_BE, align 4
  %180 = load i32, i32* %8, align 4
  %181 = call i32 @rtl_write_dword(%struct.rtl_priv* %178, i32 %179, i32 %180)
  br label %182

182:                                              ; preds = %177, %172
  %183 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %184 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 2
  store i32 1, i32* %185, align 8
  br label %186

186:                                              ; preds = %182, %154
  br label %208

187:                                              ; preds = %143
  %188 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %189 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %199, label %193

193:                                              ; preds = %187
  %194 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %195 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %207, label %199

199:                                              ; preds = %193, %187
  %200 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %201 = load i32, i32* @EDCAPARA_BE, align 4
  %202 = load i32, i32* %7, align 4
  %203 = call i32 @rtl_write_dword(%struct.rtl_priv* %200, i32 %201, i32 %202)
  %204 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %205 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 2
  store i32 0, i32* %206, align 8
  br label %207

207:                                              ; preds = %199, %193
  br label %208

208:                                              ; preds = %207, %186
  %209 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %210 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 0
  store i32 1, i32* %211, align 8
  br label %212

212:                                              ; preds = %208, %139
  br label %235

213:                                              ; preds = %49, %43
  %214 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %215 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %234

219:                                              ; preds = %213
  %220 = load i32, i32* @AC0_BE, align 4
  store i32 %220, i32* %10, align 4
  %221 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %222 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %221, i32 0, i32 2
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 0
  %225 = load %struct.TYPE_7__*, %struct.TYPE_7__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 0
  %227 = load i32 (%struct.ieee80211_hw*, i32, i32*)*, i32 (%struct.ieee80211_hw*, i32, i32*)** %226, align 8
  %228 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %229 = load i32, i32* @HW_VAR_AC_PARAM, align 4
  %230 = call i32 %227(%struct.ieee80211_hw* %228, i32 %229, i32* %10)
  %231 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %232 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 0
  store i32 0, i32* %233, align 8
  br label %234

234:                                              ; preds = %219, %213
  br label %235

235:                                              ; preds = %234, %212
  br label %236

236:                                              ; preds = %235, %39
  %237 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %238 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 1
  store i32 0, i32* %239, align 4
  %240 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %241 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  store i32 %243, i32* @_rtl92s_dm_check_edca_turbo.last_txok_cnt, align 4
  %244 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %245 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  store i32 %247, i32* @_rtl92s_dm_check_edca_turbo.last_rxok_cnt, align 4
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
