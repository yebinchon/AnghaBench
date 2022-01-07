; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_scan.c_wlcore_scan_get_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_scan.c_wlcore_scan_get_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.conf_sched_scan_settings, %struct.conf_scan_settings }
%struct.conf_sched_scan_settings = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.conf_scan_settings = type { i64, i64, i64, i64, i64, i64 }
%struct.ieee80211_channel = type { i64, i64, i32, i32, i32 }
%struct.conn_scan_ch_params = type { i32, i32, i32, i8*, i8*, i8* }

@SCAN_TYPE_SEARCH = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@IEEE80211_CHAN_NO_IR = common dso_local global i64 0, align 8
@IEEE80211_CHAN_DISABLED = common dso_local global i64 0, align 8
@IEEE80211_CHAN_RADAR = common dso_local global i64 0, align 8
@SCAN_CHANNEL_FLAGS_DFS = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@DEBUG_SCAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"n_pactive_ch = %d\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"freq %d, ch. %d, flags 0x%x, power %d, min/max_dwell %d/%d%s%s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c", DFS\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [8 x i8] c", NO-IR\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, %struct.ieee80211_channel**, i64, i64, %struct.conn_scan_ch_params*, i64, i32, i32, i32, i32, i32*, i32)* @wlcore_scan_get_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlcore_scan_get_channels(%struct.wl1271* %0, %struct.ieee80211_channel** %1, i64 %2, i64 %3, %struct.conn_scan_ch_params* %4, i64 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32* %10, i32 %11) #0 {
  %13 = alloca %struct.wl1271*, align 8
  %14 = alloca %struct.ieee80211_channel**, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.conn_scan_ch_params*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca %struct.conf_scan_settings*, align 8
  %34 = alloca i32, align 4
  %35 = alloca %struct.conf_sched_scan_settings*, align 8
  %36 = alloca i64, align 8
  store %struct.wl1271* %0, %struct.wl1271** %13, align 8
  store %struct.ieee80211_channel** %1, %struct.ieee80211_channel*** %14, align 8
  store i64 %2, i64* %15, align 8
  store i64 %3, i64* %16, align 8
  store %struct.conn_scan_ch_params* %4, %struct.conn_scan_ch_params** %17, align 8
  store i64 %5, i64* %18, align 8
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32* %10, i32** %23, align 8
  store i32 %11, i32* %24, align 4
  %37 = load i64, i64* %16, align 8
  %38 = icmp ne i64 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %28, align 4
  %41 = load i32, i32* %24, align 4
  %42 = load i32, i32* @SCAN_TYPE_SEARCH, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %84

44:                                               ; preds = %12
  %45 = load %struct.wl1271*, %struct.wl1271** %13, align 8
  %46 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store %struct.conf_scan_settings* %47, %struct.conf_scan_settings** %33, align 8
  %48 = load %struct.wl1271*, %struct.wl1271** %13, align 8
  %49 = call i32 @wlcore_count_started_vifs(%struct.wl1271* %48)
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %34, align 4
  %54 = load i32, i32* %34, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %44
  %57 = load %struct.conf_scan_settings*, %struct.conf_scan_settings** %33, align 8
  %58 = getelementptr inbounds %struct.conf_scan_settings, %struct.conf_scan_settings* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  br label %64

60:                                               ; preds = %44
  %61 = load %struct.conf_scan_settings*, %struct.conf_scan_settings** %33, align 8
  %62 = getelementptr inbounds %struct.conf_scan_settings, %struct.conf_scan_settings* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  br label %64

64:                                               ; preds = %60, %56
  %65 = phi i64 [ %59, %56 ], [ %63, %60 ]
  store i64 %65, i64* %29, align 8
  %66 = load i32, i32* %34, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load %struct.conf_scan_settings*, %struct.conf_scan_settings** %33, align 8
  %70 = getelementptr inbounds %struct.conf_scan_settings, %struct.conf_scan_settings* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  br label %76

72:                                               ; preds = %64
  %73 = load %struct.conf_scan_settings*, %struct.conf_scan_settings** %33, align 8
  %74 = getelementptr inbounds %struct.conf_scan_settings, %struct.conf_scan_settings* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  br label %76

