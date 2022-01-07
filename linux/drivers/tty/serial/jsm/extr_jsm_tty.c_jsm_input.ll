; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/jsm/extr_jsm_tty.c_jsm_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/jsm/extr_jsm_tty.c_jsm_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jsm_channel = type { i32, i32, i32, i32*, i32, %struct.jsm_board*, i32, i32*, i32, %struct.TYPE_4__ }
%struct.jsm_board = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.tty_port }
%struct.tty_port = type { %struct.tty_struct* }
%struct.tty_struct = type { i32 }

@READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"start\0A\00", align 1
@RQUEUEMASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"input. dropping %d bytes on port %d...\0A\00", align 1
@CH_STOPI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [60 x i8] c"Port %d throttled, not reading any data. head: %x tail: %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"start 2\0A\00", align 1
@RQUEUESIZE = common dso_local global i32 0, align 4
@UART_LSR_BI = common dso_local global i32 0, align 4
@TTY_BREAK = common dso_local global i32 0, align 4
@UART_LSR_PE = common dso_local global i32 0, align 4
@TTY_PARITY = common dso_local global i32 0, align 4
@UART_LSR_FE = common dso_local global i32 0, align 4
@TTY_FRAME = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i32 0, align 4
@IOCTL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"finish\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jsm_input(%struct.jsm_channel* %0) #0 {
  %2 = alloca %struct.jsm_channel*, align 8
  %3 = alloca %struct.jsm_board*, align 8
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.tty_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.jsm_channel* %0, %struct.jsm_channel** %2, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* @READ, align 4
  %15 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %16 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %15, i32 0, i32 5
  %17 = load %struct.jsm_board*, %struct.jsm_board** %16, align 8
  %18 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %17, i32 0, i32 0
  %19 = call i32 (i32, i32*, i8*, ...) @jsm_dbg(i32 %14, i32* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %21 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %20, i32 0, i32 9
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store %struct.tty_port* %24, %struct.tty_port** %5, align 8
  %25 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %26 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %25, i32 0, i32 0
  %27 = load %struct.tty_struct*, %struct.tty_struct** %26, align 8
  store %struct.tty_struct* %27, %struct.tty_struct** %4, align 8
  %28 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %29 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %28, i32 0, i32 5
  %30 = load %struct.jsm_board*, %struct.jsm_board** %29, align 8
  store %struct.jsm_board* %30, %struct.jsm_board** %3, align 8
  %31 = load %struct.jsm_board*, %struct.jsm_board** %3, align 8
  %32 = icmp ne %struct.jsm_board* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %1
  br label %316

34:                                               ; preds = %1
  %35 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %36 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %35, i32 0, i32 6
  %37 = load i64, i64* %10, align 8
  %38 = call i32 @spin_lock_irqsave(i32* %36, i64 %37)
  %39 = load i32, i32* @RQUEUEMASK, align 4
  store i32 %39, i32* %6, align 4
  %40 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %41 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = and i32 %42, %43
  store i32 %44, i32* %7, align 4
  %45 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %46 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %6, align 4
  %49 = and i32 %47, %48
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = sub nsw i32 %50, %51
  %53 = load i32, i32* %6, align 4
  %54 = and i32 %52, %53
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %34
  %58 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %59 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %58, i32 0, i32 6
  %60 = load i64, i64* %10, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* %59, i64 %60)
  br label %316

