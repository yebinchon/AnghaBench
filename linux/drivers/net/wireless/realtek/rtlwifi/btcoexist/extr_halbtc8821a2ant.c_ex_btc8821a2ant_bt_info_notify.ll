; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a2ant.c_ex_btc8821a2ant_bt_info_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a2ant.c_ex_btc8821a2ant_bt_info_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32**, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i32*)*, i64, i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32, i32)*, %struct.rtl_priv* }
%struct.rtl_priv = type { i32 }

@coex_sta = common dso_local global %struct.TYPE_3__* null, align 8
@BTC_GET_BL_WIFI_UNDER_5G = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_CONNECTED = common dso_local global i32 0, align 4
@BT_INFO_SRC_8821A_2ANT_MAX = common dso_local global i32 0, align 4
@BT_INFO_SRC_8821A_2ANT_WIFI_FW = common dso_local global i32 0, align 4
@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"[BTCoex], Bt info[%d], length = %d, hex data = [\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"0x%02x]\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"0x%02x, \00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"[BTCoex], BtInfoNotify(), return for Manual CTRL<===\0A\00", align 1
@BTC_SET_BL_BT_TX_RX_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [59 x i8] c"[BTCoex], Switch BT TRx Mask since BT RF REG 0x3C != 0x01\0A\00", align 1
@BTC_BT_REG_RF = common dso_local global i32 0, align 4
@BIT1 = common dso_local global i32 0, align 4
@BTC_MEDIA_CONNECT = common dso_local global i32 0, align 4
@BTC_MEDIA_DISCONNECT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"[BTCoex], BT ext info = 0x%x!!\0A\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"[BTCoex], BT ext info bit3=1, wifi_connected=%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [70 x i8] c"[BTCoex], BT ext info bit3 check, set BT NOT to ignore Wlan active!!\0A\00", align 1
@FORCE_EXEC = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [49 x i8] c"[BTCoex], BT ext info bit3=0, wifi_connected=%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [66 x i8] c"[BTCoex], BT ext info bit3 check, set BT to ignore Wlan active!!\0A\00", align 1
@BT_INFO_8821A_2ANT_B_INQ_PAGE = common dso_local global i32 0, align 4
@BT_INFO_8821A_2ANT_B_CONNECTION = common dso_local global i32 0, align 4
@BT_INFO_8821A_2ANT_B_FTP = common dso_local global i32 0, align 4
@BT_INFO_8821A_2ANT_B_A2DP = common dso_local global i32 0, align 4
@BT_INFO_8821A_2ANT_B_HID = common dso_local global i32 0, align 4
@BT_INFO_8821A_2ANT_B_SCO_ESCO = common dso_local global i32 0, align 4
@BT_8821A_2ANT_BT_STATUS_IDLE = common dso_local global i64 0, align 8
@coex_dm = common dso_local global %struct.TYPE_4__* null, align 8
@.str.10 = private unnamed_addr constant [52 x i8] c"[BTCoex], BtInfoNotify(), BT Non-Connected idle!!!\0A\00", align 1
@BT_8821A_2ANT_BT_STATUS_CON_IDLE = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [48 x i8] c"[BTCoex], BtInfoNotify(), BT Connected-idle!!!\0A\00", align 1
@BT_INFO_8821A_2ANT_B_SCO_BUSY = common dso_local global i32 0, align 4
@BT_8821A_2ANT_BT_STATUS_SCO_BUSY = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [42 x i8] c"[BTCoex], BtInfoNotify(), BT SCO busy!!!\0A\00", align 1
@BT_INFO_8821A_2ANT_B_ACL_BUSY = common dso_local global i32 0, align 4
@BT_8821A_2ANT_BT_STATUS_ACL_BUSY = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [42 x i8] c"[BTCoex], BtInfoNotify(), BT ACL busy!!!\0A\00", align 1
@BT_8821A_2ANT_BT_STATUS_MAX = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [51 x i8] c"[BTCoex], BtInfoNotify(), BT Non-Defined state!!!\0A\00", align 1
@BT_8821A_2ANT_BT_STATUS_ACL_SCO_BUSY = common dso_local global i64 0, align 8
@BTC_SET_BL_BT_TRAFFIC_BUSY = common dso_local global i32 0, align 4
@BTC_SET_BL_BT_LIMITED_DIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ex_btc8821a2ant_bt_info_notify(%struct.btc_coexist* %0, i32* %1, i32 %2) #0 {
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
  %14 = alloca i32, align 4
  store %struct.btc_coexist* %0, %struct.btc_coexist** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %16 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %15, i32 0, i32 4
  %17 = load %struct.rtl_priv*, %struct.rtl_priv** %16, align 8
  store %struct.rtl_priv* %17, %struct.rtl_priv** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  %20 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %21 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %20, i32 0, i32 2
  %22 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %21, align 8
  %23 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %24 = load i32, i32* @BTC_GET_BL_WIFI_UNDER_5G, align 4
  %25 = call i32 %22(%struct.btc_coexist* %23, i32 %24, i32* %14)
  %26 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %27 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %26, i32 0, i32 2
  %28 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %27, align 8
  %29 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %30 = load i32, i32* @BTC_GET_BL_WIFI_CONNECTED, align 4
  %31 = call i32 %28(%struct.btc_coexist* %29, i32 %30, i32* %13)
  %32 = load i32*, i32** %5, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 15
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @BT_INFO_SRC_8821A_2ANT_MAX, align 4
  %38 = icmp sge i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %3
  %40 = load i32, i32* @BT_INFO_SRC_8821A_2ANT_WIFI_FW, align 4
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %39, %3
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 14
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  %50 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %51 = load i32, i32* @COMP_BT_COEXIST, align 4
  %52 = load i32, i32* @DBG_LOUD, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %50, i32 %51, i32 %52, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %54)
  store i32 0, i32* %9, align 4
  br label %56

