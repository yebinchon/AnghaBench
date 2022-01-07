; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b1Ant.c_halbtc8723b1ant_ActionWifiConnected.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b1Ant.c_halbtc8723b1ant_ActionWifiConnected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64 }
%struct.TYPE_22__ = type { i64, i32, i32, i32, i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__, i32 (%struct.TYPE_21__*, i32, i32*)* }
%struct.TYPE_20__ = type { i64, i32 }

@BTC_MSG_ALGORITHM = common dso_local global i32 0, align 4
@ALGO_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"[BTCoex], CoexForWifiConnect() ===>\0A\00", align 1
@BTC_GET_BL_WIFI_4_WAY_PROGRESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [67 x i8] c"[BTCoex], CoexForWifiConnect(), return for wifi is under 4way<===\0A\00", align 1
@BTC_GET_BL_WIFI_SCAN = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_LINK = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_ROAM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [67 x i8] c"[BTCoex], CoexForWifiConnect(), return for wifi is under scan<===\0A\00", align 1
@BTC_GET_BL_WIFI_AP_MODE_ENABLE = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_BUSY = common dso_local global i32 0, align 4
@BT_8723B_1ANT_BT_STATUS_ACL_BUSY = common dso_local global i64 0, align 8
@pCoexDm = common dso_local global %struct.TYPE_19__* null, align 8
@BTC_PS_WIFI_NATIVE = common dso_local global i32 0, align 4
@pCoexSta = common dso_local global %struct.TYPE_22__* null, align 8
@BT_8723B_1ANT_WIFI_NOISY_THRESH = common dso_local global i64 0, align 8
@BTC_PS_LPS_ON = common dso_local global i32 0, align 4
@BT_8723B_1ANT_WIFI_STATUS_CONNECTED_IDLE = common dso_local global i32 0, align 4
@BT_8723B_1ANT_BT_STATUS_SCO_BUSY = common dso_local global i64 0, align 8
@BT_8723B_1ANT_BT_STATUS_ACL_SCO_BUSY = common dso_local global i64 0, align 8
@NORMAL_EXEC = common dso_local global i32 0, align 4
@BT_8723B_1ANT_WIFI_STATUS_CONNECTED_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*)* @halbtc8723b1ant_ActionWifiConnected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @halbtc8723b1ant_ActionWifiConnected(%struct.TYPE_21__* %0) #0 {
  %2 = alloca %struct.TYPE_21__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %10 = load i32, i32* @ALGO_TRACE, align 4
  %11 = call i32 @BTC_PRINT(i32 %9, i32 %10, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 1
  %14 = load i32 (%struct.TYPE_21__*, i32, i32*)*, i32 (%struct.TYPE_21__*, i32, i32*)** %13, align 8
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %16 = load i32, i32* @BTC_GET_BL_WIFI_4_WAY_PROGRESS, align 4
  %17 = call i32 %14(%struct.TYPE_21__* %15, i32 %16, i32* %7)
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %22 = call i32 @halbtc8723b1ant_ActionWifiConnectedSpecialPacket(%struct.TYPE_21__* %21)
  %23 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %24 = load i32, i32* @ALGO_TRACE, align 4
  %25 = call i32 @BTC_PRINT(i32 %23, i32 %24, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0))
  br label %252

26:                                               ; preds = %1
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 1
  %29 = load i32 (%struct.TYPE_21__*, i32, i32*)*, i32 (%struct.TYPE_21__*, i32, i32*)** %28, align 8
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %31 = load i32, i32* @BTC_GET_BL_WIFI_SCAN, align 4
  %32 = call i32 %29(%struct.TYPE_21__* %30, i32 %31, i32* %4)
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 1
  %35 = load i32 (%struct.TYPE_21__*, i32, i32*)*, i32 (%struct.TYPE_21__*, i32, i32*)** %34, align 8
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %37 = load i32, i32* @BTC_GET_BL_WIFI_LINK, align 4
  %38 = call i32 %35(%struct.TYPE_21__* %36, i32 %37, i32* %5)
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 1
  %41 = load i32 (%struct.TYPE_21__*, i32, i32*)*, i32 (%struct.TYPE_21__*, i32, i32*)** %40, align 8
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %43 = load i32, i32* @BTC_GET_BL_WIFI_ROAM, align 4
  %44 = call i32 %41(%struct.TYPE_21__* %42, i32 %43, i32* %6)
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %26
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %50, %47, %26
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %58 = call i32 @halbtc8723b1ant_ActionWifiConnectedScan(%struct.TYPE_21__* %57)
  br label %62

