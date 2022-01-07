; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b1ant.c_ex_btc8723b1ant_bt_info_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b1ant.c_ex_btc8723b1ant_bt_info_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32**, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i32*)*, i32, i32, i32, i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32, i32)*, %struct.rtl_priv* }
%struct.rtl_priv = type { i32 }

@coex_sta = common dso_local global %struct.TYPE_3__* null, align 8
@BT_INFO_SRC_8723B_1ANT_MAX = common dso_local global i32 0, align 4
@BT_INFO_SRC_8723B_1ANT_WIFI_FW = common dso_local global i32 0, align 4
@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"[BTCoex], Bt info[%d], length=%d, hex data = [\00", align 1
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
@.str.5 = private unnamed_addr constant [67 x i8] c"[BTCoex], BT ext info bit3 check, set BT NOT ignore Wlan active!!\0A\00", align 1
@FORCE_EXEC = common dso_local global i32 0, align 4
@BIT4 = common dso_local global i32 0, align 4
@BT_INFO_8723B_1ANT_B_INQ_PAGE = common dso_local global i32 0, align 4
@BT_INFO_8723B_1ANT_B_CONNECTION = common dso_local global i32 0, align 4
@BT_INFO_8723B_1ANT_B_FTP = common dso_local global i32 0, align 4
@BT_INFO_8723B_1ANT_B_A2DP = common dso_local global i32 0, align 4
@BT_INFO_8723B_1ANT_B_HID = common dso_local global i32 0, align 4
@BT_INFO_8723B_1ANT_B_SCO_ESCO = common dso_local global i32 0, align 4
@BT_INFO_8723B_1ANT_B_ACL_BUSY = common dso_local global i32 0, align 4
@BT_8723B_1ANT_BT_STATUS_NON_CONNECTED_IDLE = common dso_local global i64 0, align 8
@coex_dm = common dso_local global %struct.TYPE_4__* null, align 8
@.str.6 = private unnamed_addr constant [50 x i8] c"[BTCoex], BtInfoNotify(), BT Non-Connected idle!\0A\00", align 1
@BT_8723B_1ANT_BT_STATUS_CONNECTED_IDLE = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [48 x i8] c"[BTCoex], BtInfoNotify(), BT Connected-idle!!!\0A\00", align 1
@BT_INFO_8723B_1ANT_B_SCO_BUSY = common dso_local global i32 0, align 4
@BT_8723B_1ANT_BT_STATUS_SCO_BUSY = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [42 x i8] c"[BTCoex], BtInfoNotify(), BT SCO busy!!!\0A\00", align 1
@BT_8723B_1ANT_BT_STATUS_ACL_BUSY = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [42 x i8] c"[BTCoex], BtInfoNotify(), BT ACL busy!!!\0A\00", align 1
@BT_8723B_1ANT_BT_STATUS_MAX = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [50 x i8] c"[BTCoex], BtInfoNotify(), BT Non-Defined state!!\0A\00", align 1
@BT_8723B_1ANT_BT_STATUS_ACL_SCO_BUSY = common dso_local global i64 0, align 8
@BTC_SET_BL_BT_TRAFFIC_BUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ex_btc8723b1ant_bt_info_notify(%struct.btc_coexist* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.btc_coexist*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtl_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.btc_coexist* %0, %struct.btc_coexist** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %14 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %13, i32 0, i32 6
  %15 = load %struct.rtl_priv*, %struct.rtl_priv** %14, align 8
  store %struct.rtl_priv* %15, %struct.rtl_priv** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 15
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @BT_INFO_SRC_8723B_1ANT_MAX, align 4
  %24 = icmp sge i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @BT_INFO_SRC_8723B_1ANT_WIFI_FW, align 4
  store i32 %26, i32* %10, align 4
  br label %27

27:                                               ; preds = %25, %3
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 23
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  %36 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %37 = load i32, i32* @COMP_BT_COEXIST, align 4
  %38 = load i32, i32* @DBG_LOUD, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %36, i32 %37, i32 %38, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40)
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %96, %27
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %99

46:                                               ; preds = %42
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32**, i32*** %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32*, i32** %54, i64 %56
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32 %51, i32* %61, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %70

