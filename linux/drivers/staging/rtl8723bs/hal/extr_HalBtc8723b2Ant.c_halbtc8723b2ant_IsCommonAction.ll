; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b2Ant.c_halbtc8723b2ant_IsCommonAction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b2Ant.c_halbtc8723b2ant_IsCommonAction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64 }
%struct.TYPE_23__ = type { i32 (%struct.TYPE_23__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_23__*, i32, i32*)*, i32 (%struct.TYPE_23__*, i32, i32*)* }

@BTC_RSSI_STATE_HIGH = common dso_local global i32 0, align 4
@BTC_GET_BL_HS_OPERATION = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_CONNECTED = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_BUSY = common dso_local global i32 0, align 4
@BTC_SET_ACT_DISABLE_LOW_POWER = common dso_local global i32 0, align 4
@NORMAL_EXEC = common dso_local global i32 0, align 4
@BTC_MSG_ALGORITHM = common dso_local global i32 0, align 4
@ALGO_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"[BTCoex], Wifi non-connected idle!!\0A\00", align 1
@BTC_RF_A = common dso_local global i32 0, align 4
@BT_8723B_2ANT_BT_STATUS_NON_CONNECTED_IDLE = common dso_local global i64 0, align 8
@pCoexDm = common dso_local global %struct.TYPE_22__* null, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"[BTCoex], Wifi connected + BT non connected-idle!!\0A\00", align 1
@BT_8723B_2ANT_BT_STATUS_CONNECTED_IDLE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [48 x i8] c"[BTCoex], Wifi connected + BT connected-idle!!\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"[BTCoex], Wifi Connected-Busy + BT Busy!!\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"[BTCoex], Wifi Connected-Idle + BT Busy!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*)* @halbtc8723b2ant_IsCommonAction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @halbtc8723b2ant_IsCommonAction(%struct.TYPE_23__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  %10 = load i32, i32* @BTC_RSSI_STATE_HIGH, align 4
  store i32 %10, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 2
  %13 = load i32 (%struct.TYPE_23__*, i32, i32*)*, i32 (%struct.TYPE_23__*, i32, i32*)** %12, align 8
  %14 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %15 = load i32, i32* @BTC_GET_BL_HS_OPERATION, align 4
  %16 = call i32 %13(%struct.TYPE_23__* %14, i32 %15, i32* %8)
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 2
  %19 = load i32 (%struct.TYPE_23__*, i32, i32*)*, i32 (%struct.TYPE_23__*, i32, i32*)** %18, align 8
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %21 = load i32, i32* @BTC_GET_BL_WIFI_CONNECTED, align 4
  %22 = call i32 %19(%struct.TYPE_23__* %20, i32 %21, i32* %6)
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 2
  %25 = load i32 (%struct.TYPE_23__*, i32, i32*)*, i32 (%struct.TYPE_23__*, i32, i32*)** %24, align 8
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %27 = load i32, i32* @BTC_GET_BL_WIFI_BUSY, align 4
  %28 = call i32 %25(%struct.TYPE_23__* %26, i32 %27, i32* %7)
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %66, label %31

