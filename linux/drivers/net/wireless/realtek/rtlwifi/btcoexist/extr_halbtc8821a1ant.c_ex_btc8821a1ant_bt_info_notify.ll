; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a1ant.c_ex_btc8821a1ant_bt_info_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a1ant.c_ex_btc8821a1ant_bt_info_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32**, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i32*)*, i32, i32, i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32, i32)*, %struct.rtl_priv* }
%struct.rtl_priv = type { i32 }

@coex_sta = common dso_local global %struct.TYPE_3__* null, align 8
@BTC_GET_BL_WIFI_UNDER_5G = common dso_local global i32 0, align 4
@BT_INFO_SRC_8821A_1ANT_MAX = common dso_local global i32 0, align 4
@BT_INFO_SRC_8821A_1ANT_WIFI_FW = common dso_local global i32 0, align 4
@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"[BTCoex], Bt info[%d], length = %d, hex data = [\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"0x%02x]\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"0x%02x, \00", align 1
@BTC_SET_BL_BT_TX_RX_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [59 x i8] c"[BTCoex], Switch BT TRx Mask since BT RF REG 0x3C != 0x15\0A\00", align 1
@BTC_BT_REG_RF = common dso_local global i32 0, align 4
@BIT1 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [61 x i8] c"[BTCoex], BT ext info bit1 check, send wifi BW&Chnl to BT!!\0A\00", align 1
@BTC_GET_BL_WIFI_CONNECTED = common dso_local global i32 0, align 4
@BTC_MEDIA_CONNECT = common dso_local global i32 0, align 4
@BTC_MEDIA_DISCONNECT = common dso_local global i32 0, align 4
@BIT3 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [70 x i8] c"[BTCoex], BT ext info bit3 check, set BT NOT to ignore Wlan active!!\0A\00", align 1
@FORCE_EXEC = common dso_local global i32 0, align 4
@BT_INFO_8821A_1ANT_B_INQ_PAGE = common dso_local global i32 0, align 4
@BT_INFO_8821A_1ANT_B_CONNECTION = common dso_local global i32 0, align 4
@BT_INFO_8821A_1ANT_B_FTP = common dso_local global i32 0, align 4
@BT_INFO_8821A_1ANT_B_A2DP = common dso_local global i32 0, align 4
@BT_INFO_8821A_1ANT_B_HID = common dso_local global i32 0, align 4
@BT_INFO_8821A_1ANT_B_SCO_ESCO = common dso_local global i32 0, align 4
@BT_8821A_1ANT_BT_STATUS_NON_CONNECTED_IDLE = common dso_local global i64 0, align 8
@coex_dm = common dso_local global %struct.TYPE_4__* null, align 8
@.str.6 = private unnamed_addr constant [52 x i8] c"[BTCoex], BtInfoNotify(), BT Non-Connected idle!!!\0A\00", align 1
@BT_8821A_1ANT_BT_STATUS_CONNECTED_IDLE = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [48 x i8] c"[BTCoex], BtInfoNotify(), BT Connected-idle!!!\0A\00", align 1
@BT_INFO_8821A_1ANT_B_SCO_BUSY = common dso_local global i32 0, align 4
@BT_8821A_1ANT_BT_STATUS_SCO_BUSY = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [42 x i8] c"[BTCoex], BtInfoNotify(), BT SCO busy!!!\0A\00", align 1
@BT_INFO_8821A_1ANT_B_ACL_BUSY = common dso_local global i32 0, align 4
@BT_8821A_1ANT_BT_STATUS_ACL_BUSY = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [42 x i8] c"[BTCoex], BtInfoNotify(), BT ACL busy!!!\0A\00", align 1
@BT_8821A_1ANT_BT_STATUS_MAX = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [51 x i8] c"[BTCoex], BtInfoNotify(), BT Non-Defined state!!!\0A\00", align 1
@BT_8821A_1ANT_BT_STATUS_ACL_SCO_BUSY = common dso_local global i64 0, align 8
@BTC_SET_BL_BT_TRAFFIC_BUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ex_btc8821a1ant_bt_info_notify(%struct.btc_coexist* %0, i32* %1, i32 %2) #0 {
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
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i32 0, i32* %18, align 8
  %19 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %20 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %19, i32 0, i32 3
  %21 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %20, align 8
  %22 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %23 = load i32, i32* @BTC_GET_BL_WIFI_UNDER_5G, align 4
  %24 = call i32 %21(%struct.btc_coexist* %22, i32 %23, i32* %13)
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 15
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @BT_INFO_SRC_8821A_1ANT_MAX, align 4
  %31 = icmp sge i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %3
  %33 = load i32, i32* @BT_INFO_SRC_8821A_1ANT_WIFI_FW, align 4
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %32, %3
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 12
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  %43 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %44 = load i32, i32* @COMP_BT_COEXIST, align 4
  %45 = load i32, i32* @DBG_LOUD, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %43, i32 %44, i32 %45, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %47)
  store i32 0, i32* %8, align 4
  br label %49

