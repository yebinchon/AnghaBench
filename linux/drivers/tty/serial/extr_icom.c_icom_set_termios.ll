; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_icom.c_icom_set_termios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_icom.c_icom_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_8__*, i64, i64*, i64, i64, i64, %struct.TYPE_10__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i16, i64, i64 }
%struct.TYPE_7__ = type { i64 }
%struct.uart_port = type { i32 }
%struct.ktermios = type { i32, i32 }

@ICOM_PORT = common dso_local global %struct.TYPE_11__* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"CHANGE_SPEED\00", align 1
@ICOM_ACFG_DRIVE1 = common dso_local global i8 0, align 1
@CSIZE = common dso_local global i32 0, align 4
@ICOM_ACFG_5BPC = common dso_local global i8 0, align 1
@ICOM_ACFG_6BPC = common dso_local global i8 0, align 1
@ICOM_ACFG_7BPC = common dso_local global i8 0, align 1
@ICOM_ACFG_8BPC = common dso_local global i8 0, align 1
@CSTOPB = common dso_local global i32 0, align 4
@ICOM_ACFG_2STOP_BIT = common dso_local global i8 0, align 1
@PARENB = common dso_local global i32 0, align 4
@ICOM_ACFG_PARITY_ENAB = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"PARENB\00", align 1
@PARODD = common dso_local global i32 0, align 4
@ICOM_ACFG_PARITY_ODD = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"PARODD\00", align 1
@icom_acfg_baud = common dso_local global i32* null, align 8
@BAUD_TABLE_LIMIT = common dso_local global i64 0, align 8
@CRTSCTS = common dso_local global i32 0, align 4
@HDLC_HDW_FLOW = common dso_local global i8 0, align 1
@SA_FLAGS_OVERRUN = common dso_local global i32 0, align 4
@SA_FL_RCV_DONE = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@SA_FLAGS_FRAME_ERROR = common dso_local global i32 0, align 4
@SA_FLAGS_PARITY_ERROR = common dso_local global i32 0, align 4
@BRKINT = common dso_local global i32 0, align 4
@PARMRK = common dso_local global i32 0, align 4
@SA_FLAGS_BREAK_DET = common dso_local global i32 0, align 4
@IGNPAR = common dso_local global i32 0, align 4
@IGNBRK = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@CMD_RCV_DISABLE = common dso_local global i32 0, align 4
@NUM_RBUFFS = common dso_local global i32 0, align 4
@RCV_BUFF_SZ = common dso_local global i32 0, align 4
@NUM_XBUFFS = common dso_local global i32 0, align 4
@HDLC_PPP_PURE_ASYNC = common dso_local global i8 0, align 1
@HDLC_FF_FILL = common dso_local global i8 0, align 1
@CMD_RESTART = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"XR_ENAB\00", align 1
@CMD_XMIT_RCV_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @icom_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icom_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  store i8 0, i8* %11, align 1
  %18 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %19 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %18, i32 0, i32 0
  %20 = load i64, i64* %17, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ICOM_PORT, align 8
  %23 = call i32 @trace(%struct.TYPE_11__* %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 0)
  %24 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %25 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %8, align 4
  %27 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %28 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %9, align 4
  %30 = load i8, i8* @ICOM_ACFG_DRIVE1, align 1
  store i8 %30, i8* %10, align 1
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @CSIZE, align 4
  %33 = and i32 %31, %32
  switch i32 %33, label %62 [
    i32 131, label %34
    i32 130, label %41
    i32 129, label %48
    i32 128, label %55
  ]

34:                                               ; preds = %3
  %35 = load i8, i8* @ICOM_ACFG_5BPC, align 1
  %36 = sext i8 %35 to i32
  %37 = load i8, i8* %10, align 1
  %38 = sext i8 %37 to i32
  %39 = or i32 %38, %36
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %10, align 1
  br label %63