76:                                               ; preds = %72, %68
  %77 = phi i64 [ %71, %68 ], [ %75, %72 ]
  store i64 %77, i64* %30, align 8
  %78 = load %struct.conf_scan_settings*, %struct.conf_scan_settings** %33, align 8
  %79 = getelementptr inbounds %struct.conf_scan_settings, %struct.conf_scan_settings* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %31, align 8
  %81 = load %struct.conf_scan_settings*, %struct.conf_scan_settings** %33, align 8
  %82 = getelementptr inbounds %struct.conf_scan_settings, %struct.conf_scan_settings* %81, i32 0, i32 5
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %32, align 8
  br label %122

84:                                               ; preds = %12
  %85 = load %struct.wl1271*, %struct.wl1271** %13, align 8
  %86 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  store %struct.conf_sched_scan_settings* %87, %struct.conf_sched_scan_settings** %35, align 8
  %88 = load i64, i64* %18, align 8
  %89 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %84
  %92 = load %struct.conf_sched_scan_settings*, %struct.conf_sched_scan_settings** %35, align 8
  %93 = getelementptr inbounds %struct.conf_sched_scan_settings, %struct.conf_sched_scan_settings* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %36, align 8
  br label %99

95:                                               ; preds = %84
  %96 = load %struct.conf_sched_scan_settings*, %struct.conf_sched_scan_settings** %35, align 8
  %97 = getelementptr inbounds %struct.conf_sched_scan_settings, %struct.conf_sched_scan_settings* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %36, align 8
  br label %99

99:                                               ; preds = %95, %91
  %100 = load %struct.conf_sched_scan_settings*, %struct.conf_sched_scan_settings** %35, align 8
  %101 = getelementptr inbounds %struct.conf_sched_scan_settings, %struct.conf_sched_scan_settings* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* %16, align 8
  %104 = load %struct.conf_sched_scan_settings*, %struct.conf_sched_scan_settings** %35, align 8
  %105 = getelementptr inbounds %struct.conf_sched_scan_settings, %struct.conf_sched_scan_settings* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = mul nsw i64 %103, %106
  %108 = load i64, i64* %36, align 8
  %109 = mul nsw i64 %107, %108
  %110 = add nsw i64 %102, %109
  store i64 %110, i64* %29, align 8
  %111 = load i64, i64* %29, align 8
  %112 = load %struct.conf_sched_scan_settings*, %struct.conf_sched_scan_settings** %35, align 8
  %113 = getelementptr inbounds %struct.conf_sched_scan_settings, %struct.conf_sched_scan_settings* %112, i32 0, i32 4
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %111, %114
  store i64 %115, i64* %30, align 8
  %116 = load %struct.conf_sched_scan_settings*, %struct.conf_sched_scan_settings** %35, align 8
  %117 = getelementptr inbounds %struct.conf_sched_scan_settings, %struct.conf_sched_scan_settings* %116, i32 0, i32 5
  %118 = load i64, i64* %117, align 8
  store i64 %118, i64* %31, align 8
  %119 = load %struct.conf_sched_scan_settings*, %struct.conf_sched_scan_settings** %35, align 8
  %120 = getelementptr inbounds %struct.conf_sched_scan_settings, %struct.conf_sched_scan_settings* %119, i32 0, i32 6
  %121 = load i64, i64* %120, align 8
  store i64 %121, i64* %32, align 8
  br label %122

122:                                              ; preds = %99, %76
  %123 = load i64, i64* %29, align 8
  %124 = call i64 @DIV_ROUND_UP(i64 %123, i32 1000)
  store i64 %124, i64* %29, align 8
  %125 = load i64, i64* %30, align 8
  %126 = call i64 @DIV_ROUND_UP(i64 %125, i32 1000)
  store i64 %126, i64* %30, align 8
  %127 = load i64, i64* %31, align 8
  %128 = call i64 @DIV_ROUND_UP(i64 %127, i32 1000)
  store i64 %128, i64* %31, align 8
  %129 = load i64, i64* %32, align 8
  %130 = call i64 @DIV_ROUND_UP(i64 %129, i32 1000)
  store i64 %130, i64* %32, align 8
  store i32 0, i32* %25, align 4
  %131 = load i32, i32* %21, align 4
  store i32 %131, i32* %26, align 4
  br label %132

