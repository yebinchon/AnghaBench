; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_btcoex.c_hal_btcoex_GetDBG.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_btcoex.c_hal_btcoex_GetDBG.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"#define DBG\09%d\0A\00", align 1
@DBG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"BTCOEX Debug Setting:\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"INTERFACE / ALGORITHM: 0x%08X / 0x%08X\0A\0A\00", align 1
@GLBtcDbgType = common dso_local global i32* null, align 8
@BTC_MSG_INTERFACE = common dso_local global i64 0, align 8
@BTC_MSG_ALGORITHM = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [37 x i8] c"INTERFACE Debug Setting Definition:\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"\09bit[0]=%d for INTF_INIT\0A\00", align 1
@INTF_INIT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"\09bit[2]=%d for INTF_NOTIFY\0A\0A\00", align 1
@INTF_NOTIFY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"ALGORITHM Debug Setting Definition:\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"\09bit[0]=%d for BT_RSSI_STATE\0A\00", align 1
@ALGO_BT_RSSI_STATE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [32 x i8] c"\09bit[1]=%d for WIFI_RSSI_STATE\0A\00", align 1
@ALGO_WIFI_RSSI_STATE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [27 x i8] c"\09bit[2]=%d for BT_MONITOR\0A\00", align 1
@ALGO_BT_MONITOR = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [22 x i8] c"\09bit[3]=%d for TRACE\0A\00", align 1
@ALGO_TRACE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [25 x i8] c"\09bit[4]=%d for TRACE_FW\0A\00", align 1
@ALGO_TRACE_FW = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [32 x i8] c"\09bit[5]=%d for TRACE_FW_DETAIL\0A\00", align 1
@ALGO_TRACE_FW_DETAIL = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [30 x i8] c"\09bit[6]=%d for TRACE_FW_EXEC\0A\00", align 1
@ALGO_TRACE_FW_EXEC = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [25 x i8] c"\09bit[7]=%d for TRACE_SW\0A\00", align 1
@ALGO_TRACE_SW = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [32 x i8] c"\09bit[8]=%d for TRACE_SW_DETAIL\0A\00", align 1
@ALGO_TRACE_SW_DETAIL = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [30 x i8] c"\09bit[9]=%d for TRACE_SW_EXEC\0A\00", align 1
@ALGO_TRACE_SW_EXEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hal_btcoex_GetDBG(%struct.adapter* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i64, i64* %7, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %3
  store i64 0, i64* %4, align 8
  br label %434

17:                                               ; preds = %13
  %18 = load i32*, i32** %6, align 8
  store i32* %18, i32** %9, align 8
  %19 = load i64, i64* %7, align 8
  store i64 %19, i64* %10, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = load i64, i64* %10, align 8
  %22 = load i32, i32* @DBG, align 4
  %23 = call i64 (i32*, i64, i8*, ...) @rtw_sprintf(i32* %20, i64 %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %22)
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %17
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* %10, align 8
  %29 = icmp sge i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %17
  br label %426

31:                                               ; preds = %26
  %32 = load i64, i64* %8, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 %32
  store i32* %34, i32** %9, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* %10, align 8
  %37 = sub nsw i64 %36, %35
  store i64 %37, i64* %10, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = load i64, i64* %10, align 8
  %40 = call i64 (i32*, i64, i8*, ...) @rtw_sprintf(i32* %38, i64 %39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i64 %40, i64* %8, align 8
  %41 = load i64, i64* %8, align 8
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %31
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* %10, align 8
  %46 = icmp sge i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43, %31
  br label %426

48:                                               ; preds = %43
  %49 = load i64, i64* %8, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 %49
  store i32* %51, i32** %9, align 8
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* %10, align 8
  %54 = sub nsw i64 %53, %52
  store i64 %54, i64* %10, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = load i64, i64* %10, align 8
  %57 = load i32*, i32** @GLBtcDbgType, align 8
  %58 = load i64, i64* @BTC_MSG_INTERFACE, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** @GLBtcDbgType, align 8
  %62 = load i64, i64* @BTC_MSG_ALGORITHM, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i64 (i32*, i64, i8*, ...) @rtw_sprintf(i32* %55, i64 %56, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %60, i32 %64)
  store i64 %65, i64* %8, align 8
  %66 = load i64, i64* %8, align 8
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %48
  %69 = load i64, i64* %8, align 8
  %70 = load i64, i64* %10, align 8
  %71 = icmp sge i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %68, %48
  br label %426

73:                                               ; preds = %68
  %74 = load i64, i64* %8, align 8
  %75 = load i32*, i32** %9, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 %74
  store i32* %76, i32** %9, align 8
  %77 = load i64, i64* %8, align 8
  %78 = load i64, i64* %10, align 8
  %79 = sub nsw i64 %78, %77
  store i64 %79, i64* %10, align 8
  %80 = load i32*, i32** %9, align 8
  %81 = load i64, i64* %10, align 8
  %82 = call i64 (i32*, i64, i8*, ...) @rtw_sprintf(i32* %80, i64 %81, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  store i64 %82, i64* %8, align 8
  %83 = load i64, i64* %8, align 8
  %84 = icmp slt i64 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %73
  %86 = load i64, i64* %8, align 8
  %87 = load i64, i64* %10, align 8
  %88 = icmp sge i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %85, %73
  br label %426

90:                                               ; preds = %85
  %91 = load i64, i64* %8, align 8
  %92 = load i32*, i32** %9, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 %91
  store i32* %93, i32** %9, align 8
  %94 = load i64, i64* %8, align 8
  %95 = load i64, i64* %10, align 8
  %96 = sub nsw i64 %95, %94
  store i64 %96, i64* %10, align 8
  %97 = load i32*, i32** %9, align 8
  %98 = load i64, i64* %10, align 8
  %99 = load i32*, i32** @GLBtcDbgType, align 8
  %100 = load i64, i64* @BTC_MSG_INTERFACE, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @INTF_INIT, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i32 1, i32 0
  %108 = call i64 (i32*, i64, i8*, ...) @rtw_sprintf(i32* %97, i64 %98, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %107)
  store i64 %108, i64* %8, align 8
  %109 = load i64, i64* %8, align 8
  %110 = icmp slt i64 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %90
  %112 = load i64, i64* %8, align 8
  %113 = load i64, i64* %10, align 8
  %114 = icmp sge i64 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %111, %90
  br label %426

116:                                              ; preds = %111
  %117 = load i64, i64* %8, align 8
  %118 = load i32*, i32** %9, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 %117
  store i32* %119, i32** %9, align 8
  %120 = load i64, i64* %8, align 8
  %121 = load i64, i64* %10, align 8
  %122 = sub nsw i64 %121, %120
  store i64 %122, i64* %10, align 8
  %123 = load i32*, i32** %9, align 8
  %124 = load i64, i64* %10, align 8
  %125 = load i32*, i32** @GLBtcDbgType, align 8
  %126 = load i64, i64* @BTC_MSG_INTERFACE, align 8
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @INTF_NOTIFY, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  %132 = zext i1 %131 to i64
  %133 = select i1 %131, i32 1, i32 0
  %134 = call i64 (i32*, i64, i8*, ...) @rtw_sprintf(i32* %123, i64 %124, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %133)
  store i64 %134, i64* %8, align 8
  %135 = load i64, i64* %8, align 8
  %136 = icmp slt i64 %135, 0
  br i1 %136, label %141, label %137

137:                                              ; preds = %116
  %138 = load i64, i64* %8, align 8
  %139 = load i64, i64* %10, align 8
  %140 = icmp sge i64 %138, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %137, %116
  br label %426

142:                                              ; preds = %137
  %143 = load i64, i64* %8, align 8
  %144 = load i32*, i32** %9, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 %143
  store i32* %145, i32** %9, align 8
  %146 = load i64, i64* %8, align 8
  %147 = load i64, i64* %10, align 8
  %148 = sub nsw i64 %147, %146
  store i64 %148, i64* %10, align 8
  %149 = load i32*, i32** %9, align 8
  %150 = load i64, i64* %10, align 8
  %151 = call i64 (i32*, i64, i8*, ...) @rtw_sprintf(i32* %149, i64 %150, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  store i64 %151, i64* %8, align 8
  %152 = load i64, i64* %8, align 8
  %153 = icmp slt i64 %152, 0
  br i1 %153, label %158, label %154

154:                                              ; preds = %142
  %155 = load i64, i64* %8, align 8
  %156 = load i64, i64* %10, align 8
  %157 = icmp sge i64 %155, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %154, %142
  br label %426

159:                                              ; preds = %154
  %160 = load i64, i64* %8, align 8
  %161 = load i32*, i32** %9, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 %160
  store i32* %162, i32** %9, align 8
  %163 = load i64, i64* %8, align 8
  %164 = load i64, i64* %10, align 8
  %165 = sub nsw i64 %164, %163
  store i64 %165, i64* %10, align 8
  %166 = load i32*, i32** %9, align 8
  %167 = load i64, i64* %10, align 8
  %168 = load i32*, i32** @GLBtcDbgType, align 8
  %169 = load i64, i64* @BTC_MSG_ALGORITHM, align 8
  %170 = getelementptr inbounds i32, i32* %168, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @ALGO_BT_RSSI_STATE, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  %175 = zext i1 %174 to i64
  %176 = select i1 %174, i32 1, i32 0
  %177 = call i64 (i32*, i64, i8*, ...) @rtw_sprintf(i32* %166, i64 %167, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %176)
  store i64 %177, i64* %8, align 8
  %178 = load i64, i64* %8, align 8
  %179 = icmp slt i64 %178, 0
  br i1 %179, label %184, label %180

180:                                              ; preds = %159
  %181 = load i64, i64* %8, align 8
  %182 = load i64, i64* %10, align 8
  %183 = icmp sge i64 %181, %182
  br i1 %183, label %184, label %185

184:                                              ; preds = %180, %159
  br label %426

185:                                              ; preds = %180
  %186 = load i64, i64* %8, align 8
  %187 = load i32*, i32** %9, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 %186
  store i32* %188, i32** %9, align 8
  %189 = load i64, i64* %8, align 8
  %190 = load i64, i64* %10, align 8
  %191 = sub nsw i64 %190, %189
  store i64 %191, i64* %10, align 8
  %192 = load i32*, i32** %9, align 8
  %193 = load i64, i64* %10, align 8
  %194 = load i32*, i32** @GLBtcDbgType, align 8
  %195 = load i64, i64* @BTC_MSG_ALGORITHM, align 8
  %196 = getelementptr inbounds i32, i32* %194, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @ALGO_WIFI_RSSI_STATE, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  %201 = zext i1 %200 to i64
  %202 = select i1 %200, i32 1, i32 0
  %203 = call i64 (i32*, i64, i8*, ...) @rtw_sprintf(i32* %192, i64 %193, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %202)
  store i64 %203, i64* %8, align 8
  %204 = load i64, i64* %8, align 8
  %205 = icmp slt i64 %204, 0
  br i1 %205, label %210, label %206

206:                                              ; preds = %185
  %207 = load i64, i64* %8, align 8
  %208 = load i64, i64* %10, align 8
  %209 = icmp sge i64 %207, %208
  br i1 %209, label %210, label %211

210:                                              ; preds = %206, %185
  br label %426

211:                                              ; preds = %206
  %212 = load i64, i64* %8, align 8
  %213 = load i32*, i32** %9, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 %212
  store i32* %214, i32** %9, align 8
  %215 = load i64, i64* %8, align 8
  %216 = load i64, i64* %10, align 8
  %217 = sub nsw i64 %216, %215
  store i64 %217, i64* %10, align 8
  %218 = load i32*, i32** %9, align 8
  %219 = load i64, i64* %10, align 8
  %220 = load i32*, i32** @GLBtcDbgType, align 8
  %221 = load i64, i64* @BTC_MSG_ALGORITHM, align 8
  %222 = getelementptr inbounds i32, i32* %220, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* @ALGO_BT_MONITOR, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  %227 = zext i1 %226 to i64
  %228 = select i1 %226, i32 1, i32 0
  %229 = call i64 (i32*, i64, i8*, ...) @rtw_sprintf(i32* %218, i64 %219, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i32 %228)
  store i64 %229, i64* %8, align 8
  %230 = load i64, i64* %8, align 8
  %231 = icmp slt i64 %230, 0
  br i1 %231, label %236, label %232

232:                                              ; preds = %211
  %233 = load i64, i64* %8, align 8
  %234 = load i64, i64* %10, align 8
  %235 = icmp sge i64 %233, %234
  br i1 %235, label %236, label %237

236:                                              ; preds = %232, %211
  br label %426

237:                                              ; preds = %232
  %238 = load i64, i64* %8, align 8
  %239 = load i32*, i32** %9, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 %238
  store i32* %240, i32** %9, align 8
  %241 = load i64, i64* %8, align 8
  %242 = load i64, i64* %10, align 8
  %243 = sub nsw i64 %242, %241
  store i64 %243, i64* %10, align 8
  %244 = load i32*, i32** %9, align 8
  %245 = load i64, i64* %10, align 8
  %246 = load i32*, i32** @GLBtcDbgType, align 8
  %247 = load i64, i64* @BTC_MSG_ALGORITHM, align 8
  %248 = getelementptr inbounds i32, i32* %246, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* @ALGO_TRACE, align 4
  %251 = and i32 %249, %250
  %252 = icmp ne i32 %251, 0
  %253 = zext i1 %252 to i64
  %254 = select i1 %252, i32 1, i32 0
  %255 = call i64 (i32*, i64, i8*, ...) @rtw_sprintf(i32* %244, i64 %245, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i32 %254)
  store i64 %255, i64* %8, align 8
  %256 = load i64, i64* %8, align 8
  %257 = icmp slt i64 %256, 0
  br i1 %257, label %262, label %258

258:                                              ; preds = %237
  %259 = load i64, i64* %8, align 8
  %260 = load i64, i64* %10, align 8
  %261 = icmp sge i64 %259, %260
  br i1 %261, label %262, label %263

262:                                              ; preds = %258, %237
  br label %426

263:                                              ; preds = %258
  %264 = load i64, i64* %8, align 8
  %265 = load i32*, i32** %9, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 %264
  store i32* %266, i32** %9, align 8
  %267 = load i64, i64* %8, align 8
  %268 = load i64, i64* %10, align 8
  %269 = sub nsw i64 %268, %267
  store i64 %269, i64* %10, align 8
  %270 = load i32*, i32** %9, align 8
  %271 = load i64, i64* %10, align 8
  %272 = load i32*, i32** @GLBtcDbgType, align 8
  %273 = load i64, i64* @BTC_MSG_ALGORITHM, align 8
  %274 = getelementptr inbounds i32, i32* %272, i64 %273
  %275 = load i32, i32* %274, align 4
  %276 = load i32, i32* @ALGO_TRACE_FW, align 4
  %277 = and i32 %275, %276
  %278 = icmp ne i32 %277, 0
  %279 = zext i1 %278 to i64
  %280 = select i1 %278, i32 1, i32 0
  %281 = call i64 (i32*, i64, i8*, ...) @rtw_sprintf(i32* %270, i64 %271, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i32 %280)
  store i64 %281, i64* %8, align 8
  %282 = load i64, i64* %8, align 8
  %283 = icmp slt i64 %282, 0
  br i1 %283, label %288, label %284

284:                                              ; preds = %263
  %285 = load i64, i64* %8, align 8
  %286 = load i64, i64* %10, align 8
  %287 = icmp sge i64 %285, %286
  br i1 %287, label %288, label %289

288:                                              ; preds = %284, %263
  br label %426

289:                                              ; preds = %284
  %290 = load i64, i64* %8, align 8
  %291 = load i32*, i32** %9, align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 %290
  store i32* %292, i32** %9, align 8
  %293 = load i64, i64* %8, align 8
  %294 = load i64, i64* %10, align 8
  %295 = sub nsw i64 %294, %293
  store i64 %295, i64* %10, align 8
  %296 = load i32*, i32** %9, align 8
  %297 = load i64, i64* %10, align 8
  %298 = load i32*, i32** @GLBtcDbgType, align 8
  %299 = load i64, i64* @BTC_MSG_ALGORITHM, align 8
  %300 = getelementptr inbounds i32, i32* %298, i64 %299
  %301 = load i32, i32* %300, align 4
  %302 = load i32, i32* @ALGO_TRACE_FW_DETAIL, align 4
  %303 = and i32 %301, %302
  %304 = icmp ne i32 %303, 0
  %305 = zext i1 %304 to i64
  %306 = select i1 %304, i32 1, i32 0
  %307 = call i64 (i32*, i64, i8*, ...) @rtw_sprintf(i32* %296, i64 %297, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), i32 %306)
  store i64 %307, i64* %8, align 8
  %308 = load i64, i64* %8, align 8
  %309 = icmp slt i64 %308, 0
  br i1 %309, label %314, label %310

310:                                              ; preds = %289
  %311 = load i64, i64* %8, align 8
  %312 = load i64, i64* %10, align 8
  %313 = icmp sge i64 %311, %312
  br i1 %313, label %314, label %315

314:                                              ; preds = %310, %289
  br label %426

315:                                              ; preds = %310
  %316 = load i64, i64* %8, align 8
  %317 = load i32*, i32** %9, align 8
  %318 = getelementptr inbounds i32, i32* %317, i64 %316
  store i32* %318, i32** %9, align 8
  %319 = load i64, i64* %8, align 8
  %320 = load i64, i64* %10, align 8
  %321 = sub nsw i64 %320, %319
  store i64 %321, i64* %10, align 8
  %322 = load i32*, i32** %9, align 8
  %323 = load i64, i64* %10, align 8
  %324 = load i32*, i32** @GLBtcDbgType, align 8
  %325 = load i64, i64* @BTC_MSG_ALGORITHM, align 8
  %326 = getelementptr inbounds i32, i32* %324, i64 %325
  %327 = load i32, i32* %326, align 4
  %328 = load i32, i32* @ALGO_TRACE_FW_EXEC, align 4
  %329 = and i32 %327, %328
  %330 = icmp ne i32 %329, 0
  %331 = zext i1 %330 to i64
  %332 = select i1 %330, i32 1, i32 0
  %333 = call i64 (i32*, i64, i8*, ...) @rtw_sprintf(i32* %322, i64 %323, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0), i32 %332)
  store i64 %333, i64* %8, align 8
  %334 = load i64, i64* %8, align 8
  %335 = icmp slt i64 %334, 0
  br i1 %335, label %340, label %336

336:                                              ; preds = %315
  %337 = load i64, i64* %8, align 8
  %338 = load i64, i64* %10, align 8
  %339 = icmp sge i64 %337, %338
  br i1 %339, label %340, label %341

340:                                              ; preds = %336, %315
  br label %426

341:                                              ; preds = %336
  %342 = load i64, i64* %8, align 8
  %343 = load i32*, i32** %9, align 8
  %344 = getelementptr inbounds i32, i32* %343, i64 %342
  store i32* %344, i32** %9, align 8
  %345 = load i64, i64* %8, align 8
  %346 = load i64, i64* %10, align 8
  %347 = sub nsw i64 %346, %345
  store i64 %347, i64* %10, align 8
  %348 = load i32*, i32** %9, align 8
  %349 = load i64, i64* %10, align 8
  %350 = load i32*, i32** @GLBtcDbgType, align 8
  %351 = load i64, i64* @BTC_MSG_ALGORITHM, align 8
  %352 = getelementptr inbounds i32, i32* %350, i64 %351
  %353 = load i32, i32* %352, align 4
  %354 = load i32, i32* @ALGO_TRACE_SW, align 4
  %355 = and i32 %353, %354
  %356 = icmp ne i32 %355, 0
  %357 = zext i1 %356 to i64
  %358 = select i1 %356, i32 1, i32 0
  %359 = call i64 (i32*, i64, i8*, ...) @rtw_sprintf(i32* %348, i64 %349, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 %358)
  store i64 %359, i64* %8, align 8
  %360 = load i64, i64* %8, align 8
  %361 = icmp slt i64 %360, 0
  br i1 %361, label %366, label %362

362:                                              ; preds = %341
  %363 = load i64, i64* %8, align 8
  %364 = load i64, i64* %10, align 8
  %365 = icmp sge i64 %363, %364
  br i1 %365, label %366, label %367

366:                                              ; preds = %362, %341
  br label %426

367:                                              ; preds = %362
  %368 = load i64, i64* %8, align 8
  %369 = load i32*, i32** %9, align 8
  %370 = getelementptr inbounds i32, i32* %369, i64 %368
  store i32* %370, i32** %9, align 8
  %371 = load i64, i64* %8, align 8
  %372 = load i64, i64* %10, align 8
  %373 = sub nsw i64 %372, %371
  store i64 %373, i64* %10, align 8
  %374 = load i32*, i32** %9, align 8
  %375 = load i64, i64* %10, align 8
  %376 = load i32*, i32** @GLBtcDbgType, align 8
  %377 = load i64, i64* @BTC_MSG_ALGORITHM, align 8
  %378 = getelementptr inbounds i32, i32* %376, i64 %377
  %379 = load i32, i32* %378, align 4
  %380 = load i32, i32* @ALGO_TRACE_SW_DETAIL, align 4
  %381 = and i32 %379, %380
  %382 = icmp ne i32 %381, 0
  %383 = zext i1 %382 to i64
  %384 = select i1 %382, i32 1, i32 0
  %385 = call i64 (i32*, i64, i8*, ...) @rtw_sprintf(i32* %374, i64 %375, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0), i32 %384)
  store i64 %385, i64* %8, align 8
  %386 = load i64, i64* %8, align 8
  %387 = icmp slt i64 %386, 0
  br i1 %387, label %392, label %388

388:                                              ; preds = %367
  %389 = load i64, i64* %8, align 8
  %390 = load i64, i64* %10, align 8
  %391 = icmp sge i64 %389, %390
  br i1 %391, label %392, label %393

392:                                              ; preds = %388, %367
  br label %426

393:                                              ; preds = %388
  %394 = load i64, i64* %8, align 8
  %395 = load i32*, i32** %9, align 8
  %396 = getelementptr inbounds i32, i32* %395, i64 %394
  store i32* %396, i32** %9, align 8
  %397 = load i64, i64* %8, align 8
  %398 = load i64, i64* %10, align 8
  %399 = sub nsw i64 %398, %397
  store i64 %399, i64* %10, align 8
  %400 = load i32*, i32** %9, align 8
  %401 = load i64, i64* %10, align 8
  %402 = load i32*, i32** @GLBtcDbgType, align 8
  %403 = load i64, i64* @BTC_MSG_ALGORITHM, align 8
  %404 = getelementptr inbounds i32, i32* %402, i64 %403
  %405 = load i32, i32* %404, align 4
  %406 = load i32, i32* @ALGO_TRACE_SW_EXEC, align 4
  %407 = and i32 %405, %406
  %408 = icmp ne i32 %407, 0
  %409 = zext i1 %408 to i64
  %410 = select i1 %408, i32 1, i32 0
  %411 = call i64 (i32*, i64, i8*, ...) @rtw_sprintf(i32* %400, i64 %401, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i64 0, i64 0), i32 %410)
  store i64 %411, i64* %8, align 8
  %412 = load i64, i64* %8, align 8
  %413 = icmp slt i64 %412, 0
  br i1 %413, label %418, label %414