31:                                               ; preds = %1
  store i32 0, i32* %9, align 4
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 1
  %34 = load i32 (%struct.TYPE_23__*, i32, i32*)*, i32 (%struct.TYPE_23__*, i32, i32*)** %33, align 8
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %36 = load i32, i32* @BTC_SET_ACT_DISABLE_LOW_POWER, align 4
  %37 = call i32 %34(%struct.TYPE_23__* %35, i32 %36, i32* %9)
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %39 = load i32, i32* @NORMAL_EXEC, align 4
  %40 = call i32 @halbtc8723b2ant_LimitedRx(%struct.TYPE_23__* %38, i32 %39, i32 0, i32 0, i32 8)
  %41 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %42 = load i32, i32* @ALGO_TRACE, align 4
  %43 = call i32 @BTC_PRINT(i32 %41, i32 %42, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %44, i32 0, i32 0
  %46 = load i32 (%struct.TYPE_23__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_23__*, i32, i32, i32, i32)** %45, align 8
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %48 = load i32, i32* @BTC_RF_A, align 4
  %49 = call i32 %46(%struct.TYPE_23__* %47, i32 %48, i32 1, i32 1048575, i32 0)
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %51 = load i32, i32* @NORMAL_EXEC, align 4
  %52 = call i32 @halbtc8723b2ant_CoexTableWithType(%struct.TYPE_23__* %50, i32 %51, i32 0)
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %54 = load i32, i32* @NORMAL_EXEC, align 4
  %55 = call i32 @halbtc8723b2ant_PsTdma(%struct.TYPE_23__* %53, i32 %54, i32 0, i32 1)
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %57 = load i32, i32* @NORMAL_EXEC, align 4
  %58 = call i32 @halbtc8723b2ant_FwDacSwingLvl(%struct.TYPE_23__* %56, i32 %57, i32 6)
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %60 = load i32, i32* @NORMAL_EXEC, align 4
  %61 = call i32 @halbtc8723b2ant_DecBtPwr(%struct.TYPE_23__* %59, i32 %60, i32 0)
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %63 = call i32 @halbtc8723b2ant_SwMechanism1(%struct.TYPE_23__* %62, i32 0, i32 0, i32 0, i32 0)
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %65 = call i32 @halbtc8723b2ant_SwMechanism2(%struct.TYPE_23__* %64, i32 0, i32 0, i32 0, i32 24)
  store i32 1, i32* %5, align 4
  br label %211

66:                                               ; preds = %1
  %67 = load i64, i64* @BT_8723B_2ANT_BT_STATUS_NON_CONNECTED_IDLE, align 8
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** @pCoexDm, align 8
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %67, %70
  br i1 %71, label %72, label %107

72:                                               ; preds = %66
  store i32 0, i32* %9, align 4
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %73, i32 0, i32 1
  %75 = load i32 (%struct.TYPE_23__*, i32, i32*)*, i32 (%struct.TYPE_23__*, i32, i32*)** %74, align 8
  %76 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %77 = load i32, i32* @BTC_SET_ACT_DISABLE_LOW_POWER, align 4
  %78 = call i32 %75(%struct.TYPE_23__* %76, i32 %77, i32* %9)
  %79 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %80 = load i32, i32* @NORMAL_EXEC, align 4
  %81 = call i32 @halbtc8723b2ant_LimitedRx(%struct.TYPE_23__* %79, i32 %80, i32 0, i32 0, i32 8)
  %82 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %83 = load i32, i32* @ALGO_TRACE, align 4
  %84 = call i32 @BTC_PRINT(i32 %82, i32 %83, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %85, i32 0, i32 0
  %87 = load i32 (%struct.TYPE_23__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_23__*, i32, i32, i32, i32)** %86, align 8
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %89 = load i32, i32* @BTC_RF_A, align 4
  %90 = call i32 %87(%struct.TYPE_23__* %88, i32 %89, i32 1, i32 1048575, i32 0)
  %91 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %92 = load i32, i32* @NORMAL_EXEC, align 4
  %93 = call i32 @halbtc8723b2ant_CoexTableWithType(%struct.TYPE_23__* %91, i32 %92, i32 0)
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %95 = load i32, i32* @NORMAL_EXEC, align 4
  %96 = call i32 @halbtc8723b2ant_PsTdma(%struct.TYPE_23__* %94, i32 %95, i32 0, i32 1)
  %97 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %98 = load i32, i32* @NORMAL_EXEC, align 4
  %99 = call i32 @halbtc8723b2ant_FwDacSwingLvl(%struct.TYPE_23__* %97, i32 %98, i32 11)
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %101 = load i32, i32* @NORMAL_EXEC, align 4
  %102 = call i32 @halbtc8723b2ant_DecBtPwr(%struct.TYPE_23__* %100, i32 %101, i32 0)
  %103 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %104 = call i32 @halbtc8723b2ant_SwMechanism1(%struct.TYPE_23__* %103, i32 0, i32 0, i32 0, i32 0)
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %106 = call i32 @halbtc8723b2ant_SwMechanism2(%struct.TYPE_23__* %105, i32 0, i32 0, i32 0, i32 24)
  store i32 1, i32* %5, align 4
  br label %210

107:                                              ; preds = %66
  %108 = load i64, i64* @BT_8723B_2ANT_BT_STATUS_CONNECTED_IDLE, align 8
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** @pCoexDm, align 8
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp eq i64 %108, %111
  br i1 %112, label %113, label %152

113:                                              ; preds = %107
  store i32 1, i32* %9, align 4
  %114 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %114, i32 0, i32 1
  %116 = load i32 (%struct.TYPE_23__*, i32, i32*)*, i32 (%struct.TYPE_23__*, i32, i32*)** %115, align 8
  %117 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %118 = load i32, i32* @BTC_SET_ACT_DISABLE_LOW_POWER, align 4
  %119 = call i32 %116(%struct.TYPE_23__* %117, i32 %118, i32* %9)
  %120 = load i32, i32* %8, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %113
  store i32 0, i32* %2, align 4
  br label %213

123:                                              ; preds = %113
  %124 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %125 = load i32, i32* @ALGO_TRACE, align 4
  %126 = call i32 @BTC_PRINT(i32 %124, i32 %125, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %127 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %128 = load i32, i32* @NORMAL_EXEC, align 4
  %129 = call i32 @halbtc8723b2ant_LimitedRx(%struct.TYPE_23__* %127, i32 %128, i32 0, i32 0, i32 8)
  %130 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %130, i32 0, i32 0
  %132 = load i32 (%struct.TYPE_23__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_23__*, i32, i32, i32, i32)** %131, align 8
  %133 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %134 = load i32, i32* @BTC_RF_A, align 4
  %135 = call i32 %132(%struct.TYPE_23__* %133, i32 %134, i32 1, i32 1048575, i32 0)
  %136 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %137 = load i32, i32* @NORMAL_EXEC, align 4
  %138 = call i32 @halbtc8723b2ant_CoexTableWithType(%struct.TYPE_23__* %136, i32 %137, i32 0)
  %139 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %140 = load i32, i32* @NORMAL_EXEC, align 4
  %141 = call i32 @halbtc8723b2ant_PsTdma(%struct.TYPE_23__* %139, i32 %140, i32 0, i32 1)
  %142 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %143 = load i32, i32* @NORMAL_EXEC, align 4
  %144 = call i32 @halbtc8723b2ant_FwDacSwingLvl(%struct.TYPE_23__* %142, i32 %143, i32 11)
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %146 = load i32, i32* @NORMAL_EXEC, align 4
  %147 = call i32 @halbtc8723b2ant_DecBtPwr(%struct.TYPE_23__* %145, i32 %146, i32 0)
  %148 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %149 = call i32 @halbtc8723b2ant_SwMechanism1(%struct.TYPE_23__* %148, i32 1, i32 0, i32 0, i32 0)
  %150 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %151 = call i32 @halbtc8723b2ant_SwMechanism2(%struct.TYPE_23__* %150, i32 0, i32 0, i32 0, i32 24)
  store i32 1, i32* %5, align 4
  br label %209

152:                                              ; preds = %107
  store i32 1, i32* %9, align 4
  %153 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %153, i32 0, i32 1
  %155 = load i32 (%struct.TYPE_23__*, i32, i32*)*, i32 (%struct.TYPE_23__*, i32, i32*)** %154, align 8
  %156 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %157 = load i32, i32* @BTC_SET_ACT_DISABLE_LOW_POWER, align 4
  %158 = call i32 %155(%struct.TYPE_23__* %156, i32 %157, i32* %9)
  %159 = load i32, i32* %7, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %152
  %162 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %163 = load i32, i32* @ALGO_TRACE, align 4
  %164 = call i32 @BTC_PRINT(i32 %162, i32 %163, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %208

165:                                              ; preds = %152
  %166 = load i32, i32* %8, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %165
  store i32 0, i32* %2, align 4
  br label %213

169:                                              ; preds = %165
  %170 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %171 = load i32, i32* @ALGO_TRACE, align 4
  %172 = call i32 @BTC_PRINT(i32 %170, i32 %171, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  %173 = call i32 @halbtc8723b2ant_BtRssiState(i32 2, i32 29, i32 0)
  store i32 %173, i32* %4, align 4
  %174 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %175 = load i32, i32* @NORMAL_EXEC, align 4
  %176 = call i32 @halbtc8723b2ant_LimitedRx(%struct.TYPE_23__* %174, i32 %175, i32 0, i32 0, i32 8)
  %177 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %177, i32 0, i32 0
  %179 = load i32 (%struct.TYPE_23__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_23__*, i32, i32, i32, i32)** %178, align 8
  %180 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %181 = load i32, i32* @BTC_RF_A, align 4
  %182 = call i32 %179(%struct.TYPE_23__* %180, i32 %181, i32 1, i32 1048575, i32 0)
  %183 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %184 = load i32, i32* @NORMAL_EXEC, align 4
  %185 = call i32 @halbtc8723b2ant_CoexTableWithType(%struct.TYPE_23__* %183, i32 %184, i32 7)
  %186 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %187 = load i32, i32* @NORMAL_EXEC, align 4
  %188 = call i32 @halbtc8723b2ant_PsTdma(%struct.TYPE_23__* %186, i32 %187, i32 1, i32 21)
  %189 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %190 = load i32, i32* @NORMAL_EXEC, align 4
  %191 = call i32 @halbtc8723b2ant_FwDacSwingLvl(%struct.TYPE_23__* %189, i32 %190, i32 11)
  %192 = load i32, i32* %4, align 4
  %193 = call i64 @BTC_RSSI_HIGH(i32 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %199

195:                                              ; preds = %169
  %196 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %197 = load i32, i32* @NORMAL_EXEC, align 4
  %198 = call i32 @halbtc8723b2ant_DecBtPwr(%struct.TYPE_23__* %196, i32 %197, i32 2)
  br label %203

199:                                              ; preds = %169
  %200 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %201 = load i32, i32* @NORMAL_EXEC, align 4
  %202 = call i32 @halbtc8723b2ant_DecBtPwr(%struct.TYPE_23__* %200, i32 %201, i32 0)
  br label %203

203:                                              ; preds = %199, %195
  %204 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %205 = call i32 @halbtc8723b2ant_SwMechanism1(%struct.TYPE_23__* %204, i32 0, i32 0, i32 0, i32 0)
  %206 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %207 = call i32 @halbtc8723b2ant_SwMechanism2(%struct.TYPE_23__* %206, i32 0, i32 0, i32 0, i32 24)
  store i32 1, i32* %5, align 4
  br label %208

208:                                              ; preds = %203, %161
  br label %209

209:                                              ; preds = %208, %123
  br label %210

210:                                              ; preds = %209, %72
  br label %211

211:                                              ; preds = %210, %31
  %212 = load i32, i32* %5, align 4
  store i32 %212, i32* %2, align 4
  br label %213

213:                                              ; preds = %211, %168, %122
  %214 = load i32, i32* %2, align 4
  ret i32 %214
}

declare dso_local i32 @halbtc8723b2ant_LimitedRx(%struct.TYPE_23__*, i32, i32, i32, i32) #1

declare dso_local i32 @BTC_PRINT(i32, i32, i8*) #1

declare dso_local i32 @halbtc8723b2ant_CoexTableWithType(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @halbtc8723b2ant_PsTdma(%struct.TYPE_23__*, i32, i32, i32) #1

declare dso_local i32 @halbtc8723b2ant_FwDacSwingLvl(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @halbtc8723b2ant_DecBtPwr(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @halbtc8723b2ant_SwMechanism1(%struct.TYPE_23__*, i32, i32, i32, i32) #1

declare dso_local i32 @halbtc8723b2ant_SwMechanism2(%struct.TYPE_23__*, i32, i32, i32, i32) #1

declare dso_local i32 @halbtc8723b2ant_BtRssiState(i32, i32, i32) #1

declare dso_local i64 @BTC_RSSI_HIGH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