64:                                               ; preds = %46
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %64, %46
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %6, align 4
  %73 = sub nsw i32 %72, 1
  %74 = icmp eq i32 %71, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %70
  %76 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %77 = load i32, i32* @COMP_BT_COEXIST, align 4
  %78 = load i32, i32* @DBG_LOUD, align 4
  %79 = load i32*, i32** %5, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %76, i32 %77, i32 %78, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  br label %95

85:                                               ; preds = %70
  %86 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %87 = load i32, i32* @COMP_BT_COEXIST, align 4
  %88 = load i32, i32* @DBG_LOUD, align 4
  %89 = load i32*, i32** %5, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %86, i32 %87, i32 %88, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %85, %75
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %9, align 4
  br label %42

99:                                               ; preds = %42
  %100 = load i32, i32* %8, align 4
  %101 = icmp eq i32 %100, 255
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 2
  store i32 1, i32* %104, align 8
  br label %108

105:                                              ; preds = %99
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 2
  store i32 0, i32* %107, align 8
  br label %108

108:                                              ; preds = %105, %102
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* @BT_INFO_SRC_8723B_1ANT_WIFI_FW, align 4
  %111 = icmp ne i32 %109, %110
  br i1 %111, label %112, label %325

112:                                              ; preds = %108
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  %115 = load i32**, i32*** %114, align 8
  %116 = load i32, i32* %10, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32*, i32** %115, i64 %117
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 2
  %121 = load i32, i32* %120, align 4
  %122 = and i32 %121, 15
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 3
  store i32 %122, i32* %124, align 4
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = icmp sge i32 %127, 1
  br i1 %128, label %129, label %134

129:                                              ; preds = %112
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 22
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %131, align 4
  br label %134

134:                                              ; preds = %129, %112
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 1
  %137 = load i32**, i32*** %136, align 8
  %138 = load i32, i32* %10, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32*, i32** %137, i64 %139
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 2
  %143 = load i32, i32* %142, align 4
  %144 = and i32 %143, 32
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %134
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 4
  store i32 1, i32* %148, align 8
  br label %152

149:                                              ; preds = %134
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 4
  store i32 0, i32* %151, align 8
  br label %152

152:                                              ; preds = %149, %146
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 1
  %155 = load i32**, i32*** %154, align 8
  %156 = load i32, i32* %10, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32*, i32** %155, i64 %157
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 3
  %161 = load i32, i32* %160, align 4
  %162 = mul nsw i32 %161, 2
  %163 = sub nsw i32 %162, 90
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 5
  store i32 %163, i32* %165, align 4
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 1
  %168 = load i32**, i32*** %167, align 8
  %169 = load i32, i32* %10, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32*, i32** %168, i64 %170
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 4
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 6
  store i32 %174, i32* %176, align 8
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 1
  %179 = load i32**, i32*** %178, align 8
  %180 = load i32, i32* %10, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32*, i32** %179, i64 %181
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 1
  %185 = load i32, i32* %184, align 4
  %186 = icmp eq i32 %185, 73
  br i1 %186, label %187, label %199

187:                                              ; preds = %152
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 1
  %190 = load i32**, i32*** %189, align 8
  %191 = load i32, i32* %10, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32*, i32** %190, i64 %192
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 6
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 7
  store i32 %196, i32* %198, align 4
  br label %202

199:                                              ; preds = %152
  %200 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 7
  store i32 0, i32* %201, align 4
  br label %202

202:                                              ; preds = %199, %187
  %203 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 1
  %205 = load i32**, i32*** %204, align 8
  %206 = load i32, i32* %10, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32*, i32** %205, i64 %207
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 2
  %211 = load i32, i32* %210, align 4
  %212 = and i32 %211, 64
  %213 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 8
  store i32 %212, i32* %214, align 8
  %215 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %216 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %215, i32 0, i32 0
  %217 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %216, align 8
  %218 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %219 = load i32, i32* @BTC_SET_BL_BT_TX_RX_MASK, align 4
  %220 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 8
  %222 = call i32 %217(%struct.btc_coexist* %218, i32 %219, i32* %221)
  %223 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i32 0, i32 8
  %225 = load i32, i32* %224, align 8
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %250, label %227

