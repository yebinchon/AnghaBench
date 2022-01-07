; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b2ant.c_ex_btc8723b2ant_bt_info_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b2ant.c_ex_btc8723b2ant_bt_info_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32**, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i32*)*, i32, i32 (%struct.btc_coexist*, i32, i32*)*, i64, %struct.rtl_priv* }
%struct.rtl_priv = type { i32 }

@coex_sta = common dso_local global %struct.TYPE_3__* null, align 8
@BT_INFO_SRC_8723B_2ANT_MAX = common dso_local global i32 0, align 4
@BT_INFO_SRC_8723B_2ANT_WIFI_FW = common dso_local global i32 0, align 4
@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"[BTCoex], Bt info[%d], length=%d, hex data=[\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"0x%02x]\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"0x%02x, \00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"[BTCoex], BtInfoNotify(), return for Manual CTRL<===\0A\00", align 1
@BIT1 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [61 x i8] c"[BTCoex], BT ext info bit1 check, send wifi BW&Chnl to BT!!\0A\00", align 1
@BTC_GET_BL_WIFI_CONNECTED = common dso_local global i32 0, align 4
@BTC_MEDIA_CONNECT = common dso_local global i32 0, align 4
@BTC_MEDIA_DISCONNECT = common dso_local global i32 0, align 4
@BIT3 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [70 x i8] c"[BTCoex], BT ext info bit3 check, set BT NOT to ignore Wlan active!!\0A\00", align 1
@FORCE_EXEC = common dso_local global i32 0, align 4
@BIT4 = common dso_local global i32 0, align 4
@BT_INFO_8723B_2ANT_B_INQ_PAGE = common dso_local global i32 0, align 4
@BT_INFO_8723B_2ANT_B_CONNECTION = common dso_local global i32 0, align 4
@BT_INFO_8723B_2ANT_B_FTP = common dso_local global i32 0, align 4
@BT_INFO_8723B_2ANT_B_A2DP = common dso_local global i32 0, align 4
@BT_INFO_8723B_2ANT_B_HID = common dso_local global i32 0, align 4
@BT_INFO_8723B_2ANT_B_SCO_ESCO = common dso_local global i32 0, align 4
@BT_8723B_2ANT_BT_STATUS_NON_CONNECTED_IDLE = common dso_local global i64 0, align 8
@coex_dm = common dso_local global %struct.TYPE_4__* null, align 8
@.str.6 = private unnamed_addr constant [52 x i8] c"[BTCoex], BtInfoNotify(), BT Non-Connected idle!!!\0A\00", align 1
@BT_8723B_2ANT_BT_STATUS_CONNECTED_IDLE = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [48 x i8] c"[BTCoex], BtInfoNotify(), BT Connected-idle!!!\0A\00", align 1
@BT_INFO_8723B_2ANT_B_SCO_BUSY = common dso_local global i32 0, align 4
@BT_8723B_2ANT_BT_STATUS_SCO_BUSY = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [42 x i8] c"[BTCoex], BtInfoNotify(), BT SCO busy!!!\0A\00", align 1
@BT_INFO_8723B_2ANT_B_ACL_BUSY = common dso_local global i32 0, align 4
@BT_8723B_2ANT_BT_STATUS_ACL_BUSY = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [42 x i8] c"[BTCoex], BtInfoNotify(), BT ACL busy!!!\0A\00", align 1
@BT_8723B_2ANT_BT_STATUS_MAX = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [51 x i8] c"[BTCoex], BtInfoNotify(), BT Non-Defined state!!!\0A\00", align 1
@BT_8723B_2ANT_BT_STATUS_ACL_SCO_BUSY = common dso_local global i64 0, align 8
@BTC_SET_BL_BT_TRAFFIC_BUSY = common dso_local global i32 0, align 4
@BTC_SET_BL_BT_LIMITED_DIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ex_btc8723b2ant_bt_info_notify(%struct.btc_coexist* %0, i32* %1, i32 %2) #0 {
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
  %15 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %14, i32 0, i32 4
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
  %24 = load i32, i32* @BT_INFO_SRC_8723B_2ANT_MAX, align 4
  %25 = icmp sge i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* @BT_INFO_SRC_8723B_2ANT_WIFI_FW, align 4
  store i32 %27, i32* %10, align 4
  br label %28