132:                                              ; preds = %355, %122
  %133 = load i32, i32* %25, align 4
  %134 = sext i32 %133 to i64
  %135 = load i64, i64* %15, align 8
  %136 = icmp slt i64 %134, %135
  br i1 %136, label %137, label %141

137:                                              ; preds = %132
  %138 = load i32, i32* %26, align 4
  %139 = load i32, i32* %22, align 4
  %140 = icmp slt i32 %138, %139
  br label %141

141:                                              ; preds = %137, %132
  %142 = phi i1 [ false, %132 ], [ %140, %137 ]
  br i1 %142, label %143, label %358

143:                                              ; preds = %141
  %144 = load %struct.ieee80211_channel**, %struct.ieee80211_channel*** %14, align 8
  %145 = load i32, i32* %25, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.ieee80211_channel*, %struct.ieee80211_channel** %144, i64 %146
  %148 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %147, align 8
  %149 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  store i64 %150, i64* %27, align 8
  %151 = load i32, i32* %28, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %143
  %154 = load i64, i64* @IEEE80211_CHAN_NO_IR, align 8
  %155 = load i64, i64* %27, align 8
  %156 = or i64 %155, %154
  store i64 %156, i64* %27, align 8
  br label %157

157:                                              ; preds = %153, %143
  %158 = load %struct.ieee80211_channel**, %struct.ieee80211_channel*** %14, align 8
  %159 = load i32, i32* %25, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.ieee80211_channel*, %struct.ieee80211_channel** %158, i64 %160
  %162 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %161, align 8
  %163 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* %18, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %354

167:                                              ; preds = %157
  %168 = load i64, i64* %27, align 8
  %169 = load i64, i64* @IEEE80211_CHAN_DISABLED, align 8
  %170 = and i64 %168, %169
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %354, label %172

172:                                              ; preds = %167
  %173 = load i64, i64* %27, align 8
  %174 = load i64, i64* @IEEE80211_CHAN_RADAR, align 8
  %175 = and i64 %173, %174
  %176 = icmp ne i64 %175, 0
  %177 = xor i1 %176, true
  %178 = xor i1 %177, true
  %179 = zext i1 %178 to i32
  %180 = load i32, i32* %19, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %354

182:                                              ; preds = %172
  %183 = load i32, i32* %19, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %195, label %185

185:                                              ; preds = %182
  %186 = load i64, i64* %27, align 8
  %187 = load i64, i64* @IEEE80211_CHAN_NO_IR, align 8
  %188 = and i64 %186, %187
  %189 = icmp ne i64 %188, 0
  %190 = xor i1 %189, true
  %191 = xor i1 %190, true
  %192 = zext i1 %191 to i32
  %193 = load i32, i32* %20, align 4
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %195, label %354

195:                                              ; preds = %185, %182
  %196 = load i64, i64* %27, align 8
  %197 = load i64, i64* @IEEE80211_CHAN_RADAR, align 8
  %198 = and i64 %196, %197
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %216

200:                                              ; preds = %195
  %201 = load i32, i32* @SCAN_CHANNEL_FLAGS_DFS, align 4
  %202 = load %struct.conn_scan_ch_params*, %struct.conn_scan_ch_params** %17, align 8
  %203 = load i32, i32* %26, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.conn_scan_ch_params, %struct.conn_scan_ch_params* %202, i64 %204
  %206 = getelementptr inbounds %struct.conn_scan_ch_params, %struct.conn_scan_ch_params* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = or i32 %207, %201
  store i32 %208, i32* %206, align 4
  %209 = load i64, i64* %32, align 8
  %210 = call i8* @cpu_to_le16(i64 %209)
  %211 = load %struct.conn_scan_ch_params*, %struct.conn_scan_ch_params** %17, align 8
  %212 = load i32, i32* %26, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.conn_scan_ch_params, %struct.conn_scan_ch_params* %211, i64 %213
  %215 = getelementptr inbounds %struct.conn_scan_ch_params, %struct.conn_scan_ch_params* %214, i32 0, i32 5
  store i8* %210, i8** %215, align 8
  br label %224

