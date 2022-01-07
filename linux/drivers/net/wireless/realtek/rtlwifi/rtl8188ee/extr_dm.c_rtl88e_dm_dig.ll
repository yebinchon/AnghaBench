; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_dm.c_rtl88e_dm_dig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_dm.c_rtl88e_dm_dig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, %struct.dig_t }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.dig_t = type { i64, i32, i64, i64, i32, i64, i64, i64, i32, i64, i32, i32 }
%struct.rtl_mac = type { i32, i64 }
%struct.rtl_efuse = type { i64 }

@MAC80211_LINKED = common dso_local global i64 0, align 8
@DIG_STA_CONNECT = common dso_local global i64 0, align 8
@DIG_STA_DISCONNECT = common dso_local global i8* null, align 8
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@DM_DIG_MAX = common dso_local global i64 0, align 8
@DM_DIG_MIN = common dso_local global i64 0, align 8
@DM_DIG_MAX_AP = common dso_local global i64 0, align 8
@CG_TRX_HW_ANTDIV = common dso_local global i64 0, align 8
@COMP_DIG = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"no link\0A\00", align 1
@DM_DIG_FA_TH2 = common dso_local global i32 0, align 4
@DM_DIG_FA_TH1 = common dso_local global i32 0, align 4
@DM_DIG_FA_TH0 = common dso_local global i32 0, align 4
@DM_DIG_FA_UPPER = common dso_local global i64 0, align 8
@DM_DIG_FA_LOWER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl88e_dm_dig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl88e_dm_dig(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_mac*, align 8
  %5 = alloca %struct.rtl_efuse*, align 8
  %6 = alloca %struct.dig_t*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %14 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %13)
  store %struct.rtl_priv* %14, %struct.rtl_priv** %3, align 8
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %16 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %15)
  %17 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %16)
  store %struct.rtl_mac* %17, %struct.rtl_mac** %4, align 8
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %19 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %18)
  %20 = call %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv* %19)
  store %struct.rtl_efuse* %20, %struct.rtl_efuse** %5, align 8
  %21 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %22 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %21, i32 0, i32 3
  store %struct.dig_t* %22, %struct.dig_t** %6, align 8
  %23 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %24 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %12, align 8
  %26 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %27 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %1
  br label %409

32:                                               ; preds = %1
  %33 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %34 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %409

38:                                               ; preds = %32
  %39 = load %struct.rtl_mac*, %struct.rtl_mac** %4, align 8
  %40 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %409

44:                                               ; preds = %38
  %45 = load %struct.rtl_mac*, %struct.rtl_mac** %4, align 8
  %46 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @MAC80211_LINKED, align 8
  %49 = icmp sge i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load i64, i64* @DIG_STA_CONNECT, align 8
  %52 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %53 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %52, i32 0, i32 2
  store i64 %51, i64* %53, align 8
  br label %59

54:                                               ; preds = %44
  %55 = load i8*, i8** @DIG_STA_DISCONNECT, align 8
  %56 = ptrtoint i8* %55 to i64
  %57 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %58 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %57, i32 0, i32 2
  store i64 %56, i64* %58, align 8
  br label %59

59:                                               ; preds = %54, %50
  %60 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %61 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %73, label %66

66:                                               ; preds = %59
  %67 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %68 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %66, %59
  %74 = load i8*, i8** @DIG_STA_DISCONNECT, align 8
  %75 = ptrtoint i8* %74 to i64
  %76 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %77 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %76, i32 0, i32 2
  store i64 %75, i64* %77, align 8
  br label %78

78:                                               ; preds = %73, %66
  %79 = load i64, i64* @DM_DIG_MAX, align 8
  store i64 %79, i64* %10, align 8
  %80 = load i64, i64* @DM_DIG_MIN, align 8
  store i64 %80, i64* %11, align 8
  %81 = load i64, i64* @DM_DIG_MAX_AP, align 8
  store i64 %81, i64* %8, align 8
  %82 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %83 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %7, align 8
  %85 = load %struct.rtl_mac*, %struct.rtl_mac** %4, align 8
  %86 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @MAC80211_LINKED, align 8
  %89 = icmp sge i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %78
  br i1 true, label %92, label %98

91:                                               ; preds = %78
  br i1 false, label %92, label %98

92:                                               ; preds = %91, %90
  %93 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %94 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  br label %98