59:                                               ; preds = %53
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %61 = call i32 @halbtc8723b1ant_ActionWifiConnectedSpecialPacket(%struct.TYPE_21__* %60)
  br label %62

62:                                               ; preds = %59, %56
  %63 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %64 = load i32, i32* @ALGO_TRACE, align 4
  %65 = call i32 @BTC_PRINT(i32 %63, i32 %64, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0))
  br label %252

66:                                               ; preds = %50
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 1
  %69 = load i32 (%struct.TYPE_21__*, i32, i32*)*, i32 (%struct.TYPE_21__*, i32, i32*)** %68, align 8
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %71 = load i32, i32* @BTC_GET_BL_WIFI_AP_MODE_ENABLE, align 4
  %72 = call i32 %69(%struct.TYPE_21__* %70, i32 %71, i32* %8)
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 1
  %75 = load i32 (%struct.TYPE_21__*, i32, i32*)*, i32 (%struct.TYPE_21__*, i32, i32*)** %74, align 8
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %77 = load i32, i32* @BTC_GET_BL_WIFI_BUSY, align 4
  %78 = call i32 %75(%struct.TYPE_21__* %76, i32 %77, i32* %3)
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %147, label %81

81:                                               ; preds = %66
  %82 = load i64, i64* @BT_8723B_1ANT_BT_STATUS_ACL_BUSY, align 8
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** @pCoexDm, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %82, %85
  br i1 %86, label %87, label %147

87:                                               ; preds = %81
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %147, label %93

93:                                               ; preds = %87
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %122

99:                                               ; preds = %93
  %100 = load i32, i32* %3, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %99
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %104 = load i32, i32* @BTC_PS_WIFI_NATIVE, align 4
  %105 = call i32 @halbtc8723b1ant_PowerSaveState(%struct.TYPE_21__* %103, i32 %104, i32 0, i32 0)
  br label %121

106:                                              ; preds = %99
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** @pCoexSta, align 8
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @BT_8723B_1ANT_WIFI_NOISY_THRESH, align 8
  %111 = icmp sge i64 %109, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %106
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %114 = load i32, i32* @BTC_PS_WIFI_NATIVE, align 4
  %115 = call i32 @halbtc8723b1ant_PowerSaveState(%struct.TYPE_21__* %113, i32 %114, i32 0, i32 0)
  br label %120

116:                                              ; preds = %106
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %118 = load i32, i32* @BTC_PS_LPS_ON, align 4
  %119 = call i32 @halbtc8723b1ant_PowerSaveState(%struct.TYPE_21__* %117, i32 %118, i32 80, i32 4)
  br label %120

120:                                              ; preds = %116, %112
  br label %121

121:                                              ; preds = %120, %102
  br label %146

122:                                              ; preds = %93
  %123 = load %struct.TYPE_22__*, %struct.TYPE_22__** @pCoexSta, align 8
  %124 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 8
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %141, label %127

127:                                              ; preds = %122
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** @pCoexSta, align 8
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %141, label %132

132:                                              ; preds = %127
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** @pCoexSta, align 8
  %134 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %141, label %137

137:                                              ; preds = %132
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %139 = load i32, i32* @BTC_PS_WIFI_NATIVE, align 4
  %140 = call i32 @halbtc8723b1ant_PowerSaveState(%struct.TYPE_21__* %138, i32 %139, i32 0, i32 0)
  br label %145