41:                                               ; preds = %3
  %42 = load i8, i8* @ICOM_ACFG_6BPC, align 1
  %43 = sext i8 %42 to i32
  %44 = load i8, i8* %10, align 1
  %45 = sext i8 %44 to i32
  %46 = or i32 %45, %43
  %47 = trunc i32 %46 to i8
  store i8 %47, i8* %10, align 1
  br label %63

48:                                               ; preds = %3
  %49 = load i8, i8* @ICOM_ACFG_7BPC, align 1
  %50 = sext i8 %49 to i32
  %51 = load i8, i8* %10, align 1
  %52 = sext i8 %51 to i32
  %53 = or i32 %52, %50
  %54 = trunc i32 %53 to i8
  store i8 %54, i8* %10, align 1
  br label %63

55:                                               ; preds = %3
  %56 = load i8, i8* @ICOM_ACFG_8BPC, align 1
  %57 = sext i8 %56 to i32
  %58 = load i8, i8* %10, align 1
  %59 = sext i8 %58 to i32
  %60 = or i32 %59, %57
  %61 = trunc i32 %60 to i8
  store i8 %61, i8* %10, align 1
  br label %63

62:                                               ; preds = %3
  br label %63

63:                                               ; preds = %62, %55, %48, %41, %34
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @CSTOPB, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %63
  %69 = load i8, i8* @ICOM_ACFG_2STOP_BIT, align 1
  %70 = sext i8 %69 to i32
  %71 = load i8, i8* %10, align 1
  %72 = sext i8 %71 to i32
  %73 = or i32 %72, %70
  %74 = trunc i32 %73 to i8
  store i8 %74, i8* %10, align 1
  br label %75

75:                                               ; preds = %68, %63
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @PARENB, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %75
  %81 = load i8, i8* @ICOM_ACFG_PARITY_ENAB, align 1
  %82 = sext i8 %81 to i32
  %83 = load i8, i8* %10, align 1
  %84 = sext i8 %83 to i32
  %85 = or i32 %84, %82
  %86 = trunc i32 %85 to i8
  store i8 %86, i8* %10, align 1
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ICOM_PORT, align 8
  %88 = call i32 @trace(%struct.TYPE_11__* %87, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 0)
  br label %89

89:                                               ; preds = %80, %75
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* @PARODD, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %89
  %95 = load i8, i8* @ICOM_ACFG_PARITY_ODD, align 1
  %96 = sext i8 %95 to i32
  %97 = load i8, i8* %10, align 1
  %98 = sext i8 %97 to i32
  %99 = or i32 %98, %96
  %100 = trunc i32 %99 to i8
  store i8 %100, i8* %10, align 1
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ICOM_PORT, align 8
  %102 = call i32 @trace(%struct.TYPE_11__* %101, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 0)
  br label %103

103:                                              ; preds = %94, %89
  %104 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %105 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %106 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %107 = load i32*, i32** @icom_acfg_baud, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32*, i32** @icom_acfg_baud, align 8
  %111 = load i64, i64* @BAUD_TABLE_LIMIT, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @uart_get_baud_rate(%struct.uart_port* %104, %struct.ktermios* %105, %struct.ktermios* %106, i32 %109, i32 %113)
  store i32 %114, i32* %7, align 4
  %115 = load i32, i32* %7, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %103
  store i32 9600, i32* %7, align 4
  br label %118

118:                                              ; preds = %117, %103
  store i32 0, i32* %13, align 4
  br label %119

119:                                              ; preds = %136, %118
  %120 = load i32, i32* %13, align 4
  %121 = sext i32 %120 to i64
  %122 = load i64, i64* @BAUD_TABLE_LIMIT, align 8
  %123 = icmp ult i64 %121, %122
  br i1 %123, label %124, label %139

124:                                              ; preds = %119
  %125 = load i32*, i32** @icom_acfg_baud, align 8
  %126 = load i32, i32* %13, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %7, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %124
  %133 = load i32, i32* %13, align 4
  %134 = trunc i32 %133 to i8
  store i8 %134, i8* %11, align 1
  br label %139

