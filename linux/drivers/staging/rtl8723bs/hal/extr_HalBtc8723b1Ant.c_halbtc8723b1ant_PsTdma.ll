; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b1Ant.c_halbtc8723b1ant_PsTdma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b1Ant.c_halbtc8723b1ant_PsTdma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i64 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_10__*, i32, i32*)*, i32 (%struct.TYPE_10__*, i32, i32*)*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }

@pCoexDm = common dso_local global %struct.TYPE_13__* null, align 8
@BTC_GET_BL_WIFI_BUSY = common dso_local global i32 0, align 4
@BTC_MSG_ALGORITHM = common dso_local global i32 0, align 4
@ALGO_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"[BTCoex], ********** TDMA(on, %d) **********\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"[BTCoex], ********** TDMA(off, %d) **********\0A\00", align 1
@pCoexSta = common dso_local global %struct.TYPE_12__* null, align 8
@BTC_ANT_PATH_PTA = common dso_local global i32 0, align 4
@BTC_ANT_PATH_BT = common dso_local global i32 0, align 4
@BTC_ANT_PATH_WIFI = common dso_local global i32 0, align 4
@BTC_SET_U1_RSSI_ADJ_VAL_FOR_1ANT_COEX_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32, i32, i32)* @halbtc8723b1ant_PsTdma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @halbtc8723b1ant_PsTdma(%struct.TYPE_10__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 2
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 80, i32* %12, align 4
  store i32 81, i32* %13, align 4
  store i32 16, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pCoexDm, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pCoexDm, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  %26 = load i32 (%struct.TYPE_10__*, i32, i32*)*, i32 (%struct.TYPE_10__*, i32, i32*)** %25, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %28 = load i32, i32* @BTC_GET_BL_WIFI_BUSY, align 4
  %29 = call i32 %26(%struct.TYPE_10__* %27, i32 %28, i32* %10)
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pCoexDm, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %4
  %35 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %36 = load i32, i32* @ALGO_TRACE, align 4
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pCoexDm, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i8*
  %42 = call i32 @BTC_PRINT(i32 %35, i32 %36, i8* %41)
  br label %52

43:                                               ; preds = %4
  %44 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %45 = load i32, i32* @ALGO_TRACE, align 4
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pCoexDm, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to i8*
  %51 = call i32 @BTC_PRINT(i32 %44, i32 %45, i8* %50)
  br label %52

52:                                               ; preds = %43, %34
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %74, label %55

55:                                               ; preds = %52
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pCoexDm, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pCoexDm, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %58, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %55
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pCoexDm, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pCoexDm, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = icmp eq i64 %66, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %63
  br label %280

73:                                               ; preds = %63, %55
  br label %74

74:                                               ; preds = %73, %52
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pCoexSta, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp sle i32 %77, 5
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  store i32 5, i32* %15, align 4
  br label %94

80:                                               ; preds = %74
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pCoexSta, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp sge i32 %83, 40
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  store i32 -15, i32* %15, align 4
  br label %93

86:                                               ; preds = %80
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pCoexSta, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp sge i32 %89, 20
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  store i32 -10, i32* %15, align 4
  br label %92

92:                                               ; preds = %91, %86
  br label %93

93:                                               ; preds = %92, %85
  br label %94

94:                                               ; preds = %93, %79
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pCoexSta, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %94
  store i32 97, i32* %13, align 4
  store i32 17, i32* %14, align 4
  store i32 16, i32* %12, align 4
  br label %100

100:                                              ; preds = %99, %94
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %240

103:                                              ; preds = %100
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load i32, i32* %12, align 4
  %110 = or i32 %109, 1
  store i32 %110, i32* %12, align 4
  br label %111

111:                                              ; preds = %108, %103
  %112 = load i32, i32* %8, align 4
  switch i32 %112, label %113 [
    i32 1, label %117
    i32 2, label %125
    i32 3, label %133
    i32 4, label %136
    i32 5, label %139
    i32 6, label %142
    i32 7, label %145
    i32 8, label %148
    i32 9, label %151
    i32 10, label %157
    i32 11, label %160
    i32 12, label %166
    i32 13, label %169
    i32 14, label %172
    i32 15, label %176
    i32 16, label %179
    i32 18, label %182
    i32 20, label %185
    i32 21, label %188
    i32 22, label %191
    i32 23, label %194
    i32 24, label %197
    i32 25, label %200
    i32 26, label %203
    i32 27, label %206
    i32 28, label %209
    i32 29, label %212
    i32 30, label %215
    i32 31, label %218
    i32 32, label %221
    i32 33, label %224
    i32 34, label %227
    i32 35, label %230
    i32 36, label %233
    i32 40, label %236
  ]

113:                                              ; preds = %111
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %115 = load i32, i32* %12, align 4
  %116 = call i32 @halbtc8723b1ant_SetFwPstdma(%struct.TYPE_10__* %114, i32 81, i32 26, i32 26, i32 0, i32 %115)
  br label %239

117:                                              ; preds = %111
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %119 = load i32, i32* %13, align 4
  %120 = load i32, i32* %15, align 4
  %121 = add nsw i32 58, %120
  %122 = load i32, i32* %14, align 4
  %123 = load i32, i32* %12, align 4
  %124 = call i32 @halbtc8723b1ant_SetFwPstdma(%struct.TYPE_10__* %118, i32 %119, i32 %121, i32 3, i32 %122, i32 %123)
  br label %239

125:                                              ; preds = %111
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %127 = load i32, i32* %13, align 4
  %128 = load i32, i32* %15, align 4
  %129 = add nsw i32 45, %128
  %130 = load i32, i32* %14, align 4
  %131 = load i32, i32* %12, align 4
  %132 = call i32 @halbtc8723b1ant_SetFwPstdma(%struct.TYPE_10__* %126, i32 %127, i32 %129, i32 3, i32 %130, i32 %131)
  br label %239

133:                                              ; preds = %111
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %135 = call i32 @halbtc8723b1ant_SetFwPstdma(%struct.TYPE_10__* %134, i32 81, i32 29, i32 29, i32 0, i32 16)
  br label %239

136:                                              ; preds = %111
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %138 = call i32 @halbtc8723b1ant_SetFwPstdma(%struct.TYPE_10__* %137, i32 147, i32 21, i32 3, i32 20, i32 0)
  br label %239

139:                                              ; preds = %111
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %141 = call i32 @halbtc8723b1ant_SetFwPstdma(%struct.TYPE_10__* %140, i32 97, i32 21, i32 3, i32 17, i32 16)
  br label %239

142:                                              ; preds = %111
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %144 = call i32 @halbtc8723b1ant_SetFwPstdma(%struct.TYPE_10__* %143, i32 97, i32 32, i32 3, i32 17, i32 17)
  br label %239

145:                                              ; preds = %111
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %147 = call i32 @halbtc8723b1ant_SetFwPstdma(%struct.TYPE_10__* %146, i32 19, i32 12, i32 5, i32 0, i32 0)
  br label %239

148:                                              ; preds = %111
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %150 = call i32 @halbtc8723b1ant_SetFwPstdma(%struct.TYPE_10__* %149, i32 147, i32 37, i32 3, i32 16, i32 0)
  br label %239

151:                                              ; preds = %111
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %153 = load i32, i32* %13, align 4
  %154 = load i32, i32* %14, align 4
  %155 = load i32, i32* %12, align 4
  %156 = call i32 @halbtc8723b1ant_SetFwPstdma(%struct.TYPE_10__* %152, i32 %153, i32 33, i32 3, i32 %154, i32 %155)
  br label %239

157:                                              ; preds = %111
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %159 = call i32 @halbtc8723b1ant_SetFwPstdma(%struct.TYPE_10__* %158, i32 19, i32 10, i32 10, i32 0, i32 64)
  br label %239

160:                                              ; preds = %111
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %162 = load i32, i32* %13, align 4
  %163 = load i32, i32* %14, align 4
  %164 = load i32, i32* %12, align 4
  %165 = call i32 @halbtc8723b1ant_SetFwPstdma(%struct.TYPE_10__* %161, i32 %162, i32 33, i32 3, i32 %163, i32 %164)
  br label %239

166:                                              ; preds = %111
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %168 = call i32 @halbtc8723b1ant_SetFwPstdma(%struct.TYPE_10__* %167, i32 81, i32 10, i32 10, i32 0, i32 80)
  br label %239

169:                                              ; preds = %111
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %171 = call i32 @halbtc8723b1ant_SetFwPstdma(%struct.TYPE_10__* %170, i32 81, i32 18, i32 18, i32 0, i32 16)
  br label %239

172:                                              ; preds = %111
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %174 = load i32, i32* %12, align 4
  %175 = call i32 @halbtc8723b1ant_SetFwPstdma(%struct.TYPE_10__* %173, i32 81, i32 33, i32 3, i32 16, i32 %174)
  br label %239

176:                                              ; preds = %111
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %178 = call i32 @halbtc8723b1ant_SetFwPstdma(%struct.TYPE_10__* %177, i32 19, i32 10, i32 3, i32 8, i32 0)
  br label %239

179:                                              ; preds = %111
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %181 = call i32 @halbtc8723b1ant_SetFwPstdma(%struct.TYPE_10__* %180, i32 147, i32 21, i32 3, i32 16, i32 0)
  br label %239

182:                                              ; preds = %111
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %184 = call i32 @halbtc8723b1ant_SetFwPstdma(%struct.TYPE_10__* %183, i32 147, i32 37, i32 3, i32 16, i32 0)
  br label %239

185:                                              ; preds = %111
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %187 = call i32 @halbtc8723b1ant_SetFwPstdma(%struct.TYPE_10__* %186, i32 97, i32 63, i32 3, i32 17, i32 16)
  br label %239

188:                                              ; preds = %111
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %190 = call i32 @halbtc8723b1ant_SetFwPstdma(%struct.TYPE_10__* %189, i32 97, i32 37, i32 3, i32 17, i32 17)
  br label %239

191:                                              ; preds = %111
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %193 = call i32 @halbtc8723b1ant_SetFwPstdma(%struct.TYPE_10__* %192, i32 97, i32 37, i32 3, i32 17, i32 16)
  br label %239

194:                                              ; preds = %111
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %196 = call i32 @halbtc8723b1ant_SetFwPstdma(%struct.TYPE_10__* %195, i32 227, i32 37, i32 3, i32 49, i32 24)
  br label %239

197:                                              ; preds = %111
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %199 = call i32 @halbtc8723b1ant_SetFwPstdma(%struct.TYPE_10__* %198, i32 227, i32 21, i32 3, i32 49, i32 24)
  br label %239

200:                                              ; preds = %111
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %202 = call i32 @halbtc8723b1ant_SetFwPstdma(%struct.TYPE_10__* %201, i32 227, i32 10, i32 3, i32 49, i32 24)
  br label %239

203:                                              ; preds = %111
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %205 = call i32 @halbtc8723b1ant_SetFwPstdma(%struct.TYPE_10__* %204, i32 227, i32 10, i32 3, i32 49, i32 24)
  br label %239

206:                                              ; preds = %111
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %208 = call i32 @halbtc8723b1ant_SetFwPstdma(%struct.TYPE_10__* %207, i32 227, i32 37, i32 3, i32 49, i32 152)
  br label %239

209:                                              ; preds = %111
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %211 = call i32 @halbtc8723b1ant_SetFwPstdma(%struct.TYPE_10__* %210, i32 105, i32 37, i32 3, i32 49, i32 0)
  br label %239

212:                                              ; preds = %111
  %213 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %214 = call i32 @halbtc8723b1ant_SetFwPstdma(%struct.TYPE_10__* %213, i32 171, i32 26, i32 26, i32 1, i32 16)
  br label %239

215:                                              ; preds = %111
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %217 = call i32 @halbtc8723b1ant_SetFwPstdma(%struct.TYPE_10__* %216, i32 81, i32 48, i32 3, i32 16, i32 16)
  br label %239

218:                                              ; preds = %111
  %219 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %220 = call i32 @halbtc8723b1ant_SetFwPstdma(%struct.TYPE_10__* %219, i32 211, i32 26, i32 26, i32 0, i32 88)
  br label %239

221:                                              ; preds = %111
  %222 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %223 = call i32 @halbtc8723b1ant_SetFwPstdma(%struct.TYPE_10__* %222, i32 97, i32 53, i32 3, i32 17, i32 17)
  br label %239

224:                                              ; preds = %111
  %225 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %226 = call i32 @halbtc8723b1ant_SetFwPstdma(%struct.TYPE_10__* %225, i32 163, i32 37, i32 3, i32 48, i32 144)
  br label %239

227:                                              ; preds = %111
  %228 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %229 = call i32 @halbtc8723b1ant_SetFwPstdma(%struct.TYPE_10__* %228, i32 83, i32 26, i32 26, i32 0, i32 16)
  br label %239

230:                                              ; preds = %111
  %231 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %232 = call i32 @halbtc8723b1ant_SetFwPstdma(%struct.TYPE_10__* %231, i32 99, i32 26, i32 26, i32 0, i32 16)
  br label %239

233:                                              ; preds = %111
  %234 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %235 = call i32 @halbtc8723b1ant_SetFwPstdma(%struct.TYPE_10__* %234, i32 211, i32 18, i32 3, i32 20, i32 80)
  br label %239

236:                                              ; preds = %111
  %237 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %238 = call i32 @halbtc8723b1ant_SetFwPstdma(%struct.TYPE_10__* %237, i32 35, i32 24, i32 0, i32 16, i32 36)
  br label %239

239:                                              ; preds = %236, %233, %230, %227, %224, %221, %218, %215, %212, %209, %206, %203, %200, %197, %194, %191, %188, %185, %182, %179, %176, %172, %169, %166, %160, %157, %151, %148, %145, %142, %139, %136, %133, %125, %117, %113
  br label %262

240:                                              ; preds = %100
  %241 = load i32, i32* %8, align 4
  switch i32 %241, label %249 [
    i32 8, label %242
    i32 0, label %248
    i32 9, label %255
  ]

242:                                              ; preds = %240
  %243 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %244 = call i32 @halbtc8723b1ant_SetFwPstdma(%struct.TYPE_10__* %243, i32 8, i32 0, i32 0, i32 0, i32 0)
  %245 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %246 = load i32, i32* @BTC_ANT_PATH_PTA, align 4
  %247 = call i32 @halbtc8723b1ant_SetAntPath(%struct.TYPE_10__* %245, i32 %246, i32 0, i32 0)
  br label %261

248:                                              ; preds = %240
  br label %249

249:                                              ; preds = %240, %248
  %250 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %251 = call i32 @halbtc8723b1ant_SetFwPstdma(%struct.TYPE_10__* %250, i32 0, i32 0, i32 0, i32 0, i32 0)
  %252 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %253 = load i32, i32* @BTC_ANT_PATH_BT, align 4
  %254 = call i32 @halbtc8723b1ant_SetAntPath(%struct.TYPE_10__* %252, i32 %253, i32 0, i32 0)
  br label %261

255:                                              ; preds = %240
  %256 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %257 = call i32 @halbtc8723b1ant_SetFwPstdma(%struct.TYPE_10__* %256, i32 0, i32 0, i32 0, i32 0, i32 0)
  %258 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %259 = load i32, i32* @BTC_ANT_PATH_WIFI, align 4
  %260 = call i32 @halbtc8723b1ant_SetAntPath(%struct.TYPE_10__* %258, i32 %259, i32 0, i32 0)
  br label %261

261:                                              ; preds = %255, %249, %242
  br label %262

262:                                              ; preds = %261, %239
  store i32 0, i32* %11, align 4
  %263 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %264 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %263, i32 0, i32 0
  %265 = load i32 (%struct.TYPE_10__*, i32, i32*)*, i32 (%struct.TYPE_10__*, i32, i32*)** %264, align 8
  %266 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %267 = load i32, i32* @BTC_SET_U1_RSSI_ADJ_VAL_FOR_1ANT_COEX_TYPE, align 4
  %268 = call i32 %265(%struct.TYPE_10__* %266, i32 %267, i32* %11)
  %269 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pCoexDm, align 8
  %270 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pCoexDm, align 8
  %273 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %272, i32 0, i32 2
  store i32 %271, i32* %273, align 8
  %274 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pCoexDm, align 8
  %275 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = sext i32 %276 to i64
  %278 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pCoexDm, align 8
  %279 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %278, i32 0, i32 3
  store i64 %277, i64* %279, align 8
  br label %280

280:                                              ; preds = %262, %72
  ret void
}

declare dso_local i32 @BTC_PRINT(i32, i32, i8*) #1

declare dso_local i32 @halbtc8723b1ant_SetFwPstdma(%struct.TYPE_10__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @halbtc8723b1ant_SetAntPath(%struct.TYPE_10__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