141:                                              ; preds = %132, %127, %122
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %143 = load i32, i32* @BTC_PS_LPS_ON, align 4
  %144 = call i32 @halbtc8723b1ant_PowerSaveState(%struct.TYPE_21__* %142, i32 %143, i32 80, i32 4)
  br label %145

145:                                              ; preds = %141, %137
  br label %146

146:                                              ; preds = %145, %121
  br label %151

147:                                              ; preds = %87, %81, %66
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %149 = load i32, i32* @BTC_PS_WIFI_NATIVE, align 4
  %150 = call i32 @halbtc8723b1ant_PowerSaveState(%struct.TYPE_21__* %148, i32 %149, i32 0, i32 0)
  br label %151

151:                                              ; preds = %147, %146
  %152 = load i32, i32* %3, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %203, label %154

154:                                              ; preds = %151
  %155 = load i64, i64* @BT_8723B_1ANT_BT_STATUS_ACL_BUSY, align 8
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** @pCoexDm, align 8
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = icmp eq i64 %155, %158
  br i1 %159, label %160, label %164

160:                                              ; preds = %154
  %161 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %162 = load i32, i32* @BT_8723B_1ANT_WIFI_STATUS_CONNECTED_IDLE, align 4
  %163 = call i32 @halbtc8723b1ant_ActionWifiConnectedBtAclBusy(%struct.TYPE_21__* %161, i32 %162)
  br label %202

164:                                              ; preds = %154
  %165 = load i64, i64* @BT_8723B_1ANT_BT_STATUS_SCO_BUSY, align 8
  %166 = load %struct.TYPE_19__*, %struct.TYPE_19__** @pCoexDm, align 8
  %167 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = icmp eq i64 %165, %168
  br i1 %169, label %176, label %170

170:                                              ; preds = %164
  %171 = load i64, i64* @BT_8723B_1ANT_BT_STATUS_ACL_SCO_BUSY, align 8
  %172 = load %struct.TYPE_19__*, %struct.TYPE_19__** @pCoexDm, align 8
  %173 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = icmp eq i64 %171, %174
  br i1 %175, label %176, label %180

176:                                              ; preds = %170, %164
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %178 = load i32, i32* @BT_8723B_1ANT_WIFI_STATUS_CONNECTED_IDLE, align 4
  %179 = call i32 @halbtc8723b1ant_ActionBtScoHidOnlyBusy(%struct.TYPE_21__* %177, i32 %178)
  br label %201

180:                                              ; preds = %170
  %181 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %182 = load i32, i32* @NORMAL_EXEC, align 4
  %183 = call i32 @halbtc8723b1ant_PsTdma(%struct.TYPE_21__* %181, i32 %182, i32 0, i32 8)
  %184 = load %struct.TYPE_22__*, %struct.TYPE_22__** @pCoexSta, align 8
  %185 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.TYPE_22__*, %struct.TYPE_22__** @pCoexSta, align 8
  %188 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = add nsw i32 %186, %189
  %191 = icmp sle i32 %190, 60
  br i1 %191, label %192, label %196

192:                                              ; preds = %180
  %193 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %194 = load i32, i32* @NORMAL_EXEC, align 4
  %195 = call i32 @halbtc8723b1ant_CoexTableWithType(%struct.TYPE_21__* %193, i32 %194, i32 2)
  br label %200

196:                                              ; preds = %180
  %197 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %198 = load i32, i32* @NORMAL_EXEC, align 4
  %199 = call i32 @halbtc8723b1ant_CoexTableWithType(%struct.TYPE_21__* %197, i32 %198, i32 7)
  br label %200

200:                                              ; preds = %196, %192
  br label %201

201:                                              ; preds = %200, %176
  br label %202

202:                                              ; preds = %201, %160
  br label %252

