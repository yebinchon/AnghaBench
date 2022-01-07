; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8192e2ant.c_btc8192e2ant_action_algorithm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8192e2ant.c_btc8192e2ant_action_algorithm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i32*)*, %struct.btc_stack_info, %struct.btc_bt_link_info, %struct.rtl_priv* }
%struct.btc_stack_info = type { i32 }
%struct.btc_bt_link_info = type { i64, i64, i64, i64, i32 }
%struct.rtl_priv = type { i32 }

@BT_8192E_2ANT_COEX_ALGO_UNDEFINED = common dso_local global i32 0, align 4
@BTC_GET_BL_HS_OPERATION = common dso_local global i32 0, align 4
@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"No BT link exists!!!\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"SCO only\0A\00", align 1
@BT_8192E_2ANT_COEX_ALGO_SCO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"HID only\0A\00", align 1
@BT_8192E_2ANT_COEX_ALGO_HID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"A2DP only\0A\00", align 1
@BT_8192E_2ANT_COEX_ALGO_A2DP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"PAN(HS) only\0A\00", align 1
@BT_8192E_2ANT_COEX_ALGO_PANHS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"PAN(EDR) only\0A\00", align 1
@BT_8192E_2ANT_COEX_ALGO_PANEDR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"SCO + HID\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"SCO + A2DP ==> SCO\0A\00", align 1
@BT_8192E_2ANT_COEX_ALGO_PANEDR_HID = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"SCO + PAN(HS)\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"SCO + PAN(EDR)\0A\00", align 1
@BT_8192E_2ANT_COEX_ALGO_SCO_PAN = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [14 x i8] c"HID*2 + A2DP\0A\00", align 1
@BT_8192E_2ANT_COEX_ALGO_HID_A2DP_PANEDR = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [12 x i8] c"HID + A2DP\0A\00", align 1
@BT_8192E_2ANT_COEX_ALGO_HID_A2DP = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [15 x i8] c"HID + PAN(HS)\0A\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"HID + PAN(EDR)\0A\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"A2DP + PAN(HS)\0A\00", align 1
@BT_8192E_2ANT_COEX_ALGO_A2DP_PANHS = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [17 x i8] c"A2DP + PAN(EDR)\0A\00", align 1
@BT_8192E_2ANT_COEX_ALGO_PANEDR_A2DP = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [26 x i8] c"SCO + HID + A2DP ==> HID\0A\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"SCO + HID + PAN(HS)\0A\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"SCO + HID + PAN(EDR)\0A\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"SCO + A2DP + PAN(HS)\0A\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"SCO + A2DP + PAN(EDR)\0A\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"HID + A2DP + PAN(HS)\0A\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"HID + A2DP + PAN(EDR)\0A\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"ErrorSCO+HID+A2DP+PAN(HS)\0A\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"SCO+HID+A2DP+PAN(EDR)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btc_coexist*)* @btc8192e2ant_action_algorithm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btc8192e2ant_action_algorithm(%struct.btc_coexist* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btc_coexist*, align 8
  %4 = alloca %struct.rtl_priv*, align 8
  %5 = alloca %struct.btc_bt_link_info*, align 8
  %6 = alloca %struct.btc_stack_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.btc_coexist* %0, %struct.btc_coexist** %3, align 8
  %10 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %11 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %10, i32 0, i32 3
  %12 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  store %struct.rtl_priv* %12, %struct.rtl_priv** %4, align 8
  %13 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %14 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %13, i32 0, i32 2
  store %struct.btc_bt_link_info* %14, %struct.btc_bt_link_info** %5, align 8
  %15 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %16 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %15, i32 0, i32 1
  store %struct.btc_stack_info* %16, %struct.btc_stack_info** %6, align 8
  store i32 0, i32* %7, align 4
  %17 = load i32, i32* @BT_8192E_2ANT_COEX_ALGO_UNDEFINED, align 4
  store i32 %17, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %18 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %19 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %18, i32 0, i32 0
  %20 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %19, align 8
  %21 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %22 = load i32, i32* @BTC_GET_BL_HS_OPERATION, align 4
  %23 = call i32 %20(%struct.btc_coexist* %21, i32 %22, i32* %7)
  %24 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %25 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %1
  %29 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %30 = load i32, i32* @COMP_BT_COEXIST, align 4
  %31 = load i32, i32* @DBG_LOUD, align 4
  %32 = call i32 @RT_TRACE(%struct.rtl_priv* %29, i32 %30, i32 %31, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %2, align 4
  br label %422

34:                                               ; preds = %1
  %35 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %36 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %39, %34
  %43 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %44 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %47, %42
  %51 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %52 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %55, %50
  %59 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %60 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %63, %58
  %67 = load i32, i32* %9, align 4
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %127

69:                                               ; preds = %66
  %70 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %71 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %76 = load i32, i32* @COMP_BT_COEXIST, align 4
  %77 = load i32, i32* @DBG_LOUD, align 4
  %78 = call i32 @RT_TRACE(%struct.rtl_priv* %75, i32 %76, i32 %77, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %79 = load i32, i32* @BT_8192E_2ANT_COEX_ALGO_SCO, align 4
  store i32 %79, i32* %8, align 4
  br label %126

80:                                               ; preds = %69
  %81 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %82 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %87 = load i32, i32* @COMP_BT_COEXIST, align 4
  %88 = load i32, i32* @DBG_LOUD, align 4
  %89 = call i32 @RT_TRACE(%struct.rtl_priv* %86, i32 %87, i32 %88, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %90 = load i32, i32* @BT_8192E_2ANT_COEX_ALGO_HID, align 4
  store i32 %90, i32* %8, align 4
  br label %125

91:                                               ; preds = %80
  %92 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %93 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %91
  %97 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %98 = load i32, i32* @COMP_BT_COEXIST, align 4
  %99 = load i32, i32* @DBG_LOUD, align 4
  %100 = call i32 @RT_TRACE(%struct.rtl_priv* %97, i32 %98, i32 %99, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %101 = load i32, i32* @BT_8192E_2ANT_COEX_ALGO_A2DP, align 4
  store i32 %101, i32* %8, align 4
  br label %124

102:                                              ; preds = %91
  %103 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %104 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %123

107:                                              ; preds = %102
  %108 = load i32, i32* %7, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %107
  %111 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %112 = load i32, i32* @COMP_BT_COEXIST, align 4
  %113 = load i32, i32* @DBG_LOUD, align 4
  %114 = call i32 @RT_TRACE(%struct.rtl_priv* %111, i32 %112, i32 %113, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %115 = load i32, i32* @BT_8192E_2ANT_COEX_ALGO_PANHS, align 4
  store i32 %115, i32* %8, align 4
  br label %122

116:                                              ; preds = %107
  %117 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %118 = load i32, i32* @COMP_BT_COEXIST, align 4
  %119 = load i32, i32* @DBG_LOUD, align 4
  %120 = call i32 @RT_TRACE(%struct.rtl_priv* %117, i32 %118, i32 %119, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %121 = load i32, i32* @BT_8192E_2ANT_COEX_ALGO_PANEDR, align 4
  store i32 %121, i32* %8, align 4
  br label %122

122:                                              ; preds = %116, %110
  br label %123

123:                                              ; preds = %122, %102
  br label %124

124:                                              ; preds = %123, %96
  br label %125

125:                                              ; preds = %124, %85
  br label %126

126:                                              ; preds = %125, %74
  br label %420

127:                                              ; preds = %66
  %128 = load i32, i32* %9, align 4
  %129 = icmp eq i32 %128, 2
  br i1 %129, label %130, label %265

130:                                              ; preds = %127
  %131 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %132 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %181

135:                                              ; preds = %130
  %136 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %137 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %135
  %141 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %142 = load i32, i32* @COMP_BT_COEXIST, align 4
  %143 = load i32, i32* @DBG_LOUD, align 4
  %144 = call i32 @RT_TRACE(%struct.rtl_priv* %141, i32 %142, i32 %143, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %145 = load i32, i32* @BT_8192E_2ANT_COEX_ALGO_SCO, align 4
  store i32 %145, i32* %8, align 4
  br label %180

146:                                              ; preds = %135
  %147 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %148 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %146
  %152 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %153 = load i32, i32* @COMP_BT_COEXIST, align 4
  %154 = load i32, i32* @DBG_LOUD, align 4
  %155 = call i32 @RT_TRACE(%struct.rtl_priv* %152, i32 %153, i32 %154, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %156 = load i32, i32* @BT_8192E_2ANT_COEX_ALGO_PANEDR_HID, align 4
  store i32 %156, i32* %8, align 4
  br label %179

157:                                              ; preds = %146
  %158 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %159 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %178

162:                                              ; preds = %157
  %163 = load i32, i32* %7, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %162
  %166 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %167 = load i32, i32* @COMP_BT_COEXIST, align 4
  %168 = load i32, i32* @DBG_LOUD, align 4
  %169 = call i32 @RT_TRACE(%struct.rtl_priv* %166, i32 %167, i32 %168, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %170 = load i32, i32* @BT_8192E_2ANT_COEX_ALGO_SCO, align 4
  store i32 %170, i32* %8, align 4
  br label %177

171:                                              ; preds = %162
  %172 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %173 = load i32, i32* @COMP_BT_COEXIST, align 4
  %174 = load i32, i32* @DBG_LOUD, align 4
  %175 = call i32 @RT_TRACE(%struct.rtl_priv* %172, i32 %173, i32 %174, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  %176 = load i32, i32* @BT_8192E_2ANT_COEX_ALGO_SCO_PAN, align 4
  store i32 %176, i32* %8, align 4
  br label %177

177:                                              ; preds = %171, %165
  br label %178

178:                                              ; preds = %177, %157
  br label %179

179:                                              ; preds = %178, %151
  br label %180

180:                                              ; preds = %179, %140
  br label %264

181:                                              ; preds = %130
  %182 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %183 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %182, i32 0, i32 2
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %209

186:                                              ; preds = %181
  %187 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %188 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %209

191:                                              ; preds = %186
  %192 = load %struct.btc_stack_info*, %struct.btc_stack_info** %6, align 8
  %193 = getelementptr inbounds %struct.btc_stack_info, %struct.btc_stack_info* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = icmp sge i32 %194, 2
  br i1 %195, label %196, label %202

196:                                              ; preds = %191
  %197 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %198 = load i32, i32* @COMP_BT_COEXIST, align 4
  %199 = load i32, i32* @DBG_LOUD, align 4
  %200 = call i32 @RT_TRACE(%struct.rtl_priv* %197, i32 %198, i32 %199, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  %201 = load i32, i32* @BT_8192E_2ANT_COEX_ALGO_HID_A2DP_PANEDR, align 4
  store i32 %201, i32* %8, align 4
  br label %208

202:                                              ; preds = %191
  %203 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %204 = load i32, i32* @COMP_BT_COEXIST, align 4
  %205 = load i32, i32* @DBG_LOUD, align 4
  %206 = call i32 @RT_TRACE(%struct.rtl_priv* %203, i32 %204, i32 %205, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  %207 = load i32, i32* @BT_8192E_2ANT_COEX_ALGO_HID_A2DP, align 4
  store i32 %207, i32* %8, align 4
  br label %208

208:                                              ; preds = %202, %196
  br label %263

209:                                              ; preds = %186, %181
  %210 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %211 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %210, i32 0, i32 2
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %235

214:                                              ; preds = %209
  %215 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %216 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %235

219:                                              ; preds = %214
  %220 = load i32, i32* %7, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %228

222:                                              ; preds = %219
  %223 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %224 = load i32, i32* @COMP_BT_COEXIST, align 4
  %225 = load i32, i32* @DBG_LOUD, align 4
  %226 = call i32 @RT_TRACE(%struct.rtl_priv* %223, i32 %224, i32 %225, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  %227 = load i32, i32* @BT_8192E_2ANT_COEX_ALGO_HID, align 4
  store i32 %227, i32* %8, align 4
  br label %234

228:                                              ; preds = %219
  %229 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %230 = load i32, i32* @COMP_BT_COEXIST, align 4
  %231 = load i32, i32* @DBG_LOUD, align 4
  %232 = call i32 @RT_TRACE(%struct.rtl_priv* %229, i32 %230, i32 %231, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0))
  %233 = load i32, i32* @BT_8192E_2ANT_COEX_ALGO_PANEDR_HID, align 4
  store i32 %233, i32* %8, align 4
  br label %234

234:                                              ; preds = %228, %222
  br label %262

235:                                              ; preds = %214, %209
  %236 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %237 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %236, i32 0, i32 1
  %238 = load i64, i64* %237, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %261

240:                                              ; preds = %235
  %241 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %242 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %261

245:                                              ; preds = %240
  %246 = load i32, i32* %7, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %254

248:                                              ; preds = %245
  %249 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %250 = load i32, i32* @COMP_BT_COEXIST, align 4
  %251 = load i32, i32* @DBG_LOUD, align 4
  %252 = call i32 @RT_TRACE(%struct.rtl_priv* %249, i32 %250, i32 %251, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0))
  %253 = load i32, i32* @BT_8192E_2ANT_COEX_ALGO_A2DP_PANHS, align 4
  store i32 %253, i32* %8, align 4
  br label %260

254:                                              ; preds = %245
  %255 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %256 = load i32, i32* @COMP_BT_COEXIST, align 4
  %257 = load i32, i32* @DBG_LOUD, align 4
  %258 = call i32 @RT_TRACE(%struct.rtl_priv* %255, i32 %256, i32 %257, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0))
  %259 = load i32, i32* @BT_8192E_2ANT_COEX_ALGO_PANEDR_A2DP, align 4
  store i32 %259, i32* %8, align 4
  br label %260

260:                                              ; preds = %254, %248
  br label %261

261:                                              ; preds = %260, %240, %235
  br label %262

262:                                              ; preds = %261, %234
  br label %263

263:                                              ; preds = %262, %208
  br label %264

264:                                              ; preds = %263, %180
  br label %419

265:                                              ; preds = %127
  %266 = load i32, i32* %9, align 4
  %267 = icmp eq i32 %266, 3
  br i1 %267, label %268, label %377

268:                                              ; preds = %265
  %269 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %270 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %269, i32 0, i32 3
  %271 = load i64, i64* %270, align 8
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %344

273:                                              ; preds = %268
  %274 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %275 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %274, i32 0, i32 2
  %276 = load i64, i64* %275, align 8
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %289

278:                                              ; preds = %273
  %279 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %280 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %279, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %289

283:                                              ; preds = %278
  %284 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %285 = load i32, i32* @COMP_BT_COEXIST, align 4
  %286 = load i32, i32* @DBG_LOUD, align 4
  %287 = call i32 @RT_TRACE(%struct.rtl_priv* %284, i32 %285, i32 %286, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0))
  %288 = load i32, i32* @BT_8192E_2ANT_COEX_ALGO_PANEDR_HID, align 4
  store i32 %288, i32* %8, align 4
  br label %343

289:                                              ; preds = %278, %273
  %290 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %291 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %290, i32 0, i32 2
  %292 = load i64, i64* %291, align 8
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %315

294:                                              ; preds = %289
  %295 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %296 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %295, i32 0, i32 1
  %297 = load i64, i64* %296, align 8
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %315

299:                                              ; preds = %294
  %300 = load i32, i32* %7, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %308

302:                                              ; preds = %299
  %303 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %304 = load i32, i32* @COMP_BT_COEXIST, align 4
  %305 = load i32, i32* @DBG_LOUD, align 4
  %306 = call i32 @RT_TRACE(%struct.rtl_priv* %303, i32 %304, i32 %305, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0))
  %307 = load i32, i32* @BT_8192E_2ANT_COEX_ALGO_SCO, align 4
  store i32 %307, i32* %8, align 4
  br label %314

308:                                              ; preds = %299
  %309 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %310 = load i32, i32* @COMP_BT_COEXIST, align 4
  %311 = load i32, i32* @DBG_LOUD, align 4
  %312 = call i32 @RT_TRACE(%struct.rtl_priv* %309, i32 %310, i32 %311, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0))
  %313 = load i32, i32* @BT_8192E_2ANT_COEX_ALGO_SCO_PAN, align 4
  store i32 %313, i32* %8, align 4
  br label %314

314:                                              ; preds = %308, %302
  br label %342

315:                                              ; preds = %294, %289
  %316 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %317 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %316, i32 0, i32 1
  %318 = load i64, i64* %317, align 8
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %341

320:                                              ; preds = %315
  %321 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %322 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %321, i32 0, i32 0
  %323 = load i64, i64* %322, align 8
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %341

325:                                              ; preds = %320
  %326 = load i32, i32* %7, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %334

328:                                              ; preds = %325
  %329 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %330 = load i32, i32* @COMP_BT_COEXIST, align 4
  %331 = load i32, i32* @DBG_LOUD, align 4
  %332 = call i32 @RT_TRACE(%struct.rtl_priv* %329, i32 %330, i32 %331, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i64 0, i64 0))
  %333 = load i32, i32* @BT_8192E_2ANT_COEX_ALGO_SCO, align 4
  store i32 %333, i32* %8, align 4
  br label %340

334:                                              ; preds = %325
  %335 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %336 = load i32, i32* @COMP_BT_COEXIST, align 4
  %337 = load i32, i32* @DBG_LOUD, align 4
  %338 = call i32 @RT_TRACE(%struct.rtl_priv* %335, i32 %336, i32 %337, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0))
  %339 = load i32, i32* @BT_8192E_2ANT_COEX_ALGO_PANEDR_HID, align 4
  store i32 %339, i32* %8, align 4
  br label %340

340:                                              ; preds = %334, %328
  br label %341

341:                                              ; preds = %340, %320, %315
  br label %342

342:                                              ; preds = %341, %314
  br label %343

343:                                              ; preds = %342, %283
  br label %376

344:                                              ; preds = %268
  %345 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %346 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %345, i32 0, i32 2
  %347 = load i64, i64* %346, align 8
  %348 = icmp ne i64 %347, 0
  br i1 %348, label %349, label %375

349:                                              ; preds = %344
  %350 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %351 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %350, i32 0, i32 1
  %352 = load i64, i64* %351, align 8
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %354, label %375

354:                                              ; preds = %349
  %355 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %356 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %355, i32 0, i32 0
  %357 = load i64, i64* %356, align 8
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %359, label %375

359:                                              ; preds = %354
  %360 = load i32, i32* %7, align 4
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %368

362:                                              ; preds = %359
  %363 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %364 = load i32, i32* @COMP_BT_COEXIST, align 4
  %365 = load i32, i32* @DBG_LOUD, align 4
  %366 = call i32 @RT_TRACE(%struct.rtl_priv* %363, i32 %364, i32 %365, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i64 0, i64 0))
  %367 = load i32, i32* @BT_8192E_2ANT_COEX_ALGO_HID_A2DP, align 4
  store i32 %367, i32* %8, align 4
  br label %374

368:                                              ; preds = %359
  %369 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %370 = load i32, i32* @COMP_BT_COEXIST, align 4
  %371 = load i32, i32* @DBG_LOUD, align 4
  %372 = call i32 @RT_TRACE(%struct.rtl_priv* %369, i32 %370, i32 %371, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0))
  %373 = load i32, i32* @BT_8192E_2ANT_COEX_ALGO_HID_A2DP_PANEDR, align 4
  store i32 %373, i32* %8, align 4
  br label %374

374:                                              ; preds = %368, %362
  br label %375

375:                                              ; preds = %374, %354, %349, %344
  br label %376

376:                                              ; preds = %375, %343
  br label %418

377:                                              ; preds = %265
  %378 = load i32, i32* %9, align 4
  %379 = icmp sge i32 %378, 3
  br i1 %379, label %380, label %417

380:                                              ; preds = %377
  %381 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %382 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %381, i32 0, i32 3
  %383 = load i64, i64* %382, align 8
  %384 = icmp ne i64 %383, 0
  br i1 %384, label %385, label %416

385:                                              ; preds = %380
  %386 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %387 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %386, i32 0, i32 2
  %388 = load i64, i64* %387, align 8
  %389 = icmp ne i64 %388, 0
  br i1 %389, label %390, label %415

390:                                              ; preds = %385
  %391 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %392 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %391, i32 0, i32 1
  %393 = load i64, i64* %392, align 8
  %394 = icmp ne i64 %393, 0
  br i1 %394, label %395, label %415

395:                                              ; preds = %390
  %396 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %397 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %396, i32 0, i32 0
  %398 = load i64, i64* %397, align 8
  %399 = icmp ne i64 %398, 0
  br i1 %399, label %400, label %415

400:                                              ; preds = %395
  %401 = load i32, i32* %7, align 4
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %403, label %408

403:                                              ; preds = %400
  %404 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %405 = load i32, i32* @COMP_BT_COEXIST, align 4
  %406 = load i32, i32* @DBG_LOUD, align 4
  %407 = call i32 @RT_TRACE(%struct.rtl_priv* %404, i32 %405, i32 %406, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i64 0, i64 0))
  br label %414

408:                                              ; preds = %400
  %409 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %410 = load i32, i32* @COMP_BT_COEXIST, align 4
  %411 = load i32, i32* @DBG_LOUD, align 4
  %412 = call i32 @RT_TRACE(%struct.rtl_priv* %409, i32 %410, i32 %411, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i64 0, i64 0))
  %413 = load i32, i32* @BT_8192E_2ANT_COEX_ALGO_PANEDR_HID, align 4
  store i32 %413, i32* %8, align 4
  br label %414

414:                                              ; preds = %408, %403
  br label %415

415:                                              ; preds = %414, %395, %390, %385
  br label %416

416:                                              ; preds = %415, %380
  br label %417

417:                                              ; preds = %416, %377
  br label %418

418:                                              ; preds = %417, %376
  br label %419

419:                                              ; preds = %418, %264
  br label %420

420:                                              ; preds = %419, %126
  %421 = load i32, i32* %8, align 4
  store i32 %421, i32* %2, align 4
  br label %422

422:                                              ; preds = %420, %28
  %423 = load i32, i32* %2, align 4
  ret i32 %423
}

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
