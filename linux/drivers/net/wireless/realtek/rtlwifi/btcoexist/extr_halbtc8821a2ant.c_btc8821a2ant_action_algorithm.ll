; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a2ant.c_btc8821a2ant_action_algorithm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a2ant.c_btc8821a2ant_action_algorithm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i32*)*, %struct.btc_bt_link_info, %struct.rtl_priv* }
%struct.btc_bt_link_info = type { i64, i64, i64, i64, i32 }
%struct.rtl_priv = type { i32 }

@BT_8821A_2ANT_COEX_ALGO_UNDEFINED = common dso_local global i32 0, align 4
@BTC_GET_BL_HS_OPERATION = common dso_local global i32 0, align 4
@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"[BTCoex], No BT link exists!!!\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"[BTCoex], SCO only\0A\00", align 1
@BT_8821A_2ANT_COEX_ALGO_SCO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"[BTCoex], HID only\0A\00", align 1
@BT_8821A_2ANT_COEX_ALGO_HID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"[BTCoex], A2DP only\0A\00", align 1
@BT_8821A_2ANT_COEX_ALGO_A2DP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"[BTCoex], PAN(HS) only\0A\00", align 1
@BT_8821A_2ANT_COEX_ALGO_PANHS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"[BTCoex], PAN(EDR) only\0A\00", align 1
@BT_8821A_2ANT_COEX_ALGO_PANEDR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"[BTCoex], SCO + HID\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"[BTCoex], SCO + A2DP ==> SCO\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"[BTCoex], SCO + PAN(HS)\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"[BTCoex], SCO + PAN(EDR)\0A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"[BTCoex], HID + A2DP\0A\00", align 1
@BT_8821A_2ANT_COEX_ALGO_HID_A2DP = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [25 x i8] c"[BTCoex], HID + PAN(HS)\0A\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"[BTCoex], HID + PAN(EDR)\0A\00", align 1
@BT_8821A_2ANT_COEX_ALGO_PANEDR_HID = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [26 x i8] c"[BTCoex], A2DP + PAN(HS)\0A\00", align 1
@BT_8821A_2ANT_COEX_ALGO_A2DP_PANHS = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [27 x i8] c"[BTCoex], A2DP + PAN(EDR)\0A\00", align 1
@BT_8821A_2ANT_COEX_ALGO_PANEDR_A2DP = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [36 x i8] c"[BTCoex], SCO + HID + A2DP ==> HID\0A\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"[BTCoex], SCO + HID + PAN(HS)\0A\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"[BTCoex], SCO + HID + PAN(EDR)\0A\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"[BTCoex], SCO + A2DP + PAN(HS)\0A\00", align 1
@.str.19 = private unnamed_addr constant [41 x i8] c"[BTCoex], SCO + A2DP + PAN(EDR) ==> HID\0A\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"[BTCoex], HID + A2DP + PAN(HS)\0A\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"[BTCoex], HID + A2DP + PAN(EDR)\0A\00", align 1
@BT_8821A_2ANT_COEX_ALGO_HID_A2DP_PANEDR = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [47 x i8] c"[BTCoex], Error!!! SCO + HID + A2DP + PAN(HS)\0A\00", align 1
@.str.23 = private unnamed_addr constant [54 x i8] c"[BTCoex], SCO + HID + A2DP + PAN(EDR)==>PAN(EDR)+HID\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btc_coexist*)* @btc8821a2ant_action_algorithm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btc8821a2ant_action_algorithm(%struct.btc_coexist* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btc_coexist*, align 8
  %4 = alloca %struct.rtl_priv*, align 8
  %5 = alloca %struct.btc_bt_link_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.btc_coexist* %0, %struct.btc_coexist** %3, align 8
  %9 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %10 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %9, i32 0, i32 2
  %11 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  store %struct.rtl_priv* %11, %struct.rtl_priv** %4, align 8
  %12 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %13 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %12, i32 0, i32 1
  store %struct.btc_bt_link_info* %13, %struct.btc_bt_link_info** %5, align 8
  store i32 0, i32* %6, align 4
  %14 = load i32, i32* @BT_8821A_2ANT_COEX_ALGO_UNDEFINED, align 4
  store i32 %14, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %15 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %16 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %15, i32 0, i32 0
  %17 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %16, align 8
  %18 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %19 = load i32, i32* @BTC_GET_BL_HS_OPERATION, align 4
  %20 = call i32 %17(%struct.btc_coexist* %18, i32 %19, i32* %6)
  %21 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %22 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %1
  %26 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %27 = load i32, i32* @COMP_BT_COEXIST, align 4
  %28 = load i32, i32* @DBG_LOUD, align 4
  %29 = call i32 @RT_TRACE(%struct.rtl_priv* %26, i32 %27, i32 %28, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %2, align 4
  br label %407

31:                                               ; preds = %1
  %32 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %33 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %36, %31
  %40 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %41 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %44, %39
  %48 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %49 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %52, %47
  %56 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %57 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %60, %55
  %64 = load i32, i32* %8, align 4
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %124

66:                                               ; preds = %63
  %67 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %68 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %73 = load i32, i32* @COMP_BT_COEXIST, align 4
  %74 = load i32, i32* @DBG_LOUD, align 4
  %75 = call i32 @RT_TRACE(%struct.rtl_priv* %72, i32 %73, i32 %74, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %76 = load i32, i32* @BT_8821A_2ANT_COEX_ALGO_SCO, align 4
  store i32 %76, i32* %7, align 4
  br label %123

77:                                               ; preds = %66
  %78 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %79 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %84 = load i32, i32* @COMP_BT_COEXIST, align 4
  %85 = load i32, i32* @DBG_LOUD, align 4
  %86 = call i32 @RT_TRACE(%struct.rtl_priv* %83, i32 %84, i32 %85, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %87 = load i32, i32* @BT_8821A_2ANT_COEX_ALGO_HID, align 4
  store i32 %87, i32* %7, align 4
  br label %122

88:                                               ; preds = %77
  %89 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %90 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %95 = load i32, i32* @COMP_BT_COEXIST, align 4
  %96 = load i32, i32* @DBG_LOUD, align 4
  %97 = call i32 @RT_TRACE(%struct.rtl_priv* %94, i32 %95, i32 %96, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %98 = load i32, i32* @BT_8821A_2ANT_COEX_ALGO_A2DP, align 4
  store i32 %98, i32* %7, align 4
  br label %121

99:                                               ; preds = %88
  %100 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %101 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %120

104:                                              ; preds = %99
  %105 = load i32, i32* %6, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %104
  %108 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %109 = load i32, i32* @COMP_BT_COEXIST, align 4
  %110 = load i32, i32* @DBG_LOUD, align 4
  %111 = call i32 @RT_TRACE(%struct.rtl_priv* %108, i32 %109, i32 %110, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %112 = load i32, i32* @BT_8821A_2ANT_COEX_ALGO_PANHS, align 4
  store i32 %112, i32* %7, align 4
  br label %119

113:                                              ; preds = %104
  %114 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %115 = load i32, i32* @COMP_BT_COEXIST, align 4
  %116 = load i32, i32* @DBG_LOUD, align 4
  %117 = call i32 @RT_TRACE(%struct.rtl_priv* %114, i32 %115, i32 %116, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %118 = load i32, i32* @BT_8821A_2ANT_COEX_ALGO_PANEDR, align 4
  store i32 %118, i32* %7, align 4
  br label %119

119:                                              ; preds = %113, %107
  br label %120

120:                                              ; preds = %119, %99
  br label %121

121:                                              ; preds = %120, %93
  br label %122

122:                                              ; preds = %121, %82
  br label %123

123:                                              ; preds = %122, %71
  br label %405

124:                                              ; preds = %63
  %125 = load i32, i32* %8, align 4
  %126 = icmp eq i32 %125, 2
  br i1 %126, label %127, label %250

127:                                              ; preds = %124
  %128 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %129 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %178

132:                                              ; preds = %127
  %133 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %134 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %132
  %138 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %139 = load i32, i32* @COMP_BT_COEXIST, align 4
  %140 = load i32, i32* @DBG_LOUD, align 4
  %141 = call i32 @RT_TRACE(%struct.rtl_priv* %138, i32 %139, i32 %140, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %142 = load i32, i32* @BT_8821A_2ANT_COEX_ALGO_SCO, align 4
  store i32 %142, i32* %7, align 4
  br label %177

143:                                              ; preds = %132
  %144 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %145 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %143
  %149 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %150 = load i32, i32* @COMP_BT_COEXIST, align 4
  %151 = load i32, i32* @DBG_LOUD, align 4
  %152 = call i32 @RT_TRACE(%struct.rtl_priv* %149, i32 %150, i32 %151, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %153 = load i32, i32* @BT_8821A_2ANT_COEX_ALGO_SCO, align 4
  store i32 %153, i32* %7, align 4
  br label %176

154:                                              ; preds = %143
  %155 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %156 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %175

159:                                              ; preds = %154
  %160 = load i32, i32* %6, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %159
  %163 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %164 = load i32, i32* @COMP_BT_COEXIST, align 4
  %165 = load i32, i32* @DBG_LOUD, align 4
  %166 = call i32 @RT_TRACE(%struct.rtl_priv* %163, i32 %164, i32 %165, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %167 = load i32, i32* @BT_8821A_2ANT_COEX_ALGO_SCO, align 4
  store i32 %167, i32* %7, align 4
  br label %174

168:                                              ; preds = %159
  %169 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %170 = load i32, i32* @COMP_BT_COEXIST, align 4
  %171 = load i32, i32* @DBG_LOUD, align 4
  %172 = call i32 @RT_TRACE(%struct.rtl_priv* %169, i32 %170, i32 %171, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  %173 = load i32, i32* @BT_8821A_2ANT_COEX_ALGO_SCO, align 4
  store i32 %173, i32* %7, align 4
  br label %174

174:                                              ; preds = %168, %162
  br label %175

175:                                              ; preds = %174, %154
  br label %176

176:                                              ; preds = %175, %148
  br label %177

177:                                              ; preds = %176, %137
  br label %249

178:                                              ; preds = %127
  %179 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %180 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %194

183:                                              ; preds = %178
  %184 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %185 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %194

188:                                              ; preds = %183
  %189 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %190 = load i32, i32* @COMP_BT_COEXIST, align 4
  %191 = load i32, i32* @DBG_LOUD, align 4
  %192 = call i32 @RT_TRACE(%struct.rtl_priv* %189, i32 %190, i32 %191, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  %193 = load i32, i32* @BT_8821A_2ANT_COEX_ALGO_HID_A2DP, align 4
  store i32 %193, i32* %7, align 4
  br label %248

194:                                              ; preds = %183, %178
  %195 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %196 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %195, i32 0, i32 2
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %220

199:                                              ; preds = %194
  %200 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %201 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %220

204:                                              ; preds = %199
  %205 = load i32, i32* %6, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %213

207:                                              ; preds = %204
  %208 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %209 = load i32, i32* @COMP_BT_COEXIST, align 4
  %210 = load i32, i32* @DBG_LOUD, align 4
  %211 = call i32 @RT_TRACE(%struct.rtl_priv* %208, i32 %209, i32 %210, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0))
  %212 = load i32, i32* @BT_8821A_2ANT_COEX_ALGO_HID, align 4
  store i32 %212, i32* %7, align 4
  br label %219

213:                                              ; preds = %204
  %214 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %215 = load i32, i32* @COMP_BT_COEXIST, align 4
  %216 = load i32, i32* @DBG_LOUD, align 4
  %217 = call i32 @RT_TRACE(%struct.rtl_priv* %214, i32 %215, i32 %216, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0))
  %218 = load i32, i32* @BT_8821A_2ANT_COEX_ALGO_PANEDR_HID, align 4
  store i32 %218, i32* %7, align 4
  br label %219

219:                                              ; preds = %213, %207
  br label %247

220:                                              ; preds = %199, %194
  %221 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %222 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %221, i32 0, i32 1
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %246

225:                                              ; preds = %220
  %226 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %227 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %246

230:                                              ; preds = %225
  %231 = load i32, i32* %6, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %239

233:                                              ; preds = %230
  %234 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %235 = load i32, i32* @COMP_BT_COEXIST, align 4
  %236 = load i32, i32* @DBG_LOUD, align 4
  %237 = call i32 @RT_TRACE(%struct.rtl_priv* %234, i32 %235, i32 %236, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0))
  %238 = load i32, i32* @BT_8821A_2ANT_COEX_ALGO_A2DP_PANHS, align 4
  store i32 %238, i32* %7, align 4
  br label %245

239:                                              ; preds = %230
  %240 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %241 = load i32, i32* @COMP_BT_COEXIST, align 4
  %242 = load i32, i32* @DBG_LOUD, align 4
  %243 = call i32 @RT_TRACE(%struct.rtl_priv* %240, i32 %241, i32 %242, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0))
  %244 = load i32, i32* @BT_8821A_2ANT_COEX_ALGO_PANEDR_A2DP, align 4
  store i32 %244, i32* %7, align 4
  br label %245

245:                                              ; preds = %239, %233
  br label %246

246:                                              ; preds = %245, %225, %220
  br label %247

247:                                              ; preds = %246, %219
  br label %248

248:                                              ; preds = %247, %188
  br label %249

249:                                              ; preds = %248, %177
  br label %404

250:                                              ; preds = %124
  %251 = load i32, i32* %8, align 4
  %252 = icmp eq i32 %251, 3
  br i1 %252, label %253, label %362

253:                                              ; preds = %250
  %254 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %255 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %254, i32 0, i32 3
  %256 = load i64, i64* %255, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %329

258:                                              ; preds = %253
  %259 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %260 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %259, i32 0, i32 2
  %261 = load i64, i64* %260, align 8
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %274

263:                                              ; preds = %258
  %264 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %265 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %274

268:                                              ; preds = %263
  %269 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %270 = load i32, i32* @COMP_BT_COEXIST, align 4
  %271 = load i32, i32* @DBG_LOUD, align 4
  %272 = call i32 @RT_TRACE(%struct.rtl_priv* %269, i32 %270, i32 %271, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i64 0, i64 0))
  %273 = load i32, i32* @BT_8821A_2ANT_COEX_ALGO_SCO, align 4
  store i32 %273, i32* %7, align 4
  br label %328

274:                                              ; preds = %263, %258
  %275 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %276 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %275, i32 0, i32 2
  %277 = load i64, i64* %276, align 8
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %300

279:                                              ; preds = %274
  %280 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %281 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %280, i32 0, i32 1
  %282 = load i64, i64* %281, align 8
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %300

284:                                              ; preds = %279
  %285 = load i32, i32* %6, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %293

287:                                              ; preds = %284
  %288 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %289 = load i32, i32* @COMP_BT_COEXIST, align 4
  %290 = load i32, i32* @DBG_LOUD, align 4
  %291 = call i32 @RT_TRACE(%struct.rtl_priv* %288, i32 %289, i32 %290, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0))
  %292 = load i32, i32* @BT_8821A_2ANT_COEX_ALGO_SCO, align 4
  store i32 %292, i32* %7, align 4
  br label %299

293:                                              ; preds = %284
  %294 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %295 = load i32, i32* @COMP_BT_COEXIST, align 4
  %296 = load i32, i32* @DBG_LOUD, align 4
  %297 = call i32 @RT_TRACE(%struct.rtl_priv* %294, i32 %295, i32 %296, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i64 0, i64 0))
  %298 = load i32, i32* @BT_8821A_2ANT_COEX_ALGO_SCO, align 4
  store i32 %298, i32* %7, align 4
  br label %299

299:                                              ; preds = %293, %287
  br label %327

300:                                              ; preds = %279, %274
  %301 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %302 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %301, i32 0, i32 1
  %303 = load i64, i64* %302, align 8
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %326

305:                                              ; preds = %300
  %306 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %307 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %306, i32 0, i32 0
  %308 = load i64, i64* %307, align 8
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %326

310:                                              ; preds = %305
  %311 = load i32, i32* %6, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %319

313:                                              ; preds = %310
  %314 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %315 = load i32, i32* @COMP_BT_COEXIST, align 4
  %316 = load i32, i32* @DBG_LOUD, align 4
  %317 = call i32 @RT_TRACE(%struct.rtl_priv* %314, i32 %315, i32 %316, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i64 0, i64 0))
  %318 = load i32, i32* @BT_8821A_2ANT_COEX_ALGO_SCO, align 4
  store i32 %318, i32* %7, align 4
  br label %325

319:                                              ; preds = %310
  %320 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %321 = load i32, i32* @COMP_BT_COEXIST, align 4
  %322 = load i32, i32* @DBG_LOUD, align 4
  %323 = call i32 @RT_TRACE(%struct.rtl_priv* %320, i32 %321, i32 %322, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.19, i64 0, i64 0))
  %324 = load i32, i32* @BT_8821A_2ANT_COEX_ALGO_SCO, align 4
  store i32 %324, i32* %7, align 4
  br label %325

325:                                              ; preds = %319, %313
  br label %326

326:                                              ; preds = %325, %305, %300
  br label %327

327:                                              ; preds = %326, %299
  br label %328

328:                                              ; preds = %327, %268
  br label %361

329:                                              ; preds = %253
  %330 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %331 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %330, i32 0, i32 2
  %332 = load i64, i64* %331, align 8
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %334, label %360

334:                                              ; preds = %329
  %335 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %336 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %335, i32 0, i32 1
  %337 = load i64, i64* %336, align 8
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %360

339:                                              ; preds = %334
  %340 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %341 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %340, i32 0, i32 0
  %342 = load i64, i64* %341, align 8
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %344, label %360

344:                                              ; preds = %339
  %345 = load i32, i32* %6, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %353

347:                                              ; preds = %344
  %348 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %349 = load i32, i32* @COMP_BT_COEXIST, align 4
  %350 = load i32, i32* @DBG_LOUD, align 4
  %351 = call i32 @RT_TRACE(%struct.rtl_priv* %348, i32 %349, i32 %350, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.20, i64 0, i64 0))
  %352 = load i32, i32* @BT_8821A_2ANT_COEX_ALGO_HID_A2DP, align 4
  store i32 %352, i32* %7, align 4
  br label %359

353:                                              ; preds = %344
  %354 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %355 = load i32, i32* @COMP_BT_COEXIST, align 4
  %356 = load i32, i32* @DBG_LOUD, align 4
  %357 = call i32 @RT_TRACE(%struct.rtl_priv* %354, i32 %355, i32 %356, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i64 0, i64 0))
  %358 = load i32, i32* @BT_8821A_2ANT_COEX_ALGO_HID_A2DP_PANEDR, align 4
  store i32 %358, i32* %7, align 4
  br label %359