56:                                               ; preds = %110, %41
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %113

60:                                               ; preds = %56
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i32**, i32*** %67, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32*, i32** %68, i64 %70
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 %65, i32* %75, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %78, label %84

78:                                               ; preds = %60
  %79 = load i32*, i32** %5, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %8, align 4
  br label %84

84:                                               ; preds = %78, %60
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %6, align 4
  %87 = sub nsw i32 %86, 1
  %88 = icmp eq i32 %85, %87
  br i1 %88, label %89, label %99

89:                                               ; preds = %84
  %90 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %91 = load i32, i32* @COMP_BT_COEXIST, align 4
  %92 = load i32, i32* @DBG_LOUD, align 4
  %93 = load i32*, i32** %5, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %90, i32 %91, i32 %92, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %97)
  br label %109

99:                                               ; preds = %84
  %100 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %101 = load i32, i32* @COMP_BT_COEXIST, align 4
  %102 = load i32, i32* @DBG_LOUD, align 4
  %103 = load i32*, i32** %5, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %100, i32 %101, i32 %102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %107)
  br label %109

109:                                              ; preds = %99, %89
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %9, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %9, align 4
  br label %56

113:                                              ; preds = %56
  %114 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %115 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %113
  %119 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %120 = load i32, i32* @COMP_BT_COEXIST, align 4
  %121 = load i32, i32* @DBG_LOUD, align 4
  %122 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %119, i32 %120, i32 %121, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  br label %491

123:                                              ; preds = %113
  %124 = load i32, i32* @BT_INFO_SRC_8821A_2ANT_WIFI_FW, align 4
  %125 = load i32, i32* %10, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %282

