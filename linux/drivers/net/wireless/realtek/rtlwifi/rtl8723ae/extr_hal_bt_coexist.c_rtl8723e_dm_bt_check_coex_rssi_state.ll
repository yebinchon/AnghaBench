; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_hal_bt_coexist.c_rtl8723e_dm_bt_check_coex_rssi_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_hal_bt_coexist.c_rtl8723e_dm_bt_check_coex_rssi_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@BT_COEX_STATE_WIFI_RSSI_MEDIUM = common dso_local global i32 0, align 4
@BT_RSSI_STATE_LOW = common dso_local global i64 0, align 8
@BT_RSSI_STATE_STAY_LOW = common dso_local global i64 0, align 8
@BT_FW_COEX_THRESH_TOL = common dso_local global i32 0, align 4
@BT_RSSI_STATE_HIGH = common dso_local global i32 0, align 4
@BT_COEX_STATE_WIFI_RSSI_HIGH = common dso_local global i32 0, align 4
@BT_COEX_STATE_WIFI_RSSI_LOW = common dso_local global i32 0, align 4
@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"[DM][BT], RSSI state switch to High\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"[DM][BT], RSSI state stay at Low\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"[DM][BT], RSSI state switch to Low\0A\00", align 1
@BT_RSSI_STATE_STAY_HIGH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"[DM][BT], RSSI state stay at High\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"[DM][BT], RSSI thresh error!!\0A\00", align 1
@BT_RSSI_STATE_MEDIUM = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [39 x i8] c"[DM][BT], RSSI state switch to Medium\0A\00", align 1
@BT_RSSI_STATE_STAY_MEDIUM = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [37 x i8] c"[DM][BT], RSSI state stay at Medium\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl8723e_dm_bt_check_coex_rssi_state(%struct.ieee80211_hw* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rtl_priv*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %14 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %13)
  store %struct.rtl_priv* %14, %struct.rtl_priv** %10, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %16 = call i64 @rtl8723e_dm_bt_get_rx_ss(%struct.ieee80211_hw* %15)
  store i64 %16, i64* %11, align 8
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %19, label %107

19:                                               ; preds = %4
  %20 = load i32, i32* @BT_COEX_STATE_WIFI_RSSI_MEDIUM, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %23 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, %21
  store i32 %26, i32* %24, align 8
  %27 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %28 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @BT_RSSI_STATE_LOW, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %40, label %33

33:                                               ; preds = %19
  %34 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %35 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @BT_RSSI_STATE_STAY_LOW, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %74

40:                                               ; preds = %33, %19
  %41 = load i64, i64* %11, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @BT_FW_COEX_THRESH_TOL, align 4
  %44 = add nsw i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = icmp sge i64 %41, %45
  br i1 %46, label %47, label %66

