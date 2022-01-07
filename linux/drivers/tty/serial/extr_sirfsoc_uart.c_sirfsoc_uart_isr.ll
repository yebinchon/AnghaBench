; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sirfsoc_uart.c_sirfsoc_uart_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sirfsoc_uart.c_sirfsoc_uart_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sirfsoc_uart_port = type { i64, i32, i32, i32, %struct.TYPE_5__*, %struct.uart_port }
%struct.TYPE_5__ = type { i64, %struct.sirfsoc_int_en, %struct.sirfsoc_int_status, %struct.sirfsoc_fifo_status, %struct.sirfsoc_register }
%struct.sirfsoc_int_en = type { i64, i64, i32 }
%struct.sirfsoc_int_status = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.sirfsoc_fifo_status = type { i64 (%struct.uart_port*)* }
%struct.sirfsoc_register = type { i32, i32, i32, i32, i32, i32 }
%struct.uart_port = type { i64, i32, i32, %struct.TYPE_4__, %struct.uart_state* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.uart_state = type { %struct.TYPE_6__, %struct.circ_buf }
%struct.TYPE_6__ = type { i32 }
%struct.circ_buf = type { i32 }

@TTY_NORMAL = common dso_local global i64 0, align 8
@TTY_OVERRUN = common dso_local global i64 0, align 8
@TTY_FRAME = common dso_local global i64 0, align 8
@TTY_PARITY = common dso_local global i64 0, align 8
@SIRFUART_FIFO_RESET = common dso_local global i64 0, align 8
@SIRFUART_FIFO_START = common dso_local global i64 0, align 8
@SIRF_REAL_UART = common dso_local global i64 0, align 8
@SIRFUART_AFC_CTS_STATUS = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sirfsoc_uart_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sirfsoc_uart_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sirfsoc_uart_port*, align 8
  %10 = alloca %struct.uart_port*, align 8
  %11 = alloca %struct.sirfsoc_register*, align 8
  %12 = alloca %struct.sirfsoc_fifo_status*, align 8
  %13 = alloca %struct.sirfsoc_int_status*, align 8
  %14 = alloca %struct.sirfsoc_int_en*, align 8
  %15 = alloca %struct.uart_state*, align 8
  %16 = alloca %struct.circ_buf*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %17 = load i64, i64* @TTY_NORMAL, align 8
  store i64 %17, i64* %8, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = bitcast i8* %18 to %struct.sirfsoc_uart_port*
  store %struct.sirfsoc_uart_port* %19, %struct.sirfsoc_uart_port** %9, align 8
  %20 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %9, align 8
  %21 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %20, i32 0, i32 5
  store %struct.uart_port* %21, %struct.uart_port** %10, align 8
  %22 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %9, align 8
  %23 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %22, i32 0, i32 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 4
  store %struct.sirfsoc_register* %25, %struct.sirfsoc_register** %11, align 8
  %26 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %9, align 8
  %27 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %26, i32 0, i32 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 3
  store %struct.sirfsoc_fifo_status* %29, %struct.sirfsoc_fifo_status** %12, align 8
  %30 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %9, align 8
  %31 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %30, i32 0, i32 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 2
  store %struct.sirfsoc_int_status* %33, %struct.sirfsoc_int_status** %13, align 8
  %34 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %9, align 8
  %35 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %34, i32 0, i32 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  store %struct.sirfsoc_int_en* %37, %struct.sirfsoc_int_en** %14, align 8
  %38 = load %struct.uart_port*, %struct.uart_port** %10, align 8
  %39 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %38, i32 0, i32 4
  %40 = load %struct.uart_state*, %struct.uart_state** %39, align 8
  store %struct.uart_state* %40, %struct.uart_state** %15, align 8
  %41 = load %struct.uart_port*, %struct.uart_port** %10, align 8
  %42 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %41, i32 0, i32 4
  %43 = load %struct.uart_state*, %struct.uart_state** %42, align 8
  %44 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %43, i32 0, i32 1
  store %struct.circ_buf* %44, %struct.circ_buf** %16, align 8
  %45 = load %struct.uart_port*, %struct.uart_port** %10, align 8
  %46 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %45, i32 0, i32 1
  %47 = call i32 @spin_lock(i32* %46)
  %48 = load %struct.uart_port*, %struct.uart_port** %10, align 8
  %49 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %11, align 8
  %50 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @rd_regl(%struct.uart_port* %48, i32 %51)
  store i64 %52, i64* %6, align 8
  %53 = load %struct.uart_port*, %struct.uart_port** %10, align 8
  %54 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %11, align 8
  %55 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = load i64, i64* %6, align 8
  %58 = call i32 @wr_regl(%struct.uart_port* %53, i32 %56, i64 %57)
  %59 = load %struct.uart_port*, %struct.uart_port** %10, align 8
  %60 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %11, align 8
  %61 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @rd_regl(%struct.uart_port* %59, i32 %62)
  %64 = load i64, i64* %6, align 8
  %65 = and i64 %64, %63
  store i64 %65, i64* %6, align 8
  %66 = load i64, i64* %6, align 8
  %67 = load %struct.sirfsoc_int_status*, %struct.sirfsoc_int_status** %13, align 8
  %68 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %9, align 8
  %69 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %68, i32 0, i32 4
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i64 @SIRFUART_ERR_INT_STAT(%struct.sirfsoc_int_status* %67, i64 %72)
  %74 = and i64 %66, %73
  %75 = call i64 @unlikely(i64 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %167

77:                                               ; preds = %2
  %78 = load i64, i64* %6, align 8
  %79 = load %struct.sirfsoc_int_status*, %struct.sirfsoc_int_status** %13, align 8
  %80 = getelementptr inbounds %struct.sirfsoc_int_status, %struct.sirfsoc_int_status* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = and i64 %78, %81
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %95

84:                                               ; preds = %77
  %85 = load %struct.uart_port*, %struct.uart_port** %10, align 8
  %86 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 4
  %90 = load %struct.uart_port*, %struct.uart_port** %10, align 8
  %91 = call i64 @uart_handle_break(%struct.uart_port* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %84
  br label %168

94:                                               ; preds = %84
  br label %95

95:                                               ; preds = %94, %77
  %96 = load i64, i64* %6, align 8
  %97 = load %struct.sirfsoc_int_status*, %struct.sirfsoc_int_status** %13, align 8
  %98 = getelementptr inbounds %struct.sirfsoc_int_status, %struct.sirfsoc_int_status* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = and i64 %96, %99
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %95
  %103 = load %struct.uart_port*, %struct.uart_port** %10, align 8
  %104 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 8
  %108 = load i64, i64* @TTY_OVERRUN, align 8
  store i64 %108, i64* %8, align 8
  br label %109

109:                                              ; preds = %102, %95
  %110 = load i64, i64* %6, align 8
  %111 = load %struct.sirfsoc_int_status*, %struct.sirfsoc_int_status** %13, align 8
  %112 = getelementptr inbounds %struct.sirfsoc_int_status, %struct.sirfsoc_int_status* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = and i64 %110, %113
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %109
  %117 = load %struct.uart_port*, %struct.uart_port** %10, align 8
  %118 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %119, align 4
  %122 = load i64, i64* @TTY_FRAME, align 8
  store i64 %122, i64* %8, align 8
  br label %123

123:                                              ; preds = %116, %109
  %124 = load i64, i64* %6, align 8
  %125 = load %struct.sirfsoc_int_status*, %struct.sirfsoc_int_status** %13, align 8
  %126 = getelementptr inbounds %struct.sirfsoc_int_status, %struct.sirfsoc_int_status* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = and i64 %124, %127
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %123
  %131 = load %struct.uart_port*, %struct.uart_port** %10, align 8
  %132 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %133, align 8
  %136 = load i64, i64* @TTY_PARITY, align 8
  store i64 %136, i64* %8, align 8
  br label %137

137:                                              ; preds = %130, %123
  %138 = load %struct.uart_port*, %struct.uart_port** %10, align 8
  %139 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %11, align 8
  %140 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 4
  %142 = load i64, i64* @SIRFUART_FIFO_RESET, align 8
  %143 = call i32 @wr_regl(%struct.uart_port* %138, i32 %141, i64 %142)
  %144 = load %struct.uart_port*, %struct.uart_port** %10, align 8
  %145 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %11, align 8
  %146 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @wr_regl(%struct.uart_port* %144, i32 %147, i64 0)
  %149 = load %struct.uart_port*, %struct.uart_port** %10, align 8
  %150 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %11, align 8
  %151 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 4
  %153 = load i64, i64* @SIRFUART_FIFO_START, align 8
  %154 = call i32 @wr_regl(%struct.uart_port* %149, i32 %152, i64 %153)
  %155 = load %struct.uart_port*, %struct.uart_port** %10, align 8
  %156 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* %6, align 8
  %159 = and i64 %158, %157
  store i64 %159, i64* %6, align 8
  %160 = load %struct.uart_port*, %struct.uart_port** %10, align 8
  %161 = load i64, i64* %6, align 8
  %162 = load %struct.sirfsoc_int_en*, %struct.sirfsoc_int_en** %14, align 8
  %163 = getelementptr inbounds %struct.sirfsoc_int_en, %struct.sirfsoc_int_en* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = load i64, i64* %8, align 8
  %166 = call i32 @uart_insert_char(%struct.uart_port* %160, i64 %161, i32 %164, i32 0, i64 %165)
  br label %167

167:                                              ; preds = %137, %2
  br label %168

168:                                              ; preds = %167, %93
  %169 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %9, align 8
  %170 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %169, i32 0, i32 4
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @SIRF_REAL_UART, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %207

176:                                              ; preds = %168
  %177 = load i64, i64* %6, align 8
  %178 = load %struct.sirfsoc_int_status*, %struct.sirfsoc_int_status** %13, align 8
  %179 = call i64 @SIRFUART_CTS_INT_ST(%struct.sirfsoc_int_status* %178)
  %180 = and i64 %177, %179
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %207

182:                                              ; preds = %176
  %183 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %9, align 8
  %184 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 8
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %207, label %187

187:                                              ; preds = %182
  %188 = load %struct.uart_port*, %struct.uart_port** %10, align 8
  %189 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %11, align 8
  %190 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = call i64 @rd_regl(%struct.uart_port* %188, i32 %191)
  %193 = load i64, i64* @SIRFUART_AFC_CTS_STATUS, align 8
  %194 = and i64 %192, %193
  store i64 %194, i64* %7, align 8
  %195 = load i64, i64* %7, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %187
  store i64 0, i64* %7, align 8
  br label %199

198:                                              ; preds = %187
  store i64 1, i64* %7, align 8
  br label %199

199:                                              ; preds = %198, %197
  %200 = load %struct.uart_port*, %struct.uart_port** %10, align 8
  %201 = load i64, i64* %7, align 8
  %202 = call i32 @uart_handle_cts_change(%struct.uart_port* %200, i64 %201)
  %203 = load %struct.uart_state*, %struct.uart_state** %15, align 8
  %204 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 0
  %206 = call i32 @wake_up_interruptible(i32* %205)
  br label %207

207:                                              ; preds = %199, %182, %176, %168
  %208 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %9, align 8
  %209 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %345, label %212

212:                                              ; preds = %207
  %213 = load i64, i64* %6, align 8
  %214 = load %struct.sirfsoc_int_status*, %struct.sirfsoc_int_status** %13, align 8
  %215 = call i64 @SIRFUART_RX_IO_INT_ST(%struct.sirfsoc_int_status* %214)
  %216 = and i64 %213, %215
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %345

218:                                              ; preds = %212
  %219 = load i64, i64* %6, align 8
  %220 = load %struct.sirfsoc_int_status*, %struct.sirfsoc_int_status** %13, align 8
  %221 = getelementptr inbounds %struct.sirfsoc_int_status, %struct.sirfsoc_int_status* %220, i32 0, i32 4
  %222 = load i64, i64* %221, align 8
  %223 = and i64 %219, %222
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %278

225:                                              ; preds = %218
  %226 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %9, align 8
  %227 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 8
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %260, label %230

230:                                              ; preds = %225
  %231 = load %struct.uart_port*, %struct.uart_port** %10, align 8
  %232 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %11, align 8
  %233 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.uart_port*, %struct.uart_port** %10, align 8
  %236 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %11, align 8
  %237 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = call i64 @rd_regl(%struct.uart_port* %235, i32 %238)
  %240 = load %struct.sirfsoc_int_en*, %struct.sirfsoc_int_en** %14, align 8
  %241 = getelementptr inbounds %struct.sirfsoc_int_en, %struct.sirfsoc_int_en* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = xor i64 %242, -1
  %244 = and i64 %239, %243
  %245 = call i32 @wr_regl(%struct.uart_port* %231, i32 %234, i64 %244)
  %246 = load %struct.uart_port*, %struct.uart_port** %10, align 8
  %247 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %11, align 8
  %248 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.uart_port*, %struct.uart_port** %10, align 8
  %251 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %11, align 8
  %252 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = call i64 @rd_regl(%struct.uart_port* %250, i32 %253)
  %255 = load %struct.sirfsoc_int_en*, %struct.sirfsoc_int_en** %14, align 8
  %256 = getelementptr inbounds %struct.sirfsoc_int_en, %struct.sirfsoc_int_en* %255, i32 0, i32 1
  %257 = load i64, i64* %256, align 8
  %258 = or i64 %254, %257
  %259 = call i32 @wr_regl(%struct.uart_port* %246, i32 %249, i64 %258)
  br label %277

260:                                              ; preds = %225
  %261 = load %struct.uart_port*, %struct.uart_port** %10, align 8
  %262 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %11, align 8
  %263 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.sirfsoc_int_en*, %struct.sirfsoc_int_en** %14, align 8
  %266 = getelementptr inbounds %struct.sirfsoc_int_en, %struct.sirfsoc_int_en* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = call i32 @wr_regl(%struct.uart_port* %261, i32 %264, i64 %267)
  %269 = load %struct.uart_port*, %struct.uart_port** %10, align 8
  %270 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %11, align 8
  %271 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.sirfsoc_int_en*, %struct.sirfsoc_int_en** %14, align 8
  %274 = getelementptr inbounds %struct.sirfsoc_int_en, %struct.sirfsoc_int_en* %273, i32 0, i32 1
  %275 = load i64, i64* %274, align 8
  %276 = call i32 @wr_regl(%struct.uart_port* %269, i32 %272, i64 %275)
  br label %277

277:                                              ; preds = %260, %230
  br label %344

278:                                              ; preds = %218
  %279 = load i64, i64* %6, align 8
  %280 = load %struct.sirfsoc_int_status*, %struct.sirfsoc_int_status** %13, align 8
  %281 = getelementptr inbounds %struct.sirfsoc_int_status, %struct.sirfsoc_int_status* %280, i32 0, i32 5
  %282 = load i64, i64* %281, align 8
  %283 = and i64 %279, %282
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %338

285:                                              ; preds = %278
  %286 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %9, align 8
  %287 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 8
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %320, label %290

290:                                              ; preds = %285
  %291 = load %struct.uart_port*, %struct.uart_port** %10, align 8
  %292 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %11, align 8
  %293 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = load %struct.uart_port*, %struct.uart_port** %10, align 8
  %296 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %11, align 8
  %297 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = call i64 @rd_regl(%struct.uart_port* %295, i32 %298)
  %300 = load %struct.sirfsoc_int_en*, %struct.sirfsoc_int_en** %14, align 8
  %301 = getelementptr inbounds %struct.sirfsoc_int_en, %struct.sirfsoc_int_en* %300, i32 0, i32 1
  %302 = load i64, i64* %301, align 8
  %303 = xor i64 %302, -1
  %304 = and i64 %299, %303
  %305 = call i32 @wr_regl(%struct.uart_port* %291, i32 %294, i64 %304)
  %306 = load %struct.uart_port*, %struct.uart_port** %10, align 8
  %307 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %11, align 8
  %308 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 4
  %310 = load %struct.uart_port*, %struct.uart_port** %10, align 8
  %311 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %11, align 8
  %312 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 4
  %314 = call i64 @rd_regl(%struct.uart_port* %310, i32 %313)
  %315 = load %struct.sirfsoc_int_en*, %struct.sirfsoc_int_en** %14, align 8
  %316 = getelementptr inbounds %struct.sirfsoc_int_en, %struct.sirfsoc_int_en* %315, i32 0, i32 0
  %317 = load i64, i64* %316, align 8
  %318 = or i64 %314, %317
  %319 = call i32 @wr_regl(%struct.uart_port* %306, i32 %309, i64 %318)
  br label %337

320:                                              ; preds = %285
  %321 = load %struct.uart_port*, %struct.uart_port** %10, align 8
  %322 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %11, align 8
  %323 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %322, i32 0, i32 2
  %324 = load i32, i32* %323, align 4
  %325 = load %struct.sirfsoc_int_en*, %struct.sirfsoc_int_en** %14, align 8
  %326 = getelementptr inbounds %struct.sirfsoc_int_en, %struct.sirfsoc_int_en* %325, i32 0, i32 1
  %327 = load i64, i64* %326, align 8
  %328 = call i32 @wr_regl(%struct.uart_port* %321, i32 %324, i64 %327)
  %329 = load %struct.uart_port*, %struct.uart_port** %10, align 8
  %330 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %11, align 8
  %331 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 4
  %333 = load %struct.sirfsoc_int_en*, %struct.sirfsoc_int_en** %14, align 8
  %334 = getelementptr inbounds %struct.sirfsoc_int_en, %struct.sirfsoc_int_en* %333, i32 0, i32 0
  %335 = load i64, i64* %334, align 8
  %336 = call i32 @wr_regl(%struct.uart_port* %329, i32 %332, i64 %335)
  br label %337

337:                                              ; preds = %320, %290
  br label %338

338:                                              ; preds = %337, %278
  %339 = load %struct.uart_port*, %struct.uart_port** %10, align 8
  %340 = load %struct.uart_port*, %struct.uart_port** %10, align 8
  %341 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %340, i32 0, i32 2
  %342 = load i32, i32* %341, align 4
  %343 = call i32 @sirfsoc_uart_pio_rx_chars(%struct.uart_port* %339, i32 %342)
  br label %344

344:                                              ; preds = %338, %277
  br label %345

345:                                              ; preds = %344, %212, %207
  %346 = load %struct.uart_port*, %struct.uart_port** %10, align 8
  %347 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %346, i32 0, i32 1
  %348 = call i32 @spin_unlock(i32* %347)
  %349 = load %struct.uart_state*, %struct.uart_state** %15, align 8
  %350 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %349, i32 0, i32 0
  %351 = call i32 @tty_flip_buffer_push(%struct.TYPE_6__* %350)
  %352 = load %struct.uart_port*, %struct.uart_port** %10, align 8
  %353 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %352, i32 0, i32 1
  %354 = call i32 @spin_lock(i32* %353)
  %355 = load i64, i64* %6, align 8
  %356 = load %struct.sirfsoc_int_status*, %struct.sirfsoc_int_status** %13, align 8
  %357 = getelementptr inbounds %struct.sirfsoc_int_status, %struct.sirfsoc_int_status* %356, i32 0, i32 6
  %358 = load i64, i64* %357, align 8
  %359 = and i64 %355, %358
  %360 = icmp ne i64 %359, 0
  br i1 %360, label %361, label %410

361:                                              ; preds = %345
  %362 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %9, align 8
  %363 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %362, i32 0, i32 0
  %364 = load i64, i64* %363, align 8
  %365 = icmp ne i64 %364, 0
  br i1 %365, label %366, label %369

366:                                              ; preds = %361
  %367 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %9, align 8
  %368 = call i32 @sirfsoc_uart_tx_with_dma(%struct.sirfsoc_uart_port* %367)
  br label %409

369:                                              ; preds = %361
  %370 = load %struct.circ_buf*, %struct.circ_buf** %16, align 8
  %371 = call i64 @uart_circ_empty(%struct.circ_buf* %370)
  %372 = icmp ne i64 %371, 0
  br i1 %372, label %377, label %373

373:                                              ; preds = %369
  %374 = load %struct.uart_port*, %struct.uart_port** %10, align 8
  %375 = call i64 @uart_tx_stopped(%struct.uart_port* %374)
  %376 = icmp ne i64 %375, 0
  br i1 %376, label %377, label %382

377:                                              ; preds = %373, %369
  %378 = load %struct.uart_port*, %struct.uart_port** %10, align 8
  %379 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %378, i32 0, i32 1
  %380 = call i32 @spin_unlock(i32* %379)
  %381 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %381, i32* %3, align 4
  br label %415

382:                                              ; preds = %373
  %383 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %9, align 8
  %384 = load %struct.uart_port*, %struct.uart_port** %10, align 8
  %385 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %384, i32 0, i32 2
  %386 = load i32, i32* %385, align 4
  %387 = call i32 @sirfsoc_uart_pio_tx_chars(%struct.sirfsoc_uart_port* %383, i32 %386)
  %388 = load %struct.circ_buf*, %struct.circ_buf** %16, align 8
  %389 = call i64 @uart_circ_empty(%struct.circ_buf* %388)
  %390 = icmp ne i64 %389, 0
  br i1 %390, label %391, label %407

391:                                              ; preds = %382
  %392 = load %struct.uart_port*, %struct.uart_port** %10, align 8
  %393 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %11, align 8
  %394 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %393, i32 0, i32 0
  %395 = load i32, i32* %394, align 4
  %396 = call i64 @rd_regl(%struct.uart_port* %392, i32 %395)
  %397 = load %struct.sirfsoc_fifo_status*, %struct.sirfsoc_fifo_status** %12, align 8
  %398 = getelementptr inbounds %struct.sirfsoc_fifo_status, %struct.sirfsoc_fifo_status* %397, i32 0, i32 0
  %399 = load i64 (%struct.uart_port*)*, i64 (%struct.uart_port*)** %398, align 8
  %400 = load %struct.uart_port*, %struct.uart_port** %10, align 8
  %401 = call i64 %399(%struct.uart_port* %400)
  %402 = and i64 %396, %401
  %403 = icmp ne i64 %402, 0
  br i1 %403, label %404, label %407

404:                                              ; preds = %391
  %405 = load %struct.uart_port*, %struct.uart_port** %10, align 8
  %406 = call i32 @sirfsoc_uart_stop_tx(%struct.uart_port* %405)
  br label %407

407:                                              ; preds = %404, %391, %382
  br label %408

408:                                              ; preds = %407
  br label %409

409:                                              ; preds = %408, %366
  br label %410

410:                                              ; preds = %409, %345
  %411 = load %struct.uart_port*, %struct.uart_port** %10, align 8
  %412 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %411, i32 0, i32 1
  %413 = call i32 @spin_unlock(i32* %412)
  %414 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %414, i32* %3, align 4
  br label %415

415:                                              ; preds = %410, %377
  %416 = load i32, i32* %3, align 4
  ret i32 %416
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @rd_regl(%struct.uart_port*, i32) #1

declare dso_local i32 @wr_regl(%struct.uart_port*, i32, i64) #1

declare dso_local i64 @unlikely(i64) #1

declare dso_local i64 @SIRFUART_ERR_INT_STAT(%struct.sirfsoc_int_status*, i64) #1

declare dso_local i64 @uart_handle_break(%struct.uart_port*) #1

declare dso_local i32 @uart_insert_char(%struct.uart_port*, i64, i32, i32, i64) #1

declare dso_local i64 @SIRFUART_CTS_INT_ST(%struct.sirfsoc_int_status*) #1

declare dso_local i32 @uart_handle_cts_change(%struct.uart_port*, i64) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i64 @SIRFUART_RX_IO_INT_ST(%struct.sirfsoc_int_status*) #1

declare dso_local i32 @sirfsoc_uart_pio_rx_chars(%struct.uart_port*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.TYPE_6__*) #1

declare dso_local i32 @sirfsoc_uart_tx_with_dma(%struct.sirfsoc_uart_port*) #1

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i64 @uart_tx_stopped(%struct.uart_port*) #1

declare dso_local i32 @sirfsoc_uart_pio_tx_chars(%struct.sirfsoc_uart_port*, i32) #1

declare dso_local i32 @sirfsoc_uart_stop_tx(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