414:                                              ; preds = %393
  %415 = load i64, i64* %8, align 8
  %416 = load i64, i64* %10, align 8
  %417 = icmp sge i64 %415, %416
  br i1 %417, label %418, label %419

418:                                              ; preds = %414, %393
  br label %426

419:                                              ; preds = %414
  %420 = load i64, i64* %8, align 8
  %421 = load i32*, i32** %9, align 8
  %422 = getelementptr inbounds i32, i32* %421, i64 %420
  store i32* %422, i32** %9, align 8
  %423 = load i64, i64* %8, align 8
  %424 = load i64, i64* %10, align 8
  %425 = sub nsw i64 %424, %423
  store i64 %425, i64* %10, align 8
  br label %426

426:                                              ; preds = %419, %418, %392, %366, %340, %314, %288, %262, %236, %210, %184, %158, %141, %115, %89, %72, %47, %30
  %427 = load i32*, i32** %9, align 8
  %428 = load i32*, i32** %6, align 8
  %429 = ptrtoint i32* %427 to i64
  %430 = ptrtoint i32* %428 to i64
  %431 = sub i64 %429, %430
  %432 = sdiv exact i64 %431, 4
  store i64 %432, i64* %8, align 8
  %433 = load i64, i64* %8, align 8
  store i64 %433, i64* %4, align 8
  br label %434

434:                                              ; preds = %426, %16
  %435 = load i64, i64* %4, align 8
  ret i64 %435
}

declare dso_local i64 @rtw_sprintf(i32*, i64, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