49:                                               ; preds = %103, %34
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %106

53:                                               ; preds = %49
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i32**, i32*** %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32*, i32** %61, i64 %63
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 %58, i32* %68, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %77

71:                                               ; preds = %53
  %72 = load i32*, i32** %5, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %9, align 4
  br label %77

77:                                               ; preds = %71, %53
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %6, align 4
  %80 = sub nsw i32 %79, 1
  %81 = icmp eq i32 %78, %80
  br i1 %81, label %82, label %92

82:                                               ; preds = %77
  %83 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %84 = load i32, i32* @COMP_BT_COEXIST, align 4
  %85 = load i32, i32* @DBG_LOUD, align 4
  %86 = load i32*, i32** %5, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %83, i32 %84, i32 %85, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  br label %102

92:                                               ; preds = %77
  %93 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %94 = load i32, i32* @COMP_BT_COEXIST, align 4
  %95 = load i32, i32* @DBG_LOUD, align 4
  %96 = load i32*, i32** %5, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %93, i32 %94, i32 %95, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %92, %82
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %8, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %8, align 4
  br label %49

106:                                              ; preds = %49
  %107 = load i32, i32* @BT_INFO_SRC_8821A_1ANT_WIFI_FW, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %241

110:                                              ; preds = %106
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 1
  %113 = load i32**, i32*** %112, align 8
  %114 = load i32, i32* %10, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32*, i32** %113, i64 %115
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 2
  %119 = load i32, i32* %118, align 4
  %120 = and i32 %119, 15
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 8
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 1
  %125 = load i32**, i32*** %124, align 8
  %126 = load i32, i32* %10, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32*, i32** %125, i64 %127
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 3
  %131 = load i32, i32* %130, align 4
  %132 = mul nsw i32 %131, 2
  %133 = add nsw i32 %132, 10
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 3
  store i32 %133, i32* %135, align 4
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 1
  %138 = load i32**, i32*** %137, align 8
  %139 = load i32, i32* %10, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32*, i32** %138, i64 %140
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 4
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 4
  store i32 %144, i32* %146, align 8
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 1
  %149 = load i32**, i32*** %148, align 8
  %150 = load i32, i32* %10, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32*, i32** %149, i64 %151
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 2
  %155 = load i32, i32* %154, align 4
  %156 = and i32 %155, 64
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 5
  store i32 %156, i32* %158, align 4
  %159 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %160 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %159, i32 0, i32 0
  %161 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %160, align 8
  %162 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %163 = load i32, i32* @BTC_SET_BL_BT_TX_RX_MASK, align 4
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 5
  %166 = call i32 %161(%struct.btc_coexist* %162, i32 %163, i32* %165)
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 5
  %169 = load i32, i32* %168, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %182, label %171

171:                                              ; preds = %110
  %172 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %173 = load i32, i32* @COMP_BT_COEXIST, align 4
  %174 = load i32, i32* @DBG_LOUD, align 4
  %175 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %172, i32 %173, i32 %174, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0))
  %176 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %177 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %176, i32 0, i32 4
  %178 = load i32 (%struct.btc_coexist*, i32, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32, i32)** %177, align 8
  %179 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %180 = load i32, i32* @BTC_BT_REG_RF, align 4
  %181 = call i32 %178(%struct.btc_coexist* %179, i32 %180, i32 60, i32 21)
  br label %182