135:                                              ; preds = %124
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %13, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %13, align 4
  br label %119

139:                                              ; preds = %132, %119
  %140 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* %7, align 4
  %143 = call i32 @uart_update_timeout(%struct.uart_port* %140, i32 %141, i32 %142)
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ICOM_PORT, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 2
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 5
  %148 = call i32 @readb(i32* %147)
  %149 = trunc i32 %148 to i8
  store i8 %149, i8* %12, align 1
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* @CRTSCTS, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %139
  %155 = load i8, i8* @HDLC_HDW_FLOW, align 1
  %156 = sext i8 %155 to i32
  %157 = load i8, i8* %12, align 1
  %158 = sext i8 %157 to i32
  %159 = or i32 %158, %156
  %160 = trunc i32 %159 to i8
  store i8 %160, i8* %12, align 1
  br label %169

161:                                              ; preds = %139
  %162 = load i8, i8* @HDLC_HDW_FLOW, align 1
  %163 = sext i8 %162 to i32
  %164 = xor i32 %163, -1
  %165 = load i8, i8* %12, align 1
  %166 = sext i8 %165 to i32
  %167 = and i32 %166, %164
  %168 = trunc i32 %167 to i8
  store i8 %168, i8* %12, align 1
  br label %169

169:                                              ; preds = %161, %154
  %170 = load i8, i8* %12, align 1
  %171 = sext i8 %170 to i32
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ICOM_PORT, align 8
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 2
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 5
  %176 = call i32 @writeb(i32 %171, i32* %175)
  %177 = load i32, i32* @SA_FLAGS_OVERRUN, align 4
  %178 = load i32, i32* @SA_FL_RCV_DONE, align 4
  %179 = or i32 %177, %178
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ICOM_PORT, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 0
  store i32 %179, i32* %181, align 8
  %182 = load i32, i32* %9, align 4
  %183 = load i32, i32* @INPCK, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %194

186:                                              ; preds = %169
  %187 = load i32, i32* @SA_FLAGS_FRAME_ERROR, align 4
  %188 = load i32, i32* @SA_FLAGS_PARITY_ERROR, align 4
  %189 = or i32 %187, %188
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ICOM_PORT, align 8
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = or i32 %192, %189
  store i32 %193, i32* %191, align 8
  br label %194

194:                                              ; preds = %186, %169
  %195 = load i32, i32* %9, align 4
  %196 = load i32, i32* @BRKINT, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %204, label %199

199:                                              ; preds = %194
  %200 = load i32, i32* %9, align 4
  %201 = load i32, i32* @PARMRK, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %210

204:                                              ; preds = %199, %194
  %205 = load i32, i32* @SA_FLAGS_BREAK_DET, align 4
  %206 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ICOM_PORT, align 8
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = or i32 %208, %205
  store i32 %209, i32* %207, align 8
  br label %210

210:                                              ; preds = %204, %199
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ICOM_PORT, align 8
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 1
  store i32 0, i32* %212, align 4
  %213 = load i32, i32* %9, align 4
  %214 = load i32, i32* @IGNPAR, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %225

217:                                              ; preds = %210
  %218 = load i32, i32* @SA_FLAGS_PARITY_ERROR, align 4
  %219 = load i32, i32* @SA_FLAGS_FRAME_ERROR, align 4
  %220 = or i32 %218, %219
  %221 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ICOM_PORT, align 8
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = or i32 %223, %220
  store i32 %224, i32* %222, align 4
  br label %225

225:                                              ; preds = %217, %210
  %226 = load i32, i32* %9, align 4
  %227 = load i32, i32* @IGNBRK, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %247

230:                                              ; preds = %225
  %231 = load i32, i32* @SA_FLAGS_BREAK_DET, align 4
  %232 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ICOM_PORT, align 8
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = or i32 %234, %231
  store i32 %235, i32* %233, align 4
  %236 = load i32, i32* %9, align 4
  %237 = load i32, i32* @IGNPAR, align 4
  %238 = and i32 %236, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %246