227:                                              ; preds = %202
  %228 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %229 = load i32, i32* @COMP_BT_COEXIST, align 4
  %230 = load i32, i32* @DBG_LOUD, align 4
  %231 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %228, i32 %229, i32 %230, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0))
  %232 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %233 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %232, i32 0, i32 5
  %234 = load i32 (%struct.btc_coexist*, i32, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32, i32)** %233, align 8
  %235 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %236 = load i32, i32* @BTC_BT_REG_RF, align 4
  %237 = call i32 %234(%struct.btc_coexist* %235, i32 %236, i32 60, i32 21)
  %238 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %239 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %238, i32 0, i32 5
  %240 = load i32 (%struct.btc_coexist*, i32, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32, i32)** %239, align 8
  %241 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %242 = load i32, i32* @BTC_BT_REG_RF, align 4
  %243 = call i32 %240(%struct.btc_coexist* %241, i32 %242, i32 44, i32 31812)
  %244 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %245 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %244, i32 0, i32 5
  %246 = load i32 (%struct.btc_coexist*, i32, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32, i32)** %245, align 8
  %247 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %248 = load i32, i32* @BTC_BT_REG_RF, align 4
  %249 = call i32 %246(%struct.btc_coexist* %247, i32 %248, i32 48, i32 31812)
  br label %250

250:                                              ; preds = %227, %202
  %251 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %252 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %251, i32 0, i32 6
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* @BIT1, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %279

257:                                              ; preds = %250
  %258 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %259 = load i32, i32* @COMP_BT_COEXIST, align 4
  %260 = load i32, i32* @DBG_LOUD, align 4
  %261 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %258, i32 %259, i32 %260, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0))
  %262 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %263 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %262, i32 0, i32 4
  %264 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %263, align 8
  %265 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %266 = load i32, i32* @BTC_GET_BL_WIFI_CONNECTED, align 4
  %267 = call i32 %264(%struct.btc_coexist* %265, i32 %266, i32* %11)
  %268 = load i32, i32* %11, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %274

270:                                              ; preds = %257
  %271 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %272 = load i32, i32* @BTC_MEDIA_CONNECT, align 4
  %273 = call i32 @ex_btc8723b1ant_media_status_notify(%struct.btc_coexist* %271, i32 %272)
  br label %278

274:                                              ; preds = %257
  %275 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %276 = load i32, i32* @BTC_MEDIA_DISCONNECT, align 4
  %277 = call i32 @ex_btc8723b1ant_media_status_notify(%struct.btc_coexist* %275, i32 %276)
  br label %278

278:                                              ; preds = %274, %270
  br label %279

279:                                              ; preds = %278, %250
  %280 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %281 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %280, i32 0, i32 6
  %282 = load i32, i32* %281, align 8
  %283 = load i32, i32* @BIT3, align 4
  %284 = and i32 %282, %283
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %305

286:                                              ; preds = %279
  %287 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %288 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %287, i32 0, i32 3
  %289 = load i32, i32* %288, align 8
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %304, label %291

291:                                              ; preds = %286
  %292 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %293 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %292, i32 0, i32 2
  %294 = load i32, i32* %293, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %304, label %296

296:                                              ; preds = %291
  %297 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %298 = load i32, i32* @COMP_BT_COEXIST, align 4
  %299 = load i32, i32* @DBG_LOUD, align 4
  %300 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %297, i32 %298, i32 %299, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.5, i64 0, i64 0))
  %301 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %302 = load i32, i32* @FORCE_EXEC, align 4
  %303 = call i32 @halbtc8723b1ant_ignore_wlan_act(%struct.btc_coexist* %301, i32 %302, i32 0)
  br label %304

304:                                              ; preds = %296, %291, %286
  br label %306

305:                                              ; preds = %279
  br label %306

306:                                              ; preds = %305, %304
  %307 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %308 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 8
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %324, label %311

311:                                              ; preds = %306
  %312 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %313 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %312, i32 0, i32 6
  %314 = load i32, i32* %313, align 8
  %315 = load i32, i32* @BIT4, align 4
  %316 = and i32 %314, %315
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %319

