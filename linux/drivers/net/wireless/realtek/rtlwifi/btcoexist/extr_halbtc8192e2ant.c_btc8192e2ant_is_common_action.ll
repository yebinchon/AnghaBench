; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8192e2ant.c_btc8192e2ant_is_common_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8192e2ant.c_btc8192e2ant_is_common_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)*, %struct.btc_bt_link_info, %struct.rtl_priv* }
%struct.btc_bt_link_info = type { i64, i64 }
%struct.rtl_priv = type { i32 }

@BTC_GET_BL_HS_OPERATION = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_CONNECTED = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_BUSY = common dso_local global i32 0, align 4
@NORMAL_EXEC = common dso_local global i32 0, align 4
@BTC_SET_ACT_DISABLE_LOW_POWER = common dso_local global i32 0, align 4
@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"[BTCoex], Wifi non-connected idle!!\0A\00", align 1
@BT_8192E_2ANT_BT_STATUS_NON_CONNECTED_IDLE = common dso_local global i64 0, align 8
@coex_dm = common dso_local global %struct.TYPE_2__* null, align 8
@BT_8192E_2ANT_BT_STATUS_CONNECTED_IDLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"Wifi connected + BT non connected-idle!!\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Wifi connected + BT connected-idle!!\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Wifi Connected-Busy + BT Busy!!\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Wifi Connected-Idle + BT Busy!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btc_coexist*)* @btc8192e2ant_is_common_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btc8192e2ant_is_common_action(%struct.btc_coexist* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btc_coexist*, align 8
  %4 = alloca %struct.rtl_priv*, align 8
  %5 = alloca %struct.btc_bt_link_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.btc_coexist* %0, %struct.btc_coexist** %3, align 8
  %11 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %12 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %11, i32 0, i32 3
  %13 = load %struct.rtl_priv*, %struct.rtl_priv** %12, align 8
  store %struct.rtl_priv* %13, %struct.rtl_priv** %4, align 8
  %14 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %15 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %14, i32 0, i32 2
  store %struct.btc_bt_link_info* %15, %struct.btc_bt_link_info** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %16 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %17 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %16, i32 0, i32 1
  %18 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %17, align 8
  %19 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %20 = load i32, i32* @BTC_GET_BL_HS_OPERATION, align 4
  %21 = call i32 %18(%struct.btc_coexist* %19, i32 %20, i32* %9)
  %22 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %23 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %22, i32 0, i32 1
  %24 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %23, align 8
  %25 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %26 = load i32, i32* @BTC_GET_BL_WIFI_CONNECTED, align 4
  %27 = call i32 %24(%struct.btc_coexist* %25, i32 %26, i32* %7)
  %28 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %29 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %28, i32 0, i32 1
  %30 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %29, align 8
  %31 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %32 = load i32, i32* @BTC_GET_BL_WIFI_BUSY, align 4
  %33 = call i32 %30(%struct.btc_coexist* %31, i32 %32, i32* %8)
  %34 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %35 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %1
  %39 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %40 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38, %1
  %44 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %45 = load i32, i32* @NORMAL_EXEC, align 4
  %46 = call i32 @btc8192e2ant_limited_tx(%struct.btc_coexist* %44, i32 %45, i32 1, i32 0, i32 0, i32 0)
  br label %51

47:                                               ; preds = %38
  %48 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %49 = load i32, i32* @NORMAL_EXEC, align 4
  %50 = call i32 @btc8192e2ant_limited_tx(%struct.btc_coexist* %48, i32 %49, i32 0, i32 0, i32 0, i32 0)
  br label %51

51:                                               ; preds = %47, %43
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %107, label %54