127:                                              ; preds = %123
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 1
  %130 = load i32**, i32*** %129, align 8
  %131 = load i32, i32* %10, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32*, i32** %130, i64 %132
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 2
  %136 = load i32, i32* %135, align 4
  %137 = and i32 %136, 15
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 8
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 1
  %142 = load i32**, i32*** %141, align 8
  %143 = load i32, i32* %10, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32*, i32** %142, i64 %144
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 3
  %148 = load i32, i32* %147, align 4
  %149 = mul nsw i32 %148, 2
  %150 = add nsw i32 %149, 10
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 3
  store i32 %150, i32* %152, align 4
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 1
  %155 = load i32**, i32*** %154, align 8
  %156 = load i32, i32* %10, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32*, i32** %155, i64 %157
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 4
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 4
  store i32 %161, i32* %163, align 8
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 1
  %166 = load i32**, i32*** %165, align 8
  %167 = load i32, i32* %10, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32*, i32** %166, i64 %168
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 2
  %172 = load i32, i32* %171, align 4
  %173 = and i32 %172, 64
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 5
  store i32 %173, i32* %175, align 4
  %176 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %177 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %176, i32 0, i32 0
  %178 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %177, align 8
  %179 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %180 = load i32, i32* @BTC_SET_BL_BT_TX_RX_MASK, align 4
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 5
  %183 = call i32 %178(%struct.btc_coexist* %179, i32 %180, i32* %182)
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 5
  %186 = load i32, i32* %185, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %199

188:                                              ; preds = %127
  %189 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %190 = load i32, i32* @COMP_BT_COEXIST, align 4
  %191 = load i32, i32* @DBG_LOUD, align 4
  %192 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %189, i32 %190, i32 %191, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0))
  %193 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %194 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %193, i32 0, i32 3
  %195 = load i32 (%struct.btc_coexist*, i32, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32, i32)** %194, align 8
  %196 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %197 = load i32, i32* @BTC_BT_REG_RF, align 4
  %198 = call i32 %195(%struct.btc_coexist* %196, i32 %197, i32 60, i32 1)
  br label %199

199:                                              ; preds = %188, %127
  %200 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 4
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* @BIT1, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %224

206:                                              ; preds = %199
  %207 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %208 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %207, i32 0, i32 2
  %209 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %208, align 8
  %210 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %211 = load i32, i32* @BTC_GET_BL_WIFI_CONNECTED, align 4
  %212 = call i32 %209(%struct.btc_coexist* %210, i32 %211, i32* %13)
  %213 = load i32, i32* %13, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %219

215:                                              ; preds = %206
  %216 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %217 = load i32, i32* @BTC_MEDIA_CONNECT, align 4
  %218 = call i32 @ex_btc8821a2ant_media_status_notify(%struct.btc_coexist* %216, i32 %217)
  br label %223

219:                                              ; preds = %206
  %220 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %221 = load i32, i32* @BTC_MEDIA_DISCONNECT, align 4
  %222 = call i32 @ex_btc8821a2ant_media_status_notify(%struct.btc_coexist* %220, i32 %221)
  br label %223

223:                                              ; preds = %219, %215
  br label %224

224:                                              ; preds = %223, %199
  %225 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %226 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %281, label %229

229:                                              ; preds = %224
  %230 = load i32, i32* %14, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %281, label %232

232:                                              ; preds = %229
  %233 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %234 = load i32, i32* @COMP_BT_COEXIST, align 4
  %235 = load i32, i32* @DBG_LOUD, align 4
  %236 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %237 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %236, i32 0, i32 4
  %238 = load i32, i32* %237, align 8
  %239 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %233, i32 %234, i32 %235, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %238)
  %240 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %241 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %240, i32 0, i32 4
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @BIT(i32 3)
  %244 = and i32 %242, %243
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %263

246:                                              ; preds = %232
  %247 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %248 = load i32, i32* @COMP_BT_COEXIST, align 4
  %249 = load i32, i32* @DBG_LOUD, align 4
  %250 = load i32, i32* %13, align 4
  %251 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %247, i32 %248, i32 %249, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i32 %250)
  %252 = load i32, i32* %13, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %262

254:                                              ; preds = %246
  %255 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %256 = load i32, i32* @COMP_BT_COEXIST, align 4
  %257 = load i32, i32* @DBG_LOUD, align 4
  %258 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %255, i32 %256, i32 %257, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.7, i64 0, i64 0))
  %259 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %260 = load i32, i32* @FORCE_EXEC, align 4
  %261 = call i32 @btc8821a2ant_ignore_wlan_act(%struct.btc_coexist* %259, i32 %260, i32 0)
  br label %262