28:                                               ; preds = %26, %3
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 16
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
  %42 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %37, i32 %38, i32 %39, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %41)
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
  %101 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %102 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %100
  %106 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %107 = load i32, i32* @COMP_BT_COEXIST, align 4
  %108 = load i32, i32* @DBG_LOUD, align 4
  %109 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %106, i32 %107, i32 %108, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  br label %478

110:                                              ; preds = %100
  %111 = load i32, i32* @BT_INFO_SRC_8723B_2ANT_WIFI_FW, align 4
  %112 = load i32, i32* %10, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %267

114:                                              ; preds = %110
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 1
  %117 = load i32**, i32*** %116, align 8
  %118 = load i32, i32* %10, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32*, i32** %117, i64 %119
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 2
  %123 = load i32, i32* %122, align 4
  %124 = and i32 %123, 15
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 8
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = icmp sge i32 %129, 1
  br i1 %130, label %131, label %136

131:                                              ; preds = %114
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 15
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %133, align 4
  br label %136

136:                                              ; preds = %131, %114
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 1
  %139 = load i32**, i32*** %138, align 8
  %140 = load i32, i32* %10, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32*, i32** %139, i64 %141
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 3
  %145 = load i32, i32* %144, align 4
  %146 = mul nsw i32 %145, 2
  %147 = add nsw i32 %146, 10
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 3
  store i32 %147, i32* %149, align 4
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 1
  %152 = load i32**, i32*** %151, align 8
  %153 = load i32, i32* %10, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32*, i32** %152, i64 %154
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 4
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 4
  store i32 %158, i32* %160, align 8
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 1
  %163 = load i32**, i32*** %162, align 8
  %164 = load i32, i32* %10, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32*, i32** %163, i64 %165
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 2
  %169 = load i32, i32* %168, align 4
  %170 = and i32 %169, 32
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %136
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 5
  store i32 1, i32* %174, align 4
  br label %178

175:                                              ; preds = %136
  %176 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 5
  store i32 0, i32* %177, align 4
  br label %178

178:                                              ; preds = %175, %172
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 1
  %181 = load i32**, i32*** %180, align 8
  %182 = load i32, i32* %10, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32*, i32** %181, i64 %183
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 1
  %187 = load i32, i32* %186, align 4
  %188 = icmp eq i32 %187, 73
  br i1 %188, label %189, label %201

189:                                              ; preds = %178
  %190 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 1
  %192 = load i32**, i32*** %191, align 8
  %193 = load i32, i32* %10, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32*, i32** %192, i64 %194
  %196 = load i32*, i32** %195, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 6
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 6
  store i32 %198, i32* %200, align 8
  br label %204

201:                                              ; preds = %178
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 6
  store i32 0, i32* %203, align 8
  br label %204

204:                                              ; preds = %201, %189
  %205 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 4
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* @BIT1, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %233

211:                                              ; preds = %204
  %212 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %213 = load i32, i32* @COMP_BT_COEXIST, align 4
  %214 = load i32, i32* @DBG_LOUD, align 4
  %215 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %212, i32 %213, i32 %214, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0))
  %216 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %217 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %216, i32 0, i32 2
  %218 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %217, align 8
  %219 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %220 = load i32, i32* @BTC_GET_BL_WIFI_CONNECTED, align 4
  %221 = call i32 %218(%struct.btc_coexist* %219, i32 %220, i32* %13)
  %222 = load i32, i32* %13, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %228

224:                                              ; preds = %211
  %225 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %226 = load i32, i32* @BTC_MEDIA_CONNECT, align 4
  %227 = call i32 @ex_btc8723b2ant_media_status_notify(%struct.btc_coexist* %225, i32 %226)
  br label %232

228:                                              ; preds = %211
  %229 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %230 = load i32, i32* @BTC_MEDIA_DISCONNECT, align 4
  %231 = call i32 @ex_btc8723b2ant_media_status_notify(%struct.btc_coexist* %229, i32 %230)
  br label %232

232:                                              ; preds = %228, %224
  br label %233

233:                                              ; preds = %232, %204
  %234 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %234, i32 0, i32 4
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* @BIT3, align 4
  %238 = and i32 %236, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %248

