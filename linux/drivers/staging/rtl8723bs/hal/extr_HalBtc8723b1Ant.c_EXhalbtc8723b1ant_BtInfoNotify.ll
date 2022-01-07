; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b1Ant.c_EXhalbtc8723b1ant_BtInfoNotify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b1Ant.c_EXhalbtc8723b1ant_BtInfoNotify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32**, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_13__*, i32, i32*)*, i32, i32, i32 (%struct.TYPE_13__*, i32, i32*)*, i32 (%struct.TYPE_13__*, i32, i32, i32)* }

@pCoexSta = common dso_local global %struct.TYPE_14__* null, align 8
@BT_INFO_SRC_8723B_1ANT_MAX = common dso_local global i32 0, align 4
@BT_INFO_SRC_8723B_1ANT_WIFI_FW = common dso_local global i32 0, align 4
@BTC_MSG_INTERFACE = common dso_local global i32 0, align 4
@INTF_NOTIFY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"[BTCoex], Bt info[%d], length =%d, hex data =[\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"0x%02x]\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"0x%02x, \00", align 1
@BTC_SET_BL_BT_TX_RX_MASK = common dso_local global i32 0, align 4
@BTC_MSG_ALGORITHM = common dso_local global i32 0, align 4
@ALGO_TRACE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [59 x i8] c"[BTCoex], Switch BT TRx Mask since BT RF REG 0x3C != 0x15\0A\00", align 1
@BTC_BT_REG_RF = common dso_local global i32 0, align 4
@BIT1 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [61 x i8] c"[BTCoex], BT ext info bit1 check, send wifi BW&Chnl to BT!!\0A\00", align 1
@BTC_GET_BL_WIFI_CONNECTED = common dso_local global i32 0, align 4
@BTC_MEDIA_CONNECT = common dso_local global i32 0, align 4
@BTC_MEDIA_DISCONNECT = common dso_local global i32 0, align 4
@BIT3 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [70 x i8] c"[BTCoex], BT ext info bit3 check, set BT NOT to ignore Wlan active!!\0A\00", align 1
@FORCE_EXEC = common dso_local global i32 0, align 4
@BT_INFO_8723B_1ANT_B_INQ_PAGE = common dso_local global i32 0, align 4
@BT_INFO_8723B_1ANT_B_CONNECTION = common dso_local global i32 0, align 4
@BT_INFO_8723B_1ANT_B_FTP = common dso_local global i32 0, align 4
@BT_INFO_8723B_1ANT_B_A2DP = common dso_local global i32 0, align 4
@BT_INFO_8723B_1ANT_B_HID = common dso_local global i32 0, align 4
@BT_INFO_8723B_1ANT_B_SCO_ESCO = common dso_local global i32 0, align 4
@BT_8723B_1ANT_BT_STATUS_NON_CONNECTED_IDLE = common dso_local global i64 0, align 8
@pCoexDm = common dso_local global %struct.TYPE_15__* null, align 8
@.str.6 = private unnamed_addr constant [52 x i8] c"[BTCoex], BtInfoNotify(), BT Non-Connected idle!!!\0A\00", align 1
@BT_8723B_1ANT_BT_STATUS_CONNECTED_IDLE = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [48 x i8] c"[BTCoex], BtInfoNotify(), BT Connected-idle!!!\0A\00", align 1
@BT_INFO_8723B_1ANT_B_SCO_BUSY = common dso_local global i32 0, align 4
@BT_8723B_1ANT_BT_STATUS_SCO_BUSY = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [42 x i8] c"[BTCoex], BtInfoNotify(), BT SCO busy!!!\0A\00", align 1
@BT_INFO_8723B_1ANT_B_ACL_BUSY = common dso_local global i32 0, align 4
@BT_8723B_1ANT_BT_STATUS_ACL_BUSY = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [42 x i8] c"[BTCoex], BtInfoNotify(), BT ACL busy!!!\0A\00", align 1
@BT_8723B_1ANT_BT_STATUS_MAX = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [51 x i8] c"[BTCoex], BtInfoNotify(), BT Non-Defined state!!!\0A\00", align 1
@BT_8723B_1ANT_BT_STATUS_ACL_SCO_BUSY = common dso_local global i64 0, align 8
@BTC_SET_BL_BT_TRAFFIC_BUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EXhalbtc8723b1ant_BtInfoNotify(%struct.TYPE_13__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pCoexSta, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  store i32 0, i32* %13, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 15
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @BT_INFO_SRC_8723B_1ANT_MAX, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @BT_INFO_SRC_8723B_1ANT_WIFI_FW, align 4
  store i32 %22, i32* %9, align 4
  br label %23

23:                                               ; preds = %21, %3
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pCoexSta, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 14
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  %32 = load i32, i32* @BTC_MSG_INTERFACE, align 4
  %33 = load i32, i32* @INTF_NOTIFY, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to i8*
  %38 = call i32 @BTC_PRINT(i32 %32, i32 %33, i8* %37)
  store i32 0, i32* %8, align 4
  br label %39

39:                                               ; preds = %95, %23
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %98

43:                                               ; preds = %39
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pCoexSta, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 1
  %51 = load i32**, i32*** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32*, i32** %51, i64 %53
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 %48, i32* %58, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %67

61:                                               ; preds = %43
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %61, %43
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %6, align 4
  %70 = sub nsw i32 %69, 1
  %71 = icmp eq i32 %68, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %67
  %73 = load i32, i32* @BTC_MSG_INTERFACE, align 4
  %74 = load i32, i32* @INTF_NOTIFY, align 4
  %75 = load i32*, i32** %5, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = inttoptr i64 %80 to i8*
  %82 = call i32 @BTC_PRINT(i32 %73, i32 %74, i8* %81)
  br label %94

83:                                               ; preds = %67
  %84 = load i32, i32* @BTC_MSG_INTERFACE, align 4
  %85 = load i32, i32* @INTF_NOTIFY, align 4
  %86 = load i32*, i32** %5, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = inttoptr i64 %91 to i8*
  %93 = call i32 @BTC_PRINT(i32 %84, i32 %85, i8* %92)
  br label %94

94:                                               ; preds = %83, %72
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %8, align 4
  br label %39

98:                                               ; preds = %39
  %99 = load i32, i32* @BT_INFO_SRC_8723B_1ANT_WIFI_FW, align 4
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %256

102:                                              ; preds = %98
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pCoexSta, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 1
  %105 = load i32**, i32*** %104, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32*, i32** %105, i64 %107
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 2
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %111, 15
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pCoexSta, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 8
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pCoexSta, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = icmp sge i32 %117, 1
  br i1 %118, label %119, label %124

119:                                              ; preds = %102
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pCoexSta, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 13
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 4
  br label %124

124:                                              ; preds = %119, %102
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pCoexSta, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 1
  %127 = load i32**, i32*** %126, align 8
  %128 = load i32, i32* %9, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32*, i32** %127, i64 %129
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 2
  %133 = load i32, i32* %132, align 4
  %134 = and i32 %133, 32
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %124
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pCoexSta, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 3
  store i32 1, i32* %138, align 4
  br label %142

139:                                              ; preds = %124
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pCoexSta, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 3
  store i32 0, i32* %141, align 4
  br label %142

142:                                              ; preds = %139, %136
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pCoexSta, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 1
  %145 = load i32**, i32*** %144, align 8
  %146 = load i32, i32* %9, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32*, i32** %145, i64 %147
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 3
  %151 = load i32, i32* %150, align 4
  %152 = mul nsw i32 %151, 2
  %153 = sub nsw i32 %152, 90
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pCoexSta, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 4
  store i32 %153, i32* %155, align 8
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pCoexSta, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 1
  %158 = load i32**, i32*** %157, align 8
  %159 = load i32, i32* %9, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32*, i32** %158, i64 %160
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 4
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pCoexSta, align 8
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 5
  store i32 %164, i32* %166, align 4
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pCoexSta, align 8
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 1
  %169 = load i32**, i32*** %168, align 8
  %170 = load i32, i32* %9, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32*, i32** %169, i64 %171
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 2
  %175 = load i32, i32* %174, align 4
  %176 = and i32 %175, 64
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pCoexSta, align 8
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 6
  store i32 %176, i32* %178, align 8
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 0
  %181 = load i32 (%struct.TYPE_13__*, i32, i32*)*, i32 (%struct.TYPE_13__*, i32, i32*)** %180, align 8
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %183 = load i32, i32* @BTC_SET_BL_BT_TX_RX_MASK, align 4
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pCoexSta, align 8
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 6
  %186 = call i32 %181(%struct.TYPE_13__* %182, i32 %183, i32* %185)
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pCoexSta, align 8
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 6
  %189 = load i32, i32* %188, align 8
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %201, label %191

191:                                              ; preds = %142
  %192 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %193 = load i32, i32* @ALGO_TRACE, align 4
  %194 = call i32 @BTC_PRINT(i32 %192, i32 %193, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0))
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 4
  %197 = load i32 (%struct.TYPE_13__*, i32, i32, i32)*, i32 (%struct.TYPE_13__*, i32, i32, i32)** %196, align 8
  %198 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %199 = load i32, i32* @BTC_BT_REG_RF, align 4
  %200 = call i32 %197(%struct.TYPE_13__* %198, i32 %199, i32 60, i32 21)
  br label %201

