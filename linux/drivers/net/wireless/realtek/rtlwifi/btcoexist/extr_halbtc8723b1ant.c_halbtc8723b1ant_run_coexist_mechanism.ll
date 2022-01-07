; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b1ant.c_halbtc8723b1ant_run_coexist_mechanism.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b1ant.c_halbtc8723b1ant_run_coexist_mechanism.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)*, i64, i64, %struct.btc_bt_link_info, %struct.rtl_priv* }
%struct.btc_bt_link_info = type { i32, i64, i64 }
%struct.rtl_priv = type { i32 }

@BTC_IOT_PEER_UNKNOWN = common dso_local global i64 0, align 8
@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"[BTCoex], RunCoexistMechanism()===>\0A\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"[BTCoex], RunCoexistMechanism(), return for Manual CTRL <===\0A\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"[BTCoex], RunCoexistMechanism(), return for Stop Coex DM <===\0A\00", align 1
@coex_sta = common dso_local global %struct.TYPE_3__* null, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"[BTCoex], wifi is under IPS !!!\0A\00", align 1
@coex_dm = common dso_local global %struct.TYPE_4__* null, align 8
@BT_8723B_1ANT_BT_STATUS_ACL_BUSY = common dso_local global i64 0, align 8
@BT_8723B_1ANT_BT_STATUS_SCO_BUSY = common dso_local global i64 0, align 8
@BT_8723B_1ANT_BT_STATUS_ACL_SCO_BUSY = common dso_local global i64 0, align 8
@BTC_SET_BL_INC_SCAN_DEV_NUM = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_CONNECTED = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_BUSY = common dso_local global i32 0, align 4
@BTC_GET_U4_WIFI_LINK_STATUS = common dso_local global i32 0, align 4
@WIFI_P2P_GO_CONNECTED = common dso_local global i32 0, align 4
@NORMAL_EXEC = common dso_local global i32 0, align 4
@BTC_SET_BL_MIRACAST_PLUS_BT = common dso_local global i32 0, align 4
@BTC_GET_U4_WIFI_BW = common dso_local global i32 0, align 4
@BTC_GET_U1_IOT_PEER = common dso_local global i32 0, align 4
@BTC_IOT_PEER_CISCO = common dso_local global i64 0, align 8
@BTC_IOT_PEER_BROADCOM = common dso_local global i64 0, align 8
@BTC_WIFI_BW_HT40 = common dso_local global i32 0, align 4
@BTC_GET_BL_HS_OPERATION = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"[BTCoex], wifi is non connected-idle !!!\0A\00", align 1
@BTC_GET_BL_WIFI_SCAN = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_LINK = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_ROAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*)* @halbtc8723b1ant_run_coexist_mechanism to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @halbtc8723b1ant_run_coexist_mechanism(%struct.btc_coexist* %0) #0 {
  %2 = alloca %struct.btc_coexist*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.btc_bt_link_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.btc_coexist* %0, %struct.btc_coexist** %2, align 8
  %20 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %21 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %20, i32 0, i32 5
  %22 = load %struct.rtl_priv*, %struct.rtl_priv** %21, align 8
  store %struct.rtl_priv* %22, %struct.rtl_priv** %3, align 8
  %23 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %24 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %23, i32 0, i32 4
  store %struct.btc_bt_link_info* %24, %struct.btc_bt_link_info** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i64 5, i64* %11, align 8
  %25 = load i64, i64* @BTC_IOT_PEER_UNKNOWN, align 8
  store i64 %25, i64* %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %26 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %27 = load i32, i32* @COMP_BT_COEXIST, align 4
  %28 = load i32, i32* @DBG_LOUD, align 4
  %29 = call i32 @RT_TRACE(%struct.rtl_priv* %26, i32 %27, i32 %28, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %31 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %1
  %35 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %36 = load i32, i32* @COMP_BT_COEXIST, align 4
  %37 = load i32, i32* @DBG_LOUD, align 4
  %38 = call i32 @RT_TRACE(%struct.rtl_priv* %35, i32 %36, i32 %37, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  br label %322

39:                                               ; preds = %1
  %40 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %41 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %46 = load i32, i32* @COMP_BT_COEXIST, align 4
  %47 = load i32, i32* @DBG_LOUD, align 4
  %48 = call i32 @RT_TRACE(%struct.rtl_priv* %45, i32 %46, i32 %47, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0))
  br label %322

49:                                               ; preds = %39
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %56 = load i32, i32* @COMP_BT_COEXIST, align 4
  %57 = load i32, i32* @DBG_LOUD, align 4
  %58 = call i32 @RT_TRACE(%struct.rtl_priv* %55, i32 %56, i32 %57, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %322

59:                                               ; preds = %49
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %59
  %65 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %66 = load i32, i32* @COMP_BT_COEXIST, align 4
  %67 = load i32, i32* @DBG_LOUD, align 4
  %68 = call i32 @RT_TRACE(%struct.rtl_priv* %65, i32 %66, i32 %67, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %69 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %70 = call i32 @halbtc8723b1ant_action_bt_whck_test(%struct.btc_coexist* %69)
  br label %322

71:                                               ; preds = %59
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @BT_8723B_1ANT_BT_STATUS_ACL_BUSY, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %89, label %77

77:                                               ; preds = %71
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @BT_8723B_1ANT_BT_STATUS_SCO_BUSY, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %89, label %83

83:                                               ; preds = %77
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @BT_8723B_1ANT_BT_STATUS_ACL_SCO_BUSY, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %83, %77, %71
  store i32 1, i32* %8, align 4
  br label %90

90:                                               ; preds = %89, %83
  %91 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %92 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %91, i32 0, i32 1
  %93 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %92, align 8
  %94 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %95 = load i32, i32* @BTC_SET_BL_INC_SCAN_DEV_NUM, align 4
  %96 = call i32 %93(%struct.btc_coexist* %94, i32 %95, i32* %8)
  %97 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %98 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %97, i32 0, i32 0
  %99 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %98, align 8
  %100 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %101 = load i32, i32* @BTC_GET_BL_WIFI_CONNECTED, align 4
  %102 = call i32 %99(%struct.btc_coexist* %100, i32 %101, i32* %5)
  %103 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %104 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %103, i32 0, i32 0
  %105 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %104, align 8
  %106 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %107 = load i32, i32* @BTC_GET_BL_WIFI_BUSY, align 4
  %108 = call i32 %105(%struct.btc_coexist* %106, i32 %107, i32* %7)
  %109 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %110 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %109, i32 0, i32 0
  %111 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %110, align 8
  %112 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %113 = load i32, i32* @BTC_GET_U4_WIFI_LINK_STATUS, align 4
  %114 = call i32 %111(%struct.btc_coexist* %112, i32 %113, i32* %13)
  %115 = load i32, i32* %13, align 4
  %116 = ashr i32 %115, 16
  store i32 %116, i32* %14, align 4
  %117 = load i32, i32* %14, align 4
  %118 = icmp sge i32 %117, 2
  br i1 %118, label %124, label %119

119:                                              ; preds = %90
  %120 = load i32, i32* %13, align 4
  %121 = load i32, i32* @WIFI_P2P_GO_CONNECTED, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %169

124:                                              ; preds = %119, %90
  %125 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %4, align 8
  %126 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %124
  %130 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %131 = load i32, i32* @NORMAL_EXEC, align 4
  %132 = call i32 @halbtc8723b1ant_limited_tx(%struct.btc_coexist* %130, i32 %131, i32 1, i32 1, i32 0, i32 1)
  store i32 1, i32* %10, align 4
  br label %137

133:                                              ; preds = %124
  %134 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %135 = load i32, i32* @NORMAL_EXEC, align 4
  %136 = call i32 @halbtc8723b1ant_limited_tx(%struct.btc_coexist* %134, i32 %135, i32 0, i32 0, i32 0, i32 0)
  store i32 0, i32* %10, align 4
  br label %137

137:                                              ; preds = %133, %129
  %138 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %139 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %138, i32 0, i32 1
  %140 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %139, align 8
  %141 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %142 = load i32, i32* @BTC_SET_BL_MIRACAST_PLUS_BT, align 4
  %143 = call i32 %140(%struct.btc_coexist* %141, i32 %142, i32* %10)
  %144 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %145 = load i32, i32* @NORMAL_EXEC, align 4
  %146 = load i32, i32* %9, align 4
  %147 = load i64, i64* %11, align 8
  %148 = trunc i64 %147 to i32
  %149 = call i32 @halbtc8723b1ant_limited_rx(%struct.btc_coexist* %144, i32 %145, i32 0, i32 %146, i32 %148)
  %150 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %4, align 8
  %151 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %157, label %154

154:                                              ; preds = %137
  %155 = load i32, i32* %7, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %165

157:                                              ; preds = %154, %137
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %157
  %163 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %164 = call i32 @halbtc8723b1ant_action_bt_inquiry(%struct.btc_coexist* %163)
  br label %168

165:                                              ; preds = %157, %154
  %166 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %167 = call i32 @halbtc8723b1ant_action_wifi_multiport(%struct.btc_coexist* %166)
  br label %168

168:                                              ; preds = %165, %162
  br label %322

169:                                              ; preds = %119
  store i32 0, i32* %10, align 4
  %170 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %171 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %170, i32 0, i32 1
  %172 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %171, align 8
  %173 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %174 = load i32, i32* @BTC_SET_BL_MIRACAST_PLUS_BT, align 4
  %175 = call i32 %172(%struct.btc_coexist* %173, i32 %174, i32* %10)
  %176 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %177 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %176, i32 0, i32 0
  %178 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %177, align 8
  %179 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %180 = load i32, i32* @BTC_GET_U4_WIFI_BW, align 4
  %181 = call i32 %178(%struct.btc_coexist* %179, i32 %180, i32* %15)
  %182 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %4, align 8
  %183 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %241

186:                                              ; preds = %169
  %187 = load i32, i32* %5, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %241

189:                                              ; preds = %186
  %190 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %191 = load i32, i32* @NORMAL_EXEC, align 4
  %192 = call i32 @halbtc8723b1ant_limited_tx(%struct.btc_coexist* %190, i32 %191, i32 1, i32 1, i32 0, i32 1)
  %193 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %194 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %193, i32 0, i32 0
  %195 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %194, align 8
  %196 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %197 = load i32, i32* @BTC_GET_U1_IOT_PEER, align 4
  %198 = bitcast i64* %12 to i32*
  %199 = call i32 %195(%struct.btc_coexist* %196, i32 %197, i32* %198)
  %200 = load i64, i64* %12, align 8
  %201 = load i64, i64* @BTC_IOT_PEER_CISCO, align 8
  %202 = icmp ne i64 %200, %201
  br i1 %202, label %203, label %215

203:                                              ; preds = %189
  %204 = load i64, i64* %12, align 8
  %205 = load i64, i64* @BTC_IOT_PEER_BROADCOM, align 8
  %206 = icmp ne i64 %204, %205
  br i1 %206, label %207, label %215

207:                                              ; preds = %203
  %208 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %4, align 8
  %209 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  store i32 %210, i32* %16, align 4
  %211 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %212 = load i32, i32* @NORMAL_EXEC, align 4
  %213 = load i32, i32* %16, align 4
  %214 = call i32 @halbtc8723b1ant_limited_rx(%struct.btc_coexist* %211, i32 %212, i32 %213, i32 0, i32 5)
  br label %238

215:                                              ; preds = %203, %189
  %216 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %4, align 8
  %217 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %224

220:                                              ; preds = %215
  %221 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %222 = load i32, i32* @NORMAL_EXEC, align 4
  %223 = call i32 @halbtc8723b1ant_limited_rx(%struct.btc_coexist* %221, i32 %222, i32 1, i32 0, i32 5)
  br label %237

224:                                              ; preds = %215
  %225 = load i32, i32* %15, align 4
  %226 = load i32, i32* @BTC_WIFI_BW_HT40, align 4
  %227 = icmp eq i32 %225, %226
  br i1 %227, label %228, label %232

228:                                              ; preds = %224
  %229 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %230 = load i32, i32* @NORMAL_EXEC, align 4
  %231 = call i32 @halbtc8723b1ant_limited_rx(%struct.btc_coexist* %229, i32 %230, i32 0, i32 1, i32 16)
  br label %236

232:                                              ; preds = %224
  %233 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %234 = load i32, i32* @NORMAL_EXEC, align 4
  %235 = call i32 @halbtc8723b1ant_limited_rx(%struct.btc_coexist* %233, i32 %234, i32 0, i32 1, i32 8)
  br label %236

236:                                              ; preds = %232, %228
  br label %237

237:                                              ; preds = %236, %220
  br label %238

238:                                              ; preds = %237, %207
  %239 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %240 = call i32 @halbtc8723b1ant_sw_mechanism(%struct.btc_coexist* %239, i32 1)
  br label %250

241:                                              ; preds = %186, %169
  %242 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %243 = load i32, i32* @NORMAL_EXEC, align 4
  %244 = call i32 @halbtc8723b1ant_limited_tx(%struct.btc_coexist* %242, i32 %243, i32 0, i32 0, i32 0, i32 0)
  %245 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %246 = load i32, i32* @NORMAL_EXEC, align 4
  %247 = call i32 @halbtc8723b1ant_limited_rx(%struct.btc_coexist* %245, i32 %246, i32 0, i32 0, i32 5)
  %248 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %249 = call i32 @halbtc8723b1ant_sw_mechanism(%struct.btc_coexist* %248, i32 0)
  br label %250

250:                                              ; preds = %241, %238
  %251 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %252 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %251, i32 0, i32 0
  %253 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %252, align 8
  %254 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %255 = load i32, i32* @BTC_GET_BL_HS_OPERATION, align 4
  %256 = call i32 %253(%struct.btc_coexist* %254, i32 %255, i32* %6)
  %257 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %258 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %264

261:                                              ; preds = %250
  %262 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %263 = call i32 @halbtc8723b1ant_action_bt_inquiry(%struct.btc_coexist* %262)
  br label %322

264:                                              ; preds = %250
  %265 = load i32, i32* %6, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %270

267:                                              ; preds = %264
  %268 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %269 = call i32 @halbtc8723b1ant_action_hs(%struct.btc_coexist* %268)
  br label %322

270:                                              ; preds = %264
  br label %271

271:                                              ; preds = %270
  %272 = load i32, i32* %5, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %319, label %274

274:                                              ; preds = %271
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %275 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %276 = load i32, i32* @COMP_BT_COEXIST, align 4
  %277 = load i32, i32* @DBG_LOUD, align 4
  %278 = call i32 @RT_TRACE(%struct.rtl_priv* %275, i32 %276, i32 %277, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  %279 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %280 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %279, i32 0, i32 0
  %281 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %280, align 8
  %282 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %283 = load i32, i32* @BTC_GET_BL_WIFI_SCAN, align 4
  %284 = call i32 %281(%struct.btc_coexist* %282, i32 %283, i32* %17)
  %285 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %286 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %285, i32 0, i32 0
  %287 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %286, align 8
  %288 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %289 = load i32, i32* @BTC_GET_BL_WIFI_LINK, align 4
  %290 = call i32 %287(%struct.btc_coexist* %288, i32 %289, i32* %18)
  %291 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %292 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %291, i32 0, i32 0
  %293 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %292, align 8
  %294 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %295 = load i32, i32* @BTC_GET_BL_WIFI_ROAM, align 4
  %296 = call i32 %293(%struct.btc_coexist* %294, i32 %295, i32* %19)
  %297 = load i32, i32* %17, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %305, label %299

299:                                              ; preds = %274
  %300 = load i32, i32* %18, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %305, label %302

302:                                              ; preds = %299
  %303 = load i32, i32* %19, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %315

305:                                              ; preds = %302, %299, %274
  %306 = load i32, i32* %17, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %311

308:                                              ; preds = %305
  %309 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %310 = call i32 @btc8723b1ant_action_wifi_not_conn_scan(%struct.btc_coexist* %309)
  br label %314

311:                                              ; preds = %305
  %312 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %313 = call i32 @btc8723b1ant_act_wifi_not_conn_asso_auth(%struct.btc_coexist* %312)
  br label %314

314:                                              ; preds = %311, %308
  br label %318

315:                                              ; preds = %302
  %316 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %317 = call i32 @btc8723b1ant_action_wifi_not_conn(%struct.btc_coexist* %316)
  br label %318

318:                                              ; preds = %315, %314
  br label %322

319:                                              ; preds = %271
  %320 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %321 = call i32 @halbtc8723b1ant_action_wifi_connected(%struct.btc_coexist* %320)
  br label %322

322:                                              ; preds = %34, %44, %54, %64, %168, %261, %267, %319, %318
  ret void
}

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @halbtc8723b1ant_action_bt_whck_test(%struct.btc_coexist*) #1

declare dso_local i32 @halbtc8723b1ant_limited_tx(%struct.btc_coexist*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @halbtc8723b1ant_limited_rx(%struct.btc_coexist*, i32, i32, i32, i32) #1

declare dso_local i32 @halbtc8723b1ant_action_bt_inquiry(%struct.btc_coexist*) #1

declare dso_local i32 @halbtc8723b1ant_action_wifi_multiport(%struct.btc_coexist*) #1

declare dso_local i32 @halbtc8723b1ant_sw_mechanism(%struct.btc_coexist*, i32) #1

declare dso_local i32 @halbtc8723b1ant_action_hs(%struct.btc_coexist*) #1

declare dso_local i32 @btc8723b1ant_action_wifi_not_conn_scan(%struct.btc_coexist*) #1

declare dso_local i32 @btc8723b1ant_act_wifi_not_conn_asso_auth(%struct.btc_coexist*) #1

declare dso_local i32 @btc8723b1ant_action_wifi_not_conn(%struct.btc_coexist*) #1

declare dso_local i32 @halbtc8723b1ant_action_wifi_connected(%struct.btc_coexist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
