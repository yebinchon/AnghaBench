; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_icom.c_recv_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_icom.c_recv_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icom_port = type { i16, i64, i32*, i16, i16, %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, %struct.uart_icount, %struct.TYPE_5__* }
%struct.uart_icount = type { i16, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.tty_port }
%struct.tty_port = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i16, i64, i64, i32 }

@.str = private unnamed_addr constant [13 x i8] c"RCV_COMPLETE\00", align 1
@SA_FL_RCV_DONE = common dso_local global i16 0, align 2
@.str.1 = private unnamed_addr constant [11 x i8] c"FID_STATUS\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"RCV_COUNT\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"REAL_COUNT\00", align 1
@SA_FLAGS_FRAME_ERROR = common dso_local global i16 0, align 2
@SA_FLAGS_BREAK_DET = common dso_local global i16 0, align 2
@.str.4 = private unnamed_addr constant [10 x i8] c"BREAK_DET\00", align 1
@TTY_NORMAL = common dso_local global i8 0, align 1
@SA_FLAGS_PARITY_ERROR = common dso_local global i16 0, align 2
@SA_FLAGS_OVERRUN = common dso_local global i16 0, align 2
@.str.5 = private unnamed_addr constant [12 x i8] c"IGNORE_CHAR\00", align 1
@TTY_BREAK = common dso_local global i8 0, align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"PARITY_ERROR\00", align 1
@TTY_PARITY = common dso_local global i8 0, align 1
@TTY_FRAME = common dso_local global i8 0, align 1
@TTY_OVERRUN = common dso_local global i8 0, align 1
@RCV_BUFF_SZ = common dso_local global i64 0, align 8
@NUM_RBUFFS = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.icom_port*)* @recv_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @recv_interrupt(i32 %0, %struct.icom_port* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.icom_port*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca %struct.tty_port*, align 8
  %8 = alloca i16, align 2
  %9 = alloca %struct.uart_icount*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.icom_port* %1, %struct.icom_port** %4, align 8
  %13 = load %struct.icom_port*, %struct.icom_port** %4, align 8
  %14 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %13, i32 0, i32 5
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store %struct.tty_port* %17, %struct.tty_port** %7, align 8
  %18 = load %struct.icom_port*, %struct.icom_port** %4, align 8
  %19 = call i32 @trace(%struct.icom_port* %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i16 signext 0)
  %20 = load %struct.icom_port*, %struct.icom_port** %4, align 8
  %21 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %20, i32 0, i32 0
  %22 = load i16, i16* %21, align 8
  store i16 %22, i16* %6, align 2
  %23 = load %struct.icom_port*, %struct.icom_port** %4, align 8
  %24 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %23, i32 0, i32 6
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = load i16, i16* %6, align 2
  %29 = sext i16 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i8* @cpu_to_le16(i64 %32)
  %34 = ptrtoint i8* %33 to i16
  store i16 %34, i16* %8, align 2
  br label %35

35:                                               ; preds = %319, %2
  %36 = load i16, i16* %8, align 2
  %37 = zext i16 %36 to i32
  %38 = load i16, i16* @SA_FL_RCV_DONE, align 2
  %39 = zext i16 %38 to i32
  %40 = and i32 %37, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %332

42:                                               ; preds = %35
  store i32 -1, i32* %12, align 4
  %43 = load %struct.icom_port*, %struct.icom_port** %4, align 8
  %44 = load i16, i16* %8, align 2
  %45 = call i32 @trace(%struct.icom_port* %43, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i16 signext %44)
  %46 = load %struct.icom_port*, %struct.icom_port** %4, align 8
  %47 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %46, i32 0, i32 6
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = load i16, i16* %6, align 2
  %52 = sext i16 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = call i8* @cpu_to_le16(i64 %55)
  %57 = ptrtoint i8* %56 to i16
  store i16 %57, i16* %5, align 2
  %58 = load %struct.icom_port*, %struct.icom_port** %4, align 8
  %59 = load i16, i16* %5, align 2
  %60 = call i32 @trace(%struct.icom_port* %58, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i16 signext %59)
  %61 = load %struct.icom_port*, %struct.icom_port** %4, align 8
  %62 = load i16, i16* %5, align 2
  %63 = call i32 @trace(%struct.icom_port* %61, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i16 signext %62)
  %64 = load %struct.icom_port*, %struct.icom_port** %4, align 8
  %65 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %64, i32 0, i32 6
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = load i16, i16* %6, align 2
  %70 = sext i16 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @cpu_to_le32(i32 %73)
  %75 = load %struct.icom_port*, %struct.icom_port** %4, align 8
  %76 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = sub i64 %74, %77
  store i64 %78, i64* %10, align 8
  %79 = load i16, i16* %5, align 2
  %80 = sext i16 %79 to i32
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %100

82:                                               ; preds = %42
  %83 = load %struct.icom_port*, %struct.icom_port** %4, align 8
  %84 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* %10, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %12, align 4
  %89 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %90 = load %struct.icom_port*, %struct.icom_port** %4, align 8
  %91 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = load i64, i64* %10, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  %95 = load i16, i16* %5, align 2
  %96 = sext i16 %95 to i32
  %97 = sub nsw i32 %96, 1
  %98 = trunc i32 %97 to i16
  %99 = call i32 @tty_insert_flip_string(%struct.tty_port* %89, i32* %94, i16 signext %98)
  br label %100

100:                                              ; preds = %82, %42
  %101 = load %struct.icom_port*, %struct.icom_port** %4, align 8
  %102 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %101, i32 0, i32 5
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  store %struct.uart_icount* %103, %struct.uart_icount** %9, align 8
  %104 = load i16, i16* %5, align 2
  %105 = sext i16 %104 to i32
  %106 = load %struct.uart_icount*, %struct.uart_icount** %9, align 8
  %107 = getelementptr inbounds %struct.uart_icount, %struct.uart_icount* %106, i32 0, i32 0
  %108 = load i16, i16* %107, align 4
  %109 = sext i16 %108 to i32
  %110 = add nsw i32 %109, %105
  %111 = trunc i32 %110 to i16
  store i16 %111, i16* %107, align 4
  %112 = load i16, i16* %8, align 2
  %113 = zext i16 %112 to i32
  %114 = load i16, i16* @SA_FLAGS_FRAME_ERROR, align 2
  %115 = zext i16 %114 to i32
  %116 = and i32 %113, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %137

118:                                              ; preds = %100
  %119 = load i32, i32* %12, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %137

121:                                              ; preds = %118
  %122 = load i16, i16* @SA_FLAGS_FRAME_ERROR, align 2
  %123 = zext i16 %122 to i32
  %124 = xor i32 %123, -1
  %125 = load i16, i16* %8, align 2
  %126 = zext i16 %125 to i32
  %127 = and i32 %126, %124
  %128 = trunc i32 %127 to i16
  store i16 %128, i16* %8, align 2
  %129 = load i16, i16* @SA_FLAGS_BREAK_DET, align 2
  %130 = zext i16 %129 to i32
  %131 = load i16, i16* %8, align 2
  %132 = zext i16 %131 to i32
  %133 = or i32 %132, %130
  %134 = trunc i32 %133 to i16
  store i16 %134, i16* %8, align 2
  %135 = load %struct.icom_port*, %struct.icom_port** %4, align 8
  %136 = call i32 @trace(%struct.icom_port* %135, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i16 signext 0)
  br label %137

137:                                              ; preds = %121, %118, %100
  %138 = load i8, i8* @TTY_NORMAL, align 1
  store i8 %138, i8* %11, align 1
  %139 = load i16, i16* %8, align 2
  %140 = zext i16 %139 to i32
  %141 = load i16, i16* @SA_FLAGS_BREAK_DET, align 2
  %142 = zext i16 %141 to i32
  %143 = load i16, i16* @SA_FLAGS_PARITY_ERROR, align 2
  %144 = zext i16 %143 to i32
  %145 = or i32 %142, %144
  %146 = load i16, i16* @SA_FLAGS_FRAME_ERROR, align 2
  %147 = zext i16 %146 to i32
  %148 = or i32 %145, %147
  %149 = load i16, i16* @SA_FLAGS_OVERRUN, align 2
  %150 = zext i16 %149 to i32
  %151 = or i32 %148, %150
  %152 = and i32 %140, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %254

154:                                              ; preds = %137
  %155 = load i16, i16* %8, align 2
  %156 = zext i16 %155 to i32
  %157 = load i16, i16* @SA_FLAGS_BREAK_DET, align 2
  %158 = zext i16 %157 to i32
  %159 = and i32 %156, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %154
  %162 = load %struct.uart_icount*, %struct.uart_icount** %9, align 8
  %163 = getelementptr inbounds %struct.uart_icount, %struct.uart_icount* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %163, align 4
  br label %166

166:                                              ; preds = %161, %154
  %167 = load i16, i16* %8, align 2
  %168 = zext i16 %167 to i32
  %169 = load i16, i16* @SA_FLAGS_PARITY_ERROR, align 2
  %170 = zext i16 %169 to i32
  %171 = and i32 %168, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %178

173:                                              ; preds = %166
  %174 = load %struct.uart_icount*, %struct.uart_icount** %9, align 8
  %175 = getelementptr inbounds %struct.uart_icount, %struct.uart_icount* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %175, align 4
  br label %178

178:                                              ; preds = %173, %166
  %179 = load i16, i16* %8, align 2
  %180 = zext i16 %179 to i32
  %181 = load i16, i16* @SA_FLAGS_FRAME_ERROR, align 2
  %182 = zext i16 %181 to i32
  %183 = and i32 %180, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %178
  %186 = load %struct.uart_icount*, %struct.uart_icount** %9, align 8
  %187 = getelementptr inbounds %struct.uart_icount, %struct.uart_icount* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %187, align 4
  br label %190

190:                                              ; preds = %185, %178
  %191 = load i16, i16* %8, align 2
  %192 = zext i16 %191 to i32
  %193 = load i16, i16* @SA_FLAGS_OVERRUN, align 2
  %194 = zext i16 %193 to i32
  %195 = and i32 %192, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %202

197:                                              ; preds = %190
  %198 = load %struct.uart_icount*, %struct.uart_icount** %9, align 8
  %199 = getelementptr inbounds %struct.uart_icount, %struct.uart_icount* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %199, align 4
  br label %202

202:                                              ; preds = %197, %190
  %203 = load i16, i16* %8, align 2
  %204 = zext i16 %203 to i32
  %205 = load %struct.icom_port*, %struct.icom_port** %4, align 8
  %206 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %205, i32 0, i32 3
  %207 = load i16, i16* %206, align 8
  %208 = zext i16 %207 to i32
  %209 = and i32 %204, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %202
  %212 = load %struct.icom_port*, %struct.icom_port** %4, align 8
  %213 = call i32 @trace(%struct.icom_port* %212, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i16 signext 0)
  br label %280

214:                                              ; preds = %202
  %215 = load %struct.icom_port*, %struct.icom_port** %4, align 8
  %216 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %215, i32 0, i32 4
  %217 = load i16, i16* %216, align 2
  %218 = zext i16 %217 to i32
  %219 = load i16, i16* %8, align 2
  %220 = zext i16 %219 to i32
  %221 = and i32 %220, %218
  %222 = trunc i32 %221 to i16
  store i16 %222, i16* %8, align 2
  %223 = load i16, i16* %8, align 2
  %224 = zext i16 %223 to i32
  %225 = load i16, i16* @SA_FLAGS_BREAK_DET, align 2
  %226 = zext i16 %225 to i32
  %227 = and i32 %224, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %231

229:                                              ; preds = %214
  %230 = load i8, i8* @TTY_BREAK, align 1
  store i8 %230, i8* %11, align 1
  br label %253

231:                                              ; preds = %214
  %232 = load i16, i16* %8, align 2
  %233 = zext i16 %232 to i32
  %234 = load i16, i16* @SA_FLAGS_PARITY_ERROR, align 2
  %235 = zext i16 %234 to i32
  %236 = and i32 %233, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %242

238:                                              ; preds = %231
  %239 = load %struct.icom_port*, %struct.icom_port** %4, align 8
  %240 = call i32 @trace(%struct.icom_port* %239, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i16 signext 0)
  %241 = load i8, i8* @TTY_PARITY, align 1
  store i8 %241, i8* %11, align 1
  br label %252

242:                                              ; preds = %231
  %243 = load i16, i16* %8, align 2
  %244 = zext i16 %243 to i32
  %245 = load i16, i16* @SA_FLAGS_FRAME_ERROR, align 2
  %246 = zext i16 %245 to i32
  %247 = and i32 %244, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %251

249:                                              ; preds = %242
  %250 = load i8, i8* @TTY_FRAME, align 1
  store i8 %250, i8* %11, align 1
  br label %251

251:                                              ; preds = %249, %242
  br label %252

252:                                              ; preds = %251, %238
  br label %253

253:                                              ; preds = %252, %229
  br label %254

254:                                              ; preds = %253, %137
  %255 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %256 = load %struct.icom_port*, %struct.icom_port** %4, align 8
  %257 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %256, i32 0, i32 2
  %258 = load i32*, i32** %257, align 8
  %259 = load i64, i64* %10, align 8
  %260 = getelementptr inbounds i32, i32* %258, i64 %259
  %261 = load i16, i16* %5, align 2
  %262 = sext i16 %261 to i32
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32, i32* %260, i64 %263
  %265 = getelementptr inbounds i32, i32* %264, i64 -1
  %266 = load i32, i32* %265, align 4
  %267 = load i8, i8* %11, align 1
  %268 = call i32 @tty_insert_flip_char(%struct.tty_port* %255, i32 %266, i8 zeroext %267)
  %269 = load i16, i16* %8, align 2
  %270 = zext i16 %269 to i32
  %271 = load i16, i16* @SA_FLAGS_OVERRUN, align 2
  %272 = zext i16 %271 to i32
  %273 = and i32 %270, %272
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %279

275:                                              ; preds = %254
  %276 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %277 = load i8, i8* @TTY_OVERRUN, align 1
  %278 = call i32 @tty_insert_flip_char(%struct.tty_port* %276, i32 0, i8 zeroext %277)
  br label %279

279:                                              ; preds = %275, %254
  br label %280

280:                                              ; preds = %279, %211
  %281 = load %struct.icom_port*, %struct.icom_port** %4, align 8
  %282 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %281, i32 0, i32 6
  %283 = load %struct.TYPE_7__*, %struct.TYPE_7__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %283, i32 0, i32 0
  %285 = load %struct.TYPE_6__*, %struct.TYPE_6__** %284, align 8
  %286 = load i16, i16* %6, align 2
  %287 = sext i16 %286 to i64
  %288 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i64 %287
  %289 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %288, i32 0, i32 1
  store i64 0, i64* %289, align 8
  %290 = load %struct.icom_port*, %struct.icom_port** %4, align 8
  %291 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %290, i32 0, i32 6
  %292 = load %struct.TYPE_7__*, %struct.TYPE_7__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %292, i32 0, i32 0
  %294 = load %struct.TYPE_6__*, %struct.TYPE_6__** %293, align 8
  %295 = load i16, i16* %6, align 2
  %296 = sext i16 %295 to i64
  %297 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %294, i64 %296
  %298 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %297, i32 0, i32 2
  store i64 0, i64* %298, align 8
  %299 = load i64, i64* @RCV_BUFF_SZ, align 8
  %300 = call i8* @cpu_to_le16(i64 %299)
  %301 = ptrtoint i8* %300 to i16
  %302 = load %struct.icom_port*, %struct.icom_port** %4, align 8
  %303 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %302, i32 0, i32 6
  %304 = load %struct.TYPE_7__*, %struct.TYPE_7__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %304, i32 0, i32 0
  %306 = load %struct.TYPE_6__*, %struct.TYPE_6__** %305, align 8
  %307 = load i16, i16* %6, align 2
  %308 = sext i16 %307 to i64
  %309 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %306, i64 %308
  %310 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %309, i32 0, i32 0
  store i16 %301, i16* %310, align 8
  %311 = load i16, i16* %6, align 2
  %312 = add i16 %311, 1
  store i16 %312, i16* %6, align 2
  %313 = load i16, i16* %6, align 2
  %314 = sext i16 %313 to i32
  %315 = load i16, i16* @NUM_RBUFFS, align 2
  %316 = sext i16 %315 to i32
  %317 = icmp eq i32 %314, %316
  br i1 %317, label %318, label %319

318:                                              ; preds = %280
  store i16 0, i16* %6, align 2
  br label %319

319:                                              ; preds = %318, %280
  %320 = load %struct.icom_port*, %struct.icom_port** %4, align 8
  %321 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %320, i32 0, i32 6
  %322 = load %struct.TYPE_7__*, %struct.TYPE_7__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %322, i32 0, i32 0
  %324 = load %struct.TYPE_6__*, %struct.TYPE_6__** %323, align 8
  %325 = load i16, i16* %6, align 2
  %326 = sext i16 %325 to i64
  %327 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %324, i64 %326
  %328 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %327, i32 0, i32 1
  %329 = load i64, i64* %328, align 8
  %330 = call i8* @cpu_to_le16(i64 %329)
  %331 = ptrtoint i8* %330 to i16
  store i16 %331, i16* %8, align 2
  br label %35

332:                                              ; preds = %35
  %333 = load i16, i16* %6, align 2
  %334 = load %struct.icom_port*, %struct.icom_port** %4, align 8
  %335 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %334, i32 0, i32 0
  store i16 %333, i16* %335, align 8
  %336 = load %struct.icom_port*, %struct.icom_port** %4, align 8
  %337 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %336, i32 0, i32 5
  %338 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %337, i32 0, i32 0
  %339 = call i32 @spin_unlock(i32* %338)
  %340 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %341 = call i32 @tty_flip_buffer_push(%struct.tty_port* %340)
  %342 = load %struct.icom_port*, %struct.icom_port** %4, align 8
  %343 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %342, i32 0, i32 5
  %344 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %343, i32 0, i32 0
  %345 = call i32 @spin_lock(i32* %344)
  ret void
}

declare dso_local i32 @trace(%struct.icom_port*, i8*, i16 signext) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @tty_insert_flip_string(%struct.tty_port*, i32*, i16 signext) #1

declare dso_local i32 @tty_insert_flip_char(%struct.tty_port*, i32, i8 zeroext) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_port*) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
