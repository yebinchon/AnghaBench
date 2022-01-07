; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a2ant.c_btc8821a2ant_ps_tdma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a2ant.c_btc8821a2ant_ps_tdma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.btc_coexist = type { %struct.rtl_priv* }
%struct.rtl_priv = type { i32 }

@BT_8821A_2ANT_WIFI_RSSI_COEXSWITCH_THRES = common dso_local global i32 0, align 4
@BT_8821A_2ANT_BT_RSSI_COEXSWITCH_THRES = common dso_local global i32 0, align 4
@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"[BTCoex], %s turn %s PS TDMA, type = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"force to\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@coex_dm = common dso_local global %struct.TYPE_2__* null, align 8
@.str.5 = private unnamed_addr constant [54 x i8] c"[BTCoex], pre_ps_tdma_on = %d, cur_ps_tdma_on = %d!!\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"[BTCoex], pre_ps_tdma = %d, cur_ps_tdma = %d!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*, i32, i32, i32)* @btc8821a2ant_ps_tdma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8821a2ant_ps_tdma(%struct.btc_coexist* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.btc_coexist*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rtl_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.btc_coexist* %0, %struct.btc_coexist** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %13 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %12, i32 0, i32 0
  %14 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  store %struct.rtl_priv* %14, %struct.rtl_priv** %9, align 8
  %15 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %16 = load i32, i32* @BT_8821A_2ANT_WIFI_RSSI_COEXSWITCH_THRES, align 4
  %17 = call i32 @btc8821a2ant_wifi_rssi_state(%struct.btc_coexist* %15, i32 1, i32 2, i32 %16, i32 0)
  store i32 %17, i32* %10, align 4
  %18 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %19 = load i32, i32* @BT_8821A_2ANT_BT_RSSI_COEXSWITCH_THRES, align 4
  %20 = call i32 @btc8821a2ant_bt_rssi_state(%struct.btc_coexist* %18, i32 2, i32 %19, i32 0)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %10, align 4
  %22 = call i64 @BTC_RSSI_HIGH(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %4
  %25 = load i32, i32* %11, align 4
  %26 = call i64 @BTC_RSSI_HIGH(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %24, %4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 100
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %31, %28, %24
  %35 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %36 = load i32, i32* @COMP_BT_COEXIST, align 4
  %37 = load i32, i32* @DBG_LOUD, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %46 = load i32, i32* %8, align 4
  %47 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %35, i32 %36, i32 %37, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %41, i8* %45, i32 %46)
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %94, label %56

56:                                               ; preds = %34
  %57 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %58 = load i32, i32* @COMP_BT_COEXIST, align 4
  %59 = load i32, i32* @DBG_LOUD, align 4
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %57, i32 %58, i32 %59, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 %62, i32 %65)
  %67 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %68 = load i32, i32* @COMP_BT_COEXIST, align 4
  %69 = load i32, i32* @DBG_LOUD, align 4
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %67, i32 %68, i32 %69, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i32 %72, i32 %75)
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %79, %82
  br i1 %83, label %84, label %93

84:                                               ; preds = %56
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %87, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  br label %235

93:                                               ; preds = %84, %56
  br label %94

94:                                               ; preds = %93, %34
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %212

97:                                               ; preds = %94
  %98 = load i32, i32* %8, align 4
  switch i32 %98, label %100 [
    i32 1, label %99
    i32 2, label %103
    i32 3, label %106
    i32 4, label %109
    i32 5, label %112
    i32 6, label %115
    i32 7, label %118
    i32 8, label %121
    i32 9, label %124
    i32 10, label %127
    i32 11, label %130
    i32 12, label %133
    i32 13, label %136
    i32 14, label %139
    i32 15, label %142
    i32 16, label %145
    i32 17, label %148
    i32 18, label %151
    i32 19, label %154
    i32 20, label %157
    i32 21, label %160
    i32 23, label %163
    i32 24, label %166
    i32 124, label %166
    i32 25, label %169
    i32 26, label %172
    i32 71, label %175
    i32 101, label %178
    i32 105, label %178
    i32 171, label %178
    i32 102, label %181
    i32 106, label %181
    i32 110, label %181
    i32 114, label %181
    i32 103, label %184
    i32 107, label %184
    i32 111, label %184
    i32 115, label %184
    i32 104, label %187
    i32 108, label %187
    i32 112, label %187
    i32 116, label %187
    i32 109, label %190
    i32 113, label %193
    i32 121, label %196
    i32 22, label %199
    i32 122, label %199
    i32 123, label %202
    i32 125, label %205
    i32 126, label %208
  ]

99:                                               ; preds = %97
  br label %100

100:                                              ; preds = %97, %99
  %101 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %102 = call i32 @btc8821a2ant_set_fw_ps_tdma(%struct.btc_coexist* %101, i32 227, i32 60, i32 3, i32 241, i32 144)
  br label %211

103:                                              ; preds = %97
  %104 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %105 = call i32 @btc8821a2ant_set_fw_ps_tdma(%struct.btc_coexist* %104, i32 227, i32 45, i32 3, i32 241, i32 144)
  br label %211