262:                                              ; preds = %254, %246
  br label %280

263:                                              ; preds = %232
  %264 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %265 = load i32, i32* @COMP_BT_COEXIST, align 4
  %266 = load i32, i32* @DBG_LOUD, align 4
  %267 = load i32, i32* %13, align 4
  %268 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %264, i32 %265, i32 %266, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0), i32 %267)
  %269 = load i32, i32* %13, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %279, label %271

271:                                              ; preds = %263
  %272 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %273 = load i32, i32* @COMP_BT_COEXIST, align 4
  %274 = load i32, i32* @DBG_LOUD, align 4
  %275 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %272, i32 %273, i32 %274, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.9, i64 0, i64 0))
  %276 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %277 = load i32, i32* @FORCE_EXEC, align 4
  %278 = call i32 @btc8821a2ant_ignore_wlan_act(%struct.btc_coexist* %276, i32 %277, i32 1)
  br label %279

279:                                              ; preds = %271, %263
  br label %280

280:                                              ; preds = %279, %262
  br label %281

281:                                              ; preds = %280, %229, %224
  br label %282

282:                                              ; preds = %281, %123
  %283 = load i32, i32* %8, align 4
  %284 = load i32, i32* @BT_INFO_8821A_2ANT_B_INQ_PAGE, align 4
  %285 = and i32 %283, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %290

287:                                              ; preds = %282
  %288 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %289 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %288, i32 0, i32 6
  store i32 1, i32* %289, align 8
  br label %293

290:                                              ; preds = %282
  %291 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %292 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %291, i32 0, i32 6
  store i32 0, i32* %292, align 8
  br label %293

293:                                              ; preds = %290, %287
  %294 = load i32, i32* %8, align 4
  %295 = load i32, i32* @BT_INFO_8821A_2ANT_B_CONNECTION, align 4
  %296 = and i32 %294, %295
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %309, label %298

298:                                              ; preds = %293
  %299 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %300 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %299, i32 0, i32 7
  store i32 0, i32* %300, align 4
  %301 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %302 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %301, i32 0, i32 8
  store i32 0, i32* %302, align 8
  %303 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %304 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %303, i32 0, i32 9
  store i32 0, i32* %304, align 4
  %305 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %306 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %305, i32 0, i32 10
  store i32 0, i32* %306, align 8
  %307 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %308 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %307, i32 0, i32 11
  store i32 0, i32* %308, align 4
  br label %384

309:                                              ; preds = %293
  %310 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %311 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %310, i32 0, i32 7
  store i32 1, i32* %311, align 4
  %312 = load i32, i32* %8, align 4
  %313 = load i32, i32* @BT_INFO_8821A_2ANT_B_FTP, align 4
  %314 = and i32 %312, %313
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %319

316:                                              ; preds = %309
  %317 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %318 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %317, i32 0, i32 8
  store i32 1, i32* %318, align 8
  br label %322

319:                                              ; preds = %309
  %320 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %321 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %320, i32 0, i32 8
  store i32 0, i32* %321, align 8
  br label %322

322:                                              ; preds = %319, %316
  %323 = load i32, i32* %8, align 4
  %324 = load i32, i32* @BT_INFO_8821A_2ANT_B_A2DP, align 4
  %325 = and i32 %323, %324
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %330

327:                                              ; preds = %322
  %328 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %329 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %328, i32 0, i32 9
  store i32 1, i32* %329, align 4
  br label %333

330:                                              ; preds = %322
  %331 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %332 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %331, i32 0, i32 9
  store i32 0, i32* %332, align 4
  br label %333

333:                                              ; preds = %330, %327
  %334 = load i32, i32* %8, align 4
  %335 = load i32, i32* @BT_INFO_8821A_2ANT_B_HID, align 4
  %336 = and i32 %334, %335
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %341

338:                                              ; preds = %333
  %339 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %340 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %339, i32 0, i32 10
  store i32 1, i32* %340, align 8
  br label %344

341:                                              ; preds = %333
  %342 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %343 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %342, i32 0, i32 10
  store i32 0, i32* %343, align 8
  br label %344

