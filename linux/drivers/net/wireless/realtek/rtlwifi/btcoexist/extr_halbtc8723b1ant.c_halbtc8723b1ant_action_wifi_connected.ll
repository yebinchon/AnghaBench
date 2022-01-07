; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b1ant.c_halbtc8723b1ant_action_wifi_connected.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b1ant.c_halbtc8723b1ant_action_wifi_connected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64, i32, i32, i32 }
%struct.btc_coexist = type { %struct.TYPE_4__, i32 (%struct.btc_coexist*, i32, i32*)*, %struct.rtl_priv* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.rtl_priv = type { i32 }

@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"[BTCoex], CoexForWifiConnect()===>\0A\00", align 1
@BTC_GET_BL_WIFI_4_WAY_PROGRESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [67 x i8] c"[BTCoex], CoexForWifiConnect(), return for wifi is under 4way<===\0A\00", align 1
@BTC_GET_BL_WIFI_SCAN = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_LINK = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_ROAM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [67 x i8] c"[BTCoex], CoexForWifiConnect(), return for wifi is under scan<===\0A\00", align 1
@BTC_GET_BL_WIFI_AP_MODE_ENABLE = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_BUSY = common dso_local global i32 0, align 4
@coex_dm = common dso_local global %struct.TYPE_6__* null, align 8
@BT_8723B_1ANT_BT_STATUS_ACL_BUSY = common dso_local global i64 0, align 8
@BTC_PS_WIFI_NATIVE = common dso_local global i32 0, align 4
@coex_sta = common dso_local global %struct.TYPE_5__* null, align 8
@BT_8723B_1ANT_WIFI_NOISY_THRESH = common dso_local global i64 0, align 8
@BTC_PS_LPS_ON = common dso_local global i32 0, align 4
@BT_8723B_1ANT_WIFI_STATUS_CONNECTED_IDLE = common dso_local global i32 0, align 4
@BT_8723B_1ANT_BT_STATUS_SCO_BUSY = common dso_local global i64 0, align 8
@BT_8723B_1ANT_BT_STATUS_ACL_SCO_BUSY = common dso_local global i64 0, align 8
@NORMAL_EXEC = common dso_local global i32 0, align 4
@BTC_ANT_PATH_PTA = common dso_local global i32 0, align 4
@BT_8723B_1ANT_WIFI_STATUS_CONNECTED_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*)* @halbtc8723b1ant_action_wifi_connected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @halbtc8723b1ant_action_wifi_connected(%struct.btc_coexist* %0) #0 {
  %2 = alloca %struct.btc_coexist*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.btc_coexist* %0, %struct.btc_coexist** %2, align 8
  %10 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %11 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %10, i32 0, i32 2
  %12 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  store %struct.rtl_priv* %12, %struct.rtl_priv** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %14 = load i32, i32* @COMP_BT_COEXIST, align 4
  %15 = load i32, i32* @DBG_LOUD, align 4
  %16 = call i32 @RT_TRACE(%struct.rtl_priv* %13, i32 %14, i32 %15, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %18 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %17, i32 0, i32 1
  %19 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %18, align 8
  %20 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %21 = load i32, i32* @BTC_GET_BL_WIFI_4_WAY_PROGRESS, align 4
  %22 = call i32 %19(%struct.btc_coexist* %20, i32 %21, i32* %8)
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %1
  %26 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %27 = call i32 @halbtc8723b1ant_action_wifi_connected_special_packet(%struct.btc_coexist* %26)
  %28 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %29 = load i32, i32* @COMP_BT_COEXIST, align 4
  %30 = load i32, i32* @DBG_LOUD, align 4
  %31 = call i32 @RT_TRACE(%struct.rtl_priv* %28, i32 %29, i32 %30, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0))
  br label %239

32:                                               ; preds = %1
  %33 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %34 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %33, i32 0, i32 1
  %35 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %34, align 8
  %36 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %37 = load i32, i32* @BTC_GET_BL_WIFI_SCAN, align 4
  %38 = call i32 %35(%struct.btc_coexist* %36, i32 %37, i32* %5)
  %39 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %40 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %39, i32 0, i32 1
  %41 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %40, align 8
  %42 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %43 = load i32, i32* @BTC_GET_BL_WIFI_LINK, align 4
  %44 = call i32 %41(%struct.btc_coexist* %42, i32 %43, i32* %6)
  %45 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %46 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %45, i32 0, i32 1
  %47 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %46, align 8
  %48 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %49 = load i32, i32* @BTC_GET_BL_WIFI_ROAM, align 4
  %50 = call i32 %47(%struct.btc_coexist* %48, i32 %49, i32* %7)
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %32
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %56, %53, %32
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %64 = call i32 @btc8723b1ant_action_wifi_conn_scan(%struct.btc_coexist* %63)
  br label %68