62:                                               ; preds = %34
  %63 = load i32, i32* @READ, align 4
  %64 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %65 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %64, i32 0, i32 5
  %66 = load %struct.jsm_board*, %struct.jsm_board** %65, align 8
  %67 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %66, i32 0, i32 0
  %68 = call i32 (i32, i32*, i8*, ...) @jsm_dbg(i32 %63, i32* %67, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %69 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %70 = icmp ne %struct.tty_struct* %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %62
  %72 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %73 = call i32 @C_CREAD(%struct.tty_struct* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %95, label %75

75:                                               ; preds = %71, %62
  %76 = load i32, i32* @READ, align 4
  %77 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %78 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %77, i32 0, i32 5
  %79 = load %struct.jsm_board*, %struct.jsm_board** %78, align 8
  %80 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %79, i32 0, i32 0
  %81 = load i32, i32* %9, align 4
  %82 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %83 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %82, i32 0, i32 8
  %84 = load i32, i32* %83, align 8
  %85 = call i32 (i32, i32*, i8*, ...) @jsm_dbg(i32 %76, i32* %80, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %81, i32 %84)
  %86 = load i32, i32* %8, align 4
  %87 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %88 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %90 = call i32 @jsm_check_queue_flow_control(%struct.jsm_channel* %89)
  %91 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %92 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %91, i32 0, i32 6
  %93 = load i64, i64* %10, align 8
  %94 = call i32 @spin_unlock_irqrestore(i32* %92, i64 %93)
  br label %316

95:                                               ; preds = %71
  %96 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %97 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @CH_STOPI, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %118

102:                                              ; preds = %95
  %103 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %104 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %103, i32 0, i32 6
  %105 = load i64, i64* %10, align 8
  %106 = call i32 @spin_unlock_irqrestore(i32* %104, i64 %105)
  %107 = load i32, i32* @READ, align 4
  %108 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %109 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %108, i32 0, i32 5
  %110 = load %struct.jsm_board*, %struct.jsm_board** %109, align 8
  %111 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %110, i32 0, i32 0
  %112 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %113 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %112, i32 0, i32 8
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* %8, align 4
  %117 = call i32 (i32, i32*, i8*, ...) @jsm_dbg(i32 %107, i32* %111, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %114, i32 %115, i32 %116)
  br label %316

118:                                              ; preds = %95
  %119 = load i32, i32* @READ, align 4
  %120 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %121 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %120, i32 0, i32 5
  %122 = load %struct.jsm_board*, %struct.jsm_board** %121, align 8
  %123 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %122, i32 0, i32 0
  %124 = call i32 (i32, i32*, i8*, ...) @jsm_dbg(i32 %119, i32* %123, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %125 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %126 = load i32, i32* %9, align 4
  %127 = call i32 @tty_buffer_request_room(%struct.tty_port* %125, i32 %126)
  store i32 %127, i32* %11, align 4
  br label %128

128:                                              ; preds = %281, %118
  %129 = load i32, i32* %11, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %291

131:                                              ; preds = %128
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* %8, align 4
  %134 = icmp sge i32 %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %131
  %136 = load i32, i32* %7, align 4
  br label %139

137:                                              ; preds = %131
  %138 = load i32, i32* @RQUEUESIZE, align 4
  br label %139

139:                                              ; preds = %137, %135
  %140 = phi i32 [ %136, %135 ], [ %138, %137 ]
  %141 = load i32, i32* %8, align 4
  %142 = sub nsw i32 %140, %141
  store i32 %142, i32* %12, align 4
  %143 = load i32, i32* %12, align 4
  %144 = load i32, i32* %11, align 4
  %145 = call i32 @min(i32 %143, i32 %144)
  store i32 %145, i32* %12, align 4
  %146 = load i32, i32* %12, align 4
  %147 = icmp sle i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %139
  br label %291

149:                                              ; preds = %139
  %150 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %151 = call i64 @I_PARMRK(%struct.tty_struct* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %161, label %153

153:                                              ; preds = %149
  %154 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %155 = call i64 @I_BRKINT(%struct.tty_struct* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %161, label %157

157:                                              ; preds = %153
  %158 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %159 = call i64 @I_INPCK(%struct.tty_struct* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %271

161:                                              ; preds = %157, %153, %149
  store i32 0, i32* %13, align 4
  br label %162

162:                                              ; preds = %267, %161
  %163 = load i32, i32* %13, align 4
  %164 = load i32, i32* %12, align 4
  %165 = icmp slt i32 %163, %164
  br i1 %165, label %166, label %270

166:                                              ; preds = %162
  %167 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %168 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %167, i32 0, i32 3
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %8, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32, i32* %13, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @UART_LSR_BI, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %194

180:                                              ; preds = %166
  %181 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %182 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %183 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %182, i32 0, i32 7
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %8, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = load i32, i32* %13, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @TTY_BREAK, align 4
  %193 = call i32 @tty_insert_flip_char(%struct.tty_port* %181, i32 %191, i32 %192)
  br label %266

194:                                              ; preds = %166
  %195 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %196 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %195, i32 0, i32 3
  %197 = load i32*, i32** %196, align 8
  %198 = load i32, i32* %8, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  %201 = load i32, i32* %13, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* @UART_LSR_PE, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %222

208:                                              ; preds = %194
  %209 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %210 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %211 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %210, i32 0, i32 7
  %212 = load i32*, i32** %211, align 8
  %213 = load i32, i32* %8, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  %216 = load i32, i32* %13, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @TTY_PARITY, align 4
  %221 = call i32 @tty_insert_flip_char(%struct.tty_port* %209, i32 %219, i32 %220)
  br label %265

222:                                              ; preds = %194
  %223 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %224 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %223, i32 0, i32 3
  %225 = load i32*, i32** %224, align 8
  %226 = load i32, i32* %8, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  %229 = load i32, i32* %13, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* @UART_LSR_FE, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %250

236:                                              ; preds = %222
  %237 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %238 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %239 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %238, i32 0, i32 7
  %240 = load i32*, i32** %239, align 8
  %241 = load i32, i32* %8, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %240, i64 %242
  %244 = load i32, i32* %13, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %243, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* @TTY_FRAME, align 4
  %249 = call i32 @tty_insert_flip_char(%struct.tty_port* %237, i32 %247, i32 %248)
  br label %264

250:                                              ; preds = %222
  %251 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %252 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %253 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %252, i32 0, i32 7
  %254 = load i32*, i32** %253, align 8
  %255 = load i32, i32* %8, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %254, i64 %256
  %258 = load i32, i32* %13, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %257, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = load i32, i32* @TTY_NORMAL, align 4
  %263 = call i32 @tty_insert_flip_char(%struct.tty_port* %251, i32 %261, i32 %262)
  br label %264

264:                                              ; preds = %250, %236
  br label %265

265:                                              ; preds = %264, %208
  br label %266

266:                                              ; preds = %265, %180
  br label %267

267:                                              ; preds = %266
  %268 = load i32, i32* %13, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %13, align 4
  br label %162

270:                                              ; preds = %162
  br label %281

271:                                              ; preds = %157
  %272 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %273 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %274 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %273, i32 0, i32 7
  %275 = load i32*, i32** %274, align 8
  %276 = load i32, i32* %8, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %275, i64 %277
  %279 = load i32, i32* %12, align 4
  %280 = call i32 @tty_insert_flip_string(%struct.tty_port* %272, i32* %278, i32 %279)
  br label %281

281:                                              ; preds = %271, %270
  %282 = load i32, i32* %12, align 4
  %283 = load i32, i32* %8, align 4
  %284 = add nsw i32 %283, %282
  store i32 %284, i32* %8, align 4
  %285 = load i32, i32* %12, align 4
  %286 = load i32, i32* %11, align 4
  %287 = sub nsw i32 %286, %285
  store i32 %287, i32* %11, align 4
  %288 = load i32, i32* %6, align 4
  %289 = load i32, i32* %8, align 4
  %290 = and i32 %289, %288
  store i32 %290, i32* %8, align 4
  br label %128

291:                                              ; preds = %148, %128
  %292 = load i32, i32* %8, align 4
  %293 = load i32, i32* %6, align 4
  %294 = and i32 %292, %293
  %295 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %296 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %295, i32 0, i32 1
  store i32 %294, i32* %296, align 4
  %297 = load i32, i32* %8, align 4
  %298 = load i32, i32* %6, align 4
  %299 = and i32 %297, %298
  %300 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %301 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %300, i32 0, i32 4
  store i32 %299, i32* %301, align 8
  %302 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %303 = call i32 @jsm_check_queue_flow_control(%struct.jsm_channel* %302)
  %304 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %305 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %304, i32 0, i32 6
  %306 = load i64, i64* %10, align 8
  %307 = call i32 @spin_unlock_irqrestore(i32* %305, i64 %306)
  %308 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %309 = call i32 @tty_flip_buffer_push(%struct.tty_port* %308)
  %310 = load i32, i32* @IOCTL, align 4
  %311 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %312 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %311, i32 0, i32 5
  %313 = load %struct.jsm_board*, %struct.jsm_board** %312, align 8
  %314 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %313, i32 0, i32 0
  %315 = call i32 (i32, i32*, i8*, ...) @jsm_dbg(i32 %310, i32* %314, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %316

316:                                              ; preds = %291, %102, %75, %57, %33
  ret void
}

declare dso_local i32 @jsm_dbg(i32, i32*, i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @C_CREAD(%struct.tty_struct*) #1

declare dso_local i32 @jsm_check_queue_flow_control(%struct.jsm_channel*) #1

declare dso_local i32 @tty_buffer_request_room(%struct.tty_port*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @I_PARMRK(%struct.tty_struct*) #1

declare dso_local i64 @I_BRKINT(%struct.tty_struct*) #1

declare dso_local i64 @I_INPCK(%struct.tty_struct*) #1

declare dso_local i32 @tty_insert_flip_char(%struct.tty_port*, i32, i32) #1

declare dso_local i32 @tty_insert_flip_string(%struct.tty_port*, i32*, i32) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