240:                                              ; preds = %233
  %241 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %242 = load i32, i32* @COMP_BT_COEXIST, align 4
  %243 = load i32, i32* @DBG_LOUD, align 4
  %244 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %241, i32 %242, i32 %243, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.5, i64 0, i64 0))
  %245 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %246 = load i32, i32* @FORCE_EXEC, align 4
  %247 = call i32 @btc8723b2ant_ignore_wlan_act(%struct.btc_coexist* %245, i32 %246, i32 0)
  br label %249

248:                                              ; preds = %233
  br label %249

249:                                              ; preds = %248, %240
  %250 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %251 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 8
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %266, label %254

254:                                              ; preds = %249
  %255 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %256 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %255, i32 0, i32 4
  %257 = load i32, i32* %256, align 8
  %258 = load i32, i32* @BIT4, align 4
  %259 = and i32 %257, %258
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %265, label %261

261:                                              ; preds = %254
  %262 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %263 = load i32, i32* @FORCE_EXEC, align 4
  %264 = call i32 @btc8723b2ant_bt_auto_report(%struct.btc_coexist* %262, i32 %263, i32 1)
  br label %265

265:                                              ; preds = %261, %254
  br label %266

266:                                              ; preds = %265, %249
  br label %267

267:                                              ; preds = %266, %110
  %268 = load i32, i32* %8, align 4
  %269 = load i32, i32* @BT_INFO_8723B_2ANT_B_INQ_PAGE, align 4
  %270 = and i32 %268, %269
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %275

272:                                              ; preds = %267
  %273 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %274 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %273, i32 0, i32 7
  store i32 1, i32* %274, align 4
  br label %278

275:                                              ; preds = %267
  %276 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %277 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %276, i32 0, i32 7
  store i32 0, i32* %277, align 4
  br label %278

278:                                              ; preds = %275, %272
  %279 = load i32, i32* %8, align 4
  %280 = load i32, i32* @BT_INFO_8723B_2ANT_B_CONNECTION, align 4
  %281 = and i32 %279, %280
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %294, label %283

283:                                              ; preds = %278
  %284 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %285 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %284, i32 0, i32 8
  store i32 0, i32* %285, align 8
  %286 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %287 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %286, i32 0, i32 9
  store i32 0, i32* %287, align 4
  %288 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %289 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %288, i32 0, i32 10
  store i32 0, i32* %289, align 8
  %290 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %291 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %290, i32 0, i32 11
  store i32 0, i32* %291, align 4
  %292 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %293 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %292, i32 0, i32 12
  store i32 0, i32* %293, align 8
  br label %371

294:                                              ; preds = %278
  %295 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %296 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %295, i32 0, i32 8
  store i32 1, i32* %296, align 8
  %297 = load i32, i32* %8, align 4
  %298 = load i32, i32* @BT_INFO_8723B_2ANT_B_FTP, align 4
  %299 = and i32 %297, %298
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %304

301:                                              ; preds = %294
  %302 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %303 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %302, i32 0, i32 9
  store i32 1, i32* %303, align 4
  br label %307

304:                                              ; preds = %294
  %305 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %306 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %305, i32 0, i32 9
  store i32 0, i32* %306, align 4
  br label %307

307:                                              ; preds = %304, %301
  %308 = load i32, i32* %8, align 4
  %309 = load i32, i32* @BT_INFO_8723B_2ANT_B_A2DP, align 4
  %310 = and i32 %308, %309
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %315

312:                                              ; preds = %307
  %313 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %314 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %313, i32 0, i32 10
  store i32 1, i32* %314, align 8
  br label %318

315:                                              ; preds = %307
  %316 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %317 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %316, i32 0, i32 10
  store i32 0, i32* %317, align 8
  br label %318

318:                                              ; preds = %315, %312
  %319 = load i32, i32* %8, align 4
  %320 = load i32, i32* @BT_INFO_8723B_2ANT_B_HID, align 4
  %321 = and i32 %319, %320
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %326

323:                                              ; preds = %318
  %324 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %325 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %324, i32 0, i32 11
  store i32 1, i32* %325, align 4
  br label %329