65:                                               ; preds = %59
  %66 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %67 = call i32 @halbtc8723b1ant_action_wifi_connected_special_packet(%struct.btc_coexist* %66)
  br label %68

68:                                               ; preds = %65, %62
  %69 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %70 = load i32, i32* @COMP_BT_COEXIST, align 4
  %71 = load i32, i32* @DBG_LOUD, align 4
  %72 = call i32 @RT_TRACE(%struct.rtl_priv* %69, i32 %70, i32 %71, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0))
  br label %239

73:                                               ; preds = %56
  %74 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %75 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %74, i32 0, i32 1
  %76 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %75, align 8
  %77 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %78 = load i32, i32* @BTC_GET_BL_WIFI_AP_MODE_ENABLE, align 4
  %79 = call i32 %76(%struct.btc_coexist* %77, i32 %78, i32* %9)
  %80 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %81 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %80, i32 0, i32 1
  %82 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %81, align 8
  %83 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %84 = load i32, i32* @BTC_GET_BL_WIFI_BUSY, align 4
  %85 = call i32 %82(%struct.btc_coexist* %83, i32 %84, i32* %4)
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %154, label %88

88:                                               ; preds = %73
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** @coex_dm, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @BT_8723B_1ANT_BT_STATUS_ACL_BUSY, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %154

94:                                               ; preds = %88
  %95 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %96 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %154, label %100

100:                                              ; preds = %94
  %101 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %102 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %129

106:                                              ; preds = %100
  %107 = load i32, i32* %4, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %106
  %110 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %111 = load i32, i32* @BTC_PS_WIFI_NATIVE, align 4
  %112 = call i32 @halbtc8723b1ant_power_save_state(%struct.btc_coexist* %110, i32 %111, i32 0, i32 0)
  br label %128

113:                                              ; preds = %106
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** @coex_sta, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @BT_8723B_1ANT_WIFI_NOISY_THRESH, align 8
  %118 = icmp sge i64 %116, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %113
  %120 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %121 = load i32, i32* @BTC_PS_WIFI_NATIVE, align 4
  %122 = call i32 @halbtc8723b1ant_power_save_state(%struct.btc_coexist* %120, i32 %121, i32 0, i32 0)
  br label %127

123:                                              ; preds = %113
  %124 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %125 = load i32, i32* @BTC_PS_LPS_ON, align 4
  %126 = call i32 @halbtc8723b1ant_power_save_state(%struct.btc_coexist* %124, i32 %125, i32 80, i32 4)
  br label %127

127:                                              ; preds = %123, %119
  br label %128

128:                                              ; preds = %127, %109
  br label %153

129:                                              ; preds = %100
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** @coex_sta, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %148, label %134

134:                                              ; preds = %129
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** @coex_sta, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %148, label %139

139:                                              ; preds = %134
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** @coex_sta, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %148, label %144

144:                                              ; preds = %139
  %145 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %146 = load i32, i32* @BTC_PS_WIFI_NATIVE, align 4
  %147 = call i32 @halbtc8723b1ant_power_save_state(%struct.btc_coexist* %145, i32 %146, i32 0, i32 0)
  br label %152

148:                                              ; preds = %139, %134, %129
  %149 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %150 = load i32, i32* @BTC_PS_LPS_ON, align 4
  %151 = call i32 @halbtc8723b1ant_power_save_state(%struct.btc_coexist* %149, i32 %150, i32 80, i32 4)
  br label %152

152:                                              ; preds = %148, %144
  br label %153

153:                                              ; preds = %152, %128
  br label %158

154:                                              ; preds = %94, %88, %73
  %155 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %156 = load i32, i32* @BTC_PS_WIFI_NATIVE, align 4
  %157 = call i32 @halbtc8723b1ant_power_save_state(%struct.btc_coexist* %155, i32 %156, i32 0, i32 0)
  br label %158

158:                                              ; preds = %154, %153
  %159 = load i32, i32* %4, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %200, label %161

161:                                              ; preds = %158
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** @coex_dm, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @BT_8723B_1ANT_BT_STATUS_ACL_BUSY, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %171

167:                                              ; preds = %161
  %168 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %169 = load i32, i32* @BT_8723B_1ANT_WIFI_STATUS_CONNECTED_IDLE, align 4
  %170 = call i32 @halbtc8723b1ant_action_wifi_connected_bt_acl_busy(%struct.btc_coexist* %168, i32 %169)
  br label %199

171:                                              ; preds = %161
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** @coex_dm, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @BT_8723B_1ANT_BT_STATUS_SCO_BUSY, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %183, label %177