201:                                              ; preds = %191, %142
  %202 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pCoexSta, align 8
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 5
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* @BIT1, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %229

208:                                              ; preds = %201
  %209 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %210 = load i32, i32* @ALGO_TRACE, align 4
  %211 = call i32 @BTC_PRINT(i32 %209, i32 %210, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0))
  %212 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 3
  %214 = load i32 (%struct.TYPE_13__*, i32, i32*)*, i32 (%struct.TYPE_13__*, i32, i32*)** %213, align 8
  %215 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %216 = load i32, i32* @BTC_GET_BL_WIFI_CONNECTED, align 4
  %217 = call i32 %214(%struct.TYPE_13__* %215, i32 %216, i32* %10)
  %218 = load i32, i32* %10, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %224

220:                                              ; preds = %208
  %221 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %222 = load i32, i32* @BTC_MEDIA_CONNECT, align 4
  %223 = call i32 @EXhalbtc8723b1ant_MediaStatusNotify(%struct.TYPE_13__* %221, i32 %222)
  br label %228

224:                                              ; preds = %208
  %225 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %226 = load i32, i32* @BTC_MEDIA_DISCONNECT, align 4
  %227 = call i32 @EXhalbtc8723b1ant_MediaStatusNotify(%struct.TYPE_13__* %225, i32 %226)
  br label %228

