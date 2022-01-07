; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b1Ant.c_halbtc8723b1ant_RunCoexistMechanism.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b1Ant.c_halbtc8723b1ant_RunCoexistMechanism.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i64, i64 }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_26__ = type { i32 (%struct.TYPE_26__*, i32, i32*)*, i32 (%struct.TYPE_26__*, i32, i32*)*, i64, i64, %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i64, i64, i64 }

@BTC_MSG_ALGORITHM = common dso_local global i32 0, align 4
@ALGO_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"[BTCoex], RunCoexistMechanism() ===>\0A\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"[BTCoex], RunCoexistMechanism(), return for Manual CTRL <===\0A\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"[BTCoex], RunCoexistMechanism(), return for Stop Coex DM <===\0A\00", align 1
@pCoexSta = common dso_local global %struct.TYPE_24__* null, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"[BTCoex], wifi is under IPS !!!\0A\00", align 1
@BT_8723B_1ANT_BT_STATUS_ACL_BUSY = common dso_local global i64 0, align 8
@pCoexDm = common dso_local global %struct.TYPE_25__* null, align 8
@BT_8723B_1ANT_BT_STATUS_SCO_BUSY = common dso_local global i64 0, align 8
@BT_8723B_1ANT_BT_STATUS_ACL_SCO_BUSY = common dso_local global i64 0, align 8
@BTC_SET_BL_INC_SCAN_DEV_NUM = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_CONNECTED = common dso_local global i32 0, align 4
@BTC_GET_U4_WIFI_LINK_STATUS = common dso_local global i32 0, align 4
@WIFI_P2P_GO_CONNECTED = common dso_local global i32 0, align 4
@BTC_MSG_INTERFACE = common dso_local global i32 0, align 4
@INTF_NOTIFY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [79 x i8] c"############# [BTCoex],  Multi-Port numOfWifiLink = %d, wifiLinkStatus = 0x%x\0A\00", align 1
@NORMAL_EXEC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"############# [BTCoex],  BT Is Inquirying\0A\00", align 1
@BTC_GET_BL_HS_OPERATION = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [42 x i8] c"[BTCoex], wifi is non connected-idle !!!\0A\00", align 1
@BTC_GET_BL_WIFI_SCAN = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_LINK = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_ROAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_26__*)* @halbtc8723b1ant_RunCoexistMechanism to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @halbtc8723b1ant_RunCoexistMechanism(%struct.TYPE_26__* %0) #0 {
  %2 = alloca %struct.TYPE_26__*, align 8
  %3 = alloca %struct.TYPE_27__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %2, align 8
  %14 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 4
  store %struct.TYPE_27__* %15, %struct.TYPE_27__** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 5, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %16 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %17 = load i32, i32* @ALGO_TRACE, align 4
  %18 = call i32 @BTC_PRINT(i32 %16, i32 %17, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %25 = load i32, i32* @ALGO_TRACE, align 4
  %26 = call i32 @BTC_PRINT(i32 %24, i32 %25, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  br label %241

27:                                               ; preds = %1
  %28 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %34 = load i32, i32* @ALGO_TRACE, align 4
  %35 = call i32 @BTC_PRINT(i32 %33, i32 %34, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0))
  br label %241

36:                                               ; preds = %27
  %37 = load %struct.TYPE_24__*, %struct.TYPE_24__** @pCoexSta, align 8
  %38 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %43 = load i32, i32* @ALGO_TRACE, align 4
  %44 = call i32 @BTC_PRINT(i32 %42, i32 %43, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %241

45:                                               ; preds = %36
  %46 = load i64, i64* @BT_8723B_1ANT_BT_STATUS_ACL_BUSY, align 8
  %47 = load %struct.TYPE_25__*, %struct.TYPE_25__** @pCoexDm, align 8
  %48 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %46, %49
  br i1 %50, label %63, label %51

51:                                               ; preds = %45
  %52 = load i64, i64* @BT_8723B_1ANT_BT_STATUS_SCO_BUSY, align 8
  %53 = load %struct.TYPE_25__*, %struct.TYPE_25__** @pCoexDm, align 8
  %54 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %52, %55
  br i1 %56, label %63, label %57

57:                                               ; preds = %51
  %58 = load i64, i64* @BT_8723B_1ANT_BT_STATUS_ACL_SCO_BUSY, align 8
  %59 = load %struct.TYPE_25__*, %struct.TYPE_25__** @pCoexDm, align 8
  %60 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %58, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %57, %51, %45
  store i32 1, i32* %6, align 4
  br label %64

64:                                               ; preds = %63, %57
  %65 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %65, i32 0, i32 1
  %67 = load i32 (%struct.TYPE_26__*, i32, i32*)*, i32 (%struct.TYPE_26__*, i32, i32*)** %66, align 8
  %68 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %69 = load i32, i32* @BTC_SET_BL_INC_SCAN_DEV_NUM, align 4
  %70 = call i32 %67(%struct.TYPE_26__* %68, i32 %69, i32* %6)
  %71 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %71, i32 0, i32 0
  %73 = load i32 (%struct.TYPE_26__*, i32, i32*)*, i32 (%struct.TYPE_26__*, i32, i32*)** %72, align 8
  %74 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %75 = load i32, i32* @BTC_GET_BL_WIFI_CONNECTED, align 4
  %76 = call i32 %73(%struct.TYPE_26__* %74, i32 %75, i32* %4)
  %77 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %77, i32 0, i32 0
  %79 = load i32 (%struct.TYPE_26__*, i32, i32*)*, i32 (%struct.TYPE_26__*, i32, i32*)** %78, align 8
  %80 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %81 = load i32, i32* @BTC_GET_U4_WIFI_LINK_STATUS, align 4
  %82 = call i32 %79(%struct.TYPE_26__* %80, i32 %81, i32* %9)
  %83 = load i32, i32* %9, align 4
  %84 = ashr i32 %83, 16
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp sge i32 %85, 2
  br i1 %86, label %92, label %87

87:                                               ; preds = %64
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* @WIFI_P2P_GO_CONNECTED, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %127

92:                                               ; preds = %87, %64
  %93 = load i32, i32* @BTC_MSG_INTERFACE, align 4
  %94 = load i32, i32* @INTF_NOTIFY, align 4
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = inttoptr i64 %97 to i8*
  %99 = call i32 @BTC_PRINT(i32 %93, i32 %94, i8* %98)
  %100 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %101 = load i32, i32* @NORMAL_EXEC, align 4
  %102 = call i32 @halbtc8723b1ant_LimitedTx(%struct.TYPE_26__* %100, i32 %101, i32 0, i32 0, i32 0, i32 0)
  %103 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %104 = load i32, i32* @NORMAL_EXEC, align 4
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @halbtc8723b1ant_LimitedRx(%struct.TYPE_26__* %103, i32 %104, i32 0, i32 %105, i32 %106)
  %108 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %123

112:                                              ; preds = %92
  %113 = load %struct.TYPE_24__*, %struct.TYPE_24__** @pCoexSta, align 8
  %114 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %112
  %118 = load i32, i32* @BTC_MSG_INTERFACE, align 4
  %119 = load i32, i32* @INTF_NOTIFY, align 4
  %120 = call i32 @BTC_PRINT(i32 %118, i32 %119, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  %121 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %122 = call i32 @halbtc8723b1ant_ActionBtInquiry(%struct.TYPE_26__* %121)
  br label %126

123:                                              ; preds = %112, %92
  %124 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %125 = call i32 @halbtc8723b1ant_ActionWifiMultiPort(%struct.TYPE_26__* %124)
  br label %126

126:                                              ; preds = %123, %117
  br label %241

127:                                              ; preds = %87
  %128 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %156

132:                                              ; preds = %127
  %133 = load i32, i32* %4, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %156

135:                                              ; preds = %132
  %136 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %137 = load i32, i32* @NORMAL_EXEC, align 4
  %138 = call i32 @halbtc8723b1ant_LimitedTx(%struct.TYPE_26__* %136, i32 %137, i32 1, i32 1, i32 0, i32 1)
  %139 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %135
  %144 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %145 = load i32, i32* @NORMAL_EXEC, align 4
  %146 = call i32 @halbtc8723b1ant_LimitedRx(%struct.TYPE_26__* %144, i32 %145, i32 0, i32 1, i32 5)
  br label %151

147:                                              ; preds = %135
  %148 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %149 = load i32, i32* @NORMAL_EXEC, align 4
  %150 = call i32 @halbtc8723b1ant_LimitedRx(%struct.TYPE_26__* %148, i32 %149, i32 0, i32 1, i32 8)
  br label %151

151:                                              ; preds = %147, %143
  %152 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %153 = call i32 @halbtc8723b1ant_SwMechanism(%struct.TYPE_26__* %152, i32 1)
  %154 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %155 = call i32 @halbtc8723b1ant_RunSwCoexistMechanism(%struct.TYPE_26__* %154)
  br label %167

156:                                              ; preds = %132, %127
  %157 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %158 = load i32, i32* @NORMAL_EXEC, align 4
  %159 = call i32 @halbtc8723b1ant_LimitedTx(%struct.TYPE_26__* %157, i32 %158, i32 0, i32 0, i32 0, i32 0)
  %160 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %161 = load i32, i32* @NORMAL_EXEC, align 4
  %162 = call i32 @halbtc8723b1ant_LimitedRx(%struct.TYPE_26__* %160, i32 %161, i32 0, i32 0, i32 5)
  %163 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %164 = call i32 @halbtc8723b1ant_SwMechanism(%struct.TYPE_26__* %163, i32 0)
  %165 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %166 = call i32 @halbtc8723b1ant_RunSwCoexistMechanism(%struct.TYPE_26__* %165)
  br label %167

167:                                              ; preds = %156, %151
  %168 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %168, i32 0, i32 0
  %170 = load i32 (%struct.TYPE_26__*, i32, i32*)*, i32 (%struct.TYPE_26__*, i32, i32*)** %169, align 8
  %171 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %172 = load i32, i32* @BTC_GET_BL_HS_OPERATION, align 4
  %173 = call i32 %170(%struct.TYPE_26__* %171, i32 %172, i32* %5)
  %174 = load %struct.TYPE_24__*, %struct.TYPE_24__** @pCoexSta, align 8
  %175 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %184

178:                                              ; preds = %167
  %179 = load i32, i32* @BTC_MSG_INTERFACE, align 4
  %180 = load i32, i32* @INTF_NOTIFY, align 4
  %181 = call i32 @BTC_PRINT(i32 %179, i32 %180, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  %182 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %183 = call i32 @halbtc8723b1ant_ActionBtInquiry(%struct.TYPE_26__* %182)
  br label %241

184:                                              ; preds = %167
  %185 = load i32, i32* %5, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %184
  %188 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %189 = call i32 @halbtc8723b1ant_ActionHs(%struct.TYPE_26__* %188)
  br label %241

190:                                              ; preds = %184
  br label %191

191:                                              ; preds = %190
  %192 = load i32, i32* %4, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %238, label %194

194:                                              ; preds = %191
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %195 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %196 = load i32, i32* @ALGO_TRACE, align 4
  %197 = call i32 @BTC_PRINT(i32 %195, i32 %196, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  %198 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %199 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %198, i32 0, i32 0
  %200 = load i32 (%struct.TYPE_26__*, i32, i32*)*, i32 (%struct.TYPE_26__*, i32, i32*)** %199, align 8
  %201 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %202 = load i32, i32* @BTC_GET_BL_WIFI_SCAN, align 4
  %203 = call i32 %200(%struct.TYPE_26__* %201, i32 %202, i32* %11)
  %204 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %205 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %204, i32 0, i32 0
  %206 = load i32 (%struct.TYPE_26__*, i32, i32*)*, i32 (%struct.TYPE_26__*, i32, i32*)** %205, align 8
  %207 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %208 = load i32, i32* @BTC_GET_BL_WIFI_LINK, align 4
  %209 = call i32 %206(%struct.TYPE_26__* %207, i32 %208, i32* %12)
  %210 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %211 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %210, i32 0, i32 0
  %212 = load i32 (%struct.TYPE_26__*, i32, i32*)*, i32 (%struct.TYPE_26__*, i32, i32*)** %211, align 8
  %213 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %214 = load i32, i32* @BTC_GET_BL_WIFI_ROAM, align 4
  %215 = call i32 %212(%struct.TYPE_26__* %213, i32 %214, i32* %13)
  %216 = load i32, i32* %11, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %224, label %218

218:                                              ; preds = %194
  %219 = load i32, i32* %12, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %224, label %221

221:                                              ; preds = %218
  %222 = load i32, i32* %13, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %234

224:                                              ; preds = %221, %218, %194
  %225 = load i32, i32* %11, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %230

227:                                              ; preds = %224
  %228 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %229 = call i32 @halbtc8723b1ant_ActionWifiNotConnectedScan(%struct.TYPE_26__* %228)
  br label %233

230:                                              ; preds = %224
  %231 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %232 = call i32 @halbtc8723b1ant_ActionWifiNotConnectedAssoAuth(%struct.TYPE_26__* %231)
  br label %233

233:                                              ; preds = %230, %227
  br label %237

234:                                              ; preds = %221
  %235 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %236 = call i32 @halbtc8723b1ant_ActionWifiNotConnected(%struct.TYPE_26__* %235)
  br label %237

237:                                              ; preds = %234, %233
  br label %241

238:                                              ; preds = %191
  %239 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %240 = call i32 @halbtc8723b1ant_ActionWifiConnected(%struct.TYPE_26__* %239)
  br label %241

241:                                              ; preds = %23, %32, %41, %126, %178, %187, %238, %237
  ret void
}

declare dso_local i32 @BTC_PRINT(i32, i32, i8*) #1

declare dso_local i32 @halbtc8723b1ant_LimitedTx(%struct.TYPE_26__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @halbtc8723b1ant_LimitedRx(%struct.TYPE_26__*, i32, i32, i32, i32) #1

declare dso_local i32 @halbtc8723b1ant_ActionBtInquiry(%struct.TYPE_26__*) #1

declare dso_local i32 @halbtc8723b1ant_ActionWifiMultiPort(%struct.TYPE_26__*) #1

declare dso_local i32 @halbtc8723b1ant_SwMechanism(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @halbtc8723b1ant_RunSwCoexistMechanism(%struct.TYPE_26__*) #1

declare dso_local i32 @halbtc8723b1ant_ActionHs(%struct.TYPE_26__*) #1

declare dso_local i32 @halbtc8723b1ant_ActionWifiNotConnectedScan(%struct.TYPE_26__*) #1

declare dso_local i32 @halbtc8723b1ant_ActionWifiNotConnectedAssoAuth(%struct.TYPE_26__*) #1

declare dso_local i32 @halbtc8723b1ant_ActionWifiNotConnected(%struct.TYPE_26__*) #1

declare dso_local i32 @halbtc8723b1ant_ActionWifiConnected(%struct.TYPE_26__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