359:                                              ; preds = %353, %347
  br label %360

360:                                              ; preds = %359, %339, %334, %329
  br label %361

361:                                              ; preds = %360, %328
  br label %403

362:                                              ; preds = %250
  %363 = load i32, i32* %8, align 4
  %364 = icmp sge i32 %363, 3
  br i1 %364, label %365, label %402

365:                                              ; preds = %362
  %366 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %367 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %366, i32 0, i32 3
  %368 = load i64, i64* %367, align 8
  %369 = icmp ne i64 %368, 0
  br i1 %369, label %370, label %401

370:                                              ; preds = %365
  %371 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %372 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %371, i32 0, i32 2
  %373 = load i64, i64* %372, align 8
  %374 = icmp ne i64 %373, 0
  br i1 %374, label %375, label %400

375:                                              ; preds = %370
  %376 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %377 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %376, i32 0, i32 1
  %378 = load i64, i64* %377, align 8
  %379 = icmp ne i64 %378, 0
  br i1 %379, label %380, label %400

380:                                              ; preds = %375
  %381 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %382 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %381, i32 0, i32 0
  %383 = load i64, i64* %382, align 8
  %384 = icmp ne i64 %383, 0
  br i1 %384, label %385, label %400

385:                                              ; preds = %380
  %386 = load i32, i32* %6, align 4
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %388, label %393