240:                                              ; preds = %230
  %241 = load i32, i32* @SA_FLAGS_OVERRUN, align 4
  %242 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ICOM_PORT, align 8
  %243 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = or i32 %244, %241
  store i32 %245, i32* %243, align 4
  br label %246

246:                                              ; preds = %240, %230
  br label %247

247:                                              ; preds = %246, %225
  %248 = load i32, i32* %8, align 4
  %249 = load i32, i32* @CREAD, align 4
  %250 = and i32 %248, %249
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %258

252:                                              ; preds = %247
  %253 = load i32, i32* @SA_FL_RCV_DONE, align 4
  %254 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ICOM_PORT, align 8
  %255 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = or i32 %256, %253
  store i32 %257, i32* %255, align 4
  br label %258

258:                                              ; preds = %252, %247
  %259 = load i32, i32* @CMD_RCV_DISABLE, align 4
  %260 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ICOM_PORT, align 8
  %261 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %260, i32 0, i32 2
  %262 = load %struct.TYPE_8__*, %struct.TYPE_8__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %262, i32 0, i32 0
  %264 = call i32 @writeb(i32 %259, i32* %263)
  store i32 0, i32* %13, align 4
  br label %265

265:                                              ; preds = %277, %258
  %266 = load i32, i32* %13, align 4
  %267 = icmp slt i32 %266, 10
  br i1 %267, label %268, label %280

268:                                              ; preds = %265
  %269 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ICOM_PORT, align 8
  %270 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %269, i32 0, i32 2
  %271 = load %struct.TYPE_8__*, %struct.TYPE_8__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %271, i32 0, i32 8
  %273 = call i32 @readb(i32* %272)
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %275, label %276

275:                                              ; preds = %268
  br label %280

276:                                              ; preds = %268
  br label %277

277:                                              ; preds = %276
  %278 = load i32, i32* %13, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %13, align 4
  br label %265

280:                                              ; preds = %275, %265
  store i32 0, i32* %14, align 4
  br label %281

281:                                              ; preds = %316, %280
  %282 = load i32, i32* %14, align 4
  %283 = load i32, i32* @NUM_RBUFFS, align 4
  %284 = icmp slt i32 %282, %283
  br i1 %284, label %285, label %319

285:                                              ; preds = %281
  %286 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ICOM_PORT, align 8
  %287 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %286, i32 0, i32 8
  %288 = load %struct.TYPE_10__*, %struct.TYPE_10__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %288, i32 0, i32 0
  %290 = load %struct.TYPE_9__*, %struct.TYPE_9__** %289, align 8
  %291 = load i32, i32* %14, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %290, i64 %292
  %294 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %293, i32 0, i32 2
  store i64 0, i64* %294, align 8
  %295 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ICOM_PORT, align 8
  %296 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %295, i32 0, i32 8
  %297 = load %struct.TYPE_10__*, %struct.TYPE_10__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %297, i32 0, i32 0
  %299 = load %struct.TYPE_9__*, %struct.TYPE_9__** %298, align 8
  %300 = load i32, i32* %14, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %299, i64 %301
  %303 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %302, i32 0, i32 1
  store i64 0, i64* %303, align 8
  %304 = load i32, i32* @RCV_BUFF_SZ, align 4
  %305 = call i64 @cpu_to_le16(i32 %304)
  %306 = trunc i64 %305 to i16
  %307 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ICOM_PORT, align 8
  %308 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %307, i32 0, i32 8
  %309 = load %struct.TYPE_10__*, %struct.TYPE_10__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %309, i32 0, i32 0
  %311 = load %struct.TYPE_9__*, %struct.TYPE_9__** %310, align 8
  %312 = load i32, i32* %14, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %311, i64 %313
  %315 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %314, i32 0, i32 0
  store i16 %306, i16* %315, align 8
  br label %316

316:                                              ; preds = %285
  %317 = load i32, i32* %14, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %14, align 4
  br label %281

319:                                              ; preds = %281
  store i32 0, i32* %15, align 4
  br label %320