344:                                              ; preds = %341, %338
  %345 = load i32, i32* %8, align 4
  %346 = load i32, i32* @BT_INFO_8821A_2ANT_B_SCO_ESCO, align 4
  %347 = and i32 %345, %346
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %352

349:                                              ; preds = %344
  %350 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %351 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %350, i32 0, i32 11
  store i32 1, i32* %351, align 4
  br label %355

352:                                              ; preds = %344
  %353 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %354 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %353, i32 0, i32 11
  store i32 0, i32* %354, align 4
  br label %355

355:                                              ; preds = %352, %349
  %356 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %357 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %356, i32 0, i32 10
  %358 = load i32, i32* %357, align 8
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %383, label %360

360:                                              ; preds = %355
  %361 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %362 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %361, i32 0, i32 6
  %363 = load i32, i32* %362, align 8
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %383, label %365

365:                                              ; preds = %360
  %366 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %367 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %366, i32 0, i32 11
  %368 = load i32, i32* %367, align 4
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %383, label %370

370:                                              ; preds = %365
  %371 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %372 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %371, i32 0, i32 12
  %373 = load i32, i32* %372, align 8
  %374 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %375 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %374, i32 0, i32 13
  %376 = load i32, i32* %375, align 4
  %377 = add nsw i32 %373, %376
  %378 = icmp sge i32 %377, 160
  br i1 %378, label %379, label %382

379:                                              ; preds = %370
  %380 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %381 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %380, i32 0, i32 10
  store i32 1, i32* %381, align 8
  br label %382

382:                                              ; preds = %379, %370
  br label %383

383:                                              ; preds = %382, %365, %360, %355
  br label %384

384:                                              ; preds = %383, %298
  %385 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %386 = call i32 @btc8821a2ant_update_bt_link_info(%struct.btc_coexist* %385)
  %387 = load i32, i32* %8, align 4
  %388 = load i32, i32* @BT_INFO_8821A_2ANT_B_CONNECTION, align 4
  %389 = and i32 %387, %388
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %399, label %391

391:                                              ; preds = %384
  %392 = load i64, i64* @BT_8821A_2ANT_BT_STATUS_IDLE, align 8
  %393 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %394 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %393, i32 0, i32 0
  store i64 %392, i64* %394, align 8
  %395 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %396 = load i32, i32* @COMP_BT_COEXIST, align 4
  %397 = load i32, i32* @DBG_LOUD, align 4
  %398 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %395, i32 %396, i32 %397, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i64 0, i64 0))
  br label %453

399:                                              ; preds = %384
  %400 = load i32, i32* %8, align 4
  %401 = load i32, i32* @BT_INFO_8821A_2ANT_B_CONNECTION, align 4
  %402 = icmp eq i32 %400, %401
  br i1 %402, label %403, label %411

403:                                              ; preds = %399
  %404 = load i64, i64* @BT_8821A_2ANT_BT_STATUS_CON_IDLE, align 8
  %405 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %406 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %405, i32 0, i32 0
  store i64 %404, i64* %406, align 8
  %407 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %408 = load i32, i32* @COMP_BT_COEXIST, align 4
  %409 = load i32, i32* @DBG_LOUD, align 4
  %410 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %407, i32 %408, i32 %409, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11, i64 0, i64 0))
  br label %452

411:                                              ; preds = %399
  %412 = load i32, i32* %8, align 4
  %413 = load i32, i32* @BT_INFO_8821A_2ANT_B_SCO_ESCO, align 4
  %414 = and i32 %412, %413
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %421, label %416

416:                                              ; preds = %411
  %417 = load i32, i32* %8, align 4
  %418 = load i32, i32* @BT_INFO_8821A_2ANT_B_SCO_BUSY, align 4
  %419 = and i32 %417, %418
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %421, label %429

421:                                              ; preds = %416, %411
  %422 = load i64, i64* @BT_8821A_2ANT_BT_STATUS_SCO_BUSY, align 8
  %423 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %424 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %423, i32 0, i32 0
  store i64 %422, i64* %424, align 8
  %425 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %426 = load i32, i32* @COMP_BT_COEXIST, align 4
  %427 = load i32, i32* @DBG_LOUD, align 4
  %428 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %425, i32 %426, i32 %427, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0))
  br label %451

