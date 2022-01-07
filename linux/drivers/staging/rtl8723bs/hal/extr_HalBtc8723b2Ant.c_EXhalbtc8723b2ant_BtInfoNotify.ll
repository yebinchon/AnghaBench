; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b2Ant.c_EXhalbtc8723b2ant_BtInfoNotify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b2Ant.c_EXhalbtc8723b2ant_BtInfoNotify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32**, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_16__ = type { i64, i32 }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_14__*, i32, i32*)*, i32 (%struct.TYPE_14__*, i32, i32*)*, i32 (%struct.TYPE_14__*, i32, i32, i32)*, i64 }

@pCoexSta = common dso_local global %struct.TYPE_15__* null, align 8
@BT_INFO_SRC_8723B_2ANT_MAX = common dso_local global i32 0, align 4
@BT_INFO_SRC_8723B_2ANT_WIFI_FW = common dso_local global i32 0, align 4
@BTC_MSG_INTERFACE = common dso_local global i32 0, align 4
@INTF_NOTIFY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"[BTCoex], Bt info[%d], length =%d, hex data =[\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"0x%02x]\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"0x%02x, \00", align 1
@BTC_MSG_ALGORITHM = common dso_local global i32 0, align 4
@ALGO_TRACE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"[BTCoex], BtInfoNotify(), return for Manual CTRL<===\0A\00", align 1
@BTC_SET_BL_BT_TX_RX_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [59 x i8] c"[BTCoex], Switch BT TRx Mask since BT RF REG 0x3C != 0x01\0A\00", align 1
@BTC_BT_REG_RF = common dso_local global i32 0, align 4
@BIT1 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [61 x i8] c"[BTCoex], BT ext info bit1 check, send wifi BW&Chnl to BT!!\0A\00", align 1
@BTC_GET_BL_WIFI_CONNECTED = common dso_local global i32 0, align 4
@BTC_MEDIA_CONNECT = common dso_local global i32 0, align 4
@BTC_MEDIA_DISCONNECT = common dso_local global i32 0, align 4
@BIT3 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [70 x i8] c"[BTCoex], BT ext info bit3 check, set BT NOT to ignore Wlan active!!\0A\00", align 1
@FORCE_EXEC = common dso_local global i32 0, align 4
@BT_INFO_8723B_2ANT_B_INQ_PAGE = common dso_local global i32 0, align 4
@BT_INFO_8723B_2ANT_B_CONNECTION = common dso_local global i32 0, align 4
@BT_INFO_8723B_2ANT_B_FTP = common dso_local global i32 0, align 4
@BT_INFO_8723B_2ANT_B_A2DP = common dso_local global i32 0, align 4
@BT_INFO_8723B_2ANT_B_HID = common dso_local global i32 0, align 4
@BT_INFO_8723B_2ANT_B_SCO_ESCO = common dso_local global i32 0, align 4
@BT_8723B_2ANT_BT_STATUS_NON_CONNECTED_IDLE = common dso_local global i64 0, align 8
@pCoexDm = common dso_local global %struct.TYPE_16__* null, align 8
@.str.7 = private unnamed_addr constant [52 x i8] c"[BTCoex], BtInfoNotify(), BT Non-Connected idle!!!\0A\00", align 1
@BT_8723B_2ANT_BT_STATUS_CONNECTED_IDLE = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [48 x i8] c"[BTCoex], BtInfoNotify(), BT Connected-idle!!!\0A\00", align 1
@BT_INFO_8723B_2ANT_B_SCO_BUSY = common dso_local global i32 0, align 4
@BT_8723B_2ANT_BT_STATUS_SCO_BUSY = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [42 x i8] c"[BTCoex], BtInfoNotify(), BT SCO busy!!!\0A\00", align 1
@BT_INFO_8723B_2ANT_B_ACL_BUSY = common dso_local global i32 0, align 4
@BT_8723B_2ANT_BT_STATUS_ACL_BUSY = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [42 x i8] c"[BTCoex], BtInfoNotify(), BT ACL busy!!!\0A\00", align 1
@BT_8723B_2ANT_BT_STATUS_MAX = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [51 x i8] c"[BTCoex], BtInfoNotify(), BT Non-Defined state!!!\0A\00", align 1
@BT_8723B_2ANT_BT_STATUS_ACL_SCO_BUSY = common dso_local global i64 0, align 8
@BTC_SET_BL_BT_TRAFFIC_BUSY = common dso_local global i32 0, align 4
@BTC_SET_BL_BT_LIMITED_DIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EXhalbtc8723b2ant_BtInfoNotify(%struct.TYPE_14__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** @pCoexSta, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  store i32 0, i32* %14, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 15
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @BT_INFO_SRC_8723B_2ANT_MAX, align 4
  %21 = icmp sge i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @BT_INFO_SRC_8723B_2ANT_WIFI_FW, align 4
  store i32 %23, i32* %9, align 4
  br label %24

24:                                               ; preds = %22, %3
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** @pCoexSta, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 12
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* @BTC_MSG_INTERFACE, align 4
  %34 = load i32, i32* @INTF_NOTIFY, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to i8*
  %39 = call i32 @BTC_PRINT(i32 %33, i32 %34, i8* %38)
  store i32 0, i32* %8, align 4
  br label %40

40:                                               ; preds = %96, %24
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %99

44:                                               ; preds = %40
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** @pCoexSta, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 1
  %52 = load i32**, i32*** %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %52, i64 %54
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 %49, i32* %59, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %68

62:                                               ; preds = %44
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %62, %44
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %6, align 4
  %71 = sub nsw i32 %70, 1
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %73, label %84

73:                                               ; preds = %68
  %74 = load i32, i32* @BTC_MSG_INTERFACE, align 4
  %75 = load i32, i32* @INTF_NOTIFY, align 4
  %76 = load i32*, i32** %5, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = inttoptr i64 %81 to i8*
  %83 = call i32 @BTC_PRINT(i32 %74, i32 %75, i8* %82)
  br label %95

84:                                               ; preds = %68
  %85 = load i32, i32* @BTC_MSG_INTERFACE, align 4
  %86 = load i32, i32* @INTF_NOTIFY, align 4
  %87 = load i32*, i32** %5, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = inttoptr i64 %92 to i8*
  %94 = call i32 @BTC_PRINT(i32 %85, i32 %86, i8* %93)
  br label %95

95:                                               ; preds = %84, %73
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %8, align 4
  br label %40

99:                                               ; preds = %40
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %99
  %105 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %106 = load i32, i32* @ALGO_TRACE, align 4
  %107 = call i32 @BTC_PRINT(i32 %105, i32 %106, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  br label %403

108:                                              ; preds = %99
  %109 = load i32, i32* @BT_INFO_SRC_8723B_2ANT_WIFI_FW, align 4
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %109, %110
  br i1 %111, label %112, label %227

112:                                              ; preds = %108
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** @pCoexSta, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 1
  %115 = load i32**, i32*** %114, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32*, i32** %115, i64 %117
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 2
  %121 = load i32, i32* %120, align 4
  %122 = and i32 %121, 15
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** @pCoexSta, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 2
  store i32 %122, i32* %124, align 8
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** @pCoexSta, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 1
  %127 = load i32**, i32*** %126, align 8
  %128 = load i32, i32* %9, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32*, i32** %127, i64 %129
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 3
  %133 = load i32, i32* %132, align 4
  %134 = mul nsw i32 %133, 2
  %135 = add nsw i32 %134, 10
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** @pCoexSta, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 3
  store i32 %135, i32* %137, align 4
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** @pCoexSta, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 1
  %140 = load i32**, i32*** %139, align 8
  %141 = load i32, i32* %9, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32*, i32** %140, i64 %142
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 4
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** @pCoexSta, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 4
  store i32 %146, i32* %148, align 8
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** @pCoexSta, align 8
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 1
  %151 = load i32**, i32*** %150, align 8
  %152 = load i32, i32* %9, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32*, i32** %151, i64 %153
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 2
  %157 = load i32, i32* %156, align 4
  %158 = and i32 %157, 64
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** @pCoexSta, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 5
  store i32 %158, i32* %160, align 4
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 0
  %163 = load i32 (%struct.TYPE_14__*, i32, i32*)*, i32 (%struct.TYPE_14__*, i32, i32*)** %162, align 8
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %165 = load i32, i32* @BTC_SET_BL_BT_TX_RX_MASK, align 4
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** @pCoexSta, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 5
  %168 = call i32 %163(%struct.TYPE_14__* %164, i32 %165, i32* %167)
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** @pCoexSta, align 8
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 5
  %171 = load i32, i32* %170, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %183

173:                                              ; preds = %112
  %174 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %175 = load i32, i32* @ALGO_TRACE, align 4
  %176 = call i32 @BTC_PRINT(i32 %174, i32 %175, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0))
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 2
  %179 = load i32 (%struct.TYPE_14__*, i32, i32, i32)*, i32 (%struct.TYPE_14__*, i32, i32, i32)** %178, align 8
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %181 = load i32, i32* @BTC_BT_REG_RF, align 4
  %182 = call i32 %179(%struct.TYPE_14__* %180, i32 %181, i32 60, i32 1)
  br label %183

183:                                              ; preds = %173, %112
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** @pCoexSta, align 8
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 4
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* @BIT1, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %211

190:                                              ; preds = %183
  %191 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %192 = load i32, i32* @ALGO_TRACE, align 4
  %193 = call i32 @BTC_PRINT(i32 %191, i32 %192, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0))
  %194 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %194, i32 0, i32 1
  %196 = load i32 (%struct.TYPE_14__*, i32, i32*)*, i32 (%struct.TYPE_14__*, i32, i32*)** %195, align 8
  %197 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %198 = load i32, i32* @BTC_GET_BL_WIFI_CONNECTED, align 4
  %199 = call i32 %196(%struct.TYPE_14__* %197, i32 %198, i32* %12)
  %200 = load i32, i32* %12, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %190
  %203 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %204 = load i32, i32* @BTC_MEDIA_CONNECT, align 4
  %205 = call i32 @EXhalbtc8723b2ant_MediaStatusNotify(%struct.TYPE_14__* %203, i32 %204)
  br label %210