320:                                              ; preds = %334, %319
  %321 = load i32, i32* %15, align 4
  %322 = load i32, i32* @NUM_XBUFFS, align 4
  %323 = icmp slt i32 %321, %322
  br i1 %323, label %324, label %337

324:                                              ; preds = %320
  %325 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ICOM_PORT, align 8
  %326 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %325, i32 0, i32 8
  %327 = load %struct.TYPE_10__*, %struct.TYPE_10__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %327, i32 0, i32 1
  %329 = load %struct.TYPE_7__*, %struct.TYPE_7__** %328, align 8
  %330 = load i32, i32* %15, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %329, i64 %331
  %333 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %332, i32 0, i32 0
  store i64 0, i64* %333, align 8
  br label %334

334:                                              ; preds = %324
  %335 = load i32, i32* %15, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %15, align 4
  br label %320

337:                                              ; preds = %320
  %338 = load i8, i8* %11, align 1
  %339 = sext i8 %338 to i32
  %340 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ICOM_PORT, align 8
  %341 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %340, i32 0, i32 2
  %342 = load %struct.TYPE_8__*, %struct.TYPE_8__** %341, align 8
  %343 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %342, i32 0, i32 7
  %344 = call i32 @writeb(i32 %339, i32* %343)
  %345 = load i8, i8* %10, align 1
  %346 = sext i8 %345 to i32
  %347 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ICOM_PORT, align 8
  %348 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %347, i32 0, i32 2
  %349 = load %struct.TYPE_8__*, %struct.TYPE_8__** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %349, i32 0, i32 6
  %351 = call i32 @writeb(i32 %346, i32* %350)
  %352 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ICOM_PORT, align 8
  %353 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %352, i32 0, i32 2
  %354 = load %struct.TYPE_8__*, %struct.TYPE_8__** %353, align 8
  %355 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %354, i32 0, i32 5
  %356 = call i32 @readb(i32* %355)
  %357 = trunc i32 %356 to i8
  store i8 %357, i8* %12, align 1
  %358 = load i8, i8* @HDLC_PPP_PURE_ASYNC, align 1
  %359 = sext i8 %358 to i32
  %360 = load i8, i8* @HDLC_FF_FILL, align 1
  %361 = sext i8 %360 to i32
  %362 = or i32 %359, %361
  %363 = load i8, i8* %12, align 1
  %364 = sext i8 %363 to i32
  %365 = or i32 %364, %362
  %366 = trunc i32 %365 to i8
  store i8 %366, i8* %12, align 1
  %367 = load i8, i8* %12, align 1
  %368 = sext i8 %367 to i32
  %369 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ICOM_PORT, align 8
  %370 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %369, i32 0, i32 2
  %371 = load %struct.TYPE_8__*, %struct.TYPE_8__** %370, align 8
  %372 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %371, i32 0, i32 5
  %373 = call i32 @writeb(i32 %368, i32* %372)
  %374 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ICOM_PORT, align 8
  %375 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %374, i32 0, i32 2
  %376 = load %struct.TYPE_8__*, %struct.TYPE_8__** %375, align 8
  %377 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %376, i32 0, i32 4
  %378 = call i32 @writeb(i32 4, i32* %377)
  %379 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ICOM_PORT, align 8
  %380 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %379, i32 0, i32 2
  %381 = load %struct.TYPE_8__*, %struct.TYPE_8__** %380, align 8
  %382 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %381, i32 0, i32 3
  %383 = call i32 @writeb(i32 255, i32* %382)
  %384 = load i32, i32* @CMD_RESTART, align 4
  %385 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ICOM_PORT, align 8
  %386 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %385, i32 0, i32 2
  %387 = load %struct.TYPE_8__*, %struct.TYPE_8__** %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %387, i32 0, i32 0
  %389 = call i32 @writeb(i32 %384, i32* %388)
  store i32 0, i32* %13, align 4
  br label %390

