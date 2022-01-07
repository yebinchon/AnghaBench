; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_dm.c_rtl92d_dm_dig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_dm.c_rtl92d_dm_dig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, %struct.false_alarm_statistics, %struct.dig_t }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.false_alarm_statistics = type { i32 }
%struct.dig_t = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@COMP_DIG = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"==>\0A\00", align 1
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"progress\0A\00", align 1
@MAC80211_LINKED = common dso_local global i64 0, align 8
@DIG_STA_CONNECT = common dso_local global i32 0, align 4
@DIG_STA_DISCONNECT = common dso_local global i32 0, align 4
@DM_DIG_FA_TH0 = common dso_local global i32 0, align 4
@DM_DIG_FA_TH1 = common dso_local global i32 0, align 4
@DM_DIG_FA_TH2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"dm_DIG() Before: large_fa_hit=%d, forbidden_igi=%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"dm_DIG() Before: Recover_cnt=%d, rx_gain_min=%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"dm_DIG(): Abnormally false alarm case\0A\00", align 1
@DM_DIG_MAX = common dso_local global i32 0, align 4
@DM_DIG_FA_LOWER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [51 x i8] c"dm_DIG() After: large_fa_hit=%d, forbidden_igi=%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"dm_DIG() After: recover_cnt=%d, rx_gain_min=%x\0A\00", align 1
@BAND_ON_5G = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [6 x i8] c"<<==\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl92d_dm_dig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl92d_dm_dig(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.dig_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.false_alarm_statistics*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %8 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %7)
  store %struct.rtl_priv* %8, %struct.rtl_priv** %3, align 8
  %9 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %10 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %9, i32 0, i32 4
  store %struct.dig_t* %10, %struct.dig_t** %4, align 8
  %11 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %12 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %15 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %14, i32 0, i32 3
  store %struct.false_alarm_statistics* %15, %struct.false_alarm_statistics** %6, align 8
  %16 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %17 = load i32, i32* @COMP_DIG, align 4
  %18 = load i32, i32* @DBG_LOUD, align 4
  %19 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %16, i32 %17, i32 %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %21 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %1
  %26 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %27 = call i32 @rtl92d_early_mode_enabled(%struct.rtl_priv* %26)
  %28 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %29 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %32 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %31, i32 0, i32 7
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %25, %1
  %34 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %35 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  br label %291

40:                                               ; preds = %33
  %41 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %42 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %291

48:                                               ; preds = %40
  %49 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %50 = load i32, i32* @COMP_DIG, align 4
  %51 = load i32, i32* @DBG_LOUD, align 4
  %52 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %49, i32 %50, i32 %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %54 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @MAC80211_LINKED, align 8
  %58 = icmp sge i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %48
  %60 = load i32, i32* @DIG_STA_CONNECT, align 4
  %61 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %62 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %61, i32 0, i32 5
  store i32 %60, i32* %62, align 4
  br label %67

63:                                               ; preds = %48
  %64 = load i32, i32* @DIG_STA_DISCONNECT, align 4
  %65 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %66 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %65, i32 0, i32 5
  store i32 %64, i32* %66, align 4
  br label %67

67:                                               ; preds = %63, %59
  %68 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %6, align 8
  %69 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @DM_DIG_FA_TH0, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %5, align 4
  br label %106

76:                                               ; preds = %67
  %77 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %6, align 8
  %78 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @DM_DIG_FA_TH1, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, 0
  store i32 %84, i32* %5, align 4
  br label %105

85:                                               ; preds = %76
  %86 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %6, align 8
  %87 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @DM_DIG_FA_TH2, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = load i32, i32* %5, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %5, align 4
  br label %104

94:                                               ; preds = %85
  %95 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %6, align 8
  %96 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @DM_DIG_FA_TH2, align 4
  %99 = icmp sge i32 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %94
  %101 = load i32, i32* %5, align 4
  %102 = add nsw i32 %101, 2
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %100, %94
  br label %104

104:                                              ; preds = %103, %91
  br label %105

105:                                              ; preds = %104, %82
  br label %106

106:                                              ; preds = %105, %73
  %107 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %108 = load i32, i32* @COMP_DIG, align 4
  %109 = load i32, i32* @DBG_LOUD, align 4
  %110 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %111 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %114 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %107, i32 %108, i32 %109, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %112, i32 %115)
  %117 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %118 = load i32, i32* @COMP_DIG, align 4
  %119 = load i32, i32* @DBG_LOUD, align 4
  %120 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %121 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %124 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %117, i32 %118, i32 %119, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %122, i32 %125)
  %127 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %6, align 8
  %128 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = icmp sgt i32 %129, 10000
  br i1 %130, label %131, label %182

131:                                              ; preds = %106
  %132 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %133 = load i32, i32* @COMP_DIG, align 4
  %134 = load i32, i32* @DBG_LOUD, align 4
  %135 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %132, i32 %133, i32 %134, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %136 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %137 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %137, align 4
  %140 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %141 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %144 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = icmp slt i32 %142, %145
  br i1 %146, label %147, label %155

147:                                              ; preds = %131
  %148 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %149 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %152 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %151, i32 0, i32 2
  store i32 %150, i32* %152, align 4
  %153 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %154 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %153, i32 0, i32 1
  store i32 1, i32* %154, align 4
  br label %155

155:                                              ; preds = %147, %131
  %156 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %157 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = icmp sge i32 %158, 3
  br i1 %159, label %160, label %181