206:                                              ; preds = %190
  %207 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %208 = load i32, i32* @BTC_MEDIA_DISCONNECT, align 4
  %209 = call i32 @EXhalbtc8723b2ant_MediaStatusNotify(%struct.TYPE_14__* %207, i32 %208)
  br label %210

210:                                              ; preds = %206, %202
  br label %211

211:                                              ; preds = %210, %183
  %212 = load %struct.TYPE_15__*, %struct.TYPE_15__** @pCoexSta, align 8
  %213 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %212, i32 0, i32 4
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* @BIT3, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %225

218:                                              ; preds = %211
  %219 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %220 = load i32, i32* @ALGO_TRACE, align 4
  %221 = call i32 @BTC_PRINT(i32 %219, i32 %220, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.6, i64 0, i64 0))
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %223 = load i32, i32* @FORCE_EXEC, align 4
  %224 = call i32 @halbtc8723b2ant_IgnoreWlanAct(%struct.TYPE_14__* %222, i32 %223, i32 0)
  br label %226

225:                                              ; preds = %211
  br label %226

226:                                              ; preds = %225, %218
  br label %227

227:                                              ; preds = %226, %108
  %228 = load i32, i32* %7, align 4
  %229 = load i32, i32* @BT_INFO_8723B_2ANT_B_INQ_PAGE, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %227
  %233 = load %struct.TYPE_15__*, %struct.TYPE_15__** @pCoexSta, align 8
  %234 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %233, i32 0, i32 6
  store i32 1, i32* %234, align 8
  br label %238