228:                                              ; preds = %224, %220
  br label %229

229:                                              ; preds = %228, %201
  %230 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pCoexSta, align 8
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %230, i32 0, i32 5
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* @BIT3, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %254

236:                                              ; preds = %229
  %237 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %253, label %241

241:                                              ; preds = %236
  %242 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 8
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %253, label %246

246:                                              ; preds = %241
  %247 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %248 = load i32, i32* @ALGO_TRACE, align 4
  %249 = call i32 @BTC_PRINT(i32 %247, i32 %248, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.5, i64 0, i64 0))
  %250 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %251 = load i32, i32* @FORCE_EXEC, align 4
  %252 = call i32 @halbtc8723b1ant_IgnoreWlanAct(%struct.TYPE_13__* %250, i32 %251, i32 0)
  br label %253

253:                                              ; preds = %246, %241, %236
  br label %255

254:                                              ; preds = %229
  br label %255

255:                                              ; preds = %254, %253
  br label %256

256:                                              ; preds = %255, %98
  %257 = load i32, i32* %7, align 4
  %258 = load i32, i32* @BT_INFO_8723B_1ANT_B_INQ_PAGE, align 4
  %259 = and i32 %257, %258
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %264

261:                                              ; preds = %256
  %262 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pCoexSta, align 8
  %263 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %262, i32 0, i32 7
  store i32 1, i32* %263, align 4
  br label %267