160:                                              ; preds = %155
  %161 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %162 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = add nsw i32 %163, 1
  %165 = load i32, i32* @DM_DIG_MAX, align 4
  %166 = icmp sgt i32 %164, %165
  br i1 %166, label %167, label %171

167:                                              ; preds = %160
  %168 = load i32, i32* @DM_DIG_MAX, align 4
  %169 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %170 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %169, i32 0, i32 4
  store i32 %168, i32* %170, align 4
  br label %178

171:                                              ; preds = %160
  %172 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %173 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %174, 1
  %176 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %177 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %176, i32 0, i32 4
  store i32 %175, i32* %177, align 4
  br label %178

178:                                              ; preds = %171, %167
  %179 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %180 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %179, i32 0, i32 3
  store i32 3600, i32* %180, align 4
  br label %181

181:                                              ; preds = %178, %155
  br label %234

182:                                              ; preds = %106
  %183 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %184 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %192

187:                                              ; preds = %182
  %188 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %189 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 4
  %191 = add nsw i32 %190, -1
  store i32 %191, i32* %189, align 4
  br label %233

192:                                              ; preds = %182
  %193 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %194 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %223

197:                                              ; preds = %192
  %198 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %199 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 4
  %201 = sub nsw i32 %200, 1
  %202 = load i32, i32* @DM_DIG_FA_LOWER, align 4
  %203 = icmp slt i32 %201, %202
  br i1 %203, label %204, label %211

204:                                              ; preds = %197
  %205 = load i32, i32* @DM_DIG_FA_LOWER, align 4
  %206 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %207 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %206, i32 0, i32 2
  store i32 %205, i32* %207, align 4
  %208 = load i32, i32* @DM_DIG_FA_LOWER, align 4
  %209 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %210 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %209, i32 0, i32 4
  store i32 %208, i32* %210, align 4
  br label %222

211:                                              ; preds = %197
  %212 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %213 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 4
  %215 = add nsw i32 %214, -1
  store i32 %215, i32* %213, align 4
  %216 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %217 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 4
  %219 = add nsw i32 %218, 1
  %220 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %221 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %220, i32 0, i32 4
  store i32 %219, i32* %221, align 4
  br label %222

222:                                              ; preds = %211, %204
  br label %232

223:                                              ; preds = %192
  %224 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %225 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = icmp eq i32 %226, 3
  br i1 %227, label %228, label %231

228:                                              ; preds = %223
  %229 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %230 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %229, i32 0, i32 1
  store i32 0, i32* %230, align 4
  br label %231

231:                                              ; preds = %228, %223
  br label %232

232:                                              ; preds = %231, %222
  br label %233

233:                                              ; preds = %232, %187
  br label %234

234:                                              ; preds = %233, %181
  %235 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %236 = load i32, i32* @COMP_DIG, align 4
  %237 = load i32, i32* @DBG_LOUD, align 4
  %238 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %239 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %242 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 4
  %244 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %235, i32 %236, i32 %237, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i32 %240, i32 %243)
  %245 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %246 = load i32, i32* @COMP_DIG, align 4
  %247 = load i32, i32* @DBG_LOUD, align 4
  %248 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %249 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %248, i32 0, i32 3
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %252 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %251, i32 0, i32 4
  %253 = load i32, i32* %252, align 4
  %254 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %245, i32 %246, i32 %247, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i32 %250, i32 %253)
  %255 = load i32, i32* %5, align 4
  %256 = load i32, i32* @DM_DIG_MAX, align 4
  %257 = icmp sgt i32 %255, %256
  br i1 %257, label %258, label %260

258:                                              ; preds = %234
  %259 = load i32, i32* @DM_DIG_MAX, align 4
  store i32 %259, i32* %5, align 4
  br label %271

260:                                              ; preds = %234
  %261 = load i32, i32* %5, align 4
  %262 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %263 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %262, i32 0, i32 4
  %264 = load i32, i32* %263, align 4
  %265 = icmp slt i32 %261, %264
  br i1 %265, label %266, label %270

266:                                              ; preds = %260
  %267 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %268 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %267, i32 0, i32 4
  %269 = load i32, i32* %268, align 4
  store i32 %269, i32* %5, align 4
  br label %270

270:                                              ; preds = %266, %260
  br label %271

271:                                              ; preds = %270, %258
  %272 = load i32, i32* %5, align 4
  %273 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %274 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %273, i32 0, i32 0
  store i32 %272, i32* %274, align 4
  %275 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %276 = call i32 @rtl92d_dm_write_dig(%struct.ieee80211_hw* %275)
  %277 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %278 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = load i64, i64* @BAND_ON_5G, align 8
  %282 = icmp ne i64 %280, %281
  br i1 %282, label %283, label %286

283:                                              ; preds = %271
  %284 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %285 = call i32 @rtl92d_dm_cck_packet_detection_thresh(%struct.ieee80211_hw* %284)
  br label %286

286:                                              ; preds = %283, %271
  %287 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %288 = load i32, i32* @COMP_DIG, align 4
  %289 = load i32, i32* @DBG_LOUD, align 4
  %290 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %287, i32 %288, i32 %289, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  br label %291

291:                                              ; preds = %286, %47, %39
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @rtl92d_early_mode_enabled(%struct.rtl_priv*) #1

declare dso_local i32 @rtl92d_dm_write_dig(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl92d_dm_cck_packet_detection_thresh(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