106:                                              ; preds = %97
  %107 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %108 = call i32 @btc8821a2ant_set_fw_ps_tdma(%struct.btc_coexist* %107, i32 227, i32 28, i32 3, i32 241, i32 144)
  br label %211

109:                                              ; preds = %97
  %110 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %111 = call i32 @btc8821a2ant_set_fw_ps_tdma(%struct.btc_coexist* %110, i32 227, i32 16, i32 3, i32 241, i32 144)
  br label %211

112:                                              ; preds = %97
  %113 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %114 = call i32 @btc8821a2ant_set_fw_ps_tdma(%struct.btc_coexist* %113, i32 227, i32 60, i32 3, i32 112, i32 144)
  br label %211

115:                                              ; preds = %97
  %116 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %117 = call i32 @btc8821a2ant_set_fw_ps_tdma(%struct.btc_coexist* %116, i32 227, i32 45, i32 3, i32 112, i32 144)
  br label %211

118:                                              ; preds = %97
  %119 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %120 = call i32 @btc8821a2ant_set_fw_ps_tdma(%struct.btc_coexist* %119, i32 227, i32 28, i32 3, i32 112, i32 144)
  br label %211

121:                                              ; preds = %97
  %122 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %123 = call i32 @btc8821a2ant_set_fw_ps_tdma(%struct.btc_coexist* %122, i32 163, i32 16, i32 3, i32 112, i32 144)
  br label %211

124:                                              ; preds = %97
  %125 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %126 = call i32 @btc8821a2ant_set_fw_ps_tdma(%struct.btc_coexist* %125, i32 227, i32 60, i32 3, i32 241, i32 144)
  br label %211

127:                                              ; preds = %97
  %128 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %129 = call i32 @btc8821a2ant_set_fw_ps_tdma(%struct.btc_coexist* %128, i32 227, i32 45, i32 3, i32 241, i32 144)
  br label %211

130:                                              ; preds = %97
  %131 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %132 = call i32 @btc8821a2ant_set_fw_ps_tdma(%struct.btc_coexist* %131, i32 227, i32 28, i32 3, i32 241, i32 144)
  br label %211

133:                                              ; preds = %97
  %134 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %135 = call i32 @btc8821a2ant_set_fw_ps_tdma(%struct.btc_coexist* %134, i32 227, i32 16, i32 3, i32 241, i32 144)
  br label %211

136:                                              ; preds = %97
  %137 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %138 = call i32 @btc8821a2ant_set_fw_ps_tdma(%struct.btc_coexist* %137, i32 227, i32 60, i32 3, i32 112, i32 144)
  br label %211

139:                                              ; preds = %97
  %140 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %141 = call i32 @btc8821a2ant_set_fw_ps_tdma(%struct.btc_coexist* %140, i32 227, i32 45, i32 3, i32 112, i32 144)
  br label %211

142:                                              ; preds = %97
  %143 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %144 = call i32 @btc8821a2ant_set_fw_ps_tdma(%struct.btc_coexist* %143, i32 227, i32 28, i32 3, i32 112, i32 144)
  br label %211

145:                                              ; preds = %97
  %146 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %147 = call i32 @btc8821a2ant_set_fw_ps_tdma(%struct.btc_coexist* %146, i32 227, i32 16, i32 3, i32 112, i32 144)
  br label %211

148:                                              ; preds = %97
  %149 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %150 = call i32 @btc8821a2ant_set_fw_ps_tdma(%struct.btc_coexist* %149, i32 163, i32 47, i32 47, i32 96, i32 144)
  br label %211

151:                                              ; preds = %97
  %152 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %153 = call i32 @btc8821a2ant_set_fw_ps_tdma(%struct.btc_coexist* %152, i32 227, i32 5, i32 5, i32 225, i32 144)
  br label %211

154:                                              ; preds = %97
  %155 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %156 = call i32 @btc8821a2ant_set_fw_ps_tdma(%struct.btc_coexist* %155, i32 227, i32 37, i32 37, i32 225, i32 144)
  br label %211

157:                                              ; preds = %97
  %158 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %159 = call i32 @btc8821a2ant_set_fw_ps_tdma(%struct.btc_coexist* %158, i32 227, i32 37, i32 37, i32 96, i32 144)
  br label %211

160:                                              ; preds = %97
  %161 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %162 = call i32 @btc8821a2ant_set_fw_ps_tdma(%struct.btc_coexist* %161, i32 227, i32 21, i32 3, i32 112, i32 144)
  br label %211

163:                                              ; preds = %97
  %164 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %165 = call i32 @btc8821a2ant_set_fw_ps_tdma(%struct.btc_coexist* %164, i32 227, i32 30, i32 3, i32 240, i32 20)
  br label %211

166:                                              ; preds = %97, %97
  %167 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %168 = call i32 @btc8821a2ant_set_fw_ps_tdma(%struct.btc_coexist* %167, i32 211, i32 60, i32 3, i32 112, i32 80)
  br label %211

169:                                              ; preds = %97
  %170 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %171 = call i32 @btc8821a2ant_set_fw_ps_tdma(%struct.btc_coexist* %170, i32 227, i32 20, i32 3, i32 241, i32 144)
  br label %211