235:                                              ; preds = %227
  %236 = load %struct.TYPE_15__*, %struct.TYPE_15__** @pCoexSta, align 8
  %237 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %236, i32 0, i32 6
  store i32 0, i32* %237, align 8
  br label %238

238:                                              ; preds = %235, %232
  %239 = load i32, i32* %7, align 4
  %240 = load i32, i32* @BT_INFO_8723B_2ANT_B_CONNECTION, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %254, label %243

243:                                              ; preds = %238
  %244 = load %struct.TYPE_15__*, %struct.TYPE_15__** @pCoexSta, align 8
  %245 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %244, i32 0, i32 7
  store i32 0, i32* %245, align 4
  %246 = load %struct.TYPE_15__*, %struct.TYPE_15__** @pCoexSta, align 8
  %247 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %246, i32 0, i32 8
  store i32 0, i32* %247, align 8
  %248 = load %struct.TYPE_15__*, %struct.TYPE_15__** @pCoexSta, align 8
  %249 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %248, i32 0, i32 9
  store i32 0, i32* %249, align 4
  %250 = load %struct.TYPE_15__*, %struct.TYPE_15__** @pCoexSta, align 8
  %251 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %250, i32 0, i32 10
  store i32 0, i32* %251, align 8
  %252 = load %struct.TYPE_15__*, %struct.TYPE_15__** @pCoexSta, align 8
  %253 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %252, i32 0, i32 11
  store i32 0, i32* %253, align 4
  br label %301

