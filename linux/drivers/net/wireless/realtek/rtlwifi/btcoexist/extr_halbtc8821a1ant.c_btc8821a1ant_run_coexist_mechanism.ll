; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a1ant.c_btc8821a1ant_run_coexist_mechanism.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a1ant.c_btc8821a1ant_run_coexist_mechanism.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)*, i64, i64, %struct.btc_bt_link_info, %struct.rtl_priv* }
%struct.btc_bt_link_info = type { i64, i64, i64, i64 }
%struct.rtl_priv = type { i32 }

@BTC_RSSI_STATE_HIGH = common dso_local global i32 0, align 4
@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"[BTCoex], RunCoexistMechanism()===>\0A\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"[BTCoex], RunCoexistMechanism(), return for Manual CTRL <===\0A\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"[BTCoex], RunCoexistMechanism(), return for Stop Coex DM <===\0A\00", align 1
@coex_sta = common dso_local global %struct.TYPE_3__* null, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"[BTCoex], wifi is under IPS !!!\0A\00", align 1
@BTC_GET_BL_WIFI_UNDER_5G = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [53 x i8] c"[BTCoex], RunCoexistMechanism(), return for 5G <===\0A\00", align 1
@BT_8821A_1ANT_BT_STATUS_ACL_BUSY = common dso_local global i64 0, align 8
@coex_dm = common dso_local global %struct.TYPE_4__* null, align 8
@BT_8821A_1ANT_BT_STATUS_SCO_BUSY = common dso_local global i64 0, align 8
@BT_8821A_1ANT_BT_STATUS_ACL_SCO_BUSY = common dso_local global i64 0, align 8
@BTC_SET_BL_INC_SCAN_DEV_NUM = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_CONNECTED = common dso_local global i32 0, align 4
@BTC_GET_U4_WIFI_LINK_STATUS = common dso_local global i32 0, align 4
@WIFI_P2P_GO_CONNECTED = common dso_local global i32 0, align 4
@NORMAL_EXEC = common dso_local global i32 0, align 4
@BTC_GET_BL_HS_OPERATION = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"[BTCoex], wifi is non connected-idle !!!\0A\00", align 1
@BTC_GET_BL_WIFI_SCAN = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_LINK = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_ROAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*)* @btc8821a1ant_run_coexist_mechanism to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8821a1ant_run_coexist_mechanism(%struct.btc_coexist* %0) #0 {
  %2 = alloca %struct.btc_coexist*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.btc_bt_link_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.btc_coexist* %0, %struct.btc_coexist** %2, align 8
  %17 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %18 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %17, i32 0, i32 5
  %19 = load %struct.rtl_priv*, %struct.rtl_priv** %18, align 8
  store %struct.rtl_priv* %19, %struct.rtl_priv** %3, align 8
  %20 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %21 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %20, i32 0, i32 4
  store %struct.btc_bt_link_info* %21, %struct.btc_bt_link_info** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 5, i32* %9, align 4
  %22 = load i32, i32* @BTC_RSSI_STATE_HIGH, align 4
  store i32 %22, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %23 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %24 = load i32, i32* @COMP_BT_COEXIST, align 4
  %25 = load i32, i32* @DBG_LOUD, align 4
  %26 = call i32 @RT_TRACE(%struct.rtl_priv* %23, i32 %24, i32 %25, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %28 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %1
  %32 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %33 = load i32, i32* @COMP_BT_COEXIST, align 4
  %34 = load i32, i32* @DBG_LOUD, align 4
  %35 = call i32 @RT_TRACE(%struct.rtl_priv* %32, i32 %33, i32 %34, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  br label %262

36:                                               ; preds = %1
  %37 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %38 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %43 = load i32, i32* @COMP_BT_COEXIST, align 4
  %44 = load i32, i32* @DBG_LOUD, align 4
  %45 = call i32 @RT_TRACE(%struct.rtl_priv* %42, i32 %43, i32 %44, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0))
  br label %262

46:                                               ; preds = %36
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %53 = load i32, i32* @COMP_BT_COEXIST, align 4
  %54 = load i32, i32* @DBG_LOUD, align 4
  %55 = call i32 @RT_TRACE(%struct.rtl_priv* %52, i32 %53, i32 %54, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %262

56:                                               ; preds = %46
  %57 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %58 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %57, i32 0, i32 0
  %59 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %58, align 8
  %60 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %61 = load i32, i32* @BTC_GET_BL_WIFI_UNDER_5G, align 4
  %62 = call i32 %59(%struct.btc_coexist* %60, i32 %61, i32* %13)
  %63 = load i32, i32* %13, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %56
  %66 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %67 = load i32, i32* @COMP_BT_COEXIST, align 4
  %68 = load i32, i32* @DBG_LOUD, align 4
  %69 = call i32 @RT_TRACE(%struct.rtl_priv* %66, i32 %67, i32 %68, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0))
  %70 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %71 = call i32 @btc8821a1ant_coex_under_5g(%struct.btc_coexist* %70)
  br label %262

72:                                               ; preds = %56
  %73 = load i64, i64* @BT_8821A_1ANT_BT_STATUS_ACL_BUSY, align 8
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %73, %76
  br i1 %77, label %90, label %78

78:                                               ; preds = %72
  %79 = load i64, i64* @BT_8821A_1ANT_BT_STATUS_SCO_BUSY, align 8
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %79, %82
  br i1 %83, label %90, label %84

84:                                               ; preds = %78
  %85 = load i64, i64* @BT_8821A_1ANT_BT_STATUS_ACL_SCO_BUSY, align 8
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %85, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %84, %78, %72
  store i32 1, i32* %7, align 4
  br label %91

91:                                               ; preds = %90, %84
  %92 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %93 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %92, i32 0, i32 1
  %94 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %93, align 8
  %95 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %96 = load i32, i32* @BTC_SET_BL_INC_SCAN_DEV_NUM, align 4
  %97 = call i32 %94(%struct.btc_coexist* %95, i32 %96, i32* %7)
  %98 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %99 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %98, i32 0, i32 0
  %100 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %99, align 8
  %101 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %102 = load i32, i32* @BTC_GET_BL_WIFI_CONNECTED, align 4
  %103 = call i32 %100(%struct.btc_coexist* %101, i32 %102, i32* %5)
  %104 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %105 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %104, i32 0, i32 0
  %106 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %105, align 8
  %107 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %108 = load i32, i32* @BTC_GET_U4_WIFI_LINK_STATUS, align 4
  %109 = call i32 %106(%struct.btc_coexist* %107, i32 %108, i32* %11)
  %110 = load i32, i32* %11, align 4
  %111 = ashr i32 %110, 16
  store i32 %111, i32* %12, align 4
  %112 = load i32, i32* %12, align 4
  %113 = icmp sge i32 %112, 2
  br i1 %113, label %119, label %114

114:                                              ; preds = %91
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* @WIFI_P2P_GO_CONNECTED, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %130

119:                                              ; preds = %114, %91
  %120 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %121 = load i32, i32* @NORMAL_EXEC, align 4
  %122 = call i32 @btc8821a1ant_limited_tx(%struct.btc_coexist* %120, i32 %121, i32 0, i32 0, i32 0, i32 0)
  %123 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %124 = load i32, i32* @NORMAL_EXEC, align 4
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* %9, align 4
  %127 = call i32 @btc8821a1ant_limited_rx(%struct.btc_coexist* %123, i32 %124, i32 0, i32 %125, i32 %126)
  %128 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %129 = call i32 @btc8821a1ant_action_wifi_multi_port(%struct.btc_coexist* %128)
  br label %262

130:                                              ; preds = %114
  %131 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %4, align 8
  %132 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %144, label %135

135:                                              ; preds = %130
  %136 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %4, align 8
  %137 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %144, label %140

140:                                              ; preds = %135
  %141 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %142 = load i32, i32* @NORMAL_EXEC, align 4
  %143 = call i32 @btc8821a1ant_limited_tx(%struct.btc_coexist* %141, i32 %142, i32 0, i32 0, i32 0, i32 0)
  br label %158

144:                                              ; preds = %135, %130
  %145 = load i32, i32* %5, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %144
  %148 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %149 = call i32 @btc8821a1ant_wifi_rssi_state(%struct.btc_coexist* %148, i32 1, i32 2, i32 30, i32 0)
  store i32 %149, i32* %10, align 4
  %150 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %151 = load i32, i32* @NORMAL_EXEC, align 4
  %152 = call i32 @btc8821a1ant_limited_tx(%struct.btc_coexist* %150, i32 %151, i32 1, i32 1, i32 0, i32 1)
  br label %157

153:                                              ; preds = %144
  %154 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %155 = load i32, i32* @NORMAL_EXEC, align 4
  %156 = call i32 @btc8821a1ant_limited_tx(%struct.btc_coexist* %154, i32 %155, i32 0, i32 0, i32 0, i32 0)
  br label %157

157:                                              ; preds = %153, %147
  br label %158

158:                                              ; preds = %157, %140
  %159 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %4, align 8
  %160 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %159, i32 0, i32 3
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %158
  store i32 1, i32* %8, align 4
  store i32 3, i32* %9, align 4
  br label %183

164:                                              ; preds = %158
  %165 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %4, align 8
  %166 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %164
  store i32 1, i32* %8, align 4
  store i32 5, i32* %9, align 4
  br label %182

170:                                              ; preds = %164
  %171 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %4, align 8
  %172 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %180, label %175

175:                                              ; preds = %170
  %176 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %4, align 8
  %177 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %175, %170
  store i32 1, i32* %8, align 4
  store i32 8, i32* %9, align 4
  br label %181

181:                                              ; preds = %180, %175
  br label %182

182:                                              ; preds = %181, %169
  br label %183

183:                                              ; preds = %182, %163
  %184 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %185 = load i32, i32* @NORMAL_EXEC, align 4
  %186 = load i32, i32* %8, align 4
  %187 = load i32, i32* %9, align 4
  %188 = call i32 @btc8821a1ant_limited_rx(%struct.btc_coexist* %184, i32 %185, i32 0, i32 %186, i32 %187)
  %189 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %190 = call i32 @btc8821a1ant_run_sw_coex_mech(%struct.btc_coexist* %189)
  %191 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %192 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %191, i32 0, i32 0
  %193 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %192, align 8
  %194 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %195 = load i32, i32* @BTC_GET_BL_HS_OPERATION, align 4
  %196 = call i32 %193(%struct.btc_coexist* %194, i32 %195, i32* %6)
  %197 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %183
  %202 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %203 = call i32 @btc8821a1ant_action_bt_inquiry(%struct.btc_coexist* %202)
  br label %262

204:                                              ; preds = %183
  %205 = load i32, i32* %6, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %204
  %208 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %209 = call i32 @btc8821a1ant_action_hs(%struct.btc_coexist* %208)
  br label %262

210:                                              ; preds = %204
  br label %211

211:                                              ; preds = %210
  %212 = load i32, i32* %5, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %259, label %214

214:                                              ; preds = %211
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %215 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %216 = load i32, i32* @COMP_BT_COEXIST, align 4
  %217 = load i32, i32* @DBG_LOUD, align 4
  %218 = call i32 @RT_TRACE(%struct.rtl_priv* %215, i32 %216, i32 %217, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  %219 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %220 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %219, i32 0, i32 0
  %221 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %220, align 8
  %222 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %223 = load i32, i32* @BTC_GET_BL_WIFI_SCAN, align 4
  %224 = call i32 %221(%struct.btc_coexist* %222, i32 %223, i32* %14)
  %225 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %226 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %225, i32 0, i32 0
  %227 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %226, align 8
  %228 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %229 = load i32, i32* @BTC_GET_BL_WIFI_LINK, align 4
  %230 = call i32 %227(%struct.btc_coexist* %228, i32 %229, i32* %15)
  %231 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %232 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %231, i32 0, i32 0
  %233 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %232, align 8
  %234 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %235 = load i32, i32* @BTC_GET_BL_WIFI_ROAM, align 4
  %236 = call i32 %233(%struct.btc_coexist* %234, i32 %235, i32* %16)
  %237 = load i32, i32* %14, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %245, label %239

239:                                              ; preds = %214
  %240 = load i32, i32* %15, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %245, label %242

242:                                              ; preds = %239
  %243 = load i32, i32* %16, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %255

245:                                              ; preds = %242, %239, %214
  %246 = load i32, i32* %14, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %251

248:                                              ; preds = %245
  %249 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %250 = call i32 @btc8821a1ant_act_wifi_not_conn_scan(%struct.btc_coexist* %249)
  br label %254

251:                                              ; preds = %245
  %252 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %253 = call i32 @btc8821a1ant_action_wifi_not_connected_asso_auth(%struct.btc_coexist* %252)
  br label %254

254:                                              ; preds = %251, %248
  br label %258

255:                                              ; preds = %242
  %256 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %257 = call i32 @btc8821a1ant_action_wifi_not_connected(%struct.btc_coexist* %256)
  br label %258

258:                                              ; preds = %255, %254
  br label %262

259:                                              ; preds = %211
  %260 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %261 = call i32 @btc8821a1ant_action_wifi_connected(%struct.btc_coexist* %260)
  br label %262

262:                                              ; preds = %31, %41, %51, %65, %119, %201, %207, %259, %258
  ret void
}

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @btc8821a1ant_coex_under_5g(%struct.btc_coexist*) #1

declare dso_local i32 @btc8821a1ant_limited_tx(%struct.btc_coexist*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @btc8821a1ant_limited_rx(%struct.btc_coexist*, i32, i32, i32, i32) #1

declare dso_local i32 @btc8821a1ant_action_wifi_multi_port(%struct.btc_coexist*) #1

declare dso_local i32 @btc8821a1ant_wifi_rssi_state(%struct.btc_coexist*, i32, i32, i32, i32) #1

declare dso_local i32 @btc8821a1ant_run_sw_coex_mech(%struct.btc_coexist*) #1

declare dso_local i32 @btc8821a1ant_action_bt_inquiry(%struct.btc_coexist*) #1

declare dso_local i32 @btc8821a1ant_action_hs(%struct.btc_coexist*) #1

declare dso_local i32 @btc8821a1ant_act_wifi_not_conn_scan(%struct.btc_coexist*) #1

declare dso_local i32 @btc8821a1ant_action_wifi_not_connected_asso_auth(%struct.btc_coexist*) #1

declare dso_local i32 @btc8821a1ant_action_wifi_not_connected(%struct.btc_coexist*) #1

declare dso_local i32 @btc8821a1ant_action_wifi_connected(%struct.btc_coexist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