264:                                              ; preds = %256
  %265 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pCoexSta, align 8
  %266 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %265, i32 0, i32 7
  store i32 0, i32* %266, align 4
  br label %267

267:                                              ; preds = %264, %261
  %268 = load i32, i32* %7, align 4
  %269 = load i32, i32* @BT_INFO_8723B_1ANT_B_CONNECTION, align 4
  %270 = and i32 %268, %269
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %283, label %272

272:                                              ; preds = %267
  %273 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pCoexSta, align 8
  %274 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %273, i32 0, i32 8
  store i32 0, i32* %274, align 8
  %275 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pCoexSta, align 8
  %276 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %275, i32 0, i32 9
  store i32 0, i32* %276, align 4
  %277 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pCoexSta, align 8
  %278 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %277, i32 0, i32 10
  store i32 0, i32* %278, align 8
  %279 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pCoexSta, align 8
  %280 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %279, i32 0, i32 11
  store i32 0, i32* %280, align 4
  %281 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pCoexSta, align 8
  %282 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %281, i32 0, i32 12
  store i32 0, i32* %282, align 8
  br label %330

283:                                              ; preds = %267
  %284 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pCoexSta, align 8
  %285 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %284, i32 0, i32 8
  store i32 1, i32* %285, align 8
  %286 = load i32, i32* %7, align 4
  %287 = load i32, i32* @BT_INFO_8723B_1ANT_B_FTP, align 4
  %288 = and i32 %286, %287
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %293

290:                                              ; preds = %283
  %291 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pCoexSta, align 8
  %292 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %291, i32 0, i32 9
  store i32 1, i32* %292, align 4
  br label %296

293:                                              ; preds = %283
  %294 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pCoexSta, align 8
  %295 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %294, i32 0, i32 9
  store i32 0, i32* %295, align 4
  br label %296

296:                                              ; preds = %293, %290
  %297 = load i32, i32* %7, align 4
  %298 = load i32, i32* @BT_INFO_8723B_1ANT_B_A2DP, align 4
  %299 = and i32 %297, %298
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %304

301:                                              ; preds = %296
  %302 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pCoexSta, align 8
  %303 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %302, i32 0, i32 10
  store i32 1, i32* %303, align 8
  br label %307

304:                                              ; preds = %296
  %305 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pCoexSta, align 8
  %306 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %305, i32 0, i32 10
  store i32 0, i32* %306, align 8
  br label %307

307:                                              ; preds = %304, %301
  %308 = load i32, i32* %7, align 4
  %309 = load i32, i32* @BT_INFO_8723B_1ANT_B_HID, align 4
  %310 = and i32 %308, %309
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %315

312:                                              ; preds = %307
  %313 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pCoexSta, align 8
  %314 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %313, i32 0, i32 11
  store i32 1, i32* %314, align 4
  br label %318

315:                                              ; preds = %307
  %316 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pCoexSta, align 8
  %317 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %316, i32 0, i32 11
  store i32 0, i32* %317, align 4
  br label %318

318:                                              ; preds = %315, %312
  %319 = load i32, i32* %7, align 4
  %320 = load i32, i32* @BT_INFO_8723B_1ANT_B_SCO_ESCO, align 4
  %321 = and i32 %319, %320
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %326

323:                                              ; preds = %318
  %324 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pCoexSta, align 8
  %325 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %324, i32 0, i32 12
  store i32 1, i32* %325, align 8
  br label %329

