; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_max310x.c_max310x_handle_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_max310x.c_max310x_handle_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i64, i32 }
%struct.max310x_one = type { i32* }

@MAX310X_LSR_RXOVR_BIT = common dso_local global i32 0, align 4
@MAX310X_LSR_IRQSTS_REG = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Hardware RX FIFO overrun\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Possible RX FIFO overrun\0A\00", align 1
@MAX310X_RHR_REG = common dso_local global i32 0, align 4
@MAX310X_LSR_RXPAR_BIT = common dso_local global i32 0, align 4
@MAX310X_LSR_FRERR_BIT = common dso_local global i32 0, align 4
@MAX310X_LSR_RXBRK_BIT = common dso_local global i32 0, align 4
@TTY_BREAK = common dso_local global i32 0, align 4
@TTY_PARITY = common dso_local global i32 0, align 4
@TTY_FRAME = common dso_local global i32 0, align 4
@TTY_OVERRUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32)* @max310x_handle_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max310x_handle_rx(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.max310x_one*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %11 = call %struct.max310x_one* @to_max310x_port(%struct.uart_port* %10)
  store %struct.max310x_one* %11, %struct.max310x_one** %5, align 8
  %12 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %13 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @MAX310X_LSR_RXOVR_BIT, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %89

17:                                               ; preds = %2
  %18 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %19 = load i32, i32* @MAX310X_LSR_IRQSTS_REG, align 4
  %20 = call i32 @max310x_port_read(%struct.uart_port* %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %22 = load %struct.max310x_one*, %struct.max310x_one** %5, align 8
  %23 = getelementptr inbounds %struct.max310x_one, %struct.max310x_one* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @max310x_batch_read(%struct.uart_port* %21, i32* %24, i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = zext i32 %27 to i64
  %29 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %30 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, %28
  store i64 %33, i64* %31, align 8
  %34 = load i32, i32* @TTY_NORMAL, align 4
  store i32 %34, i32* %8, align 4
  %35 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %36 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @MAX310X_LSR_RXOVR_BIT, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %17
  %45 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %46 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @dev_warn_ratelimited(i32 %47, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %49 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %50 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 8
  br label %54

54:                                               ; preds = %44, %17
  store i32 0, i32* %9, align 4
  br label %55

55:                                               ; preds = %72, %54
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %4, align 4
  %58 = sub i32 %57, 1
  %59 = icmp ult i32 %56, %58
  br i1 %59, label %60, label %75

60:                                               ; preds = %55
  %61 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.max310x_one*, %struct.max310x_one** %5, align 8
  %64 = getelementptr inbounds %struct.max310x_one, %struct.max310x_one* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @uart_insert_char(%struct.uart_port* %61, i32 %62, i32 0, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %60
  %73 = load i32, i32* %9, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %9, align 4
  br label %55

75:                                               ; preds = %55
  %76 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @MAX310X_LSR_RXOVR_BIT, align 4
  %79 = load %struct.max310x_one*, %struct.max310x_one** %5, align 8
  %80 = getelementptr inbounds %struct.max310x_one, %struct.max310x_one* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sub i32 %82, 1
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @uart_insert_char(%struct.uart_port* %76, i32 %77, i32 %78, i32 %86, i32 %87)
  br label %252

89:                                               ; preds = %2
  %90 = load i32, i32* %4, align 4
  %91 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %92 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp uge i32 %90, %93
  %95 = zext i1 %94 to i32
  %96 = call i64 @unlikely(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %111

98:                                               ; preds = %89
  %99 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %100 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @dev_warn_ratelimited(i32 %101, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %103 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %104 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %103, i32 0, i32 4
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 8
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 8
  %108 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %109 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %4, align 4
  br label %111

111:                                              ; preds = %98, %89
  br label %112

112:                                              ; preds = %244, %243, %235, %155, %111
  %113 = load i32, i32* %4, align 4
  %114 = add i32 %113, -1
  store i32 %114, i32* %4, align 4
  %115 = icmp ne i32 %113, 0
  br i1 %115, label %116, label %251

116:                                              ; preds = %112
  %117 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %118 = load i32, i32* @MAX310X_RHR_REG, align 4
  %119 = call i32 @max310x_port_read(%struct.uart_port* %117, i32 %118)
  store i32 %119, i32* %7, align 4
  %120 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %121 = load i32, i32* @MAX310X_LSR_IRQSTS_REG, align 4
  %122 = call i32 @max310x_port_read(%struct.uart_port* %120, i32 %121)
  store i32 %122, i32* %6, align 4
  %123 = load i32, i32* @MAX310X_LSR_RXPAR_BIT, align 4
  %124 = load i32, i32* @MAX310X_LSR_FRERR_BIT, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @MAX310X_LSR_RXOVR_BIT, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* @MAX310X_LSR_RXBRK_BIT, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* %6, align 4
  %131 = and i32 %130, %129
  store i32 %131, i32* %6, align 4
  %132 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %133 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %132, i32 0, i32 4
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 4
  %135 = load i64, i64* %134, align 8
  %136 = add nsw i64 %135, 1
  store i64 %136, i64* %134, align 8
  %137 = load i32, i32* @TTY_NORMAL, align 4
  store i32 %137, i32* %8, align 4
  %138 = load i32, i32* %6, align 4
  %139 = call i64 @unlikely(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %230

141:                                              ; preds = %116
  %142 = load i32, i32* %6, align 4
  %143 = load i32, i32* @MAX310X_LSR_RXBRK_BIT, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %157

146:                                              ; preds = %141
  %147 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %148 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %147, i32 0, i32 4
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %149, align 4
  %152 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %153 = call i64 @uart_handle_break(%struct.uart_port* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %146
  br label %112

156:                                              ; preds = %146
  br label %193

157:                                              ; preds = %141
  %158 = load i32, i32* %6, align 4
  %159 = load i32, i32* @MAX310X_LSR_RXPAR_BIT, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %157
  %163 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %164 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %163, i32 0, i32 4
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %165, align 8
  br label %192

168:                                              ; preds = %157
  %169 = load i32, i32* %6, align 4
  %170 = load i32, i32* @MAX310X_LSR_FRERR_BIT, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %179

173:                                              ; preds = %168
  %174 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %175 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %174, i32 0, i32 4
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %176, align 4
  br label %191

179:                                              ; preds = %168
  %180 = load i32, i32* %6, align 4
  %181 = load i32, i32* @MAX310X_LSR_RXOVR_BIT, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %179
  %185 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %186 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %185, i32 0, i32 4
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %187, align 8
  br label %190

190:                                              ; preds = %184, %179
  br label %191

191:                                              ; preds = %190, %173
  br label %192

192:                                              ; preds = %191, %162
  br label %193

193:                                              ; preds = %192, %156
  %194 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %195 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* %6, align 4
  %198 = and i32 %197, %196
  store i32 %198, i32* %6, align 4
  %199 = load i32, i32* %6, align 4
  %200 = load i32, i32* @MAX310X_LSR_RXBRK_BIT, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %193
  %204 = load i32, i32* @TTY_BREAK, align 4
  store i32 %204, i32* %8, align 4
  br label %229

205:                                              ; preds = %193
  %206 = load i32, i32* %6, align 4
  %207 = load i32, i32* @MAX310X_LSR_RXPAR_BIT, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %205
  %211 = load i32, i32* @TTY_PARITY, align 4
  store i32 %211, i32* %8, align 4
  br label %228

212:                                              ; preds = %205
  %213 = load i32, i32* %6, align 4
  %214 = load i32, i32* @MAX310X_LSR_FRERR_BIT, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %212
  %218 = load i32, i32* @TTY_FRAME, align 4
  store i32 %218, i32* %8, align 4
  br label %227

219:                                              ; preds = %212
  %220 = load i32, i32* %6, align 4
  %221 = load i32, i32* @MAX310X_LSR_RXOVR_BIT, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %219
  %225 = load i32, i32* @TTY_OVERRUN, align 4
  store i32 %225, i32* %8, align 4
  br label %226

226:                                              ; preds = %224, %219
  br label %227

227:                                              ; preds = %226, %217
  br label %228

228:                                              ; preds = %227, %210
  br label %229

229:                                              ; preds = %228, %203
  br label %230

230:                                              ; preds = %229, %116
  %231 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %232 = load i32, i32* %7, align 4
  %233 = call i64 @uart_handle_sysrq_char(%struct.uart_port* %231, i32 %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %236

235:                                              ; preds = %230
  br label %112

236:                                              ; preds = %230
  %237 = load i32, i32* %6, align 4
  %238 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %239 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 8
  %241 = and i32 %237, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %236
  br label %112

244:                                              ; preds = %236
  %245 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %246 = load i32, i32* %6, align 4
  %247 = load i32, i32* @MAX310X_LSR_RXOVR_BIT, align 4
  %248 = load i32, i32* %7, align 4
  %249 = load i32, i32* %8, align 4
  %250 = call i32 @uart_insert_char(%struct.uart_port* %245, i32 %246, i32 %247, i32 %248, i32 %249)
  br label %112

251:                                              ; preds = %112
  br label %252

252:                                              ; preds = %251, %75
  %253 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %254 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %253, i32 0, i32 3
  %255 = load %struct.TYPE_4__*, %struct.TYPE_4__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %255, i32 0, i32 0
  %257 = call i32 @tty_flip_buffer_push(i32* %256)
  ret void
}

declare dso_local %struct.max310x_one* @to_max310x_port(%struct.uart_port*) #1

declare dso_local i32 @max310x_port_read(%struct.uart_port*, i32) #1

declare dso_local i32 @max310x_batch_read(%struct.uart_port*, i32*, i32) #1

declare dso_local i32 @dev_warn_ratelimited(i32, i8*) #1

declare dso_local i32 @uart_insert_char(%struct.uart_port*, i32, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @uart_handle_break(%struct.uart_port*) #1

declare dso_local i64 @uart_handle_sysrq_char(%struct.uart_port*, i32) #1

declare dso_local i32 @tty_flip_buffer_push(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
