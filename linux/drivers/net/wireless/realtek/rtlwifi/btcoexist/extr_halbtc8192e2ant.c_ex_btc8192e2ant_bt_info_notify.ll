; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8192e2ant.c_ex_btc8192e2ant_bt_info_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8192e2ant.c_ex_btc8192e2ant_bt_info_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32**, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i32*)*, i32, i32, i32, i32 (%struct.btc_coexist*, i32, i32*)*, %struct.rtl_priv* }
%struct.rtl_priv = type { i32 }

@coex_sta = common dso_local global %struct.TYPE_3__* null, align 8
@BT_INFO_SRC_8192E_2ANT_MAX = common dso_local global i32 0, align 4
@BT_INFO_SRC_8192E_2ANT_WIFI_FW = common dso_local global i32 0, align 4
@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"[BTCoex], Bt info[%d], length=%d, hex data = [\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"0x%02x]\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"0x%02x, \00", align 1
@BIT1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"bit1, send wifi BW&Chnl to BT!!\0A\00", align 1
@BTC_GET_BL_WIFI_CONNECTED = common dso_local global i32 0, align 4
@BTC_MEDIA_CONNECT = common dso_local global i32 0, align 4
@BTC_MEDIA_DISCONNECT = common dso_local global i32 0, align 4
@BIT3 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"bit3, BT NOT ignore Wlan active!\0A\00", align 1
@FORCE_EXEC = common dso_local global i32 0, align 4
@BIT4 = common dso_local global i32 0, align 4
@BT_INFO_8192E_2ANT_B_INQ_PAGE = common dso_local global i32 0, align 4
@BT_INFO_8192E_2ANT_B_CONNECTION = common dso_local global i32 0, align 4
@BT_INFO_8192E_2ANT_B_FTP = common dso_local global i32 0, align 4
@BT_INFO_8192E_2ANT_B_A2DP = common dso_local global i32 0, align 4
@BT_INFO_8192E_2ANT_B_HID = common dso_local global i32 0, align 4
@BT_INFO_8192E_2ANT_B_SCO_ESCO = common dso_local global i32 0, align 4
@BT_8192E_2ANT_BT_STATUS_NON_CONNECTED_IDLE = common dso_local global i64 0, align 8
@coex_dm = common dso_local global %struct.TYPE_4__* null, align 8
@.str.5 = private unnamed_addr constant [36 x i8] c"[BTCoex], BT Non-Connected idle!!!\0A\00", align 1
@BT_8192E_2ANT_BT_STATUS_CONNECTED_IDLE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [49 x i8] c"[BTCoex], bt_infoNotify(), BT Connected-idle!!!\0A\00", align 1
@BT_INFO_8192E_2ANT_B_SCO_BUSY = common dso_local global i32 0, align 4
@BT_8192E_2ANT_BT_STATUS_SCO_BUSY = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [43 x i8] c"[BTCoex], bt_infoNotify(), BT SCO busy!!!\0A\00", align 1
@BT_INFO_8192E_2ANT_B_ACL_BUSY = common dso_local global i32 0, align 4
@BT_8192E_2ANT_BT_STATUS_ACL_BUSY = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [43 x i8] c"[BTCoex], bt_infoNotify(), BT ACL busy!!!\0A\00", align 1
@BT_8192E_2ANT_BT_STATUS_MAX = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [50 x i8] c"[BTCoex]bt_infoNotify(), BT Non-Defined state!!!\0A\00", align 1
@BT_8192E_2ANT_BT_STATUS_ACL_SCO_BUSY = common dso_local global i64 0, align 8
@BTC_SET_BL_BT_TRAFFIC_BUSY = common dso_local global i32 0, align 4
@BTC_SET_BL_BT_LIMITED_DIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ex_btc8192e2ant_bt_info_notify(%struct.btc_coexist* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.btc_coexist*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtl_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.btc_coexist* %0, %struct.btc_coexist** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %15 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %14, i32 0, i32 5
  %16 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  store %struct.rtl_priv* %16, %struct.rtl_priv** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i32 0, i32* %18, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 15
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @BT_INFO_SRC_8192E_2ANT_MAX, align 4
  %25 = icmp sge i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* @BT_INFO_SRC_8192E_2ANT_WIFI_FW, align 4
  store i32 %27, i32* %10, align 4
  br label %28

28:                                               ; preds = %26, %3
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 11
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  %37 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %38 = load i32, i32* @COMP_BT_COEXIST, align 4
  %39 = load i32, i32* @DBG_LOUD, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %37, i32 %38, i32 %39, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %41)
  store i32 0, i32* %9, align 4
  br label %43

43:                                               ; preds = %97, %28
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %100