254:                                              ; preds = %238
  %255 = load %struct.TYPE_15__*, %struct.TYPE_15__** @pCoexSta, align 8
  %256 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %255, i32 0, i32 7
  store i32 1, i32* %256, align 4
  %257 = load i32, i32* %7, align 4
  %258 = load i32, i32* @BT_INFO_8723B_2ANT_B_FTP, align 4
  %259 = and i32 %257, %258
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %264

261:                                              ; preds = %254
  %262 = load %struct.TYPE_15__*, %struct.TYPE_15__** @pCoexSta, align 8
  %263 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %262, i32 0, i32 8
  store i32 1, i32* %263, align 8
  br label %267

264:                                              ; preds = %254
  %265 = load %struct.TYPE_15__*, %struct.TYPE_15__** @pCoexSta, align 8
  %266 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %265, i32 0, i32 8
  store i32 0, i32* %266, align 8
  br label %267

267:                                              ; preds = %264, %261
  %268 = load i32, i32* %7, align 4
  %269 = load i32, i32* @BT_INFO_8723B_2ANT_B_A2DP, align 4
  %270 = and i32 %268, %269
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %275

272:                                              ; preds = %267
  %273 = load %struct.TYPE_15__*, %struct.TYPE_15__** @pCoexSta, align 8
  %274 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %273, i32 0, i32 9
  store i32 1, i32* %274, align 4
  br label %278

275:                                              ; preds = %267
  %276 = load %struct.TYPE_15__*, %struct.TYPE_15__** @pCoexSta, align 8
  %277 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %276, i32 0, i32 9
  store i32 0, i32* %277, align 4
  br label %278

278:                                              ; preds = %275, %272
  %279 = load i32, i32* %7, align 4
  %280 = load i32, i32* @BT_INFO_8723B_2ANT_B_HID, align 4
  %281 = and i32 %279, %280
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %286

283:                                              ; preds = %278
  %284 = load %struct.TYPE_15__*, %struct.TYPE_15__** @pCoexSta, align 8
  %285 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %284, i32 0, i32 10
  store i32 1, i32* %285, align 8
  br label %289

286:                                              ; preds = %278
  %287 = load %struct.TYPE_15__*, %struct.TYPE_15__** @pCoexSta, align 8
  %288 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %287, i32 0, i32 10
  store i32 0, i32* %288, align 8
  br label %289

289:                                              ; preds = %286, %283
  %290 = load i32, i32* %7, align 4
  %291 = load i32, i32* @BT_INFO_8723B_2ANT_B_SCO_ESCO, align 4
  %292 = and i32 %290, %291
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %297