318:                                              ; preds = %311
  br label %323

319:                                              ; preds = %311
  %320 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %321 = load i32, i32* @FORCE_EXEC, align 4
  %322 = call i32 @halbtc8723b1ant_bt_auto_report(%struct.btc_coexist* %320, i32 %321, i32 1)
  br label %323

323:                                              ; preds = %319, %318
  br label %324

324:                                              ; preds = %323, %306
  br label %325

325:                                              ; preds = %324, %108
  %326 = load i32, i32* %8, align 4
  %327 = load i32, i32* @BT_INFO_8723B_1ANT_B_INQ_PAGE, align 4
  %328 = and i32 %326, %327
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %333

330:                                              ; preds = %325
  %331 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %332 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %331, i32 0, i32 9
  store i32 1, i32* %332, align 4
  br label %336

333:                                              ; preds = %325
  %334 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %335 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %334, i32 0, i32 9
  store i32 0, i32* %335, align 4
  br label %336

336:                                              ; preds = %333, %330
  %337 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %338 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %337, i32 0, i32 10
  store i64 0, i64* %338, align 8
  %339 = load i32, i32* %8, align 4
  %340 = load i32, i32* @BT_INFO_8723B_1ANT_B_CONNECTION, align 4
  %341 = and i32 %339, %340
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %356, label %343

343:                                              ; preds = %336
  %344 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %345 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %344, i32 0, i32 11
  store i32 0, i32* %345, align 8
  %346 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %347 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %346, i32 0, i32 12
  store i32 0, i32* %347, align 4
  %348 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %349 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %348, i32 0, i32 13
  store i32 0, i32* %349, align 8
  %350 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %351 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %350, i32 0, i32 14
  store i32 0, i32* %351, align 4
  %352 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %353 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %352, i32 0, i32 15
  store i32 0, i32* %353, align 8
  %354 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %355 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %354, i32 0, i32 16
  store i32 0, i32* %355, align 4
  br label %517

356:                                              ; preds = %336
  %357 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %358 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %357, i32 0, i32 11
  store i32 1, i32* %358, align 8
  %359 = load i32, i32* %8, align 4
  %360 = load i32, i32* @BT_INFO_8723B_1ANT_B_FTP, align 4
  %361 = and i32 %359, %360
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %370

363:                                              ; preds = %356
  %364 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %365 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %364, i32 0, i32 12
  store i32 1, i32* %365, align 4
  %366 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %367 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %366, i32 0, i32 10
  %368 = load i64, i64* %367, align 8
  %369 = add nsw i64 %368, 1
  store i64 %369, i64* %367, align 8
  br label %373

370:                                              ; preds = %356
  %371 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %372 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %371, i32 0, i32 12
  store i32 0, i32* %372, align 4
  br label %373

373:                                              ; preds = %370, %363
  %374 = load i32, i32* %8, align 4
  %375 = load i32, i32* @BT_INFO_8723B_1ANT_B_A2DP, align 4
  %376 = and i32 %374, %375
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %385

378:                                              ; preds = %373
  %379 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %380 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %379, i32 0, i32 13
  store i32 1, i32* %380, align 8
  %381 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %382 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %381, i32 0, i32 10
  %383 = load i64, i64* %382, align 8
  %384 = add nsw i64 %383, 1
  store i64 %384, i64* %382, align 8
  br label %388

385:                                              ; preds = %373
  %386 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %387 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %386, i32 0, i32 13
  store i32 0, i32* %387, align 8
  br label %388

388:                                              ; preds = %385, %378
  %389 = load i32, i32* %8, align 4
  %390 = load i32, i32* @BT_INFO_8723B_1ANT_B_HID, align 4
  %391 = and i32 %389, %390
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %400

393:                                              ; preds = %388
  %394 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %395 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %394, i32 0, i32 14
  store i32 1, i32* %395, align 4
  %396 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %397 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %396, i32 0, i32 10
  %398 = load i64, i64* %397, align 8
  %399 = add nsw i64 %398, 1
  store i64 %399, i64* %397, align 8
  br label %403