47:                                               ; preds = %43
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32**, i32*** %54, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32*, i32** %55, i64 %57
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 %52, i32* %62, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %71

65:                                               ; preds = %47
  %66 = load i32*, i32** %5, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %65, %47
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %6, align 4
  %74 = sub nsw i32 %73, 1
  %75 = icmp eq i32 %72, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %71
  %77 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %78 = load i32, i32* @COMP_BT_COEXIST, align 4
  %79 = load i32, i32* @DBG_LOUD, align 4
  %80 = load i32*, i32** %5, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %77, i32 %78, i32 %79, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  br label %96

86:                                               ; preds = %71
  %87 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %88 = load i32, i32* @COMP_BT_COEXIST, align 4
  %89 = load i32, i32* @DBG_LOUD, align 4
  %90 = load i32*, i32** %5, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %87, i32 %88, i32 %89, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %86, %76
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %9, align 4
  br label %43

100:                                              ; preds = %43
  %101 = load i32, i32* @BT_INFO_SRC_8192E_2ANT_WIFI_FW, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %214

104:                                              ; preds = %100
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  %107 = load i32**, i32*** %106, align 8
  %108 = load i32, i32* %10, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32*, i32** %107, i64 %109
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 2
  %113 = load i32, i32* %112, align 4
  %114 = and i32 %113, 15
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 8
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 1
  %119 = load i32**, i32*** %118, align 8
  %120 = load i32, i32* %10, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32*, i32** %119, i64 %121
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 3
  %125 = load i32, i32* %124, align 4
  %126 = mul nsw i32 %125, 2
  %127 = add nsw i32 %126, 10
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 3
  store i32 %127, i32* %129, align 4
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 1
  %132 = load i32**, i32*** %131, align 8
  %133 = load i32, i32* %10, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32*, i32** %132, i64 %134
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 4
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 4
  store i32 %138, i32* %140, align 8
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @BIT1, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %169

147:                                              ; preds = %104
  %148 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %149 = load i32, i32* @COMP_BT_COEXIST, align 4
  %150 = load i32, i32* @DBG_LOUD, align 4
  %151 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %148, i32 %149, i32 %150, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %152 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %153 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %152, i32 0, i32 4
  %154 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %153, align 8
  %155 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %156 = load i32, i32* @BTC_GET_BL_WIFI_CONNECTED, align 4
  %157 = call i32 %154(%struct.btc_coexist* %155, i32 %156, i32* %13)
  %158 = load i32, i32* %13, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %147
  %161 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %162 = load i32, i32* @BTC_MEDIA_CONNECT, align 4
  %163 = call i32 @ex_btc8192e2ant_media_status_notify(%struct.btc_coexist* %161, i32 %162)
  br label %168

164:                                              ; preds = %147
  %165 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %166 = load i32, i32* @BTC_MEDIA_DISCONNECT, align 4
  %167 = call i32 @ex_btc8192e2ant_media_status_notify(%struct.btc_coexist* %165, i32 %166)
  br label %168

168:                                              ; preds = %164, %160
  br label %169

169:                                              ; preds = %168, %104
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 4
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @BIT3, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %195

176:                                              ; preds = %169
  %177 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %178 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 8
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %194, label %181

181:                                              ; preds = %176
  %182 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %183 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %194, label %186

186:                                              ; preds = %181
  %187 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %188 = load i32, i32* @COMP_BT_COEXIST, align 4
  %189 = load i32, i32* @DBG_LOUD, align 4
  %190 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %187, i32 %188, i32 %189, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %191 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %192 = load i32, i32* @FORCE_EXEC, align 4
  %193 = call i32 @btc8192e2ant_ignore_wlan_act(%struct.btc_coexist* %191, i32 %192, i32 0)
  br label %194

194:                                              ; preds = %186, %181, %176
  br label %196

195:                                              ; preds = %169
  br label %196

196:                                              ; preds = %195, %194
  %197 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %198 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 8
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %213, label %201

201:                                              ; preds = %196
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 4
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @BIT4, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %212, label %208

208:                                              ; preds = %201
  %209 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %210 = load i32, i32* @FORCE_EXEC, align 4
  %211 = call i32 @btc8192e2ant_bt_auto_report(%struct.btc_coexist* %209, i32 %210, i32 1)
  br label %212

212:                                              ; preds = %208, %201
  br label %213

213:                                              ; preds = %212, %196
  br label %214

214:                                              ; preds = %213, %100
  %215 = load i32, i32* %8, align 4
  %216 = load i32, i32* @BT_INFO_8192E_2ANT_B_INQ_PAGE, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %214
  %220 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 5
  store i32 1, i32* %221, align 4
  br label %225

