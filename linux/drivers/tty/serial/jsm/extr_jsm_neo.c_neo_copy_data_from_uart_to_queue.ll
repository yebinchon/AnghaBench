; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/jsm/extr_jsm_neo.c_neo_copy_data_from_uart_to_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/jsm/extr_jsm_neo.c_neo_copy_data_from_uart_to_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jsm_channel = type { i32, i32, i32, i32, i32*, i32*, i32, i32, i64, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@RQUEUEMASK = common dso_local global i32 0, align 4
@CH_FIFO_ENABLED = common dso_local global i32 0, align 4
@UART_17158_RX_FIFO_DATA_ERROR = common dso_local global i32 0, align 4
@RQUEUESIZE = common dso_local global i32 0, align 4
@UART_LSR_THRE = common dso_local global i32 0, align 4
@UART_17158_TX_AND_FIFO_CLR = common dso_local global i32 0, align 4
@CH_TX_FIFO_EMPTY = common dso_local global i32 0, align 4
@CH_TX_FIFO_LWM = common dso_local global i32 0, align 4
@IGNBRK = common dso_local global i32 0, align 4
@UART_LSR_BI = common dso_local global i32 0, align 4
@UART_LSR_DR = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Queue full, dropping DATA:%x LSR:%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"DATA/LSR pair: %x %x\0A\00", align 1
@EQUEUEMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jsm_channel*)* @neo_copy_data_from_uart_to_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @neo_copy_data_from_uart_to_queue(%struct.jsm_channel* %0) #0 {
  %2 = alloca %struct.jsm_channel*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.jsm_channel* %0, %struct.jsm_channel** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %12 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @RQUEUEMASK, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %8, align 4
  %16 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %17 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @RQUEUEMASK, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %9, align 4
  %21 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %22 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %4, align 4
  %24 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %25 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %24, i32 0, i32 2
  store i32 0, i32* %25, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %8, align 4
  %28 = sub nsw i32 %26, %27
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %3, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %1
  %32 = load i32, i32* @RQUEUEMASK, align 4
  %33 = add nsw i32 %32, 1
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, %33
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %31, %1
  %37 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %38 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @CH_FIFO_ENABLED, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %36
  store i32 0, i32* %7, align 4
  br label %52