429:                                              ; preds = %416
  %430 = load i32, i32* %8, align 4
  %431 = load i32, i32* @BT_INFO_8821A_2ANT_B_ACL_BUSY, align 4
  %432 = and i32 %430, %431
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %442

434:                                              ; preds = %429
  %435 = load i64, i64* @BT_8821A_2ANT_BT_STATUS_ACL_BUSY, align 8
  %436 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %437 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %436, i32 0, i32 0
  store i64 %435, i64* %437, align 8
  %438 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %439 = load i32, i32* @COMP_BT_COEXIST, align 4
  %440 = load i32, i32* @DBG_LOUD, align 4
  %441 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %438, i32 %439, i32 %440, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.13, i64 0, i64 0))
  br label %450

442:                                              ; preds = %429
  %443 = load i64, i64* @BT_8821A_2ANT_BT_STATUS_MAX, align 8
  %444 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %445 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %444, i32 0, i32 0
  store i64 %443, i64* %445, align 8
  %446 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %447 = load i32, i32* @COMP_BT_COEXIST, align 4
  %448 = load i32, i32* @DBG_LOUD, align 4
  %449 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %446, i32 %447, i32 %448, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.14, i64 0, i64 0))
  br label %450

450:                                              ; preds = %442, %434
  br label %451

451:                                              ; preds = %450, %421
  br label %452

452:                                              ; preds = %451, %403
  br label %453

453:                                              ; preds = %452, %391
  %454 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %455 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %454, i32 0, i32 0
  %456 = load i64, i64* %455, align 8
  %457 = load i64, i64* @BT_8821A_2ANT_BT_STATUS_ACL_BUSY, align 8
  %458 = icmp eq i64 %456, %457
  br i1 %458, label %471, label %459

459:                                              ; preds = %453
  %460 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %461 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %460, i32 0, i32 0
  %462 = load i64, i64* %461, align 8
  %463 = load i64, i64* @BT_8821A_2ANT_BT_STATUS_SCO_BUSY, align 8
  %464 = icmp eq i64 %462, %463
  br i1 %464, label %471, label %465

465:                                              ; preds = %459
  %466 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %467 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %466, i32 0, i32 0
  %468 = load i64, i64* %467, align 8
  %469 = load i64, i64* @BT_8821A_2ANT_BT_STATUS_ACL_SCO_BUSY, align 8
  %470 = icmp eq i64 %468, %469
  br i1 %470, label %471, label %472

471:                                              ; preds = %465, %459, %453
  store i32 1, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %473

472:                                              ; preds = %465
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %473

473:                                              ; preds = %472, %471
  %474 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %475 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %474, i32 0, i32 0
  %476 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %475, align 8
  %477 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %478 = load i32, i32* @BTC_SET_BL_BT_TRAFFIC_BUSY, align 4
  %479 = call i32 %476(%struct.btc_coexist* %477, i32 %478, i32* %11)
  %480 = load i32, i32* %12, align 4
  %481 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %482 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %481, i32 0, i32 1
  store i32 %480, i32* %482, align 8
  %483 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %484 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %483, i32 0, i32 0
  %485 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %484, align 8
  %486 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %487 = load i32, i32* @BTC_SET_BL_BT_LIMITED_DIG, align 4
  %488 = call i32 %485(%struct.btc_coexist* %486, i32 %487, i32* %12)
  %489 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %490 = call i32 @btc8821a2ant_run_coexist_mechanism(%struct.btc_coexist* %489)
  br label %491

491:                                              ; preds = %473, %118
  ret void
}

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @ex_btc8821a2ant_media_status_notify(%struct.btc_coexist*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @btc8821a2ant_ignore_wlan_act(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8821a2ant_update_bt_link_info(%struct.btc_coexist*) #1

declare dso_local i32 @btc8821a2ant_run_coexist_mechanism(%struct.btc_coexist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
