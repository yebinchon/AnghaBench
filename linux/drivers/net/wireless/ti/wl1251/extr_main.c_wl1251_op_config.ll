; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_main.c_wl1251_op_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_main.c_wl1251_op_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ieee80211_conf, %struct.wl1251* }
%struct.ieee80211_conf = type { i32, i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.wl1251 = type { i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32* }

@DEBUG_MAC80211 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"mac80211 config ch %d monitor %s psm %s power %d\00", align 1
@IEEE80211_CONF_MONITOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@IEEE80211_CONF_PS = common dso_local global i32 0, align 4
@IEEE80211_CONF_CHANGE_MONITOR = common dso_local global i32 0, align 4
@DF_SNIFF_MODE_ENABLE = common dso_local global i32 0, align 4
@DF_ENCRYPTION_DISABLE = common dso_local global i32 0, align 4
@DEBUG_PSM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"psm enabled\00", align 1
@STATION_POWER_SAVE_MODE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [13 x i8] c"psm disabled\00", align 1
@STATION_ACTIVE_MODE = common dso_local global i64 0, align 8
@IEEE80211_CONF_CHANGE_IDLE = common dso_local global i32 0, align 4
@IEEE80211_CONF_IDLE = common dso_local global i32 0, align 4
@STATION_IDLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32)* @wl1251_op_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1251_op_config(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wl1251*, align 8
  %6 = alloca %struct.ieee80211_conf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %11 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %10, i32 0, i32 1
  %12 = load %struct.wl1251*, %struct.wl1251** %11, align 8
  store %struct.wl1251* %12, %struct.wl1251** %5, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %14 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %13, i32 0, i32 0
  store %struct.ieee80211_conf* %14, %struct.ieee80211_conf** %6, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %16 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ieee80211_frequency_to_channel(i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* @DEBUG_MAC80211, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %25 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @IEEE80211_CONF_MONITOR, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %32 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %33 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @IEEE80211_CONF_PS, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %40 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %41 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i32 (i32, i8*, ...) @wl1251_debug(i32 %22, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %23, i8* %31, i8* %39, i64 %42)
  %44 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %45 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %44, i32 0, i32 6
  %46 = call i32 @mutex_lock(i32* %45)
  %47 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %48 = call i32 @wl1251_ps_elp_wakeup(%struct.wl1251* %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %2
  br label %267

52:                                               ; preds = %2
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @IEEE80211_CONF_CHANGE_MONITOR, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %81

57:                                               ; preds = %52
  %58 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %59 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @IEEE80211_CONF_MONITOR, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %57
  %65 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %66 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  %67 = load i32, i32* @DF_SNIFF_MODE_ENABLE, align 4
  %68 = load i32, i32* @DF_ENCRYPTION_DISABLE, align 4
  %69 = or i32 %67, %68
  store i32 %69, i32* %9, align 4
  br label %73

70:                                               ; preds = %57
  %71 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %72 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %71, i32 0, i32 0
  store i32 0, i32* %72, align 8
  store i32 0, i32* %9, align 4
  br label %73

73:                                               ; preds = %70, %64
  %74 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @wl1251_acx_feature_cfg(%struct.wl1251* %74, i32 %75)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  br label %264

80:                                               ; preds = %73
  br label %81

81:                                               ; preds = %80, %52
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %84 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %82, %85
  br i1 %86, label %87, label %123

87:                                               ; preds = %81
  %88 = load i32, i32* %7, align 4
  %89 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %90 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %92 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %91, i32 0, i32 11
  %93 = load i32*, i32** %92, align 8
  %94 = icmp eq i32* %93, null
  br i1 %94, label %95, label %103

95:                                               ; preds = %87
  %96 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %97 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %96, i32 0, i32 2
  store i32 0, i32* %97, align 8
  %98 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %99 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %100 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @wl1251_cmd_data_path_rx(%struct.wl1251* %98, i32 %101, i32 1)
  store i32 %102, i32* %8, align 4
  br label %118

103:                                              ; preds = %87
  %104 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %105 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %106 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %105, i32 0, i32 9
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %109 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %112 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %111, i32 0, i32 8
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %115 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %114, i32 0, i32 7
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @wl1251_join(%struct.wl1251* %104, i32 %107, i32 %110, i32 %113, i32 %116)
  store i32 %117, i32* %8, align 4
  br label %118

118:                                              ; preds = %103, %95
  %119 = load i32, i32* %8, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  br label %264

122:                                              ; preds = %118
  br label %123

123:                                              ; preds = %122, %81
  %124 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %125 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %126 = call i64 @wl1251_can_do_pm(%struct.ieee80211_conf* %124, %struct.wl1251* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %158

128:                                              ; preds = %123
  %129 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %130 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %158, label %133

133:                                              ; preds = %128
  %134 = load i32, i32* @DEBUG_PSM, align 4
  %135 = call i32 (i32, i8*, ...) @wl1251_debug(i32 %134, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %136 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %137 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %136, i32 0, i32 3
  store i32 1, i32* %137, align 4
  %138 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %139 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %142 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %141, i32 0, i32 7
  store i32 %140, i32* %142, align 4
  %143 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %144 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %145 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %144, i32 0, i32 8
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %148 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %147, i32 0, i32 7
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @wl1251_acx_wr_tbtt_and_dtim(%struct.wl1251* %143, i32 %146, i32 %149)
  store i32 %150, i32* %8, align 4
  %151 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %152 = load i64, i64* @STATION_POWER_SAVE_MODE, align 8
  %153 = call i32 @wl1251_ps_set_mode(%struct.wl1251* %151, i64 %152)
  store i32 %153, i32* %8, align 4
  %154 = load i32, i32* %8, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %133
  br label %264

157:                                              ; preds = %133
  br label %188

158:                                              ; preds = %128, %123
  %159 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %160 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %161 = call i64 @wl1251_can_do_pm(%struct.ieee80211_conf* %159, %struct.wl1251* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %187, label %163

163:                                              ; preds = %158
  %164 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %165 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %187

168:                                              ; preds = %163
  %169 = load i32, i32* @DEBUG_PSM, align 4
  %170 = call i32 (i32, i8*, ...) @wl1251_debug(i32 %169, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %171 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %172 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %171, i32 0, i32 3
  store i32 0, i32* %172, align 4
  %173 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %174 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %173, i32 0, i32 4
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @STATION_ACTIVE_MODE, align 8
  %177 = icmp ne i64 %175, %176
  br i1 %177, label %178, label %186

178:                                              ; preds = %168
  %179 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %180 = load i64, i64* @STATION_ACTIVE_MODE, align 8
  %181 = call i32 @wl1251_ps_set_mode(%struct.wl1251* %179, i64 %180)
  store i32 %181, i32* %8, align 4
  %182 = load i32, i32* %8, align 4
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %178
  br label %264

185:                                              ; preds = %178
  br label %186

186:                                              ; preds = %185, %168
  br label %187

187:                                              ; preds = %186, %163, %158
  br label %188

188:                                              ; preds = %187, %157
  %189 = load i32, i32* %4, align 4
  %190 = load i32, i32* @IEEE80211_CONF_CHANGE_IDLE, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %240

193:                                              ; preds = %188
  %194 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %195 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %194, i32 0, i32 10
  %196 = load i32, i32* %195, align 8
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %240, label %198

198:                                              ; preds = %193
  %199 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %200 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @IEEE80211_CONF_IDLE, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %213

205:                                              ; preds = %198
  %206 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %207 = load i64, i64* @STATION_IDLE, align 8
  %208 = call i32 @wl1251_ps_set_mode(%struct.wl1251* %206, i64 %207)
  store i32 %208, i32* %8, align 4
  %209 = load i32, i32* %8, align 4
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %205
  br label %264

212:                                              ; preds = %205
  br label %239

213:                                              ; preds = %198
  %214 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %215 = load i64, i64* @STATION_ACTIVE_MODE, align 8
  %216 = call i32 @wl1251_ps_set_mode(%struct.wl1251* %214, i64 %215)
  store i32 %216, i32* %8, align 4
  %217 = load i32, i32* %8, align 4
  %218 = icmp slt i32 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %213
  br label %264

220:                                              ; preds = %213
  %221 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %222 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %223 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %222, i32 0, i32 9
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %226 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %229 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %228, i32 0, i32 8
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %232 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %231, i32 0, i32 7
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @wl1251_join(%struct.wl1251* %221, i32 %224, i32 %227, i32 %230, i32 %233)
  store i32 %234, i32* %8, align 4
  %235 = load i32, i32* %8, align 4
  %236 = icmp slt i32 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %220
  br label %264

238:                                              ; preds = %220
  br label %239

239:                                              ; preds = %238, %212
  br label %240

240:                                              ; preds = %239, %193, %188
  %241 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %242 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %241, i32 0, i32 1
  %243 = load i64, i64* %242, align 8
  %244 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %245 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %244, i32 0, i32 5
  %246 = load i64, i64* %245, align 8
  %247 = icmp ne i64 %243, %246
  br i1 %247, label %248, label %263

248:                                              ; preds = %240
  %249 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %250 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %251 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %250, i32 0, i32 1
  %252 = load i64, i64* %251, align 8
  %253 = call i32 @wl1251_acx_tx_power(%struct.wl1251* %249, i64 %252)
  store i32 %253, i32* %8, align 4
  %254 = load i32, i32* %8, align 4
  %255 = icmp slt i32 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %248
  br label %264

257:                                              ; preds = %248
  %258 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %259 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %258, i32 0, i32 1
  %260 = load i64, i64* %259, align 8
  %261 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %262 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %261, i32 0, i32 5
  store i64 %260, i64* %262, align 8
  br label %263

263:                                              ; preds = %257, %240
  br label %264

264:                                              ; preds = %263, %256, %237, %219, %211, %184, %156, %121, %79
  %265 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %266 = call i32 @wl1251_ps_elp_sleep(%struct.wl1251* %265)
  br label %267

267:                                              ; preds = %264, %51
  %268 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %269 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %268, i32 0, i32 6
  %270 = call i32 @mutex_unlock(i32* %269)
  %271 = load i32, i32* %8, align 4
  ret i32 %271
}

declare dso_local i32 @ieee80211_frequency_to_channel(i32) #1

declare dso_local i32 @wl1251_debug(i32, i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wl1251_ps_elp_wakeup(%struct.wl1251*) #1

declare dso_local i32 @wl1251_acx_feature_cfg(%struct.wl1251*, i32) #1

declare dso_local i32 @wl1251_cmd_data_path_rx(%struct.wl1251*, i32, i32) #1

declare dso_local i32 @wl1251_join(%struct.wl1251*, i32, i32, i32, i32) #1

declare dso_local i64 @wl1251_can_do_pm(%struct.ieee80211_conf*, %struct.wl1251*) #1

declare dso_local i32 @wl1251_acx_wr_tbtt_and_dtim(%struct.wl1251*, i32, i32) #1

declare dso_local i32 @wl1251_ps_set_mode(%struct.wl1251*, i64) #1

declare dso_local i32 @wl1251_acx_tx_power(%struct.wl1251*, i64) #1

declare dso_local i32 @wl1251_ps_elp_sleep(%struct.wl1251*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