400:                                              ; preds = %388
  %401 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %402 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %401, i32 0, i32 14
  store i32 0, i32* %402, align 4
  br label %403

403:                                              ; preds = %400, %393
  %404 = load i32, i32* %8, align 4
  %405 = load i32, i32* @BT_INFO_8723B_1ANT_B_SCO_ESCO, align 4
  %406 = and i32 %404, %405
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %415

408:                                              ; preds = %403
  %409 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %410 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %409, i32 0, i32 15
  store i32 1, i32* %410, align 8
  %411 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %412 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %411, i32 0, i32 10
  %413 = load i64, i64* %412, align 8
  %414 = add nsw i64 %413, 1
  store i64 %414, i64* %412, align 8
  br label %418

415:                                              ; preds = %403
  %416 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %417 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %416, i32 0, i32 15
  store i32 0, i32* %417, align 8
  br label %418

418:                                              ; preds = %415, %408
  %419 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %420 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %419, i32 0, i32 14
  %421 = load i32, i32* %420, align 4
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %456, label %423

423:                                              ; preds = %418
  %424 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %425 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %424, i32 0, i32 9
  %426 = load i32, i32* %425, align 4
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %456, label %428

428:                                              ; preds = %423
  %429 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %430 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %429, i32 0, i32 15
  %431 = load i32, i32* %430, align 8
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %456, label %433

433:                                              ; preds = %428
  %434 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %435 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %434, i32 0, i32 17
  %436 = load i32, i32* %435, align 8
  %437 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %438 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %437, i32 0, i32 18
  %439 = load i32, i32* %438, align 4
  %440 = add nsw i32 %436, %439
  %441 = icmp sge i32 %440, 160
  br i1 %441, label %442, label %455

442:                                              ; preds = %433
  %443 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %444 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %443, i32 0, i32 14
  store i32 1, i32* %444, align 4
  %445 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %446 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %445, i32 0, i32 21
  %447 = load i32, i32* %446, align 8
  %448 = add nsw i32 %447, 1
  store i32 %448, i32* %446, align 8
  %449 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %450 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %449, i32 0, i32 10
  %451 = load i64, i64* %450, align 8
  %452 = add nsw i64 %451, 1
  store i64 %452, i64* %450, align 8
  %453 = load i32, i32* %8, align 4
  %454 = or i32 %453, 40
  store i32 %454, i32* %8, align 4
  br label %455

455:                                              ; preds = %442, %433
  br label %456

456:                                              ; preds = %455, %428, %423, %418
  %457 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %458 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %457, i32 0, i32 14
  %459 = load i32, i32* %458, align 4
  %460 = icmp ne i32 %459, 0
  br i1 %460, label %466, label %461

461:                                              ; preds = %456
  %462 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %463 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %462, i32 0, i32 15
  %464 = load i32, i32* %463, align 8
  %465 = icmp ne i32 %464, 0
  br i1 %465, label %466, label %483

466:                                              ; preds = %461, %456
  %467 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %468 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %467, i32 0, i32 17
  %469 = load i32, i32* %468, align 8
  %470 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %471 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %470, i32 0, i32 18
  %472 = load i32, i32* %471, align 4
  %473 = add nsw i32 %469, %472
  %474 = icmp sge i32 %473, 160
  br i1 %474, label %475, label %483

475:                                              ; preds = %466
  %476 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %477 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %476, i32 0, i32 9
  %478 = load i32, i32* %477, align 4
  %479 = icmp ne i32 %478, 0
  br i1 %479, label %483, label %480

480:                                              ; preds = %475
  %481 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %482 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %481, i32 0, i32 16
  store i32 1, i32* %482, align 4
  br label %483

483:                                              ; preds = %480, %475, %466, %461
  %484 = load i32, i32* %8, align 4
  %485 = load i32, i32* @BT_INFO_8723B_1ANT_B_ACL_BUSY, align 4
  %486 = and i32 %484, %485
  %487 = icmp ne i32 %486, 0
  br i1 %487, label %488, label %516

488:                                              ; preds = %483
  %489 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %490 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %489, i32 0, i32 10
  %491 = load i64, i64* %490, align 8
  %492 = icmp eq i64 %491, 0
  br i1 %492, label %493, label %516