98:                                               ; preds = %92, %91, %90
  %99 = phi i1 [ false, %91 ], [ false, %90 ], [ %97, %92 ]
  %100 = zext i1 %99 to i32
  store i32 %100, i32* %9, align 4
  %101 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %102 = call i64 @rtl88e_dm_initial_gain_min_pwdb(%struct.ieee80211_hw* %101)
  %103 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %104 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %103, i32 0, i32 5
  store i64 %102, i64* %104, align 8
  %105 = load %struct.rtl_mac*, %struct.rtl_mac** %4, align 8
  %106 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @MAC80211_LINKED, align 8
  %109 = icmp sge i64 %107, %108
  br i1 %109, label %110, label %173

110:                                              ; preds = %98
  %111 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %112 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %111, i32 0, i32 5
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %113, 20
  %115 = load i64, i64* %10, align 8
  %116 = icmp sgt i64 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %110
  %118 = load i64, i64* %10, align 8
  %119 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %120 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %119, i32 0, i32 6
  store i64 %118, i64* %120, align 8
  br label %140

121:                                              ; preds = %110
  %122 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %123 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %122, i32 0, i32 5
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %124, 20
  %126 = load i64, i64* %11, align 8
  %127 = icmp slt i64 %125, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %121
  %129 = load i64, i64* %11, align 8
  %130 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %131 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %130, i32 0, i32 6
  store i64 %129, i64* %131, align 8
  br label %139

132:                                              ; preds = %121
  %133 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %134 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %133, i32 0, i32 5
  %135 = load i64, i64* %134, align 8
  %136 = add nsw i64 %135, 20
  %137 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %138 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %137, i32 0, i32 6
  store i64 %136, i64* %138, align 8
  br label %139

139:                                              ; preds = %132, %128
  br label %140

140:                                              ; preds = %139, %117
  %141 = load %struct.rtl_efuse*, %struct.rtl_efuse** %5, align 8
  %142 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @CG_TRX_HW_ANTDIV, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %150

146:                                              ; preds = %140
  %147 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %148 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %147, i32 0, i32 7
  %149 = load i64, i64* %148, align 8
  store i64 %149, i64* %7, align 8
  br label %172

150:                                              ; preds = %140
  %151 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %152 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %151, i32 0, i32 5
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* %11, align 8
  %155 = icmp slt i64 %153, %154
  br i1 %155, label %156, label %158

156:                                              ; preds = %150
  %157 = load i64, i64* %11, align 8
  store i64 %157, i64* %7, align 8
  br label %171

158:                                              ; preds = %150
  %159 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %160 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %159, i32 0, i32 5
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* %8, align 8
  %163 = icmp slt i64 %161, %162
  br i1 %163, label %164, label %166

164:                                              ; preds = %158
  %165 = load i64, i64* %8, align 8
  store i64 %165, i64* %7, align 8
  br label %170

166:                                              ; preds = %158
  %167 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %168 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %167, i32 0, i32 5
  %169 = load i64, i64* %168, align 8
  store i64 %169, i64* %7, align 8
  br label %170

170:                                              ; preds = %166, %164
  br label %171

171:                                              ; preds = %170, %156
  br label %172

172:                                              ; preds = %171, %146
  br label %182