294:                                              ; preds = %289
  %295 = load %struct.TYPE_15__*, %struct.TYPE_15__** @pCoexSta, align 8
  %296 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %295, i32 0, i32 11
  store i32 1, i32* %296, align 4
  br label %300

297:                                              ; preds = %289
  %298 = load %struct.TYPE_15__*, %struct.TYPE_15__** @pCoexSta, align 8
  %299 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %298, i32 0, i32 11
  store i32 0, i32* %299, align 4
  br label %300

300:                                              ; preds = %297, %294
  br label %301

301:                                              ; preds = %300, %243
  %302 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %303 = call i32 @halbtc8723b2ant_UpdateBtLinkInfo(%struct.TYPE_14__* %302)
  %304 = load i32, i32* %7, align 4
  %305 = load i32, i32* @BT_INFO_8723B_2ANT_B_CONNECTION, align 4
  %306 = and i32 %304, %305
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %315, label %308

308:                                              ; preds = %301
  %309 = load i64, i64* @BT_8723B_2ANT_BT_STATUS_NON_CONNECTED_IDLE, align 8
  %310 = load %struct.TYPE_16__*, %struct.TYPE_16__** @pCoexDm, align 8
  %311 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %310, i32 0, i32 0
  store i64 %309, i64* %311, align 8
  %312 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %313 = load i32, i32* @ALGO_TRACE, align 4
  %314 = call i32 @BTC_PRINT(i32 %312, i32 %313, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0))
  br label %365

315:                                              ; preds = %301
  %316 = load i32, i32* %7, align 4
  %317 = load i32, i32* @BT_INFO_8723B_2ANT_B_CONNECTION, align 4
  %318 = icmp eq i32 %316, %317
  br i1 %318, label %319, label %326

319:                                              ; preds = %315
  %320 = load i64, i64* @BT_8723B_2ANT_BT_STATUS_CONNECTED_IDLE, align 8
  %321 = load %struct.TYPE_16__*, %struct.TYPE_16__** @pCoexDm, align 8
  %322 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %321, i32 0, i32 0
  store i64 %320, i64* %322, align 8
  %323 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %324 = load i32, i32* @ALGO_TRACE, align 4
  %325 = call i32 @BTC_PRINT(i32 %323, i32 %324, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0))
  br label %364

326:                                              ; preds = %315
  %327 = load i32, i32* %7, align 4
  %328 = load i32, i32* @BT_INFO_8723B_2ANT_B_SCO_ESCO, align 4
  %329 = and i32 %327, %328
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %336, label %331

331:                                              ; preds = %326
  %332 = load i32, i32* %7, align 4
  %333 = load i32, i32* @BT_INFO_8723B_2ANT_B_SCO_BUSY, align 4
  %334 = and i32 %332, %333
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %343

336:                                              ; preds = %331, %326
  %337 = load i64, i64* @BT_8723B_2ANT_BT_STATUS_SCO_BUSY, align 8
  %338 = load %struct.TYPE_16__*, %struct.TYPE_16__** @pCoexDm, align 8
  %339 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %338, i32 0, i32 0
  store i64 %337, i64* %339, align 8
  %340 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %341 = load i32, i32* @ALGO_TRACE, align 4
  %342 = call i32 @BTC_PRINT(i32 %340, i32 %341, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0))
  br label %363

343:                                              ; preds = %331
  %344 = load i32, i32* %7, align 4
  %345 = load i32, i32* @BT_INFO_8723B_2ANT_B_ACL_BUSY, align 4
  %346 = and i32 %344, %345
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %355

348:                                              ; preds = %343
  %349 = load i64, i64* @BT_8723B_2ANT_BT_STATUS_ACL_BUSY, align 8
  %350 = load %struct.TYPE_16__*, %struct.TYPE_16__** @pCoexDm, align 8
  %351 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %350, i32 0, i32 0
  store i64 %349, i64* %351, align 8
  %352 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %353 = load i32, i32* @ALGO_TRACE, align 4
  %354 = call i32 @BTC_PRINT(i32 %352, i32 %353, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0))
  br label %362