326:                                              ; preds = %318
  %327 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %328 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %327, i32 0, i32 11
  store i32 0, i32* %328, align 4
  br label %329

329:                                              ; preds = %326, %323
  %330 = load i32, i32* %8, align 4
  %331 = load i32, i32* @BT_INFO_8723B_2ANT_B_SCO_ESCO, align 4
  %332 = and i32 %330, %331
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %337

334:                                              ; preds = %329
  %335 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %336 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %335, i32 0, i32 12
  store i32 1, i32* %336, align 8
  br label %340

337:                                              ; preds = %329
  %338 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %339 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %338, i32 0, i32 12
  store i32 0, i32* %339, align 8
  br label %340

340:                                              ; preds = %337, %334
  %341 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %342 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %341, i32 0, i32 11
  %343 = load i32, i32* %342, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %370, label %345

345:                                              ; preds = %340
  %346 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %347 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %346, i32 0, i32 7
  %348 = load i32, i32* %347, align 4
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %370, label %350

350:                                              ; preds = %345
  %351 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %352 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %351, i32 0, i32 12
  %353 = load i32, i32* %352, align 8
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %370, label %355

355:                                              ; preds = %350
  %356 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %357 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %356, i32 0, i32 13
  %358 = load i32, i32* %357, align 4
  %359 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %360 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %359, i32 0, i32 14
  %361 = load i32, i32* %360, align 8
  %362 = add nsw i32 %358, %361
  %363 = icmp sge i32 %362, 160
  br i1 %363, label %364, label %369

364:                                              ; preds = %355
  %365 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %366 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %365, i32 0, i32 11
  store i32 1, i32* %366, align 4
  %367 = load i32, i32* %8, align 4
  %368 = or i32 %367, 40
  store i32 %368, i32* %8, align 4
  br label %369

369:                                              ; preds = %364, %355
  br label %370

370:                                              ; preds = %369, %350, %345, %340
  br label %371

371:                                              ; preds = %370, %283
  %372 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %373 = call i32 @btc8723b2ant_update_bt_link_info(%struct.btc_coexist* %372)
  %374 = load i32, i32* %8, align 4
  %375 = load i32, i32* @BT_INFO_8723B_2ANT_B_CONNECTION, align 4
  %376 = and i32 %374, %375
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %386, label %378

378:                                              ; preds = %371
  %379 = load i64, i64* @BT_8723B_2ANT_BT_STATUS_NON_CONNECTED_IDLE, align 8
  %380 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %381 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %380, i32 0, i32 0
  store i64 %379, i64* %381, align 8
  %382 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %383 = load i32, i32* @COMP_BT_COEXIST, align 4
  %384 = load i32, i32* @DBG_LOUD, align 4
  %385 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %382, i32 %383, i32 %384, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0))
  br label %440

386:                                              ; preds = %371
  %387 = load i32, i32* %8, align 4
  %388 = load i32, i32* @BT_INFO_8723B_2ANT_B_CONNECTION, align 4
  %389 = icmp eq i32 %387, %388
  br i1 %389, label %390, label %398

390:                                              ; preds = %386
  %391 = load i64, i64* @BT_8723B_2ANT_BT_STATUS_CONNECTED_IDLE, align 8
  %392 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %393 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %392, i32 0, i32 0
  store i64 %391, i64* %393, align 8
  %394 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %395 = load i32, i32* @COMP_BT_COEXIST, align 4
  %396 = load i32, i32* @DBG_LOUD, align 4
  %397 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %394, i32 %395, i32 %396, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0))
  br label %439

398:                                              ; preds = %386
  %399 = load i32, i32* %8, align 4
  %400 = load i32, i32* @BT_INFO_8723B_2ANT_B_SCO_ESCO, align 4
  %401 = and i32 %399, %400
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %408, label %403

403:                                              ; preds = %398
  %404 = load i32, i32* %8, align 4
  %405 = load i32, i32* @BT_INFO_8723B_2ANT_B_SCO_BUSY, align 4
  %406 = and i32 %404, %405
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %416