182:                                              ; preds = %171, %110
  %183 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @BIT1, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %211

189:                                              ; preds = %182
  %190 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %191 = load i32, i32* @COMP_BT_COEXIST, align 4
  %192 = load i32, i32* @DBG_LOUD, align 4
  %193 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %190, i32 %191, i32 %192, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0))
  %194 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %195 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %194, i32 0, i32 3
  %196 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %195, align 8
  %197 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %198 = load i32, i32* @BTC_GET_BL_WIFI_CONNECTED, align 4
  %199 = call i32 %196(%struct.btc_coexist* %197, i32 %198, i32* %11)
  %200 = load i32, i32* %11, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %189
  %203 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %204 = load i32, i32* @BTC_MEDIA_CONNECT, align 4
  %205 = call i32 @ex_btc8821a1ant_media_status_notify(%struct.btc_coexist* %203, i32 %204)
  br label %210

206:                                              ; preds = %189
  %207 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %208 = load i32, i32* @BTC_MEDIA_DISCONNECT, align 4
  %209 = call i32 @ex_btc8821a1ant_media_status_notify(%struct.btc_coexist* %207, i32 %208)
  br label %210

210:                                              ; preds = %206, %202
  br label %211

211:                                              ; preds = %210, %182
  %212 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 4
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* @BIT3, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %240

218:                                              ; preds = %211
  %219 = load i32, i32* %13, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %240, label %221

221:                                              ; preds = %218
  %222 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %223 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %239, label %226

226:                                              ; preds = %221
  %227 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %228 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 8
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %239, label %231

231:                                              ; preds = %226
  %232 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %233 = load i32, i32* @COMP_BT_COEXIST, align 4
  %234 = load i32, i32* @DBG_LOUD, align 4
  %235 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %232, i32 %233, i32 %234, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.5, i64 0, i64 0))
  %236 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %237 = load i32, i32* @FORCE_EXEC, align 4
  %238 = call i32 @btc8821a1ant_ignore_wlan_act(%struct.btc_coexist* %236, i32 %237, i32 0)
  br label %239

239:                                              ; preds = %231, %226, %221
  br label %240

240:                                              ; preds = %239, %218, %211
  br label %241

241:                                              ; preds = %240, %106
  %242 = load i32, i32* %9, align 4
  %243 = load i32, i32* @BT_INFO_8821A_1ANT_B_INQ_PAGE, align 4
  %244 = and i32 %242, %243
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %249

246:                                              ; preds = %241
  %247 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %248 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %247, i32 0, i32 6
  store i32 1, i32* %248, align 8
  br label %252

249:                                              ; preds = %241
  %250 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %251 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %250, i32 0, i32 6
  store i32 0, i32* %251, align 8
  br label %252

252:                                              ; preds = %249, %246
  %253 = load i32, i32* %9, align 4
  %254 = load i32, i32* @BT_INFO_8821A_1ANT_B_CONNECTION, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %268, label %257

257:                                              ; preds = %252
  %258 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %259 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %258, i32 0, i32 7
  store i32 0, i32* %259, align 4
  %260 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %261 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %260, i32 0, i32 8
  store i32 0, i32* %261, align 8
  %262 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %263 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %262, i32 0, i32 9
  store i32 0, i32* %263, align 4
  %264 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %265 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %264, i32 0, i32 10
  store i32 0, i32* %265, align 8
  %266 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %267 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %266, i32 0, i32 11
  store i32 0, i32* %267, align 4
  br label %315

268:                                              ; preds = %252
  %269 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %270 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %269, i32 0, i32 7
  store i32 1, i32* %270, align 4
  %271 = load i32, i32* %9, align 4
  %272 = load i32, i32* @BT_INFO_8821A_1ANT_B_FTP, align 4
  %273 = and i32 %271, %272
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %278

275:                                              ; preds = %268
  %276 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %277 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %276, i32 0, i32 8
  store i32 1, i32* %277, align 8
  br label %281

278:                                              ; preds = %268
  %279 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %280 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %279, i32 0, i32 8
  store i32 0, i32* %280, align 8
  br label %281