493:                                              ; preds = %488
  %494 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %495 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %494, i32 0, i32 19
  %496 = load i32, i32* %495, align 8
  %497 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %498 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %497, i32 0, i32 20
  %499 = load i32, i32* %498, align 4
  %500 = add nsw i32 %496, %499
  %501 = icmp sge i32 %500, 160
  br i1 %501, label %502, label %515

502:                                              ; preds = %493
  %503 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %504 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %503, i32 0, i32 12
  store i32 1, i32* %504, align 4
  %505 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %506 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %505, i32 0, i32 10
  %507 = load i64, i64* %506, align 8
  %508 = add nsw i64 %507, 1
  store i64 %508, i64* %506, align 8
  %509 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %510 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %509, i32 0, i32 21
  %511 = load i32, i32* %510, align 8
  %512 = add nsw i32 %511, 1
  store i32 %512, i32* %510, align 8
  %513 = load i32, i32* %8, align 4
  %514 = or i32 %513, 136
  store i32 %514, i32* %8, align 4
  br label %515

515:                                              ; preds = %502, %493
  br label %516

516:                                              ; preds = %515, %488, %483
  br label %517

517:                                              ; preds = %516, %343
  %518 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %519 = call i32 @halbtc8723b1ant_update_bt_link_info(%struct.btc_coexist* %518)
  %520 = load i32, i32* %8, align 4
  %521 = and i32 %520, 31
  store i32 %521, i32* %8, align 4
  %522 = load i32, i32* %8, align 4
  %523 = load i32, i32* @BT_INFO_8723B_1ANT_B_CONNECTION, align 4
  %524 = and i32 %522, %523
  %525 = icmp ne i32 %524, 0
  br i1 %525, label %534, label %526

526:                                              ; preds = %517
  %527 = load i64, i64* @BT_8723B_1ANT_BT_STATUS_NON_CONNECTED_IDLE, align 8
  %528 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %529 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %528, i32 0, i32 0
  store i64 %527, i64* %529, align 8
  %530 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %531 = load i32, i32* @COMP_BT_COEXIST, align 4
  %532 = load i32, i32* @DBG_LOUD, align 4
  %533 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %530, i32 %531, i32 %532, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0))
  br label %597

534:                                              ; preds = %517
  %535 = load i32, i32* %8, align 4
  %536 = load i32, i32* @BT_INFO_8723B_1ANT_B_CONNECTION, align 4
  %537 = icmp eq i32 %535, %536
  br i1 %537, label %538, label %546

538:                                              ; preds = %534
  %539 = load i64, i64* @BT_8723B_1ANT_BT_STATUS_CONNECTED_IDLE, align 8
  %540 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %541 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %540, i32 0, i32 0
  store i64 %539, i64* %541, align 8
  %542 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %543 = load i32, i32* @COMP_BT_COEXIST, align 4
  %544 = load i32, i32* @DBG_LOUD, align 4
  %545 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %542, i32 %543, i32 %544, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0))
  br label %596

546:                                              ; preds = %534
  %547 = load i32, i32* %8, align 4
  %548 = load i32, i32* @BT_INFO_8723B_1ANT_B_SCO_ESCO, align 4
  %549 = and i32 %547, %548
  %550 = icmp ne i32 %549, 0
  br i1 %550, label %556, label %551

551:                                              ; preds = %546
  %552 = load i32, i32* %8, align 4
  %553 = load i32, i32* @BT_INFO_8723B_1ANT_B_SCO_BUSY, align 4
  %554 = and i32 %552, %553
  %555 = icmp ne i32 %554, 0
  br i1 %555, label %556, label %564

556:                                              ; preds = %551, %546
  %557 = load i64, i64* @BT_8723B_1ANT_BT_STATUS_SCO_BUSY, align 8
  %558 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %559 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %558, i32 0, i32 0
  store i64 %557, i64* %559, align 8
  %560 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %561 = load i32, i32* @COMP_BT_COEXIST, align 4
  %562 = load i32, i32* @DBG_LOUD, align 4
  %563 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %560, i32 %561, i32 %562, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0))
  br label %595