355:                                              ; preds = %343
  %356 = load i64, i64* @BT_8723B_2ANT_BT_STATUS_MAX, align 8
  %357 = load %struct.TYPE_16__*, %struct.TYPE_16__** @pCoexDm, align 8
  %358 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %357, i32 0, i32 0
  store i64 %356, i64* %358, align 8
  %359 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %360 = load i32, i32* @ALGO_TRACE, align 4
  %361 = call i32 @BTC_PRINT(i32 %359, i32 %360, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.11, i64 0, i64 0))
  br label %362

362:                                              ; preds = %355, %348
  br label %363

363:                                              ; preds = %362, %336
  br label %364

364:                                              ; preds = %363, %319
  br label %365

365:                                              ; preds = %364, %308
  %366 = load i64, i64* @BT_8723B_2ANT_BT_STATUS_ACL_BUSY, align 8
  %367 = load %struct.TYPE_16__*, %struct.TYPE_16__** @pCoexDm, align 8
  %368 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %367, i32 0, i32 0
  %369 = load i64, i64* %368, align 8
  %370 = icmp eq i64 %366, %369
  br i1 %370, label %383, label %371

371:                                              ; preds = %365
  %372 = load i64, i64* @BT_8723B_2ANT_BT_STATUS_SCO_BUSY, align 8
  %373 = load %struct.TYPE_16__*, %struct.TYPE_16__** @pCoexDm, align 8
  %374 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %373, i32 0, i32 0
  %375 = load i64, i64* %374, align 8
  %376 = icmp eq i64 %372, %375
  br i1 %376, label %383, label %377

377:                                              ; preds = %371
  %378 = load i64, i64* @BT_8723B_2ANT_BT_STATUS_ACL_SCO_BUSY, align 8
  %379 = load %struct.TYPE_16__*, %struct.TYPE_16__** @pCoexDm, align 8
  %380 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %379, i32 0, i32 0
  %381 = load i64, i64* %380, align 8
  %382 = icmp eq i64 %378, %381
  br i1 %382, label %383, label %384

383:                                              ; preds = %377, %371, %365
  store i32 1, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %385

384:                                              ; preds = %377
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %385

385:                                              ; preds = %384, %383
  %386 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %387 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %386, i32 0, i32 0
  %388 = load i32 (%struct.TYPE_14__*, i32, i32*)*, i32 (%struct.TYPE_14__*, i32, i32*)** %387, align 8
  %389 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %390 = load i32, i32* @BTC_SET_BL_BT_TRAFFIC_BUSY, align 4
  %391 = call i32 %388(%struct.TYPE_14__* %389, i32 %390, i32* %10)
  %392 = load i32, i32* %11, align 4
  %393 = load %struct.TYPE_16__*, %struct.TYPE_16__** @pCoexDm, align 8
  %394 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %393, i32 0, i32 1
  store i32 %392, i32* %394, align 8
  %395 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %396 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %395, i32 0, i32 0
  %397 = load i32 (%struct.TYPE_14__*, i32, i32*)*, i32 (%struct.TYPE_14__*, i32, i32*)** %396, align 8
  %398 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %399 = load i32, i32* @BTC_SET_BL_BT_LIMITED_DIG, align 4
  %400 = call i32 %397(%struct.TYPE_14__* %398, i32 %399, i32* %11)
  %401 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %402 = call i32 @halbtc8723b2ant_RunCoexistMechanism(%struct.TYPE_14__* %401)
  br label %403

403:                                              ; preds = %385, %104
  ret void
}

declare dso_local i32 @BTC_PRINT(i32, i32, i8*) #1

declare dso_local i32 @EXhalbtc8723b2ant_MediaStatusNotify(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @halbtc8723b2ant_IgnoreWlanAct(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @halbtc8723b2ant_UpdateBtLinkInfo(%struct.TYPE_14__*) #1

declare dso_local i32 @halbtc8723b2ant_RunCoexistMechanism(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