44:                                               ; preds = %36
  %45 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %46 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %45, i32 0, i32 10
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = call i32 @readb(i32* %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = sub nsw i32 %50, 3
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %44, %43
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @min(i32 %53, i32 %54)
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %92, %52
  %57 = load i32, i32* %7, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %130

59:                                               ; preds = %56
  %60 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %61 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %60, i32 0, i32 10
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = call i32 @readb(i32* %63)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @UART_17158_RX_FIFO_DATA_ERROR, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %59
  br label %130

70:                                               ; preds = %59
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @RQUEUESIZE, align 4
  %73 = load i32, i32* %8, align 4
  %74 = sub nsw i32 %72, %73
  %75 = call i32 @min(i32 %71, i32 %74)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @min(i32 %76, i32 12)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @UART_LSR_THRE, align 4
  %80 = load i32, i32* @UART_17158_TX_AND_FIFO_CLR, align 4
  %81 = or i32 %79, %80
  %82 = and i32 %78, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %70
  %85 = load i32, i32* @CH_TX_FIFO_EMPTY, align 4
  %86 = load i32, i32* @CH_TX_FIFO_LWM, align 4
  %87 = or i32 %85, %86
  %88 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %89 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %84, %70
  store i32 0, i32* %4, align 4
  %93 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %94 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %93, i32 0, i32 4
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %100 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %99, i32 0, i32 10
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @memcpy_fromio(i32* %98, i32* %102, i32 %103)
  %105 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %106 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %105, i32 0, i32 5
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @memset(i32* %110, i32 0, i32 %111)
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* %6, align 4
  %115 = add nsw i32 %113, %114
  %116 = load i32, i32* @RQUEUEMASK, align 4
  %117 = and i32 %115, %116
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* %7, align 4
  %120 = sub nsw i32 %119, %118
  store i32 %120, i32* %7, align 4
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* %3, align 4
  %123 = sub nsw i32 %122, %121
  store i32 %123, i32* %3, align 4
  %124 = load i32, i32* %6, align 4
  %125 = sext i32 %124 to i64
  %126 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %127 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %126, i32 0, i32 8
  %128 = load i64, i64* %127, align 8
  %129 = add nsw i64 %128, %125
  store i64 %129, i64* %127, align 8
  br label %56

130:                                              ; preds = %69, %56
  %131 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %132 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %131, i32 0, i32 6
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @IGNBRK, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %130
  %138 = load i32, i32* @UART_LSR_BI, align 4
  %139 = load i32, i32* %5, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %5, align 4
  br label %141

141:                                              ; preds = %137, %130
  br label %142

142:                                              ; preds = %141, %188, %231
  %143 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %144 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %143, i32 0, i32 10
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 1
  %147 = call i32 @readb(i32* %146)
  %148 = load i32, i32* %4, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %4, align 4
  %150 = load i32, i32* %4, align 4
  %151 = load i32, i32* @UART_LSR_DR, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %158, label %154

154:                                              ; preds = %142
  %155 = load i32, i32* %4, align 4
  %156 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %157 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %156, i32 0, i32 2
  store i32 %155, i32* %157, align 8
  br label %280

158:                                              ; preds = %142
  %159 = load i32, i32* @UART_LSR_DR, align 4
  %160 = xor i32 %159, -1
  %161 = load i32, i32* %4, align 4
  %162 = and i32 %161, %160
  store i32 %162, i32* %4, align 4
  %163 = load i32, i32* %4, align 4
  %164 = load i32, i32* @UART_LSR_THRE, align 4
  %165 = load i32, i32* @UART_17158_TX_AND_FIFO_CLR, align 4
  %166 = or i32 %164, %165
  %167 = and i32 %163, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %183

169:                                              ; preds = %158
  %170 = load i32, i32* @UART_LSR_THRE, align 4
  %171 = load i32, i32* @UART_17158_TX_AND_FIFO_CLR, align 4
  %172 = or i32 %170, %171
  %173 = xor i32 %172, -1
  %174 = load i32, i32* %4, align 4
  %175 = and i32 %174, %173
  store i32 %175, i32* %4, align 4
  %176 = load i32, i32* @CH_TX_FIFO_EMPTY, align 4
  %177 = load i32, i32* @CH_TX_FIFO_LWM, align 4
  %178 = or i32 %176, %177
  %179 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %180 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = or i32 %181, %178
  store i32 %182, i32* %180, align 4
  br label %183

183:                                              ; preds = %169, %158
  %184 = load i32, i32* %4, align 4
  %185 = load i32, i32* %5, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %194

188:                                              ; preds = %183
  store i32 0, i32* %4, align 4
  %189 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %190 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %189, i32 0, i32 10
  %191 = load %struct.TYPE_3__*, %struct.TYPE_3__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 0
  %193 = call i32 @memcpy_fromio(i32* %10, i32* %192, i32 1)
  br label %142

194:                                              ; preds = %183
  br label %195

195:                                              ; preds = %198, %194
  %196 = load i32, i32* %3, align 4
  %197 = icmp slt i32 %196, 1
  br i1 %197, label %198, label %231

198:                                              ; preds = %195
  %199 = load i32, i32* @READ, align 4
  %200 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %201 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %200, i32 0, i32 9
  %202 = load %struct.TYPE_4__*, %struct.TYPE_4__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 0
  %204 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %205 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %204, i32 0, i32 4
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* %9, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %212 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %211, i32 0, i32 5
  %213 = load i32*, i32** %212, align 8
  %214 = load i32, i32* %9, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %213, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @jsm_dbg(i32 %199, i32* %203, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %210, i32 %217)
  %219 = load i32, i32* %9, align 4
  %220 = add nsw i32 %219, 1
  %221 = load i32, i32* @RQUEUEMASK, align 4
  %222 = and i32 %220, %221
  store i32 %222, i32* %9, align 4
  %223 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %224 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %223, i32 0, i32 1
  store i32 %222, i32* %224, align 4
  %225 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %226 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %225, i32 0, i32 11
  %227 = load i32, i32* %226, align 8
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %226, align 8
  %229 = load i32, i32* %3, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %3, align 4
  br label %195

231:                                              ; preds = %195
  %232 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %233 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %232, i32 0, i32 4
  %234 = load i32*, i32** %233, align 8
  %235 = load i32, i32* %8, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %234, i64 %236
  %238 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %239 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %238, i32 0, i32 10
  %240 = load %struct.TYPE_3__*, %struct.TYPE_3__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %240, i32 0, i32 0
  %242 = call i32 @memcpy_fromio(i32* %237, i32* %241, i32 1)
  %243 = load i32, i32* %4, align 4
  %244 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %245 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %244, i32 0, i32 5
  %246 = load i32*, i32** %245, align 8
  %247 = load i32, i32* %8, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %246, i64 %248
  store i32 %243, i32* %249, align 4
  %250 = load i32, i32* @READ, align 4
  %251 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %252 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %251, i32 0, i32 9
  %253 = load %struct.TYPE_4__*, %struct.TYPE_4__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %253, i32 0, i32 0
  %255 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %256 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %255, i32 0, i32 4
  %257 = load i32*, i32** %256, align 8
  %258 = load i32, i32* %8, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %257, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %263 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %262, i32 0, i32 5
  %264 = load i32*, i32** %263, align 8
  %265 = load i32, i32* %8, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %264, i64 %266
  %268 = load i32, i32* %267, align 4
  %269 = call i32 @jsm_dbg(i32 %250, i32* %254, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %261, i32 %268)
  store i32 0, i32* %4, align 4
  %270 = load i32, i32* %8, align 4
  %271 = add nsw i32 %270, 1
  %272 = load i32, i32* @RQUEUEMASK, align 4
  %273 = and i32 %271, %272
  store i32 %273, i32* %8, align 4
  %274 = load i32, i32* %3, align 4
  %275 = add nsw i32 %274, -1
  store i32 %275, i32* %3, align 4
  %276 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %277 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %276, i32 0, i32 8
  %278 = load i64, i64* %277, align 8
  %279 = add nsw i64 %278, 1
  store i64 %279, i64* %277, align 8
  br label %142

280:                                              ; preds = %154
  %281 = load i32, i32* %8, align 4
  %282 = load i32, i32* @RQUEUEMASK, align 4
  %283 = and i32 %281, %282
  %284 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %285 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %284, i32 0, i32 0
  store i32 %283, i32* %285, align 8
  %286 = load i32, i32* %8, align 4
  %287 = load i32, i32* @EQUEUEMASK, align 4
  %288 = and i32 %286, %287
  %289 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %290 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %289, i32 0, i32 7
  store i32 %288, i32* %290, align 4
  %291 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %292 = call i32 @jsm_input(%struct.jsm_channel* %291)
  ret void
}

declare dso_local i32 @readb(i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy_fromio(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @jsm_dbg(i32, i32*, i8*, i32, i32) #1

declare dso_local i32 @jsm_input(%struct.jsm_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
