; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sunsu.c_receive_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sunsu.c_receive_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_sunsu_port = type { i8, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i8, i8, %struct.TYPE_8__*, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.tty_port }
%struct.tty_port = type { i32 }

@UART_RX = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i8 0, align 1
@UART_LSR_BI = common dso_local global i8 0, align 1
@UART_LSR_PE = common dso_local global i8 0, align 1
@UART_LSR_FE = common dso_local global i8 0, align 1
@UART_LSR_OE = common dso_local global i8 0, align 1
@TTY_BREAK = common dso_local global i8 0, align 1
@TTY_PARITY = common dso_local global i8 0, align 1
@TTY_FRAME = common dso_local global i8 0, align 1
@TTY_OVERRUN = common dso_local global i8 0, align 1
@UART_LSR = common dso_local global i32 0, align 4
@UART_LSR_DR = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_sunsu_port*, i8*)* @receive_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @receive_chars(%struct.uart_sunsu_port* %0, i8* %1) #0 {
  %3 = alloca %struct.uart_sunsu_port*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tty_port*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.uart_sunsu_port* %0, %struct.uart_sunsu_port** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %11 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 5
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store %struct.tty_port* %14, %struct.tty_port** %5, align 8
  store i32 256, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %268, %2
  %16 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %17 = load i32, i32* @UART_RX, align 4
  %18 = call zeroext i8 @serial_inp(%struct.uart_sunsu_port* %16, i32 %17)
  store i8 %18, i8* %6, align 1
  %19 = load i8, i8* @TTY_NORMAL, align 1
  store i8 %19, i8* %7, align 1
  %20 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %21 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = load i8, i8* @UART_LSR_BI, align 1
  %30 = zext i8 %29 to i32
  %31 = load i8, i8* @UART_LSR_PE, align 1
  %32 = zext i8 %31 to i32
  %33 = or i32 %30, %32
  %34 = load i8, i8* @UART_LSR_FE, align 1
  %35 = zext i8 %34 to i32
  %36 = or i32 %33, %35
  %37 = load i8, i8* @UART_LSR_OE, align 1
  %38 = zext i8 %37 to i32
  %39 = or i32 %36, %38
  %40 = and i32 %28, %39
  %41 = trunc i32 %40 to i8
  %42 = call i64 @unlikely(i8 zeroext %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %215

44:                                               ; preds = %15
  %45 = load i8*, i8** %4, align 8
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = load i8, i8* @UART_LSR_BI, align 1
  %49 = zext i8 %48 to i32
  %50 = and i32 %47, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %95

52:                                               ; preds = %44
  %53 = load i8, i8* @UART_LSR_FE, align 1
  %54 = zext i8 %53 to i32
  %55 = load i8, i8* @UART_LSR_PE, align 1
  %56 = zext i8 %55 to i32
  %57 = or i32 %54, %56
  %58 = xor i32 %57, -1
  %59 = load i8*, i8** %4, align 8
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = and i32 %61, %58
  %63 = trunc i32 %62 to i8
  store i8 %63, i8* %59, align 1
  %64 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %65 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  %70 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %71 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 3
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = icmp ne %struct.TYPE_8__* %73, null
  br i1 %74, label %75, label %88

75:                                               ; preds = %52
  %76 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %77 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %81 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 3
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %79, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %75
  store i32 1, i32* %9, align 4
  br label %88

88:                                               ; preds = %87, %75, %52
  %89 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %90 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %89, i32 0, i32 1
  %91 = call i64 @uart_handle_break(%struct.TYPE_9__* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  br label %251

94:                                               ; preds = %88
  br label %127

95:                                               ; preds = %44
  %96 = load i8*, i8** %4, align 8
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = load i8, i8* @UART_LSR_PE, align 1
  %100 = zext i8 %99 to i32
  %101 = and i32 %98, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %95
  %104 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %105 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 4
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 8
  br label %126

110:                                              ; preds = %95
  %111 = load i8*, i8** %4, align 8
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = load i8, i8* @UART_LSR_FE, align 1
  %115 = zext i8 %114 to i32
  %116 = and i32 %113, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %110
  %119 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %120 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 4
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 4
  br label %125

125:                                              ; preds = %118, %110
  br label %126

126:                                              ; preds = %125, %103
  br label %127

127:                                              ; preds = %126, %94
  %128 = load i8*, i8** %4, align 8
  %129 = load i8, i8* %128, align 1
  %130 = zext i8 %129 to i32
  %131 = load i8, i8* @UART_LSR_OE, align 1
  %132 = zext i8 %131 to i32
  %133 = and i32 %130, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %127
  %136 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %137 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 4
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %139, align 8
  br label %142

142:                                              ; preds = %135, %127
  %143 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %144 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 1
  %146 = load i8, i8* %145, align 8
  %147 = zext i8 %146 to i32
  %148 = load i8*, i8** %4, align 8
  %149 = load i8, i8* %148, align 1
  %150 = zext i8 %149 to i32
  %151 = and i32 %150, %147
  %152 = trunc i32 %151 to i8
  store i8 %152, i8* %148, align 1
  %153 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %154 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 3
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %155, align 8
  %157 = icmp ne %struct.TYPE_8__* %156, null
  br i1 %157, label %158, label %182

158:                                              ; preds = %142
  %159 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %160 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %164 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 3
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = icmp eq i64 %162, %168
  br i1 %169, label %170, label %182

170:                                              ; preds = %158
  %171 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %172 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %171, i32 0, i32 0
  %173 = load i8, i8* %172, align 8
  %174 = zext i8 %173 to i32
  %175 = load i8*, i8** %4, align 8
  %176 = load i8, i8* %175, align 1
  %177 = zext i8 %176 to i32
  %178 = or i32 %177, %174
  %179 = trunc i32 %178 to i8
  store i8 %179, i8* %175, align 1
  %180 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %181 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %180, i32 0, i32 0
  store i8 0, i8* %181, align 8
  br label %182

182:                                              ; preds = %170, %158, %142
  %183 = load i8*, i8** %4, align 8
  %184 = load i8, i8* %183, align 1
  %185 = zext i8 %184 to i32
  %186 = load i8, i8* @UART_LSR_BI, align 1
  %187 = zext i8 %186 to i32
  %188 = and i32 %185, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %182
  %191 = load i8, i8* @TTY_BREAK, align 1
  store i8 %191, i8* %7, align 1
  br label %214

192:                                              ; preds = %182
  %193 = load i8*, i8** %4, align 8
  %194 = load i8, i8* %193, align 1
  %195 = zext i8 %194 to i32
  %196 = load i8, i8* @UART_LSR_PE, align 1
  %197 = zext i8 %196 to i32
  %198 = and i32 %195, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %192
  %201 = load i8, i8* @TTY_PARITY, align 1
  store i8 %201, i8* %7, align 1
  br label %213

202:                                              ; preds = %192
  %203 = load i8*, i8** %4, align 8
  %204 = load i8, i8* %203, align 1
  %205 = zext i8 %204 to i32
  %206 = load i8, i8* @UART_LSR_FE, align 1
  %207 = zext i8 %206 to i32
  %208 = and i32 %205, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %202
  %211 = load i8, i8* @TTY_FRAME, align 1
  store i8 %211, i8* %7, align 1
  br label %212

212:                                              ; preds = %210, %202
  br label %213

213:                                              ; preds = %212, %200
  br label %214

214:                                              ; preds = %213, %190
  br label %215

215:                                              ; preds = %214, %15
  %216 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %217 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %216, i32 0, i32 1
  %218 = load i8, i8* %6, align 1
  %219 = call i64 @uart_handle_sysrq_char(%struct.TYPE_9__* %217, i8 zeroext %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %215
  br label %251

222:                                              ; preds = %215
  %223 = load i8*, i8** %4, align 8
  %224 = load i8, i8* %223, align 1
  %225 = zext i8 %224 to i32
  %226 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %227 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i32 0, i32 2
  %229 = load i8, i8* %228, align 1
  %230 = zext i8 %229 to i32
  %231 = and i32 %225, %230
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %238

233:                                              ; preds = %222
  %234 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %235 = load i8, i8* %6, align 1
  %236 = load i8, i8* %7, align 1
  %237 = call i32 @tty_insert_flip_char(%struct.tty_port* %234, i8 zeroext %235, i8 zeroext %236)
  br label %238

238:                                              ; preds = %233, %222
  %239 = load i8*, i8** %4, align 8
  %240 = load i8, i8* %239, align 1
  %241 = zext i8 %240 to i32
  %242 = load i8, i8* @UART_LSR_OE, align 1
  %243 = zext i8 %242 to i32
  %244 = and i32 %241, %243
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %250

246:                                              ; preds = %238
  %247 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %248 = load i8, i8* @TTY_OVERRUN, align 1
  %249 = call i32 @tty_insert_flip_char(%struct.tty_port* %247, i8 zeroext 0, i8 zeroext %248)
  br label %250

250:                                              ; preds = %246, %238
  br label %251

251:                                              ; preds = %250, %221, %93
  %252 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %253 = load i32, i32* @UART_LSR, align 4
  %254 = call zeroext i8 @serial_inp(%struct.uart_sunsu_port* %252, i32 %253)
  %255 = load i8*, i8** %4, align 8
  store i8 %254, i8* %255, align 1
  br label %256

256:                                              ; preds = %251
  %257 = load i8*, i8** %4, align 8
  %258 = load i8, i8* %257, align 1
  %259 = zext i8 %258 to i32
  %260 = load i8, i8* @UART_LSR_DR, align 1
  %261 = zext i8 %260 to i32
  %262 = and i32 %259, %261
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %268

264:                                              ; preds = %256
  %265 = load i32, i32* %8, align 4
  %266 = add nsw i32 %265, -1
  store i32 %266, i32* %8, align 4
  %267 = icmp sgt i32 %265, 0
  br label %268

268:                                              ; preds = %264, %256
  %269 = phi i1 [ false, %256 ], [ %267, %264 ]
  br i1 %269, label %15, label %270

270:                                              ; preds = %268
  %271 = load i32, i32* %9, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %275

273:                                              ; preds = %270
  %274 = call i32 (...) @sun_do_break()
  br label %275

275:                                              ; preds = %273, %270
  ret void
}

declare dso_local zeroext i8 @serial_inp(%struct.uart_sunsu_port*, i32) #1

declare dso_local i64 @unlikely(i8 zeroext) #1

declare dso_local i64 @uart_handle_break(%struct.TYPE_9__*) #1

declare dso_local i64 @uart_handle_sysrq_char(%struct.TYPE_9__*, i8 zeroext) #1

declare dso_local i32 @tty_insert_flip_char(%struct.tty_port*, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @sun_do_break(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