326:                                              ; preds = %318
  %327 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pCoexSta, align 8
  %328 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %327, i32 0, i32 12
  store i32 0, i32* %328, align 8
  br label %329

329:                                              ; preds = %326, %323
  br label %330

330:                                              ; preds = %329, %272
  %331 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %332 = call i32 @halbtc8723b1ant_UpdateBtLinkInfo(%struct.TYPE_13__* %331)
  %333 = load i32, i32* %7, align 4
  %334 = and i32 %333, 31
  store i32 %334, i32* %7, align 4
  %335 = load i32, i32* %7, align 4
  %336 = load i32, i32* @BT_INFO_8723B_1ANT_B_CONNECTION, align 4
  %337 = and i32 %335, %336
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %346, label %339

339:                                              ; preds = %330
  %340 = load i64, i64* @BT_8723B_1ANT_BT_STATUS_NON_CONNECTED_IDLE, align 8
  %341 = load %struct.TYPE_15__*, %struct.TYPE_15__** @pCoexDm, align 8
  %342 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %341, i32 0, i32 0
  store i64 %340, i64* %342, align 8
  %343 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %344 = load i32, i32* @ALGO_TRACE, align 4
  %345 = call i32 @BTC_PRINT(i32 %343, i32 %344, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0))
  br label %405

346:                                              ; preds = %330
  %347 = load i32, i32* %7, align 4
  %348 = load i32, i32* @BT_INFO_8723B_1ANT_B_CONNECTION, align 4
  %349 = icmp eq i32 %347, %348
  br i1 %349, label %350, label %357

350:                                              ; preds = %346
  %351 = load i64, i64* @BT_8723B_1ANT_BT_STATUS_CONNECTED_IDLE, align 8
  %352 = load %struct.TYPE_15__*, %struct.TYPE_15__** @pCoexDm, align 8
  %353 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %352, i32 0, i32 0
  store i64 %351, i64* %353, align 8
  %354 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %355 = load i32, i32* @ALGO_TRACE, align 4
  %356 = call i32 @BTC_PRINT(i32 %354, i32 %355, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0))
  br label %404

357:                                              ; preds = %346
  %358 = load i32, i32* %7, align 4
  %359 = load i32, i32* @BT_INFO_8723B_1ANT_B_SCO_ESCO, align 4
  %360 = and i32 %358, %359
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %367, label %362

362:                                              ; preds = %357
  %363 = load i32, i32* %7, align 4
  %364 = load i32, i32* @BT_INFO_8723B_1ANT_B_SCO_BUSY, align 4
  %365 = and i32 %363, %364
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %374

367:                                              ; preds = %362, %357
  %368 = load i64, i64* @BT_8723B_1ANT_BT_STATUS_SCO_BUSY, align 8
  %369 = load %struct.TYPE_15__*, %struct.TYPE_15__** @pCoexDm, align 8
  %370 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %369, i32 0, i32 0
  store i64 %368, i64* %370, align 8
  %371 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %372 = load i32, i32* @ALGO_TRACE, align 4
  %373 = call i32 @BTC_PRINT(i32 %371, i32 %372, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0))
  br label %403

374:                                              ; preds = %362
  %375 = load i32, i32* %7, align 4
  %376 = load i32, i32* @BT_INFO_8723B_1ANT_B_ACL_BUSY, align 4
  %377 = and i32 %375, %376
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %395

379:                                              ; preds = %374
  %380 = load i64, i64* @BT_8723B_1ANT_BT_STATUS_ACL_BUSY, align 8
  %381 = load %struct.TYPE_15__*, %struct.TYPE_15__** @pCoexDm, align 8
  %382 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %381, i32 0, i32 0
  %383 = load i64, i64* %382, align 8
  %384 = icmp ne i64 %380, %383
  br i1 %384, label %385, label %388

385:                                              ; preds = %379
  %386 = load %struct.TYPE_15__*, %struct.TYPE_15__** @pCoexDm, align 8
  %387 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %386, i32 0, i32 1
  store i32 0, i32* %387, align 8
  br label %388