564:                                              ; preds = %551
  %565 = load i32, i32* %8, align 4
  %566 = load i32, i32* @BT_INFO_8723B_1ANT_B_ACL_BUSY, align 4
  %567 = and i32 %565, %566
  %568 = icmp ne i32 %567, 0
  br i1 %568, label %569, label %586

569:                                              ; preds = %564
  %570 = load i64, i64* @BT_8723B_1ANT_BT_STATUS_ACL_BUSY, align 8
  %571 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %572 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %571, i32 0, i32 0
  %573 = load i64, i64* %572, align 8
  %574 = icmp ne i64 %570, %573
  br i1 %574, label %575, label %578

575:                                              ; preds = %569
  %576 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %577 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %576, i32 0, i32 1
  store i32 0, i32* %577, align 8
  br label %578

578:                                              ; preds = %575, %569
  %579 = load i64, i64* @BT_8723B_1ANT_BT_STATUS_ACL_BUSY, align 8
  %580 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %581 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %580, i32 0, i32 0
  store i64 %579, i64* %581, align 8
  %582 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %583 = load i32, i32* @COMP_BT_COEXIST, align 4
  %584 = load i32, i32* @DBG_LOUD, align 4
  %585 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %582, i32 %583, i32 %584, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0))
  br label %594

586:                                              ; preds = %564
  %587 = load i64, i64* @BT_8723B_1ANT_BT_STATUS_MAX, align 8
  %588 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %589 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %588, i32 0, i32 0
  store i64 %587, i64* %589, align 8
  %590 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %591 = load i32, i32* @COMP_BT_COEXIST, align 4
  %592 = load i32, i32* @DBG_LOUD, align 4
  %593 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %590, i32 %591, i32 %592, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.10, i64 0, i64 0))
  br label %594

594:                                              ; preds = %586, %578
  br label %595

595:                                              ; preds = %594, %556
  br label %596

596:                                              ; preds = %595, %538
  br label %597

597:                                              ; preds = %596, %526
  %598 = load i64, i64* @BT_8723B_1ANT_BT_STATUS_ACL_BUSY, align 8
  %599 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %600 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %599, i32 0, i32 0
  %601 = load i64, i64* %600, align 8
  %602 = icmp eq i64 %598, %601
  br i1 %602, label %615, label %603

603:                                              ; preds = %597
  %604 = load i64, i64* @BT_8723B_1ANT_BT_STATUS_SCO_BUSY, align 8
  %605 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %606 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %605, i32 0, i32 0
  %607 = load i64, i64* %606, align 8
  %608 = icmp eq i64 %604, %607
  br i1 %608, label %615, label %609

609:                                              ; preds = %603
  %610 = load i64, i64* @BT_8723B_1ANT_BT_STATUS_ACL_SCO_BUSY, align 8
  %611 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %612 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %611, i32 0, i32 0
  %613 = load i64, i64* %612, align 8
  %614 = icmp eq i64 %610, %613
  br i1 %614, label %615, label %616

615:                                              ; preds = %609, %603, %597
  store i32 1, i32* %12, align 4
  br label %617

616:                                              ; preds = %609
  store i32 0, i32* %12, align 4
  br label %617

617:                                              ; preds = %616, %615
  %618 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %619 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %618, i32 0, i32 0
  %620 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %619, align 8
  %621 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %622 = load i32, i32* @BTC_SET_BL_BT_TRAFFIC_BUSY, align 4
  %623 = call i32 %620(%struct.btc_coexist* %621, i32 %622, i32* %12)
  %624 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %625 = call i32 @halbtc8723b1ant_run_coexist_mechanism(%struct.btc_coexist* %624)
  ret void
}

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @ex_btc8723b1ant_media_status_notify(%struct.btc_coexist*, i32) #1

declare dso_local i32 @halbtc8723b1ant_ignore_wlan_act(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @halbtc8723b1ant_bt_auto_report(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @halbtc8723b1ant_update_bt_link_info(%struct.btc_coexist*) #1

declare dso_local i32 @halbtc8723b1ant_run_coexist_mechanism(%struct.btc_coexist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