54:                                               ; preds = %51
  store i32 0, i32* %10, align 4
  %55 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %56 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %55, i32 0, i32 0
  %57 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %56, align 8
  %58 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %59 = load i32, i32* @BTC_SET_ACT_DISABLE_LOW_POWER, align 4
  %60 = call i32 %57(%struct.btc_coexist* %58, i32 %59, i32* %10)
  %61 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %62 = load i32, i32* @COMP_BT_COEXIST, align 4
  %63 = load i32, i32* @DBG_LOUD, align 4
  %64 = call i32 @RT_TRACE(%struct.rtl_priv* %61, i32 %62, i32 %63, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %65 = load i64, i64* @BT_8192E_2ANT_BT_STATUS_NON_CONNECTED_IDLE, align 8
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %65, %68
  br i1 %69, label %76, label %70

70:                                               ; preds = %54
  %71 = load i64, i64* @BT_8192E_2ANT_BT_STATUS_CONNECTED_IDLE, align 8
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %71, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %70, %54
  %77 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %78 = load i32, i32* @NORMAL_EXEC, align 4
  %79 = call i32 @btc8192e2ant_switch_ss_type(%struct.btc_coexist* %77, i32 %78, i32 2)
  %80 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %81 = load i32, i32* @NORMAL_EXEC, align 4
  %82 = call i32 @btc8192e2ant_coex_table_with_type(%struct.btc_coexist* %80, i32 %81, i32 1)
  %83 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %84 = load i32, i32* @NORMAL_EXEC, align 4
  %85 = call i32 @btc8192e2ant_ps_tdma(%struct.btc_coexist* %83, i32 %84, i32 0, i32 0)
  br label %96

86:                                               ; preds = %70
  %87 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %88 = load i32, i32* @NORMAL_EXEC, align 4
  %89 = call i32 @btc8192e2ant_switch_ss_type(%struct.btc_coexist* %87, i32 %88, i32 1)
  %90 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %91 = load i32, i32* @NORMAL_EXEC, align 4
  %92 = call i32 @btc8192e2ant_coex_table_with_type(%struct.btc_coexist* %90, i32 %91, i32 0)
  %93 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %94 = load i32, i32* @NORMAL_EXEC, align 4
  %95 = call i32 @btc8192e2ant_ps_tdma(%struct.btc_coexist* %93, i32 %94, i32 0, i32 1)
  br label %96

96:                                               ; preds = %86, %76
  %97 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %98 = load i32, i32* @NORMAL_EXEC, align 4
  %99 = call i32 @btc8192e2ant_fw_dac_swing_lvl(%struct.btc_coexist* %97, i32 %98, i32 6)
  %100 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %101 = load i32, i32* @NORMAL_EXEC, align 4
  %102 = call i32 @btc8192e2ant_dec_bt_pwr(%struct.btc_coexist* %100, i32 %101, i32 0)
  %103 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %104 = call i32 @btc8192e2ant_sw_mechanism1(%struct.btc_coexist* %103, i32 0, i32 0, i32 0, i32 0)
  %105 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %106 = call i32 @btc8192e2ant_sw_mechanism2(%struct.btc_coexist* %105, i32 0, i32 0, i32 0, i32 24)
  store i32 1, i32* %6, align 4
  br label %224

107:                                              ; preds = %51
  %108 = load i64, i64* @BT_8192E_2ANT_BT_STATUS_NON_CONNECTED_IDLE, align 8
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp eq i64 %108, %111
  br i1 %112, label %113, label %143

113:                                              ; preds = %107
  store i32 0, i32* %10, align 4
  %114 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %115 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %114, i32 0, i32 0
  %116 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %115, align 8
  %117 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %118 = load i32, i32* @BTC_SET_ACT_DISABLE_LOW_POWER, align 4
  %119 = call i32 %116(%struct.btc_coexist* %117, i32 %118, i32* %10)
  %120 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %121 = load i32, i32* @COMP_BT_COEXIST, align 4
  %122 = load i32, i32* @DBG_LOUD, align 4
  %123 = call i32 @RT_TRACE(%struct.rtl_priv* %120, i32 %121, i32 %122, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %124 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %125 = load i32, i32* @NORMAL_EXEC, align 4
  %126 = call i32 @btc8192e2ant_switch_ss_type(%struct.btc_coexist* %124, i32 %125, i32 2)
  %127 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %128 = load i32, i32* @NORMAL_EXEC, align 4
  %129 = call i32 @btc8192e2ant_coex_table_with_type(%struct.btc_coexist* %127, i32 %128, i32 1)
  %130 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %131 = load i32, i32* @NORMAL_EXEC, align 4
  %132 = call i32 @btc8192e2ant_ps_tdma(%struct.btc_coexist* %130, i32 %131, i32 0, i32 0)
  %133 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %134 = load i32, i32* @NORMAL_EXEC, align 4
  %135 = call i32 @btc8192e2ant_fw_dac_swing_lvl(%struct.btc_coexist* %133, i32 %134, i32 6)
  %136 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %137 = load i32, i32* @NORMAL_EXEC, align 4
  %138 = call i32 @btc8192e2ant_dec_bt_pwr(%struct.btc_coexist* %136, i32 %137, i32 0)
  %139 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %140 = call i32 @btc8192e2ant_sw_mechanism1(%struct.btc_coexist* %139, i32 0, i32 0, i32 0, i32 0)
  %141 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %142 = call i32 @btc8192e2ant_sw_mechanism2(%struct.btc_coexist* %141, i32 0, i32 0, i32 0, i32 24)
  store i32 1, i32* %6, align 4
  br label %223

143:                                              ; preds = %107
  %144 = load i64, i64* @BT_8192E_2ANT_BT_STATUS_CONNECTED_IDLE, align 8
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = icmp eq i64 %144, %147
  br i1 %148, label %149, label %183

149:                                              ; preds = %143
  store i32 1, i32* %10, align 4
  %150 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %151 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %150, i32 0, i32 0
  %152 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %151, align 8
  %153 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %154 = load i32, i32* @BTC_SET_ACT_DISABLE_LOW_POWER, align 4
  %155 = call i32 %152(%struct.btc_coexist* %153, i32 %154, i32* %10)
  %156 = load i32, i32* %9, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %149
  store i32 0, i32* %2, align 4
  br label %226

159:                                              ; preds = %149
  %160 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %161 = load i32, i32* @COMP_BT_COEXIST, align 4
  %162 = load i32, i32* @DBG_LOUD, align 4
  %163 = call i32 @RT_TRACE(%struct.rtl_priv* %160, i32 %161, i32 %162, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %164 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %165 = load i32, i32* @NORMAL_EXEC, align 4
  %166 = call i32 @btc8192e2ant_switch_ss_type(%struct.btc_coexist* %164, i32 %165, i32 2)
  %167 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %168 = load i32, i32* @NORMAL_EXEC, align 4
  %169 = call i32 @btc8192e2ant_coex_table_with_type(%struct.btc_coexist* %167, i32 %168, i32 1)
  %170 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %171 = load i32, i32* @NORMAL_EXEC, align 4
  %172 = call i32 @btc8192e2ant_ps_tdma(%struct.btc_coexist* %170, i32 %171, i32 0, i32 0)
  %173 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %174 = load i32, i32* @NORMAL_EXEC, align 4
  %175 = call i32 @btc8192e2ant_fw_dac_swing_lvl(%struct.btc_coexist* %173, i32 %174, i32 6)
  %176 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %177 = load i32, i32* @NORMAL_EXEC, align 4
  %178 = call i32 @btc8192e2ant_dec_bt_pwr(%struct.btc_coexist* %176, i32 %177, i32 0)
  %179 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %180 = call i32 @btc8192e2ant_sw_mechanism1(%struct.btc_coexist* %179, i32 1, i32 0, i32 0, i32 0)
  %181 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %182 = call i32 @btc8192e2ant_sw_mechanism2(%struct.btc_coexist* %181, i32 0, i32 0, i32 0, i32 24)
  store i32 1, i32* %6, align 4
  br label %222

183:                                              ; preds = %143
  store i32 1, i32* %10, align 4
  %184 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %185 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %184, i32 0, i32 0
  %186 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %185, align 8
  %187 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %188 = load i32, i32* @BTC_SET_ACT_DISABLE_LOW_POWER, align 4
  %189 = call i32 %186(%struct.btc_coexist* %187, i32 %188, i32* %10)
  %190 = load i32, i32* %8, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %197

192:                                              ; preds = %183
  %193 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %194 = load i32, i32* @COMP_BT_COEXIST, align 4
  %195 = load i32, i32* @DBG_LOUD, align 4
  %196 = call i32 @RT_TRACE(%struct.rtl_priv* %193, i32 %194, i32 %195, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %221

197:                                              ; preds = %183
  %198 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %199 = load i32, i32* @COMP_BT_COEXIST, align 4
  %200 = load i32, i32* @DBG_LOUD, align 4
  %201 = call i32 @RT_TRACE(%struct.rtl_priv* %198, i32 %199, i32 %200, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %202 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %203 = load i32, i32* @NORMAL_EXEC, align 4
  %204 = call i32 @btc8192e2ant_switch_ss_type(%struct.btc_coexist* %202, i32 %203, i32 1)
  %205 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %206 = load i32, i32* @NORMAL_EXEC, align 4
  %207 = call i32 @btc8192e2ant_coex_table_with_type(%struct.btc_coexist* %205, i32 %206, i32 2)
  %208 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %209 = load i32, i32* @NORMAL_EXEC, align 4
  %210 = call i32 @btc8192e2ant_ps_tdma(%struct.btc_coexist* %208, i32 %209, i32 1, i32 21)
  %211 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %212 = load i32, i32* @NORMAL_EXEC, align 4
  %213 = call i32 @btc8192e2ant_fw_dac_swing_lvl(%struct.btc_coexist* %211, i32 %212, i32 6)
  %214 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %215 = load i32, i32* @NORMAL_EXEC, align 4
  %216 = call i32 @btc8192e2ant_dec_bt_pwr(%struct.btc_coexist* %214, i32 %215, i32 0)
  %217 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %218 = call i32 @btc8192e2ant_sw_mechanism1(%struct.btc_coexist* %217, i32 0, i32 0, i32 0, i32 0)
  %219 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %220 = call i32 @btc8192e2ant_sw_mechanism2(%struct.btc_coexist* %219, i32 0, i32 0, i32 0, i32 24)
  store i32 1, i32* %6, align 4
  br label %221

221:                                              ; preds = %197, %192
  br label %222

222:                                              ; preds = %221, %159
  br label %223

223:                                              ; preds = %222, %113
  br label %224

224:                                              ; preds = %223, %96
  %225 = load i32, i32* %6, align 4
  store i32 %225, i32* %2, align 4
  br label %226

226:                                              ; preds = %224, %158
  %227 = load i32, i32* %2, align 4
  ret i32 %227
}

declare dso_local i32 @btc8192e2ant_limited_tx(%struct.btc_coexist*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @btc8192e2ant_switch_ss_type(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8192e2ant_coex_table_with_type(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8192e2ant_ps_tdma(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @btc8192e2ant_fw_dac_swing_lvl(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8192e2ant_dec_bt_pwr(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8192e2ant_sw_mechanism1(%struct.btc_coexist*, i32, i32, i32, i32) #1

declare dso_local i32 @btc8192e2ant_sw_mechanism2(%struct.btc_coexist*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