408:                                              ; preds = %403, %398
  %409 = load i64, i64* @BT_8723B_2ANT_BT_STATUS_SCO_BUSY, align 8
  %410 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %411 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %410, i32 0, i32 0
  store i64 %409, i64* %411, align 8
  %412 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %413 = load i32, i32* @COMP_BT_COEXIST, align 4
  %414 = load i32, i32* @DBG_LOUD, align 4
  %415 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %412, i32 %413, i32 %414, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0))
  br label %438

416:                                              ; preds = %403
  %417 = load i32, i32* %8, align 4
  %418 = load i32, i32* @BT_INFO_8723B_2ANT_B_ACL_BUSY, align 4
  %419 = and i32 %417, %418
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %421, label %429

421:                                              ; preds = %416
  %422 = load i64, i64* @BT_8723B_2ANT_BT_STATUS_ACL_BUSY, align 8
  %423 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %424 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %423, i32 0, i32 0
  store i64 %422, i64* %424, align 8
  %425 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %426 = load i32, i32* @COMP_BT_COEXIST, align 4
  %427 = load i32, i32* @DBG_LOUD, align 4
  %428 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %425, i32 %426, i32 %427, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0))
  br label %437

429:                                              ; preds = %416
  %430 = load i64, i64* @BT_8723B_2ANT_BT_STATUS_MAX, align 8
  %431 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %432 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %431, i32 0, i32 0
  store i64 %430, i64* %432, align 8
  %433 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %434 = load i32, i32* @COMP_BT_COEXIST, align 4
  %435 = load i32, i32* @DBG_LOUD, align 4
  %436 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %433, i32 %434, i32 %435, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.10, i64 0, i64 0))
  br label %437

437:                                              ; preds = %429, %421
  br label %438

438:                                              ; preds = %437, %408
  br label %439

439:                                              ; preds = %438, %390
  br label %440

440:                                              ; preds = %439, %378
  %441 = load i64, i64* @BT_8723B_2ANT_BT_STATUS_ACL_BUSY, align 8
  %442 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %443 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %442, i32 0, i32 0
  %444 = load i64, i64* %443, align 8
  %445 = icmp eq i64 %441, %444
  br i1 %445, label %458, label %446

446:                                              ; preds = %440
  %447 = load i64, i64* @BT_8723B_2ANT_BT_STATUS_SCO_BUSY, align 8
  %448 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %449 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %448, i32 0, i32 0
  %450 = load i64, i64* %449, align 8
  %451 = icmp eq i64 %447, %450
  br i1 %451, label %458, label %452

452:                                              ; preds = %446
  %453 = load i64, i64* @BT_8723B_2ANT_BT_STATUS_ACL_SCO_BUSY, align 8
  %454 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %455 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %454, i32 0, i32 0
  %456 = load i64, i64* %455, align 8
  %457 = icmp eq i64 %453, %456
  br i1 %457, label %458, label %459

458:                                              ; preds = %452, %446, %440
  store i32 1, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %460

459:                                              ; preds = %452
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %460

460:                                              ; preds = %459, %458
  %461 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %462 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %461, i32 0, i32 0
  %463 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %462, align 8
  %464 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %465 = load i32, i32* @BTC_SET_BL_BT_TRAFFIC_BUSY, align 4
  %466 = call i32 %463(%struct.btc_coexist* %464, i32 %465, i32* %11)
  %467 = load i32, i32* %12, align 4
  %468 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %469 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %468, i32 0, i32 1
  store i32 %467, i32* %469, align 8
  %470 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %471 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %470, i32 0, i32 0
  %472 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %471, align 8
  %473 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %474 = load i32, i32* @BTC_SET_BL_BT_LIMITED_DIG, align 4
  %475 = call i32 %472(%struct.btc_coexist* %473, i32 %474, i32* %12)
  %476 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %477 = call i32 @btc8723b2ant_run_coexist_mechanism(%struct.btc_coexist* %476)
  br label %478

478:                                              ; preds = %460, %105
  ret void
}

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @ex_btc8723b2ant_media_status_notify(%struct.btc_coexist*, i32) #1

declare dso_local i32 @btc8723b2ant_ignore_wlan_act(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8723b2ant_bt_auto_report(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8723b2ant_update_bt_link_info(%struct.btc_coexist*) #1

declare dso_local i32 @btc8723b2ant_run_coexist_mechanism(%struct.btc_coexist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