173:                                              ; preds = %98
  %174 = load i64, i64* %10, align 8
  %175 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %176 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %175, i32 0, i32 6
  store i64 %174, i64* %176, align 8
  %177 = load i64, i64* %11, align 8
  store i64 %177, i64* %7, align 8
  %178 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %179 = load i32, i32* @COMP_DIG, align 4
  %180 = load i32, i32* @DBG_LOUD, align 4
  %181 = call i32 @RT_TRACE(%struct.rtl_priv* %178, i32 %179, i32 %180, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %182

182:                                              ; preds = %173, %172
  %183 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %184 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = icmp sgt i32 %186, 10000
  br i1 %187, label %188, label %237

188:                                              ; preds = %182
  %189 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %190 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %189, i32 0, i32 8
  %191 = load i32, i32* %190, align 8
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %190, align 8
  %193 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %194 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %193, i32 0, i32 9
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* %12, align 8
  %197 = icmp slt i64 %195, %196
  br i1 %197, label %198, label %204

198:                                              ; preds = %188
  %199 = load i64, i64* %12, align 8
  %200 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %201 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %200, i32 0, i32 9
  store i64 %199, i64* %201, align 8
  %202 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %203 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %202, i32 0, i32 8
  store i32 1, i32* %203, align 8
  br label %204

204:                                              ; preds = %198, %188
  %205 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %206 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %205, i32 0, i32 8
  %207 = load i32, i32* %206, align 8
  %208 = icmp sge i32 %207, 3
  br i1 %208, label %209, label %236

209:                                              ; preds = %204
  %210 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %211 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %210, i32 0, i32 9
  %212 = load i64, i64* %211, align 8
  %213 = add nsw i64 %212, 1
  %214 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %215 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %214, i32 0, i32 6
  %216 = load i64, i64* %215, align 8
  %217 = icmp sgt i64 %213, %216
  br i1 %217, label %218, label %225

218:                                              ; preds = %209
  %219 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %220 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %219, i32 0, i32 6
  %221 = load i64, i64* %220, align 8
  %222 = trunc i64 %221 to i32
  %223 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %224 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %223, i32 0, i32 10
  store i32 %222, i32* %224, align 8
  br label %233

225:                                              ; preds = %209
  %226 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %227 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %226, i32 0, i32 9
  %228 = load i64, i64* %227, align 8
  %229 = add nsw i64 %228, 1
  %230 = trunc i64 %229 to i32
  %231 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %232 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %231, i32 0, i32 10
  store i32 %230, i32* %232, align 8
  br label %233

233:                                              ; preds = %225, %218
  %234 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %235 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %234, i32 0, i32 11
  store i32 3600, i32* %235, align 4
  br label %236

236:                                              ; preds = %233, %204
  br label %291

237:                                              ; preds = %182
  %238 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %239 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %238, i32 0, i32 11
  %240 = load i32, i32* %239, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %247

242:                                              ; preds = %237
  %243 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %244 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %243, i32 0, i32 11
  %245 = load i32, i32* %244, align 4
  %246 = add nsw i32 %245, -1
  store i32 %246, i32* %244, align 4
  br label %290

247:                                              ; preds = %237
  %248 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %249 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %248, i32 0, i32 8
  %250 = load i32, i32* %249, align 8
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %280

252:                                              ; preds = %247
  %253 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %254 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %253, i32 0, i32 9
  %255 = load i64, i64* %254, align 8
  %256 = sub nsw i64 %255, 1
  %257 = load i64, i64* %7, align 8
  %258 = icmp slt i64 %256, %257
  br i1 %258, label %259, label %267

259:                                              ; preds = %252
  %260 = load i64, i64* %7, align 8
  %261 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %262 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %261, i32 0, i32 9
  store i64 %260, i64* %262, align 8
  %263 = load i64, i64* %7, align 8
  %264 = trunc i64 %263 to i32
  %265 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %266 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %265, i32 0, i32 10
  store i32 %264, i32* %266, align 8
  br label %279

267:                                              ; preds = %252
  %268 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %269 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %268, i32 0, i32 9
  %270 = load i64, i64* %269, align 8
  %271 = add nsw i64 %270, -1
  store i64 %271, i64* %269, align 8
  %272 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %273 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %272, i32 0, i32 9
  %274 = load i64, i64* %273, align 8
  %275 = add nsw i64 %274, 1
  %276 = trunc i64 %275 to i32
  %277 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %278 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %277, i32 0, i32 10
  store i32 %276, i32* %278, align 8
  br label %279

279:                                              ; preds = %267, %259
  br label %289

280:                                              ; preds = %247
  %281 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %282 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %281, i32 0, i32 8
  %283 = load i32, i32* %282, align 8
  %284 = icmp eq i32 %283, 3
  br i1 %284, label %285, label %288

285:                                              ; preds = %280
  %286 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %287 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %286, i32 0, i32 8
  store i32 0, i32* %287, align 8
  br label %288

288:                                              ; preds = %285, %280
  br label %289

289:                                              ; preds = %288, %279
  br label %290

290:                                              ; preds = %289, %242
  br label %291

291:                                              ; preds = %290, %236
  %292 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %293 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %292, i32 0, i32 2
  %294 = load i64, i64* %293, align 8
  %295 = load i64, i64* @DIG_STA_CONNECT, align 8
  %296 = icmp eq i64 %294, %295
  br i1 %296, label %297, label %338

297:                                              ; preds = %291
  %298 = load i32, i32* %9, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %304

300:                                              ; preds = %297
  %301 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %302 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %301, i32 0, i32 5
  %303 = load i64, i64* %302, align 8
  store i64 %303, i64* %12, align 8
  br label %337

304:                                              ; preds = %297
  %305 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %306 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = load i32, i32* @DM_DIG_FA_TH2, align 4
  %310 = icmp sgt i32 %308, %309
  br i1 %310, label %311, label %314

311:                                              ; preds = %304
  %312 = load i64, i64* %12, align 8
  %313 = add nsw i64 %312, 2
  store i64 %313, i64* %12, align 8
  br label %336

314:                                              ; preds = %304
  %315 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %316 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = load i32, i32* @DM_DIG_FA_TH1, align 4
  %320 = icmp sgt i32 %318, %319
  br i1 %320, label %321, label %324

321:                                              ; preds = %314
  %322 = load i64, i64* %12, align 8
  %323 = add nsw i64 %322, 1
  store i64 %323, i64* %12, align 8
  br label %335

324:                                              ; preds = %314
  %325 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %326 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 8
  %329 = load i32, i32* @DM_DIG_FA_TH0, align 4
  %330 = icmp slt i32 %328, %329
  br i1 %330, label %331, label %334

331:                                              ; preds = %324
  %332 = load i64, i64* %12, align 8
  %333 = add nsw i64 %332, -1
  store i64 %333, i64* %12, align 8
  br label %334

334:                                              ; preds = %331, %324
  br label %335

335:                                              ; preds = %334, %321
  br label %336

336:                                              ; preds = %335, %311
  br label %337

337:                                              ; preds = %336, %300
  br label %368

338:                                              ; preds = %291
  %339 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %340 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %339, i32 0, i32 0
  %341 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 8
  %343 = icmp sgt i32 %342, 10000
  br i1 %343, label %344, label %347

344:                                              ; preds = %338
  %345 = load i64, i64* %12, align 8
  %346 = add nsw i64 %345, 2
  store i64 %346, i64* %12, align 8
  br label %367

347:                                              ; preds = %338
  %348 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %349 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 8
  %352 = icmp sgt i32 %351, 8000
  br i1 %352, label %353, label %356

353:                                              ; preds = %347
  %354 = load i64, i64* %12, align 8
  %355 = add nsw i64 %354, 1
  store i64 %355, i64* %12, align 8
  br label %366

356:                                              ; preds = %347
  %357 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %358 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %357, i32 0, i32 0
  %359 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 8
  %361 = icmp slt i32 %360, 500
  br i1 %361, label %362, label %365

362:                                              ; preds = %356
  %363 = load i64, i64* %12, align 8
  %364 = add nsw i64 %363, -1
  store i64 %364, i64* %12, align 8
  br label %365

365:                                              ; preds = %362, %356
  br label %366

366:                                              ; preds = %365, %353
  br label %367

367:                                              ; preds = %366, %344
  br label %368

368:                                              ; preds = %367, %337
  %369 = load i64, i64* %12, align 8
  %370 = load i64, i64* @DM_DIG_FA_UPPER, align 8
  %371 = icmp sgt i64 %369, %370
  br i1 %371, label %372, label %374

372:                                              ; preds = %368
  %373 = load i64, i64* @DM_DIG_FA_UPPER, align 8
  store i64 %373, i64* %12, align 8
  br label %381

374:                                              ; preds = %368
  %375 = load i64, i64* %12, align 8
  %376 = load i64, i64* @DM_DIG_FA_LOWER, align 8
  %377 = icmp slt i64 %375, %376
  br i1 %377, label %378, label %380

378:                                              ; preds = %374
  %379 = load i64, i64* @DM_DIG_FA_LOWER, align 8
  store i64 %379, i64* %12, align 8
  br label %380

380:                                              ; preds = %378, %374
  br label %381

381:                                              ; preds = %380, %372
  %382 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %383 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %382, i32 0, i32 0
  %384 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 8
  %386 = icmp sgt i32 %385, 10000
  br i1 %386, label %387, label %389

387:                                              ; preds = %381
  %388 = load i64, i64* @DM_DIG_FA_UPPER, align 8
  store i64 %388, i64* %12, align 8
  br label %389

389:                                              ; preds = %387, %381
  %390 = load i64, i64* %12, align 8
  %391 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %392 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %391, i32 0, i32 0
  store i64 %390, i64* %392, align 8
  %393 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %394 = call i32 @rtl88e_dm_write_dig(%struct.ieee80211_hw* %393)
  %395 = load %struct.rtl_mac*, %struct.rtl_mac** %4, align 8
  %396 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %395, i32 0, i32 1
  %397 = load i64, i64* %396, align 8
  %398 = load i64, i64* @MAC80211_LINKED, align 8
  %399 = icmp sge i64 %397, %398
  %400 = zext i1 %399 to i64
  %401 = select i1 %399, i32 1, i32 0
  %402 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %403 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %402, i32 0, i32 4
  store i32 %401, i32* %403, align 8
  %404 = load i64, i64* %7, align 8
  %405 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %406 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %405, i32 0, i32 3
  store i64 %404, i64* %406, align 8
  %407 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %408 = call i32 @rtl88e_dm_cck_packet_detection_thresh(%struct.ieee80211_hw* %407)
  br label %409

409:                                              ; preds = %389, %43, %37, %31
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv*) #1

declare dso_local i64 @rtl88e_dm_initial_gain_min_pwdb(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @rtl88e_dm_write_dig(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl88e_dm_cck_packet_detection_thresh(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