177:                                              ; preds = %171
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** @coex_dm, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @BT_8723B_1ANT_BT_STATUS_ACL_SCO_BUSY, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %187

183:                                              ; preds = %177, %171
  %184 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %185 = load i32, i32* @BT_8723B_1ANT_WIFI_STATUS_CONNECTED_IDLE, align 4
  %186 = call i32 @btc8723b1ant_act_bt_sco_hid_only_busy(%struct.btc_coexist* %184, i32 %185)
  br label %198

187:                                              ; preds = %177
  %188 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %189 = load i32, i32* @NORMAL_EXEC, align 4
  %190 = call i32 @halbtc8723b1ant_ps_tdma(%struct.btc_coexist* %188, i32 %189, i32 0, i32 8)
  %191 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %192 = load i32, i32* @BTC_ANT_PATH_PTA, align 4
  %193 = load i32, i32* @NORMAL_EXEC, align 4
  %194 = call i32 @halbtc8723b1ant_set_ant_path(%struct.btc_coexist* %191, i32 %192, i32 %193, i32 0, i32 0)
  %195 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %196 = load i32, i32* @NORMAL_EXEC, align 4
  %197 = call i32 @halbtc8723b1ant_coex_table_with_type(%struct.btc_coexist* %195, i32 %196, i32 2)
  br label %198

198:                                              ; preds = %187, %183
  br label %199

199:                                              ; preds = %198, %167
  br label %239

200:                                              ; preds = %158
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** @coex_dm, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @BT_8723B_1ANT_BT_STATUS_ACL_BUSY, align 8
  %205 = icmp eq i64 %203, %204
  br i1 %205, label %206, label %210

206:                                              ; preds = %200
  %207 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %208 = load i32, i32* @BT_8723B_1ANT_WIFI_STATUS_CONNECTED_BUSY, align 4
  %209 = call i32 @halbtc8723b1ant_action_wifi_connected_bt_acl_busy(%struct.btc_coexist* %207, i32 %208)
  br label %238

210:                                              ; preds = %200
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** @coex_dm, align 8
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @BT_8723B_1ANT_BT_STATUS_SCO_BUSY, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %222, label %216

216:                                              ; preds = %210
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** @coex_dm, align 8
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* @BT_8723B_1ANT_BT_STATUS_ACL_SCO_BUSY, align 8
  %221 = icmp eq i64 %219, %220
  br i1 %221, label %222, label %226

222:                                              ; preds = %216, %210
  %223 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %224 = load i32, i32* @BT_8723B_1ANT_WIFI_STATUS_CONNECTED_BUSY, align 4
  %225 = call i32 @btc8723b1ant_act_bt_sco_hid_only_busy(%struct.btc_coexist* %223, i32 %224)
  br label %237

226:                                              ; preds = %216
  %227 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %228 = load i32, i32* @NORMAL_EXEC, align 4
  %229 = call i32 @halbtc8723b1ant_ps_tdma(%struct.btc_coexist* %227, i32 %228, i32 1, i32 32)
  %230 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %231 = load i32, i32* @BTC_ANT_PATH_PTA, align 4
  %232 = load i32, i32* @NORMAL_EXEC, align 4
  %233 = call i32 @halbtc8723b1ant_set_ant_path(%struct.btc_coexist* %230, i32 %231, i32 %232, i32 0, i32 0)
  %234 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %235 = load i32, i32* @NORMAL_EXEC, align 4
  %236 = call i32 @halbtc8723b1ant_coex_table_with_type(%struct.btc_coexist* %234, i32 %235, i32 4)
  br label %237

237:                                              ; preds = %226, %222
  br label %238

238:                                              ; preds = %237, %206
  br label %239

239:                                              ; preds = %25, %68, %238, %199
  ret void
}

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @halbtc8723b1ant_action_wifi_connected_special_packet(%struct.btc_coexist*) #1

declare dso_local i32 @btc8723b1ant_action_wifi_conn_scan(%struct.btc_coexist*) #1

declare dso_local i32 @halbtc8723b1ant_power_save_state(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @halbtc8723b1ant_action_wifi_connected_bt_acl_busy(%struct.btc_coexist*, i32) #1

declare dso_local i32 @btc8723b1ant_act_bt_sco_hid_only_busy(%struct.btc_coexist*, i32) #1

declare dso_local i32 @halbtc8723b1ant_ps_tdma(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @halbtc8723b1ant_set_ant_path(%struct.btc_coexist*, i32, i32, i32, i32) #1

declare dso_local i32 @halbtc8723b1ant_coex_table_with_type(%struct.btc_coexist*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