222:                                              ; preds = %214
  %223 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i32 0, i32 5
  store i32 0, i32* %224, align 4
  br label %225

225:                                              ; preds = %222, %219
  %226 = load i32, i32* %8, align 4
  %227 = load i32, i32* @BT_INFO_8192E_2ANT_B_CONNECTION, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %241, label %230

230:                                              ; preds = %225
  %231 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %232 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %231, i32 0, i32 6
  store i32 0, i32* %232, align 8
  %233 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %234 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i32 0, i32 7
  store i32 0, i32* %234, align 4
  %235 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %236 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %235, i32 0, i32 8
  store i32 0, i32* %236, align 8
  %237 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %238 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %237, i32 0, i32 9
  store i32 0, i32* %238, align 4
  %239 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %240 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %239, i32 0, i32 10
  store i32 0, i32* %240, align 8
  br label %288

241:                                              ; preds = %225
  %242 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %243 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %242, i32 0, i32 6
  store i32 1, i32* %243, align 8
  %244 = load i32, i32* %8, align 4
  %245 = load i32, i32* @BT_INFO_8192E_2ANT_B_FTP, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %251

248:                                              ; preds = %241
  %249 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %250 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %249, i32 0, i32 7
  store i32 1, i32* %250, align 4
  br label %254

251:                                              ; preds = %241
  %252 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %253 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %252, i32 0, i32 7
  store i32 0, i32* %253, align 4
  br label %254

254:                                              ; preds = %251, %248
  %255 = load i32, i32* %8, align 4
  %256 = load i32, i32* @BT_INFO_8192E_2ANT_B_A2DP, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %262

259:                                              ; preds = %254
  %260 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %261 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %260, i32 0, i32 8
  store i32 1, i32* %261, align 8
  br label %265

262:                                              ; preds = %254
  %263 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %264 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %263, i32 0, i32 8
  store i32 0, i32* %264, align 8
  br label %265

265:                                              ; preds = %262, %259
  %266 = load i32, i32* %8, align 4
  %267 = load i32, i32* @BT_INFO_8192E_2ANT_B_HID, align 4
  %268 = and i32 %266, %267
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %273

270:                                              ; preds = %265
  %271 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %272 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %271, i32 0, i32 9
  store i32 1, i32* %272, align 4
  br label %276

273:                                              ; preds = %265
  %274 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %275 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %274, i32 0, i32 9
  store i32 0, i32* %275, align 4
  br label %276

276:                                              ; preds = %273, %270
  %277 = load i32, i32* %8, align 4
  %278 = load i32, i32* @BT_INFO_8192E_2ANT_B_SCO_ESCO, align 4
  %279 = and i32 %277, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %284

281:                                              ; preds = %276
  %282 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %283 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %282, i32 0, i32 10
  store i32 1, i32* %283, align 8
  br label %287

284:                                              ; preds = %276
  %285 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %286 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %285, i32 0, i32 10
  store i32 0, i32* %286, align 8
  br label %287

287:                                              ; preds = %284, %281
  br label %288

288:                                              ; preds = %287, %230
  %289 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %290 = call i32 @btc8192e2ant_update_bt_link_info(%struct.btc_coexist* %289)
  %291 = load i32, i32* %8, align 4
  %292 = load i32, i32* @BT_INFO_8192E_2ANT_B_CONNECTION, align 4
  %293 = and i32 %291, %292
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %303, label %295

295:                                              ; preds = %288
  %296 = load i64, i64* @BT_8192E_2ANT_BT_STATUS_NON_CONNECTED_IDLE, align 8
  %297 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %298 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %297, i32 0, i32 0
  store i64 %296, i64* %298, align 8
  %299 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %300 = load i32, i32* @COMP_BT_COEXIST, align 4
  %301 = load i32, i32* @DBG_LOUD, align 4
  %302 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %299, i32 %300, i32 %301, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %357

303:                                              ; preds = %288
  %304 = load i32, i32* %8, align 4
  %305 = load i32, i32* @BT_INFO_8192E_2ANT_B_CONNECTION, align 4
  %306 = icmp eq i32 %304, %305
  br i1 %306, label %307, label %315

307:                                              ; preds = %303
  %308 = load i64, i64* @BT_8192E_2ANT_BT_STATUS_CONNECTED_IDLE, align 8
  %309 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %310 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %309, i32 0, i32 0
  store i64 %308, i64* %310, align 8
  %311 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %312 = load i32, i32* @COMP_BT_COEXIST, align 4
  %313 = load i32, i32* @DBG_LOUD, align 4
  %314 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %311, i32 %312, i32 %313, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0))
  br label %356