388:                                              ; preds = %385, %379
  %389 = load i64, i64* @BT_8723B_1ANT_BT_STATUS_ACL_BUSY, align 8
  %390 = load %struct.TYPE_15__*, %struct.TYPE_15__** @pCoexDm, align 8
  %391 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %390, i32 0, i32 0
  store i64 %389, i64* %391, align 8
  %392 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %393 = load i32, i32* @ALGO_TRACE, align 4
  %394 = call i32 @BTC_PRINT(i32 %392, i32 %393, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0))
  br label %402

395:                                              ; preds = %374
  %396 = load i64, i64* @BT_8723B_1ANT_BT_STATUS_MAX, align 8
  %397 = load %struct.TYPE_15__*, %struct.TYPE_15__** @pCoexDm, align 8
  %398 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %397, i32 0, i32 0
  store i64 %396, i64* %398, align 8
  %399 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %400 = load i32, i32* @ALGO_TRACE, align 4
  %401 = call i32 @BTC_PRINT(i32 %399, i32 %400, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.10, i64 0, i64 0))
  br label %402

402:                                              ; preds = %395, %388
  br label %403

403:                                              ; preds = %402, %367
  br label %404

404:                                              ; preds = %403, %350
  br label %405

405:                                              ; preds = %404, %339
  %406 = load i64, i64* @BT_8723B_1ANT_BT_STATUS_ACL_BUSY, align 8
  %407 = load %struct.TYPE_15__*, %struct.TYPE_15__** @pCoexDm, align 8
  %408 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %407, i32 0, i32 0
  %409 = load i64, i64* %408, align 8
  %410 = icmp eq i64 %406, %409
  br i1 %410, label %423, label %411

411:                                              ; preds = %405
  %412 = load i64, i64* @BT_8723B_1ANT_BT_STATUS_SCO_BUSY, align 8
  %413 = load %struct.TYPE_15__*, %struct.TYPE_15__** @pCoexDm, align 8
  %414 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %413, i32 0, i32 0
  %415 = load i64, i64* %414, align 8
  %416 = icmp eq i64 %412, %415
  br i1 %416, label %423, label %417

417:                                              ; preds = %411
  %418 = load i64, i64* @BT_8723B_1ANT_BT_STATUS_ACL_SCO_BUSY, align 8
  %419 = load %struct.TYPE_15__*, %struct.TYPE_15__** @pCoexDm, align 8
  %420 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %419, i32 0, i32 0
  %421 = load i64, i64* %420, align 8
  %422 = icmp eq i64 %418, %421
  br i1 %422, label %423, label %424

423:                                              ; preds = %417, %411, %405
  store i32 1, i32* %11, align 4
  br label %425

424:                                              ; preds = %417
  store i32 0, i32* %11, align 4
  br label %425

425:                                              ; preds = %424, %423
  %426 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %427 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %426, i32 0, i32 0
  %428 = load i32 (%struct.TYPE_13__*, i32, i32*)*, i32 (%struct.TYPE_13__*, i32, i32*)** %427, align 8
  %429 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %430 = load i32, i32* @BTC_SET_BL_BT_TRAFFIC_BUSY, align 4
  %431 = call i32 %428(%struct.TYPE_13__* %429, i32 %430, i32* %11)
  %432 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %433 = call i32 @halbtc8723b1ant_RunCoexistMechanism(%struct.TYPE_13__* %432)
  ret void
}

declare dso_local i32 @BTC_PRINT(i32, i32, i8*) #1

declare dso_local i32 @EXhalbtc8723b1ant_MediaStatusNotify(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @halbtc8723b1ant_IgnoreWlanAct(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @halbtc8723b1ant_UpdateBtLinkInfo(%struct.TYPE_13__*) #1

declare dso_local i32 @halbtc8723b1ant_RunCoexistMechanism(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