390:                                              ; preds = %402, %337
  %391 = load i32, i32* %13, align 4
  %392 = icmp slt i32 %391, 10
  br i1 %392, label %393, label %405

393:                                              ; preds = %390
  %394 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ICOM_PORT, align 8
  %395 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %394, i32 0, i32 2
  %396 = load %struct.TYPE_8__*, %struct.TYPE_8__** %395, align 8
  %397 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %396, i32 0, i32 0
  %398 = call i32 @readb(i32* %397)
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %400, label %401

400:                                              ; preds = %393
  br label %405

401:                                              ; preds = %393
  br label %402

402:                                              ; preds = %401
  %403 = load i32, i32* %13, align 4
  %404 = add nsw i32 %403, 1
  store i32 %404, i32* %13, align 4
  br label %390

405:                                              ; preds = %400, %390
  %406 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ICOM_PORT, align 8
  %407 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %406, i32 0, i32 8
  %408 = load %struct.TYPE_10__*, %struct.TYPE_10__** %407, align 8
  %409 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %408, i32 0, i32 0
  %410 = load %struct.TYPE_9__*, %struct.TYPE_9__** %409, align 8
  %411 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %410, i64 0
  %412 = ptrtoint %struct.TYPE_9__* %411 to i64
  %413 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ICOM_PORT, align 8
  %414 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %413, i32 0, i32 8
  %415 = load %struct.TYPE_10__*, %struct.TYPE_10__** %414, align 8
  %416 = ptrtoint %struct.TYPE_10__* %415 to i64
  %417 = sub i64 %412, %416
  store i64 %417, i64* %16, align 8
  %418 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ICOM_PORT, align 8
  %419 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %418, i32 0, i32 7
  %420 = load i64, i64* %419, align 8
  %421 = load i64, i64* %16, align 8
  %422 = add i64 %420, %421
  %423 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ICOM_PORT, align 8
  %424 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %423, i32 0, i32 2
  %425 = load %struct.TYPE_8__*, %struct.TYPE_8__** %424, align 8
  %426 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %425, i32 0, i32 2
  %427 = call i32 @writel(i64 %422, i32* %426)
  %428 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ICOM_PORT, align 8
  %429 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %428, i32 0, i32 6
  store i64 0, i64* %429, align 8
  %430 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ICOM_PORT, align 8
  %431 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %430, i32 0, i32 5
  store i64 0, i64* %431, align 8
  %432 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ICOM_PORT, align 8
  %433 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %432, i32 0, i32 4
  %434 = load i64*, i64** %433, align 8
  store i64 0, i64* %434, align 8
  %435 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ICOM_PORT, align 8
  %436 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %435, i32 0, i32 3
  %437 = load i64, i64* %436, align 8
  %438 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ICOM_PORT, align 8
  %439 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %438, i32 0, i32 2
  %440 = load %struct.TYPE_8__*, %struct.TYPE_8__** %439, align 8
  %441 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %440, i32 0, i32 1
  %442 = call i32 @writel(i64 %437, i32* %441)
  %443 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ICOM_PORT, align 8
  %444 = call i32 @trace(%struct.TYPE_11__* %443, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %445 = load i32, i32* @CMD_XMIT_RCV_ENABLE, align 4
  %446 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ICOM_PORT, align 8
  %447 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %446, i32 0, i32 2
  %448 = load %struct.TYPE_8__*, %struct.TYPE_8__** %447, align 8
  %449 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %448, i32 0, i32 0
  %450 = call i32 @writeb(i32 %445, i32* %449)
  %451 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %452 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %451, i32 0, i32 0
  %453 = load i64, i64* %17, align 8
  %454 = call i32 @spin_unlock_irqrestore(i32* %452, i64 %453)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @trace(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i32 @uart_get_baud_rate(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*, i32, i32) #1

declare dso_local i32 @uart_update_timeout(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @readb(i32*) #1

declare dso_local i32 @writeb(i32, i32*) #1

declare dso_local i64 @cpu_to_le16(i32) #1

declare dso_local i32 @writel(i64, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