47:                                               ; preds = %40
  %48 = load i32, i32* @BT_RSSI_STATE_HIGH, align 4
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* @BT_COEX_STATE_WIFI_RSSI_HIGH, align 4
  %50 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %51 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %49
  store i32 %54, i32* %52, align 8
  %55 = load i32, i32* @BT_COEX_STATE_WIFI_RSSI_LOW, align 4
  %56 = xor i32 %55, -1
  %57 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %58 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %60, %56
  store i32 %61, i32* %59, align 8
  %62 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %63 = load i32, i32* @COMP_BT_COEXIST, align 4
  %64 = load i32, i32* @DBG_TRACE, align 4
  %65 = call i32 @RT_TRACE(%struct.rtl_priv* %62, i32 %63, i32 %64, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %73

66:                                               ; preds = %40
  %67 = load i64, i64* @BT_RSSI_STATE_STAY_LOW, align 8
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %12, align 4
  %69 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %70 = load i32, i32* @COMP_BT_COEXIST, align 4
  %71 = load i32, i32* @DBG_TRACE, align 4
  %72 = call i32 @RT_TRACE(%struct.rtl_priv* %69, i32 %70, i32 %71, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %73

73:                                               ; preds = %66, %47
  br label %106

74:                                               ; preds = %33
  %75 = load i64, i64* %11, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = icmp slt i64 %75, %77
  br i1 %78, label %79, label %99

79:                                               ; preds = %74
  %80 = load i64, i64* @BT_RSSI_STATE_LOW, align 8
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* @BT_COEX_STATE_WIFI_RSSI_LOW, align 4
  %83 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %84 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = or i32 %86, %82
  store i32 %87, i32* %85, align 8
  %88 = load i32, i32* @BT_COEX_STATE_WIFI_RSSI_HIGH, align 4
  %89 = xor i32 %88, -1
  %90 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %91 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = and i32 %93, %89
  store i32 %94, i32* %92, align 8
  %95 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %96 = load i32, i32* @COMP_BT_COEXIST, align 4
  %97 = load i32, i32* @DBG_TRACE, align 4
  %98 = call i32 @RT_TRACE(%struct.rtl_priv* %95, i32 %96, i32 %97, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %105

99:                                               ; preds = %74
  %100 = load i32, i32* @BT_RSSI_STATE_STAY_HIGH, align 4
  store i32 %100, i32* %12, align 4
  %101 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %102 = load i32, i32* @COMP_BT_COEXIST, align 4
  %103 = load i32, i32* @DBG_TRACE, align 4
  %104 = call i32 @RT_TRACE(%struct.rtl_priv* %101, i32 %102, i32 %103, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %105

105:                                              ; preds = %99, %79
  br label %106

106:                                              ; preds = %105, %73
  br label %310

107:                                              ; preds = %4
  %108 = load i32, i32* %7, align 4
  %109 = icmp eq i32 %108, 3
  br i1 %109, label %110, label %309

110:                                              ; preds = %107
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* %9, align 4
  %113 = icmp sgt i32 %111, %112
  br i1 %113, label %114, label %124

114:                                              ; preds = %110
  %115 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %116 = load i32, i32* @COMP_BT_COEXIST, align 4
  %117 = load i32, i32* @DBG_TRACE, align 4
  %118 = call i32 @RT_TRACE(%struct.rtl_priv* %115, i32 %116, i32 %117, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %119 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %120 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %5, align 4
  br label %317

124:                                              ; preds = %110
  %125 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %126 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @BT_RSSI_STATE_LOW, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %138, label %131

131:                                              ; preds = %124
  %132 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %133 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @BT_RSSI_STATE_STAY_LOW, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %180

138:                                              ; preds = %131, %124
  %139 = load i64, i64* %11, align 8
  %140 = load i32, i32* %8, align 4
  %141 = load i32, i32* @BT_FW_COEX_THRESH_TOL, align 4
  %142 = add nsw i32 %140, %141
  %143 = sext i32 %142 to i64
  %144 = icmp sge i64 %139, %143
  br i1 %144, label %145, label %172

145:                                              ; preds = %138
  %146 = load i64, i64* @BT_RSSI_STATE_MEDIUM, align 8
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %12, align 4
  %148 = load i32, i32* @BT_COEX_STATE_WIFI_RSSI_MEDIUM, align 4
  %149 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %150 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = or i32 %152, %148
  store i32 %153, i32* %151, align 8
  %154 = load i32, i32* @BT_COEX_STATE_WIFI_RSSI_LOW, align 4
  %155 = xor i32 %154, -1
  %156 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %157 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = and i32 %159, %155
  store i32 %160, i32* %158, align 8
  %161 = load i32, i32* @BT_COEX_STATE_WIFI_RSSI_HIGH, align 4
  %162 = xor i32 %161, -1
  %163 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %164 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = and i32 %166, %162
  store i32 %167, i32* %165, align 8
  %168 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %169 = load i32, i32* @COMP_BT_COEXIST, align 4
  %170 = load i32, i32* @DBG_TRACE, align 4
  %171 = call i32 @RT_TRACE(%struct.rtl_priv* %168, i32 %169, i32 %170, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  br label %179

172:                                              ; preds = %138
  %173 = load i64, i64* @BT_RSSI_STATE_STAY_LOW, align 8
  %174 = trunc i64 %173 to i32
  store i32 %174, i32* %12, align 4
  %175 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %176 = load i32, i32* @COMP_BT_COEXIST, align 4
  %177 = load i32, i32* @DBG_TRACE, align 4
  %178 = call i32 @RT_TRACE(%struct.rtl_priv* %175, i32 %176, i32 %177, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %179

179:                                              ; preds = %172, %145
  br label %308

180:                                              ; preds = %131
  %181 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %182 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @BT_RSSI_STATE_MEDIUM, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %194, label %187

187:                                              ; preds = %180
  %188 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %189 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @BT_RSSI_STATE_STAY_MEDIUM, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %268

194:                                              ; preds = %187, %180
  %195 = load i64, i64* %11, align 8
  %196 = load i32, i32* %9, align 4
  %197 = load i32, i32* @BT_FW_COEX_THRESH_TOL, align 4
  %198 = add nsw i32 %196, %197
  %199 = sext i32 %198 to i64
  %200 = icmp sge i64 %195, %199
  br i1 %200, label %201, label %227

201:                                              ; preds = %194
  %202 = load i32, i32* @BT_RSSI_STATE_HIGH, align 4
  store i32 %202, i32* %12, align 4
  %203 = load i32, i32* @BT_COEX_STATE_WIFI_RSSI_HIGH, align 4
  %204 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %205 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 8
  %208 = or i32 %207, %203
  store i32 %208, i32* %206, align 8
  %209 = load i32, i32* @BT_COEX_STATE_WIFI_RSSI_LOW, align 4
  %210 = xor i32 %209, -1
  %211 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %212 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 8
  %215 = and i32 %214, %210
  store i32 %215, i32* %213, align 8
  %216 = load i32, i32* @BT_COEX_STATE_WIFI_RSSI_MEDIUM, align 4
  %217 = xor i32 %216, -1
  %218 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %219 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = and i32 %221, %217
  store i32 %222, i32* %220, align 8
  %223 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %224 = load i32, i32* @COMP_BT_COEXIST, align 4
  %225 = load i32, i32* @DBG_TRACE, align 4
  %226 = call i32 @RT_TRACE(%struct.rtl_priv* %223, i32 %224, i32 %225, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %267

227:                                              ; preds = %194
  %228 = load i64, i64* %11, align 8
  %229 = load i32, i32* %8, align 4
  %230 = sext i32 %229 to i64
  %231 = icmp slt i64 %228, %230
  br i1 %231, label %232, label %259

232:                                              ; preds = %227
  %233 = load i64, i64* @BT_RSSI_STATE_LOW, align 8
  %234 = trunc i64 %233 to i32
  store i32 %234, i32* %12, align 4
  %235 = load i32, i32* @BT_COEX_STATE_WIFI_RSSI_LOW, align 4
  %236 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %237 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 8
  %240 = or i32 %239, %235
  store i32 %240, i32* %238, align 8
  %241 = load i32, i32* @BT_COEX_STATE_WIFI_RSSI_HIGH, align 4
  %242 = xor i32 %241, -1
  %243 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %244 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 8
  %247 = and i32 %246, %242
  store i32 %247, i32* %245, align 8
  %248 = load i32, i32* @BT_COEX_STATE_WIFI_RSSI_MEDIUM, align 4
  %249 = xor i32 %248, -1
  %250 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %251 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 8
  %254 = and i32 %253, %249
  store i32 %254, i32* %252, align 8
  %255 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %256 = load i32, i32* @COMP_BT_COEXIST, align 4
  %257 = load i32, i32* @DBG_TRACE, align 4
  %258 = call i32 @RT_TRACE(%struct.rtl_priv* %255, i32 %256, i32 %257, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %266

259:                                              ; preds = %227
  %260 = load i64, i64* @BT_RSSI_STATE_STAY_MEDIUM, align 8
  %261 = trunc i64 %260 to i32
  store i32 %261, i32* %12, align 4
  %262 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %263 = load i32, i32* @COMP_BT_COEXIST, align 4
  %264 = load i32, i32* @DBG_TRACE, align 4
  %265 = call i32 @RT_TRACE(%struct.rtl_priv* %262, i32 %263, i32 %264, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  br label %266

266:                                              ; preds = %259, %232
  br label %267

267:                                              ; preds = %266, %201
  br label %307

268:                                              ; preds = %187
  %269 = load i64, i64* %11, align 8
  %270 = load i32, i32* %9, align 4
  %271 = sext i32 %270 to i64
  %272 = icmp slt i64 %269, %271
  br i1 %272, label %273, label %300

273:                                              ; preds = %268
  %274 = load i64, i64* @BT_RSSI_STATE_MEDIUM, align 8
  %275 = trunc i64 %274 to i32
  store i32 %275, i32* %12, align 4
  %276 = load i32, i32* @BT_COEX_STATE_WIFI_RSSI_MEDIUM, align 4
  %277 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %278 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 8
  %281 = or i32 %280, %276
  store i32 %281, i32* %279, align 8
  %282 = load i32, i32* @BT_COEX_STATE_WIFI_RSSI_HIGH, align 4
  %283 = xor i32 %282, -1
  %284 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %285 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 8
  %288 = and i32 %287, %283
  store i32 %288, i32* %286, align 8
  %289 = load i32, i32* @BT_COEX_STATE_WIFI_RSSI_LOW, align 4
  %290 = xor i32 %289, -1
  %291 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %292 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 8
  %295 = and i32 %294, %290
  store i32 %295, i32* %293, align 8
  %296 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %297 = load i32, i32* @COMP_BT_COEXIST, align 4
  %298 = load i32, i32* @DBG_TRACE, align 4
  %299 = call i32 @RT_TRACE(%struct.rtl_priv* %296, i32 %297, i32 %298, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  br label %306

300:                                              ; preds = %268
  %301 = load i32, i32* @BT_RSSI_STATE_STAY_HIGH, align 4
  store i32 %301, i32* %12, align 4
  %302 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %303 = load i32, i32* @COMP_BT_COEXIST, align 4
  %304 = load i32, i32* @DBG_TRACE, align 4
  %305 = call i32 @RT_TRACE(%struct.rtl_priv* %302, i32 %303, i32 %304, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %306

306:                                              ; preds = %300, %273
  br label %307

307:                                              ; preds = %306, %267
  br label %308

308:                                              ; preds = %307, %179
  br label %309

309:                                              ; preds = %308, %107
  br label %310

310:                                              ; preds = %309, %106
  %311 = load i32, i32* %12, align 4
  %312 = sext i32 %311 to i64
  %313 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %314 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %314, i32 0, i32 0
  store i64 %312, i64* %315, align 8
  %316 = load i32, i32* %12, align 4
  store i32 %316, i32* %5, align 4
  br label %317

317:                                              ; preds = %310, %114
  %318 = load i32, i32* %5, align 4
  ret i32 %318
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i64 @rtl8723e_dm_bt_get_rx_ss(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