281:                                              ; preds = %278, %275
  %282 = load i32, i32* %9, align 4
  %283 = load i32, i32* @BT_INFO_8821A_1ANT_B_A2DP, align 4
  %284 = and i32 %282, %283
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %289

286:                                              ; preds = %281
  %287 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %288 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %287, i32 0, i32 9
  store i32 1, i32* %288, align 4
  br label %292

289:                                              ; preds = %281
  %290 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %291 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %290, i32 0, i32 9
  store i32 0, i32* %291, align 4
  br label %292

292:                                              ; preds = %289, %286
  %293 = load i32, i32* %9, align 4
  %294 = load i32, i32* @BT_INFO_8821A_1ANT_B_HID, align 4
  %295 = and i32 %293, %294
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %300

297:                                              ; preds = %292
  %298 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %299 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %298, i32 0, i32 10
  store i32 1, i32* %299, align 8
  br label %303

300:                                              ; preds = %292
  %301 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %302 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %301, i32 0, i32 10
  store i32 0, i32* %302, align 8
  br label %303

303:                                              ; preds = %300, %297
  %304 = load i32, i32* %9, align 4
  %305 = load i32, i32* @BT_INFO_8821A_1ANT_B_SCO_ESCO, align 4
  %306 = and i32 %304, %305
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %311

308:                                              ; preds = %303
  %309 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %310 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %309, i32 0, i32 11
  store i32 1, i32* %310, align 4
  br label %314

311:                                              ; preds = %303
  %312 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %313 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %312, i32 0, i32 11
  store i32 0, i32* %313, align 4
  br label %314

314:                                              ; preds = %311, %308
  br label %315

315:                                              ; preds = %314, %257
  %316 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %317 = call i32 @btc8821a1ant_update_bt_link_info(%struct.btc_coexist* %316)
  %318 = load i32, i32* %9, align 4
  %319 = and i32 %318, 31
  store i32 %319, i32* %9, align 4
  %320 = load i32, i32* %9, align 4
  %321 = load i32, i32* @BT_INFO_8821A_1ANT_B_CONNECTION, align 4
  %322 = and i32 %320, %321
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %332, label %324

324:                                              ; preds = %315
  %325 = load i64, i64* @BT_8821A_1ANT_BT_STATUS_NON_CONNECTED_IDLE, align 8
  %326 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %327 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %326, i32 0, i32 0
  store i64 %325, i64* %327, align 8
  %328 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %329 = load i32, i32* @COMP_BT_COEXIST, align 4
  %330 = load i32, i32* @DBG_LOUD, align 4
  %331 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %328, i32 %329, i32 %330, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0))
  br label %395

332:                                              ; preds = %315
  %333 = load i32, i32* %9, align 4
  %334 = load i32, i32* @BT_INFO_8821A_1ANT_B_CONNECTION, align 4
  %335 = icmp eq i32 %333, %334
  br i1 %335, label %336, label %344

336:                                              ; preds = %332
  %337 = load i64, i64* @BT_8821A_1ANT_BT_STATUS_CONNECTED_IDLE, align 8
  %338 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %339 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %338, i32 0, i32 0
  store i64 %337, i64* %339, align 8
  %340 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %341 = load i32, i32* @COMP_BT_COEXIST, align 4
  %342 = load i32, i32* @DBG_LOUD, align 4
  %343 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %340, i32 %341, i32 %342, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0))
  br label %394

344:                                              ; preds = %332
  %345 = load i32, i32* %9, align 4
  %346 = load i32, i32* @BT_INFO_8821A_1ANT_B_SCO_ESCO, align 4
  %347 = and i32 %345, %346
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %354, label %349

349:                                              ; preds = %344
  %350 = load i32, i32* %9, align 4
  %351 = load i32, i32* @BT_INFO_8821A_1ANT_B_SCO_BUSY, align 4
  %352 = and i32 %350, %351
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %362

354:                                              ; preds = %349, %344
  %355 = load i64, i64* @BT_8821A_1ANT_BT_STATUS_SCO_BUSY, align 8
  %356 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %357 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %356, i32 0, i32 0
  store i64 %355, i64* %357, align 8
  %358 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %359 = load i32, i32* @COMP_BT_COEXIST, align 4
  %360 = load i32, i32* @DBG_LOUD, align 4
  %361 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %358, i32 %359, i32 %360, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0))
  br label %393