216:                                              ; preds = %195
  %217 = load i64, i64* %31, align 8
  %218 = call i8* @cpu_to_le16(i64 %217)
  %219 = load %struct.conn_scan_ch_params*, %struct.conn_scan_ch_params** %17, align 8
  %220 = load i32, i32* %26, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.conn_scan_ch_params, %struct.conn_scan_ch_params* %219, i64 %221
  %223 = getelementptr inbounds %struct.conn_scan_ch_params, %struct.conn_scan_ch_params* %222, i32 0, i32 5
  store i8* %218, i8** %223, align 8
  br label %224

224:                                              ; preds = %216, %200
  %225 = load i64, i64* %29, align 8
  %226 = call i8* @cpu_to_le16(i64 %225)
  %227 = load %struct.conn_scan_ch_params*, %struct.conn_scan_ch_params** %17, align 8
  %228 = load i32, i32* %26, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.conn_scan_ch_params, %struct.conn_scan_ch_params* %227, i64 %229
  %231 = getelementptr inbounds %struct.conn_scan_ch_params, %struct.conn_scan_ch_params* %230, i32 0, i32 4
  store i8* %226, i8** %231, align 8
  %232 = load i64, i64* %30, align 8
  %233 = call i8* @cpu_to_le16(i64 %232)
  %234 = load %struct.conn_scan_ch_params*, %struct.conn_scan_ch_params** %17, align 8
  %235 = load i32, i32* %26, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.conn_scan_ch_params, %struct.conn_scan_ch_params* %234, i64 %236
  %238 = getelementptr inbounds %struct.conn_scan_ch_params, %struct.conn_scan_ch_params* %237, i32 0, i32 3
  store i8* %233, i8** %238, align 8
  %239 = load %struct.ieee80211_channel**, %struct.ieee80211_channel*** %14, align 8
  %240 = load i32, i32* %25, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.ieee80211_channel*, %struct.ieee80211_channel** %239, i64 %241
  %243 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %242, align 8
  %244 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %243, i32 0, i32 3
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.conn_scan_ch_params*, %struct.conn_scan_ch_params** %17, align 8
  %247 = load i32, i32* %26, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.conn_scan_ch_params, %struct.conn_scan_ch_params* %246, i64 %248
  %250 = getelementptr inbounds %struct.conn_scan_ch_params, %struct.conn_scan_ch_params* %249, i32 0, i32 2
  store i32 %245, i32* %250, align 8
  %251 = load %struct.ieee80211_channel**, %struct.ieee80211_channel*** %14, align 8
  %252 = load i32, i32* %25, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.ieee80211_channel*, %struct.ieee80211_channel** %251, i64 %253
  %255 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %254, align 8
  %256 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 8
  %258 = load %struct.conn_scan_ch_params*, %struct.conn_scan_ch_params** %17, align 8
  %259 = load i32, i32* %26, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.conn_scan_ch_params, %struct.conn_scan_ch_params* %258, i64 %260
  %262 = getelementptr inbounds %struct.conn_scan_ch_params, %struct.conn_scan_ch_params* %261, i32 0, i32 0
  store i32 %257, i32* %262, align 8
  %263 = load i32*, i32** %23, align 8
  %264 = icmp ne i32* %263, null
  br i1 %264, label %265, label %307

265:                                              ; preds = %224
  %266 = load i64, i64* %18, align 8
  %267 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %268 = icmp eq i64 %266, %267
  br i1 %268, label %269, label %307

269:                                              ; preds = %265
  %270 = load %struct.conn_scan_ch_params*, %struct.conn_scan_ch_params** %17, align 8
  %271 = load i32, i32* %26, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.conn_scan_ch_params, %struct.conn_scan_ch_params* %270, i64 %272
  %274 = getelementptr inbounds %struct.conn_scan_ch_params, %struct.conn_scan_ch_params* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = icmp sge i32 %275, 12
  br i1 %276, label %277, label %307

277:                                              ; preds = %269
  %278 = load %struct.conn_scan_ch_params*, %struct.conn_scan_ch_params** %17, align 8
  %279 = load i32, i32* %26, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.conn_scan_ch_params, %struct.conn_scan_ch_params* %278, i64 %280
  %282 = getelementptr inbounds %struct.conn_scan_ch_params, %struct.conn_scan_ch_params* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = icmp sle i32 %283, 14
  br i1 %284, label %285, label %307

285:                                              ; preds = %277
  %286 = load i64, i64* %27, align 8
  %287 = load i64, i64* @IEEE80211_CHAN_NO_IR, align 8
  %288 = and i64 %286, %287
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %307