388:                                              ; preds = %385
  %389 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %390 = load i32, i32* @COMP_BT_COEXIST, align 4
  %391 = load i32, i32* @DBG_LOUD, align 4
  %392 = call i32 @RT_TRACE(%struct.rtl_priv* %389, i32 %390, i32 %391, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.22, i64 0, i64 0))
  br label %399

393:                                              ; preds = %385
  %394 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %395 = load i32, i32* @COMP_BT_COEXIST, align 4
  %396 = load i32, i32* @DBG_LOUD, align 4
  %397 = call i32 @RT_TRACE(%struct.rtl_priv* %394, i32 %395, i32 %396, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.23, i64 0, i64 0))
  %398 = load i32, i32* @BT_8821A_2ANT_COEX_ALGO_SCO, align 4
  store i32 %398, i32* %7, align 4
  br label %399

399:                                              ; preds = %393, %388
  br label %400

400:                                              ; preds = %399, %380, %375, %370
  br label %401

401:                                              ; preds = %400, %365
  br label %402

402:                                              ; preds = %401, %362
  br label %403

403:                                              ; preds = %402, %361
  br label %404

404:                                              ; preds = %403, %249
  br label %405

405:                                              ; preds = %404, %123
  %406 = load i32, i32* %7, align 4
  store i32 %406, i32* %2, align 4
  br label %407

407:                                              ; preds = %405, %25
  %408 = load i32, i32* %2, align 4
  ret i32 %408
}

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