172:                                              ; preds = %97
  %173 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %174 = call i32 @btc8821a2ant_set_fw_ps_tdma(%struct.btc_coexist* %173, i32 227, i32 48, i32 3, i32 241, i32 144)
  br label %211

175:                                              ; preds = %97
  %176 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %177 = call i32 @btc8821a2ant_set_fw_ps_tdma(%struct.btc_coexist* %176, i32 227, i32 60, i32 3, i32 241, i32 144)
  br label %211

178:                                              ; preds = %97, %97, %97
  %179 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %180 = call i32 @btc8821a2ant_set_fw_ps_tdma(%struct.btc_coexist* %179, i32 211, i32 58, i32 3, i32 112, i32 80)
  br label %211

181:                                              ; preds = %97, %97, %97, %97
  %182 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %183 = call i32 @btc8821a2ant_set_fw_ps_tdma(%struct.btc_coexist* %182, i32 211, i32 45, i32 3, i32 112, i32 80)
  br label %211

184:                                              ; preds = %97, %97, %97, %97
  %185 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %186 = call i32 @btc8821a2ant_set_fw_ps_tdma(%struct.btc_coexist* %185, i32 211, i32 28, i32 3, i32 112, i32 80)
  br label %211

187:                                              ; preds = %97, %97, %97, %97
  %188 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %189 = call i32 @btc8821a2ant_set_fw_ps_tdma(%struct.btc_coexist* %188, i32 211, i32 16, i32 3, i32 112, i32 80)
  br label %211

190:                                              ; preds = %97
  %191 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %192 = call i32 @btc8821a2ant_set_fw_ps_tdma(%struct.btc_coexist* %191, i32 227, i32 60, i32 3, i32 241, i32 144)
  br label %211

193:                                              ; preds = %97
  %194 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %195 = call i32 @btc8821a2ant_set_fw_ps_tdma(%struct.btc_coexist* %194, i32 227, i32 60, i32 3, i32 112, i32 144)
  br label %211

196:                                              ; preds = %97
  %197 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %198 = call i32 @btc8821a2ant_set_fw_ps_tdma(%struct.btc_coexist* %197, i32 227, i32 21, i32 3, i32 112, i32 144)
  br label %211

199:                                              ; preds = %97, %97
  %200 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %201 = call i32 @btc8821a2ant_set_fw_ps_tdma(%struct.btc_coexist* %200, i32 227, i32 53, i32 3, i32 113, i32 17)
  br label %211

202:                                              ; preds = %97
  %203 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %204 = call i32 @btc8821a2ant_set_fw_ps_tdma(%struct.btc_coexist* %203, i32 211, i32 28, i32 3, i32 112, i32 84)
  br label %211

205:                                              ; preds = %97
  %206 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %207 = call i32 @btc8821a2ant_set_fw_ps_tdma(%struct.btc_coexist* %206, i32 211, i32 20, i32 3, i32 112, i32 80)
  br label %211

208:                                              ; preds = %97
  %209 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %210 = call i32 @btc8821a2ant_set_fw_ps_tdma(%struct.btc_coexist* %209, i32 211, i32 48, i32 3, i32 112, i32 80)
  br label %211

211:                                              ; preds = %208, %205, %202, %199, %196, %193, %190, %187, %184, %181, %178, %175, %172, %169, %166, %163, %160, %157, %154, %151, %148, %145, %142, %139, %136, %133, %130, %127, %124, %121, %118, %115, %112, %109, %106, %103, %100
  br label %224

212:                                              ; preds = %94
  %213 = load i32, i32* %8, align 4
  switch i32 %213, label %220 [
    i32 0, label %214
    i32 1, label %217
  ]

214:                                              ; preds = %212
  %215 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %216 = call i32 @btc8821a2ant_set_fw_ps_tdma(%struct.btc_coexist* %215, i32 0, i32 0, i32 0, i32 64, i32 0)
  br label %223

217:                                              ; preds = %212
  %218 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %219 = call i32 @btc8821a2ant_set_fw_ps_tdma(%struct.btc_coexist* %218, i32 0, i32 0, i32 0, i32 72, i32 0)
  br label %223

220:                                              ; preds = %212
  %221 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %222 = call i32 @btc8821a2ant_set_fw_ps_tdma(%struct.btc_coexist* %221, i32 0, i32 0, i32 0, i32 64, i32 0)
  br label %223

223:                                              ; preds = %220, %217, %214
  br label %224

224:                                              ; preds = %223, %211
  %225 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %229 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %228, i32 0, i32 2
  store i32 %227, i32* %229, align 4
  %230 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %231 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %234 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %233, i32 0, i32 3
  store i32 %232, i32* %234, align 4
  br label %235

235:                                              ; preds = %224, %92
  ret void
}

declare dso_local i32 @btc8821a2ant_wifi_rssi_state(%struct.btc_coexist*, i32, i32, i32, i32) #1

declare dso_local i32 @btc8821a2ant_bt_rssi_state(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i64 @BTC_RSSI_HIGH(i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @btc8821a2ant_set_fw_ps_tdma(%struct.btc_coexist*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