315:                                              ; preds = %303
  %316 = load i32, i32* %8, align 4
  %317 = load i32, i32* @BT_INFO_8192E_2ANT_B_SCO_ESCO, align 4
  %318 = and i32 %316, %317
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %325, label %320

320:                                              ; preds = %315
  %321 = load i32, i32* %8, align 4
  %322 = load i32, i32* @BT_INFO_8192E_2ANT_B_SCO_BUSY, align 4
  %323 = and i32 %321, %322
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %333

325:                                              ; preds = %320, %315
  %326 = load i64, i64* @BT_8192E_2ANT_BT_STATUS_SCO_BUSY, align 8
  %327 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %328 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %327, i32 0, i32 0
  store i64 %326, i64* %328, align 8
  %329 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %330 = load i32, i32* @COMP_BT_COEXIST, align 4
  %331 = load i32, i32* @DBG_LOUD, align 4
  %332 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %329, i32 %330, i32 %331, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0))
  br label %355

333:                                              ; preds = %320
  %334 = load i32, i32* %8, align 4
  %335 = load i32, i32* @BT_INFO_8192E_2ANT_B_ACL_BUSY, align 4
  %336 = and i32 %334, %335
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %346

338:                                              ; preds = %333
  %339 = load i64, i64* @BT_8192E_2ANT_BT_STATUS_ACL_BUSY, align 8
  %340 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %341 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %340, i32 0, i32 0
  store i64 %339, i64* %341, align 8
  %342 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %343 = load i32, i32* @COMP_BT_COEXIST, align 4
  %344 = load i32, i32* @DBG_LOUD, align 4
  %345 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %342, i32 %343, i32 %344, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0))
  br label %354

346:                                              ; preds = %333
  %347 = load i64, i64* @BT_8192E_2ANT_BT_STATUS_MAX, align 8
  %348 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %349 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %348, i32 0, i32 0
  store i64 %347, i64* %349, align 8
  %350 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %351 = load i32, i32* @COMP_BT_COEXIST, align 4
  %352 = load i32, i32* @DBG_LOUD, align 4
  %353 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %350, i32 %351, i32 %352, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i64 0, i64 0))
  br label %354

354:                                              ; preds = %346, %338
  br label %355

355:                                              ; preds = %354, %325
  br label %356

356:                                              ; preds = %355, %307
  br label %357

357:                                              ; preds = %356, %295
  %358 = load i64, i64* @BT_8192E_2ANT_BT_STATUS_ACL_BUSY, align 8
  %359 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %360 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %359, i32 0, i32 0
  %361 = load i64, i64* %360, align 8
  %362 = icmp eq i64 %358, %361
  br i1 %362, label %375, label %363

363:                                              ; preds = %357
  %364 = load i64, i64* @BT_8192E_2ANT_BT_STATUS_SCO_BUSY, align 8
  %365 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %366 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %365, i32 0, i32 0
  %367 = load i64, i64* %366, align 8
  %368 = icmp eq i64 %364, %367
  br i1 %368, label %375, label %369

369:                                              ; preds = %363
  %370 = load i64, i64* @BT_8192E_2ANT_BT_STATUS_ACL_SCO_BUSY, align 8
  %371 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %372 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %371, i32 0, i32 0
  %373 = load i64, i64* %372, align 8
  %374 = icmp eq i64 %370, %373
  br i1 %374, label %375, label %376

375:                                              ; preds = %369, %363, %357
  store i32 1, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %377

376:                                              ; preds = %369
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %377

377:                                              ; preds = %376, %375
  %378 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %379 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %378, i32 0, i32 0
  %380 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %379, align 8
  %381 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %382 = load i32, i32* @BTC_SET_BL_BT_TRAFFIC_BUSY, align 4
  %383 = call i32 %380(%struct.btc_coexist* %381, i32 %382, i32* %11)
  %384 = load i32, i32* %12, align 4
  %385 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %386 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %385, i32 0, i32 1
  store i32 %384, i32* %386, align 8
  %387 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %388 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %387, i32 0, i32 0
  %389 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %388, align 8
  %390 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %391 = load i32, i32* @BTC_SET_BL_BT_LIMITED_DIG, align 4
  %392 = call i32 %389(%struct.btc_coexist* %390, i32 %391, i32* %12)
  %393 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %394 = call i32 @btc8192e2ant_run_coexist_mechanism(%struct.btc_coexist* %393)
  ret void
}

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @ex_btc8192e2ant_media_status_notify(%struct.btc_coexist*, i32) #1

declare dso_local i32 @btc8192e2ant_ignore_wlan_act(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8192e2ant_bt_auto_report(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8192e2ant_update_bt_link_info(%struct.btc_coexist*) #1

declare dso_local i32 @btc8192e2ant_run_coexist_mechanism(%struct.btc_coexist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