290:                                              ; preds = %285
  %291 = load i32, i32* %28, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %307, label %293

293:                                              ; preds = %290
  %294 = load i32, i32* @SCAN_CHANNEL_FLAGS_DFS, align 4
  %295 = load %struct.conn_scan_ch_params*, %struct.conn_scan_ch_params** %17, align 8
  %296 = load i32, i32* %26, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.conn_scan_ch_params, %struct.conn_scan_ch_params* %295, i64 %297
  %299 = getelementptr inbounds %struct.conn_scan_ch_params, %struct.conn_scan_ch_params* %298, i32 0, i32 1
  store i32 %294, i32* %299, align 4
  %300 = load i32*, i32** %23, align 8
  %301 = load i32, i32* %300, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %300, align 4
  %303 = load i32, i32* @DEBUG_SCAN, align 4
  %304 = load i32*, i32** %23, align 8
  %305 = load i32, i32* %304, align 4
  %306 = call i32 (i32, i8*, i32, ...) @wl1271_debug(i32 %303, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %305)
  br label %307

307:                                              ; preds = %293, %290, %285, %277, %269, %265, %224
  %308 = load i32, i32* @DEBUG_SCAN, align 4
  %309 = load %struct.ieee80211_channel**, %struct.ieee80211_channel*** %14, align 8
  %310 = load i32, i32* %25, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds %struct.ieee80211_channel*, %struct.ieee80211_channel** %309, i64 %311
  %313 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %312, align 8
  %314 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %313, i32 0, i32 4
  %315 = load i32, i32* %314, align 8
  %316 = load %struct.ieee80211_channel**, %struct.ieee80211_channel*** %14, align 8
  %317 = load i32, i32* %25, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds %struct.ieee80211_channel*, %struct.ieee80211_channel** %316, i64 %318
  %320 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %319, align 8
  %321 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %320, i32 0, i32 2
  %322 = load i32, i32* %321, align 8
  %323 = load %struct.ieee80211_channel**, %struct.ieee80211_channel*** %14, align 8
  %324 = load i32, i32* %25, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds %struct.ieee80211_channel*, %struct.ieee80211_channel** %323, i64 %325
  %327 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %326, align 8
  %328 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %327, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = load %struct.ieee80211_channel**, %struct.ieee80211_channel*** %14, align 8
  %331 = load i32, i32* %25, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds %struct.ieee80211_channel*, %struct.ieee80211_channel** %330, i64 %332
  %334 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %333, align 8
  %335 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %334, i32 0, i32 3
  %336 = load i32, i32* %335, align 4
  %337 = load i64, i64* %29, align 8
  %338 = load i64, i64* %30, align 8
  %339 = load i64, i64* %27, align 8
  %340 = load i64, i64* @IEEE80211_CHAN_RADAR, align 8
  %341 = and i64 %339, %340
  %342 = icmp ne i64 %341, 0
  %343 = zext i1 %342 to i64
  %344 = select i1 %342, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %345 = load i64, i64* %27, align 8
  %346 = load i64, i64* @IEEE80211_CHAN_NO_IR, align 8
  %347 = and i64 %345, %346
  %348 = icmp ne i64 %347, 0
  %349 = zext i1 %348 to i64
  %350 = select i1 %348, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %351 = call i32 (i32, i8*, i32, ...) @wl1271_debug(i32 %308, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %315, i32 %322, i64 %329, i32 %336, i64 %337, i64 %338, i8* %344, i8* %350)
  %352 = load i32, i32* %26, align 4
  %353 = add nsw i32 %352, 1
  store i32 %353, i32* %26, align 4
  br label %354

354:                                              ; preds = %307, %185, %172, %167, %157
  br label %355

355:                                              ; preds = %354
  %356 = load i32, i32* %25, align 4
  %357 = add nsw i32 %356, 1
  store i32 %357, i32* %25, align 4
  br label %132

358:                                              ; preds = %141
  %359 = load i32, i32* %26, align 4
  %360 = load i32, i32* %21, align 4
  %361 = sub nsw i32 %359, %360
  ret i32 %361
}

declare dso_local i32 @wlcore_count_started_vifs(%struct.wl1271*) #1

declare dso_local i64 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i32 @wl1271_debug(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