203:                                              ; preds = %151
  %204 = load i64, i64* @BT_8723B_1ANT_BT_STATUS_ACL_BUSY, align 8
  %205 = load %struct.TYPE_19__*, %struct.TYPE_19__** @pCoexDm, align 8
  %206 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = icmp eq i64 %204, %207
  br i1 %208, label %209, label %213

209:                                              ; preds = %203
  %210 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %211 = load i32, i32* @BT_8723B_1ANT_WIFI_STATUS_CONNECTED_BUSY, align 4
  %212 = call i32 @halbtc8723b1ant_ActionWifiConnectedBtAclBusy(%struct.TYPE_21__* %210, i32 %211)
  br label %251

213:                                              ; preds = %203
  %214 = load i64, i64* @BT_8723B_1ANT_BT_STATUS_SCO_BUSY, align 8
  %215 = load %struct.TYPE_19__*, %struct.TYPE_19__** @pCoexDm, align 8
  %216 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = icmp eq i64 %214, %217
  br i1 %218, label %225, label %219

219:                                              ; preds = %213
  %220 = load i64, i64* @BT_8723B_1ANT_BT_STATUS_ACL_SCO_BUSY, align 8
  %221 = load %struct.TYPE_19__*, %struct.TYPE_19__** @pCoexDm, align 8
  %222 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = icmp eq i64 %220, %223
  br i1 %224, label %225, label %229

225:                                              ; preds = %219, %213
  %226 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %227 = load i32, i32* @BT_8723B_1ANT_WIFI_STATUS_CONNECTED_BUSY, align 4
  %228 = call i32 @halbtc8723b1ant_ActionBtScoHidOnlyBusy(%struct.TYPE_21__* %226, i32 %227)
  br label %250

229:                                              ; preds = %219
  %230 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %231 = load i32, i32* @NORMAL_EXEC, align 4
  %232 = call i32 @halbtc8723b1ant_PsTdma(%struct.TYPE_21__* %230, i32 %231, i32 0, i32 8)
  %233 = load %struct.TYPE_22__*, %struct.TYPE_22__** @pCoexSta, align 8
  %234 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 8
  %236 = load %struct.TYPE_22__*, %struct.TYPE_22__** @pCoexSta, align 8
  %237 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 4
  %239 = add nsw i32 %235, %238
  %240 = icmp sle i32 %239, 60
  br i1 %240, label %241, label %245

241:                                              ; preds = %229
  %242 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %243 = load i32, i32* @NORMAL_EXEC, align 4
  %244 = call i32 @halbtc8723b1ant_CoexTableWithType(%struct.TYPE_21__* %242, i32 %243, i32 2)
  br label %249

245:                                              ; preds = %229
  %246 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %247 = load i32, i32* @NORMAL_EXEC, align 4
  %248 = call i32 @halbtc8723b1ant_CoexTableWithType(%struct.TYPE_21__* %246, i32 %247, i32 7)
  br label %249

249:                                              ; preds = %245, %241
  br label %250

250:                                              ; preds = %249, %225
  br label %251

251:                                              ; preds = %250, %209
  br label %252

252:                                              ; preds = %20, %62, %251, %202
  ret void
}

declare dso_local i32 @BTC_PRINT(i32, i32, i8*) #1

declare dso_local i32 @halbtc8723b1ant_ActionWifiConnectedSpecialPacket(%struct.TYPE_21__*) #1

declare dso_local i32 @halbtc8723b1ant_ActionWifiConnectedScan(%struct.TYPE_21__*) #1

declare dso_local i32 @halbtc8723b1ant_PowerSaveState(%struct.TYPE_21__*, i32, i32, i32) #1

declare dso_local i32 @halbtc8723b1ant_ActionWifiConnectedBtAclBusy(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @halbtc8723b1ant_ActionBtScoHidOnlyBusy(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @halbtc8723b1ant_PsTdma(%struct.TYPE_21__*, i32, i32, i32) #1

declare dso_local i32 @halbtc8723b1ant_CoexTableWithType(%struct.TYPE_21__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