362:                                              ; preds = %349
  %363 = load i32, i32* %9, align 4
  %364 = load i32, i32* @BT_INFO_8821A_1ANT_B_ACL_BUSY, align 4
  %365 = and i32 %363, %364
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %384

367:                                              ; preds = %362
  %368 = load i64, i64* @BT_8821A_1ANT_BT_STATUS_ACL_BUSY, align 8
  %369 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %370 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %369, i32 0, i32 0
  %371 = load i64, i64* %370, align 8
  %372 = icmp ne i64 %368, %371
  br i1 %372, label %373, label %376

373:                                              ; preds = %367
  %374 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %375 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %374, i32 0, i32 1
  store i32 0, i32* %375, align 8
  br label %376

376:                                              ; preds = %373, %367
  %377 = load i64, i64* @BT_8821A_1ANT_BT_STATUS_ACL_BUSY, align 8
  %378 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %379 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %378, i32 0, i32 0
  store i64 %377, i64* %379, align 8
  %380 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %381 = load i32, i32* @COMP_BT_COEXIST, align 4
  %382 = load i32, i32* @DBG_LOUD, align 4
  %383 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %380, i32 %381, i32 %382, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0))
  br label %392

384:                                              ; preds = %362
  %385 = load i64, i64* @BT_8821A_1ANT_BT_STATUS_MAX, align 8
  %386 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %387 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %386, i32 0, i32 0
  store i64 %385, i64* %387, align 8
  %388 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %389 = load i32, i32* @COMP_BT_COEXIST, align 4
  %390 = load i32, i32* @DBG_LOUD, align 4
  %391 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %388, i32 %389, i32 %390, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.10, i64 0, i64 0))
  br label %392

392:                                              ; preds = %384, %376
  br label %393

393:                                              ; preds = %392, %354
  br label %394

394:                                              ; preds = %393, %336
  br label %395

395:                                              ; preds = %394, %324
  %396 = load i64, i64* @BT_8821A_1ANT_BT_STATUS_ACL_BUSY, align 8
  %397 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %398 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %397, i32 0, i32 0
  %399 = load i64, i64* %398, align 8
  %400 = icmp eq i64 %396, %399
  br i1 %400, label %413, label %401

401:                                              ; preds = %395
  %402 = load i64, i64* @BT_8821A_1ANT_BT_STATUS_SCO_BUSY, align 8
  %403 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %404 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %403, i32 0, i32 0
  %405 = load i64, i64* %404, align 8
  %406 = icmp eq i64 %402, %405
  br i1 %406, label %413, label %407

407:                                              ; preds = %401
  %408 = load i64, i64* @BT_8821A_1ANT_BT_STATUS_ACL_SCO_BUSY, align 8
  %409 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %410 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %409, i32 0, i32 0
  %411 = load i64, i64* %410, align 8
  %412 = icmp eq i64 %408, %411
  br i1 %412, label %413, label %414

413:                                              ; preds = %407, %401, %395
  store i32 1, i32* %12, align 4
  br label %415

414:                                              ; preds = %407
  store i32 0, i32* %12, align 4
  br label %415

415:                                              ; preds = %414, %413
  %416 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %417 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %416, i32 0, i32 0
  %418 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %417, align 8
  %419 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %420 = load i32, i32* @BTC_SET_BL_BT_TRAFFIC_BUSY, align 4
  %421 = call i32 %418(%struct.btc_coexist* %419, i32 %420, i32* %12)
  %422 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %423 = call i32 @btc8821a1ant_run_coexist_mechanism(%struct.btc_coexist* %422)
  ret void
}

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @ex_btc8821a1ant_media_status_notify(%struct.btc_coexist*, i32) #1

declare dso_local i32 @btc8821a1ant_ignore_wlan_act(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8821a1ant_update_bt_link_info(%struct.btc_coexist*) #1

declare dso_local i32 @btc8821a1ant_run_coexist_mechanism(%struct.btc_coexist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
