; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sirfsoc_uart.c_sirfsoc_uart_set_termios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sirfsoc_uart.c_sirfsoc_uart_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }
%struct.uart_port = type { i64, i32, i32, i32, i32 }
%struct.ktermios = type { i32, i32 }
%struct.sirfsoc_uart_port = type { i32, i64, i64, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i64, %struct.sirfsoc_int_en, %struct.sirfsoc_register }
%struct.sirfsoc_int_en = type { i32, i32, i32, i32 }
%struct.sirfsoc_register = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@CSIZE = common dso_local global i32 0, align 4
@SIRFUART_DATA_BIT_LEN_8 = common dso_local global i64 0, align 8
@SIRFUART_DATA_BIT_LEN_7 = common dso_local global i64 0, align 8
@SIRFUART_DATA_BIT_LEN_6 = common dso_local global i64 0, align 8
@SIRFUART_DATA_BIT_LEN_5 = common dso_local global i64 0, align 8
@CSTOPB = common dso_local global i32 0, align 4
@SIRFUART_STOP_BIT_LEN_2 = common dso_local global i64 0, align 8
@SIRF_REAL_UART = common dso_local global i64 0, align 8
@INPCK = common dso_local global i32 0, align 4
@IGNBRK = common dso_local global i32 0, align 4
@BRKINT = common dso_local global i32 0, align 4
@PARMRK = common dso_local global i32 0, align 4
@IGNPAR = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@CMSPAR = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@SIRFUART_STICK_BIT_MARK = common dso_local global i64 0, align 8
@SIRFUART_STICK_BIT_SPACE = common dso_local global i64 0, align 8
@SIRFUART_STICK_BIT_ODD = common dso_local global i64 0, align 8
@SIRFUART_STICK_BIT_EVEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"USP-UART not support parity err\0A\00", align 1
@CREAD = common dso_local global i32 0, align 4
@SIRFUART_DUMMY_READ = common dso_local global i32 0, align 4
@SIRF_BAUD_RATE_SUPPORT_NR = common dso_local global i64 0, align 8
@baudrate_to_regv = common dso_local global %struct.TYPE_4__* null, align 8
@SIRFSOC_USP_MODE2_RXD_DELAY_OFFSET = common dso_local global i32 0, align 4
@SIRFSOC_USP_MODE2_TXD_DELAY_OFFSET = common dso_local global i32 0, align 4
@SIRFSOC_USP_MODE2_CLK_DIVISOR_MASK = common dso_local global i32 0, align 4
@SIRFSOC_USP_MODE2_CLK_DIVISOR_OFFSET = common dso_local global i32 0, align 4
@SIRFUART_FIFO_START = common dso_local global i64 0, align 8
@SIRFSOC_USP_TX_DATA_LEN_OFFSET = common dso_local global i32 0, align 4
@SIRFSOC_USP_TX_FRAME_LEN_OFFSET = common dso_local global i32 0, align 4
@SIRFSOC_USP_TX_SHIFTER_LEN_OFFSET = common dso_local global i32 0, align 4
@SIRFSOC_USP_TX_CLK_DIVISOR_OFFSET = common dso_local global i32 0, align 4
@SIRFSOC_USP_RX_DATA_LEN_OFFSET = common dso_local global i32 0, align 4
@SIRFSOC_USP_RX_FRAME_LEN_OFFSET = common dso_local global i32 0, align 4
@SIRFSOC_USP_RX_SHIFTER_LEN_OFFSET = common dso_local global i32 0, align 4
@SIRFSOC_USP_RX_CLK_DIVISOR_OFFSET = common dso_local global i32 0, align 4
@SIRFSOC_USP_ASYNC_DIV2_MASK = common dso_local global i64 0, align 8
@SIRFSOC_USP_ASYNC_DIV2_OFFSET = common dso_local global i64 0, align 8
@SIRFUART_DMA_MODE = common dso_local global i64 0, align 8
@SIRFUART_IO_MODE = common dso_local global i64 0, align 8
@SIRFUART_TX_EN = common dso_local global i64 0, align 8
@SIRFUART_RX_EN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @sirfsoc_uart_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sirfsoc_uart_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca %struct.sirfsoc_uart_port*, align 8
  %8 = alloca %struct.sirfsoc_register*, align 8
  %9 = alloca %struct.sirfsoc_int_en*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %24 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %25 = call %struct.sirfsoc_uart_port* @to_sirfport(%struct.uart_port* %24)
  store %struct.sirfsoc_uart_port* %25, %struct.sirfsoc_uart_port** %7, align 8
  %26 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %7, align 8
  %27 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %26, i32 0, i32 3
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  store %struct.sirfsoc_register* %29, %struct.sirfsoc_register** %8, align 8
  %30 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %7, align 8
  %31 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %30, i32 0, i32 3
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  store %struct.sirfsoc_int_en* %33, %struct.sirfsoc_int_en** %9, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %15, align 4
  store i64 15, i64* %23, align 8
  %34 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %35 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %17, align 8
  %37 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %38 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @CSIZE, align 4
  %41 = and i32 %39, %40
  switch i32 %41, label %42 [
    i32 128, label %43
    i32 129, label %47
    i32 130, label %51
    i32 131, label %55
  ]

42:                                               ; preds = %3
  br label %43

43:                                               ; preds = %3, %42
  store i32 8, i32* %20, align 4
  %44 = load i64, i64* @SIRFUART_DATA_BIT_LEN_8, align 8
  %45 = load i64, i64* %10, align 8
  %46 = or i64 %45, %44
  store i64 %46, i64* %10, align 8
  br label %59

47:                                               ; preds = %3
  store i32 7, i32* %20, align 4
  %48 = load i64, i64* @SIRFUART_DATA_BIT_LEN_7, align 8
  %49 = load i64, i64* %10, align 8
  %50 = or i64 %49, %48
  store i64 %50, i64* %10, align 8
  br label %59

51:                                               ; preds = %3
  store i32 6, i32* %20, align 4
  %52 = load i64, i64* @SIRFUART_DATA_BIT_LEN_6, align 8
  %53 = load i64, i64* %10, align 8
  %54 = or i64 %53, %52
  store i64 %54, i64* %10, align 8
  br label %59

55:                                               ; preds = %3
  store i32 5, i32* %20, align 4
  %56 = load i64, i64* @SIRFUART_DATA_BIT_LEN_5, align 8
  %57 = load i64, i64* %10, align 8
  %58 = or i64 %57, %56
  store i64 %58, i64* %10, align 8
  br label %59

59:                                               ; preds = %55, %51, %47, %43
  %60 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %61 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @CSTOPB, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %59
  %67 = load i64, i64* @SIRFUART_STOP_BIT_LEN_2, align 8
  %68 = load i64, i64* %10, align 8
  %69 = or i64 %68, %67
  store i64 %69, i64* %10, align 8
  store i32 2, i32* %21, align 4
  br label %71

70:                                               ; preds = %59
  store i32 1, i32* %21, align 4
  br label %71

71:                                               ; preds = %70, %66
  %72 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %73 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %72, i32 0, i32 3
  %74 = load i64, i64* %13, align 8
  %75 = call i32 @spin_lock_irqsave(i32* %73, i64 %74)
  %76 = load %struct.sirfsoc_int_en*, %struct.sirfsoc_int_en** %9, align 8
  %77 = getelementptr inbounds %struct.sirfsoc_int_en, %struct.sirfsoc_int_en* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %80 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 8
  %81 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %82 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %81, i32 0, i32 2
  store i32 0, i32* %82, align 4
  %83 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %7, align 8
  %84 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %83, i32 0, i32 3
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @SIRF_REAL_UART, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %110

90:                                               ; preds = %71
  %91 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %92 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @INPCK, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %109

97:                                               ; preds = %90
  %98 = load %struct.sirfsoc_int_en*, %struct.sirfsoc_int_en** %9, align 8
  %99 = getelementptr inbounds %struct.sirfsoc_int_en, %struct.sirfsoc_int_en* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.sirfsoc_int_en*, %struct.sirfsoc_int_en** %9, align 8
  %102 = getelementptr inbounds %struct.sirfsoc_int_en, %struct.sirfsoc_int_en* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %100, %103
  %105 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %106 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 8
  br label %109

109:                                              ; preds = %97, %90
  br label %126

110:                                              ; preds = %71
  %111 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %112 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @INPCK, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %110
  %118 = load %struct.sirfsoc_int_en*, %struct.sirfsoc_int_en** %9, align 8
  %119 = getelementptr inbounds %struct.sirfsoc_int_en, %struct.sirfsoc_int_en* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %122 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = or i32 %123, %120
  store i32 %124, i32* %122, align 8
  br label %125

125:                                              ; preds = %117, %110
  br label %126

126:                                              ; preds = %125, %109
  %127 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %128 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @IGNBRK, align 4
  %131 = load i32, i32* @BRKINT, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* @PARMRK, align 4
  %134 = or i32 %132, %133
  %135 = and i32 %129, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %126
  %138 = load %struct.sirfsoc_int_en*, %struct.sirfsoc_int_en** %9, align 8
  %139 = getelementptr inbounds %struct.sirfsoc_int_en, %struct.sirfsoc_int_en* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %142 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = or i32 %143, %140
  store i32 %144, i32* %142, align 8
  br label %145

145:                                              ; preds = %137, %126
  %146 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %7, align 8
  %147 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %146, i32 0, i32 3
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @SIRF_REAL_UART, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %220

153:                                              ; preds = %145
  %154 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %155 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @IGNPAR, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %172

160:                                              ; preds = %153
  %161 = load %struct.sirfsoc_int_en*, %struct.sirfsoc_int_en** %9, align 8
  %162 = getelementptr inbounds %struct.sirfsoc_int_en, %struct.sirfsoc_int_en* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.sirfsoc_int_en*, %struct.sirfsoc_int_en** %9, align 8
  %165 = getelementptr inbounds %struct.sirfsoc_int_en, %struct.sirfsoc_int_en* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = or i32 %163, %166
  %168 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %169 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = or i32 %170, %167
  store i32 %171, i32* %169, align 4
  br label %172

172:                                              ; preds = %160, %153
  %173 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %174 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @PARENB, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %219

179:                                              ; preds = %172
  %180 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %181 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @CMSPAR, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %202

186:                                              ; preds = %179
  %187 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %188 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @PARODD, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %186
  %194 = load i64, i64* @SIRFUART_STICK_BIT_MARK, align 8
  %195 = load i64, i64* %10, align 8
  %196 = or i64 %195, %194
  store i64 %196, i64* %10, align 8
  br label %201

197:                                              ; preds = %186
  %198 = load i64, i64* @SIRFUART_STICK_BIT_SPACE, align 8
  %199 = load i64, i64* %10, align 8
  %200 = or i64 %199, %198
  store i64 %200, i64* %10, align 8
  br label %201

201:                                              ; preds = %197, %193
  br label %218

202:                                              ; preds = %179
  %203 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %204 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @PARODD, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %213

209:                                              ; preds = %202
  %210 = load i64, i64* @SIRFUART_STICK_BIT_ODD, align 8
  %211 = load i64, i64* %10, align 8
  %212 = or i64 %211, %210
  store i64 %212, i64* %10, align 8
  br label %217

213:                                              ; preds = %202
  %214 = load i64, i64* @SIRFUART_STICK_BIT_EVEN, align 8
  %215 = load i64, i64* %10, align 8
  %216 = or i64 %215, %214
  store i64 %216, i64* %10, align 8
  br label %217

217:                                              ; preds = %213, %209
  br label %218

218:                                              ; preds = %217, %201
  br label %219

219:                                              ; preds = %218, %172
  br label %248

220:                                              ; preds = %145
  %221 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %222 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* @IGNPAR, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %235

227:                                              ; preds = %220
  %228 = load %struct.sirfsoc_int_en*, %struct.sirfsoc_int_en** %9, align 8
  %229 = getelementptr inbounds %struct.sirfsoc_int_en, %struct.sirfsoc_int_en* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %232 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 4
  %234 = or i32 %233, %230
  store i32 %234, i32* %232, align 4
  br label %235

235:                                              ; preds = %227, %220
  %236 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %237 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* @PARENB, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %247

242:                                              ; preds = %235
  %243 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %244 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %243, i32 0, i32 4
  %245 = load i32, i32* %244, align 4
  %246 = call i32 @dev_warn(i32 %245, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %247

247:                                              ; preds = %242, %235
  br label %248

248:                                              ; preds = %247, %219
  %249 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %250 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* @IGNBRK, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %278

255:                                              ; preds = %248
  %256 = load %struct.sirfsoc_int_en*, %struct.sirfsoc_int_en** %9, align 8
  %257 = getelementptr inbounds %struct.sirfsoc_int_en, %struct.sirfsoc_int_en* %256, i32 0, i32 3
  %258 = load i32, i32* %257, align 4
  %259 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %260 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 4
  %262 = or i32 %261, %258
  store i32 %262, i32* %260, align 4
  %263 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %264 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* @IGNPAR, align 4
  %267 = and i32 %265, %266
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %277

269:                                              ; preds = %255
  %270 = load %struct.sirfsoc_int_en*, %struct.sirfsoc_int_en** %9, align 8
  %271 = getelementptr inbounds %struct.sirfsoc_int_en, %struct.sirfsoc_int_en* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %274 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 4
  %276 = or i32 %275, %272
  store i32 %276, i32* %274, align 4
  br label %277

277:                                              ; preds = %269, %255
  br label %278

278:                                              ; preds = %277, %248
  %279 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %280 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* @CREAD, align 4
  %283 = and i32 %281, %282
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %285, label %291

285:                                              ; preds = %278
  %286 = load i32, i32* @SIRFUART_DUMMY_READ, align 4
  %287 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %288 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 4
  %290 = or i32 %289, %286
  store i32 %290, i32* %288, align 4
  br label %291

291:                                              ; preds = %285, %278
  %292 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %293 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %294 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 4
  %296 = call i64 @UART_ENABLE_MS(%struct.uart_port* %292, i32 %295)
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %307

298:                                              ; preds = %291
  %299 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %7, align 8
  %300 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %299, i32 0, i32 4
  %301 = load i64, i64* %300, align 8
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %306, label %303

303:                                              ; preds = %298
  %304 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %305 = call i32 @sirfsoc_uart_enable_ms(%struct.uart_port* %304)
  br label %306

306:                                              ; preds = %303, %298
  br label %316

307:                                              ; preds = %291
  %308 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %7, align 8
  %309 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %308, i32 0, i32 4
  %310 = load i64, i64* %309, align 8
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %315

312:                                              ; preds = %307
  %313 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %314 = call i32 @sirfsoc_uart_disable_ms(%struct.uart_port* %313)
  br label %315

315:                                              ; preds = %312, %307
  br label %316

316:                                              ; preds = %315, %306
  %317 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %318 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %319 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %320 = call i64 @uart_get_baud_rate(%struct.uart_port* %317, %struct.ktermios* %318, %struct.ktermios* %319, i32 0, i32 4000000)
  store i64 %320, i64* %11, align 8
  %321 = load i64, i64* %17, align 8
  %322 = icmp eq i64 %321, 150000000
  br i1 %322, label %323, label %347

323:                                              ; preds = %316
  store i64 0, i64* %14, align 8
  br label %324

324:                                              ; preds = %343, %323
  %325 = load i64, i64* %14, align 8
  %326 = load i64, i64* @SIRF_BAUD_RATE_SUPPORT_NR, align 8
  %327 = icmp ult i64 %325, %326
  br i1 %327, label %328, label %346

328:                                              ; preds = %324
  %329 = load i64, i64* %11, align 8
  %330 = load %struct.TYPE_4__*, %struct.TYPE_4__** @baudrate_to_regv, align 8
  %331 = load i64, i64* %14, align 8
  %332 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %330, i64 %331
  %333 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %332, i32 0, i32 0
  %334 = load i64, i64* %333, align 8
  %335 = icmp eq i64 %329, %334
  br i1 %335, label %336, label %342

336:                                              ; preds = %328
  %337 = load %struct.TYPE_4__*, %struct.TYPE_4__** @baudrate_to_regv, align 8
  %338 = load i64, i64* %14, align 8
  %339 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %337, i64 %338
  %340 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 8
  store i32 %341, i32* %15, align 4
  br label %342

342:                                              ; preds = %336, %328
  br label %343

343:                                              ; preds = %342
  %344 = load i64, i64* %14, align 8
  %345 = add i64 %344, 1
  store i64 %345, i64* %14, align 8
  br label %324

346:                                              ; preds = %324
  br label %347

347:                                              ; preds = %346, %316
  %348 = load i64, i64* %11, align 8
  store i64 %348, i64* %12, align 8
  %349 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %7, align 8
  %350 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %349, i32 0, i32 3
  %351 = load %struct.TYPE_3__*, %struct.TYPE_3__** %350, align 8
  %352 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %351, i32 0, i32 0
  %353 = load i64, i64* %352, align 8
  %354 = load i64, i64* @SIRF_REAL_UART, align 8
  %355 = icmp eq i64 %353, %354
  br i1 %355, label %356, label %374

356:                                              ; preds = %347
  %357 = load i32, i32* %15, align 4
  %358 = icmp eq i32 %357, 0
  %359 = zext i1 %358 to i32
  %360 = call i64 @unlikely(i32 %359)
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %362, label %366

362:                                              ; preds = %356
  %363 = load i64, i64* %11, align 8
  %364 = load i64, i64* %17, align 8
  %365 = call i32 @sirfsoc_uart_calc_sample_div(i64 %363, i64 %364, i64* %12)
  store i32 %365, i32* %15, align 4
  br label %366

366:                                              ; preds = %362, %356
  %367 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %368 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %8, align 8
  %369 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %368, i32 0, i32 11
  %370 = load i32, i32* %369, align 4
  %371 = load i32, i32* %15, align 4
  %372 = zext i32 %371 to i64
  %373 = call i32 @wr_regl(%struct.uart_port* %367, i32 %370, i64 %372)
  br label %408

374:                                              ; preds = %347
  %375 = load i64, i64* %11, align 8
  %376 = load i64, i64* %17, align 8
  %377 = call i32 @sirfsoc_usp_calc_sample_div(i64 %375, i64 %376, i64* %23)
  store i32 %377, i32* %15, align 4
  %378 = load i64, i64* %23, align 8
  %379 = add i64 %378, -1
  store i64 %379, i64* %23, align 8
  %380 = load i64, i64* %17, align 8
  %381 = load i32, i32* %15, align 4
  %382 = add i32 %381, 1
  %383 = zext i32 %382 to i64
  %384 = udiv i64 %380, %383
  %385 = sub i64 %384, 1
  %386 = load i64, i64* %23, align 8
  %387 = add i64 %386, 1
  %388 = udiv i64 %385, %387
  store i64 %388, i64* %12, align 8
  %389 = load i32, i32* @SIRFSOC_USP_MODE2_RXD_DELAY_OFFSET, align 4
  %390 = shl i32 1, %389
  %391 = load i32, i32* @SIRFSOC_USP_MODE2_TXD_DELAY_OFFSET, align 4
  %392 = shl i32 1, %391
  %393 = or i32 %390, %392
  store i32 %393, i32* %22, align 4
  %394 = load i32, i32* %15, align 4
  %395 = load i32, i32* @SIRFSOC_USP_MODE2_CLK_DIVISOR_MASK, align 4
  %396 = and i32 %394, %395
  %397 = load i32, i32* @SIRFSOC_USP_MODE2_CLK_DIVISOR_OFFSET, align 4
  %398 = shl i32 %396, %397
  %399 = load i32, i32* %22, align 4
  %400 = or i32 %399, %398
  store i32 %400, i32* %22, align 4
  %401 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %402 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %8, align 8
  %403 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %402, i32 0, i32 10
  %404 = load i32, i32* %403, align 4
  %405 = load i32, i32* %22, align 4
  %406 = zext i32 %405 to i64
  %407 = call i32 @wr_regl(%struct.uart_port* %401, i32 %404, i64 %406)
  br label %408

408:                                              ; preds = %374, %366
  %409 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %410 = call i64 @tty_termios_baud_rate(%struct.ktermios* %409)
  %411 = icmp ne i64 %410, 0
  br i1 %411, label %412, label %417

412:                                              ; preds = %408
  %413 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %414 = load i64, i64* %12, align 8
  %415 = load i64, i64* %12, align 8
  %416 = call i32 @tty_termios_encode_baud_rate(%struct.ktermios* %413, i64 %414, i64 %415)
  br label %417

417:                                              ; preds = %412, %408
  %418 = load i64, i64* %12, align 8
  %419 = call i64 @SIRFSOC_UART_RX_TIMEOUT(i64 %418, i32 20000)
  store i64 %419, i64* %18, align 8
  %420 = load i64, i64* %18, align 8
  %421 = call i64 @SIRFUART_RECV_TIMEOUT_VALUE(i64 %420)
  store i64 %421, i64* %18, align 8
  %422 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %423 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %8, align 8
  %424 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %423, i32 0, i32 1
  %425 = load i32, i32* %424, align 4
  %426 = call i64 @rd_regl(%struct.uart_port* %422, i32 %425)
  store i64 %426, i64* %16, align 8
  %427 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %428 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %8, align 8
  %429 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %428, i32 0, i32 1
  %430 = load i32, i32* %429, align 4
  %431 = load i64, i64* %16, align 8
  %432 = load i64, i64* @SIRFUART_FIFO_START, align 8
  %433 = xor i64 %432, -1
  %434 = and i64 %431, %433
  %435 = call i32 @wr_regl(%struct.uart_port* %427, i32 %430, i64 %434)
  %436 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %7, align 8
  %437 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %436, i32 0, i32 3
  %438 = load %struct.TYPE_3__*, %struct.TYPE_3__** %437, align 8
  %439 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %438, i32 0, i32 0
  %440 = load i64, i64* %439, align 8
  %441 = load i64, i64* @SIRF_REAL_UART, align 8
  %442 = icmp eq i64 %440, %441
  br i1 %442, label %443, label %454

443:                                              ; preds = %417
  %444 = load i64, i64* %18, align 8
  %445 = call i64 @SIRFUART_UART_RECV_TIMEOUT(i64 %444)
  %446 = load i64, i64* %10, align 8
  %447 = or i64 %446, %445
  store i64 %447, i64* %10, align 8
  %448 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %449 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %8, align 8
  %450 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %449, i32 0, i32 9
  %451 = load i32, i32* %450, align 4
  %452 = load i64, i64* %10, align 8
  %453 = call i32 @wr_regl(%struct.uart_port* %448, i32 %451, i64 %452)
  br label %534

454:                                              ; preds = %417
  %455 = load i32, i32* %20, align 4
  %456 = sub i32 %455, 1
  %457 = load i32, i32* @SIRFSOC_USP_TX_DATA_LEN_OFFSET, align 4
  %458 = shl i32 %456, %457
  store i32 %458, i32* %22, align 4
  %459 = load i32, i32* %20, align 4
  %460 = add i32 %459, 1
  %461 = load i32, i32* %21, align 4
  %462 = add i32 %460, %461
  %463 = sub i32 %462, 1
  %464 = load i32, i32* @SIRFSOC_USP_TX_FRAME_LEN_OFFSET, align 4
  %465 = shl i32 %463, %464
  %466 = load i32, i32* %22, align 4
  %467 = or i32 %466, %465
  store i32 %467, i32* %22, align 4
  %468 = load i32, i32* %20, align 4
  %469 = sub i32 %468, 1
  %470 = load i32, i32* @SIRFSOC_USP_TX_SHIFTER_LEN_OFFSET, align 4
  %471 = shl i32 %469, %470
  %472 = load i32, i32* %22, align 4
  %473 = or i32 %472, %471
  store i32 %473, i32* %22, align 4
  %474 = load i32, i32* %15, align 4
  %475 = and i32 %474, 3072
  %476 = lshr i32 %475, 10
  %477 = load i32, i32* @SIRFSOC_USP_TX_CLK_DIVISOR_OFFSET, align 4
  %478 = shl i32 %476, %477
  %479 = load i32, i32* %22, align 4
  %480 = or i32 %479, %478
  store i32 %480, i32* %22, align 4
  %481 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %482 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %8, align 8
  %483 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %482, i32 0, i32 8
  %484 = load i32, i32* %483, align 4
  %485 = load i32, i32* %22, align 4
  %486 = zext i32 %485 to i64
  %487 = call i32 @wr_regl(%struct.uart_port* %481, i32 %484, i64 %486)
  %488 = load i32, i32* %20, align 4
  %489 = sub i32 %488, 1
  %490 = load i32, i32* @SIRFSOC_USP_RX_DATA_LEN_OFFSET, align 4
  %491 = shl i32 %489, %490
  store i32 %491, i32* %22, align 4
  %492 = load i32, i32* %20, align 4
  %493 = add i32 %492, 1
  %494 = load i32, i32* %21, align 4
  %495 = add i32 %493, %494
  %496 = sub i32 %495, 1
  %497 = load i32, i32* @SIRFSOC_USP_RX_FRAME_LEN_OFFSET, align 4
  %498 = shl i32 %496, %497
  %499 = load i32, i32* %22, align 4
  %500 = or i32 %499, %498
  store i32 %500, i32* %22, align 4
  %501 = load i32, i32* %20, align 4
  %502 = sub i32 %501, 1
  %503 = load i32, i32* @SIRFSOC_USP_RX_SHIFTER_LEN_OFFSET, align 4
  %504 = shl i32 %502, %503
  %505 = load i32, i32* %22, align 4
  %506 = or i32 %505, %504
  store i32 %506, i32* %22, align 4
  %507 = load i32, i32* %15, align 4
  %508 = and i32 %507, 61440
  %509 = lshr i32 %508, 12
  %510 = load i32, i32* @SIRFSOC_USP_RX_CLK_DIVISOR_OFFSET, align 4
  %511 = shl i32 %509, %510
  %512 = load i32, i32* %22, align 4
  %513 = or i32 %512, %511
  store i32 %513, i32* %22, align 4
  %514 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %515 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %8, align 8
  %516 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %515, i32 0, i32 7
  %517 = load i32, i32* %516, align 4
  %518 = load i32, i32* %22, align 4
  %519 = zext i32 %518 to i64
  %520 = call i32 @wr_regl(%struct.uart_port* %514, i32 %517, i64 %519)
  %521 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %522 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %8, align 8
  %523 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %522, i32 0, i32 6
  %524 = load i32, i32* %523, align 4
  %525 = load i64, i64* %18, align 8
  %526 = call i64 @SIRFUART_USP_RECV_TIMEOUT(i64 %525)
  %527 = load i64, i64* %23, align 8
  %528 = load i64, i64* @SIRFSOC_USP_ASYNC_DIV2_MASK, align 8
  %529 = and i64 %527, %528
  %530 = load i64, i64* @SIRFSOC_USP_ASYNC_DIV2_OFFSET, align 8
  %531 = shl i64 %529, %530
  %532 = or i64 %526, %531
  %533 = call i32 @wr_regl(%struct.uart_port* %521, i32 %524, i64 %532)
  br label %534

534:                                              ; preds = %454, %443
  %535 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %7, align 8
  %536 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %535, i32 0, i32 2
  %537 = load i64, i64* %536, align 8
  %538 = icmp ne i64 %537, 0
  br i1 %538, label %539, label %546

539:                                              ; preds = %534
  %540 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %541 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %8, align 8
  %542 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %541, i32 0, i32 5
  %543 = load i32, i32* %542, align 4
  %544 = load i64, i64* @SIRFUART_DMA_MODE, align 8
  %545 = call i32 @wr_regl(%struct.uart_port* %540, i32 %543, i64 %544)
  br label %553

546:                                              ; preds = %534
  %547 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %548 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %8, align 8
  %549 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %548, i32 0, i32 5
  %550 = load i32, i32* %549, align 4
  %551 = load i64, i64* @SIRFUART_IO_MODE, align 8
  %552 = call i32 @wr_regl(%struct.uart_port* %547, i32 %550, i64 %551)
  br label %553

553:                                              ; preds = %546, %539
  %554 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %7, align 8
  %555 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %554, i32 0, i32 1
  %556 = load i64, i64* %555, align 8
  %557 = icmp ne i64 %556, 0
  br i1 %557, label %558, label %572

558:                                              ; preds = %553
  %559 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %560 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %8, align 8
  %561 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %560, i32 0, i32 4
  %562 = load i32, i32* %561, align 4
  %563 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %564 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %8, align 8
  %565 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %564, i32 0, i32 4
  %566 = load i32, i32* %565, align 4
  %567 = call i64 @rd_regl(%struct.uart_port* %563, i32 %566)
  %568 = load i64, i64* @SIRFUART_IO_MODE, align 8
  %569 = xor i64 %568, -1
  %570 = and i64 %567, %569
  %571 = call i32 @wr_regl(%struct.uart_port* %559, i32 %562, i64 %570)
  br label %585

572:                                              ; preds = %553
  %573 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %574 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %8, align 8
  %575 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %574, i32 0, i32 4
  %576 = load i32, i32* %575, align 4
  %577 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %578 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %8, align 8
  %579 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %578, i32 0, i32 4
  %580 = load i32, i32* %579, align 4
  %581 = call i64 @rd_regl(%struct.uart_port* %577, i32 %580)
  %582 = load i64, i64* @SIRFUART_IO_MODE, align 8
  %583 = or i64 %581, %582
  %584 = call i32 @wr_regl(%struct.uart_port* %573, i32 %576, i64 %583)
  br label %585

585:                                              ; preds = %572, %558
  %586 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %7, align 8
  %587 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %586, i32 0, i32 0
  store i32 20000000, i32* %587, align 8
  %588 = load i64, i64* %12, align 8
  %589 = icmp ult i64 %588, 1000000
  br i1 %589, label %590, label %591

590:                                              ; preds = %585
  store i32 1, i32* %19, align 4
  br label %592

591:                                              ; preds = %585
  store i32 2, i32* %19, align 4
  br label %592

592:                                              ; preds = %591, %590
  %593 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %594 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %8, align 8
  %595 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %594, i32 0, i32 3
  %596 = load i32, i32* %595, align 4
  %597 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %598 = call i32 @SIRFUART_FIFO_THD(%struct.uart_port* %597)
  %599 = load i32, i32* %19, align 4
  %600 = sdiv i32 %598, %599
  %601 = sext i32 %600 to i64
  %602 = call i32 @wr_regl(%struct.uart_port* %593, i32 %596, i64 %601)
  %603 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %604 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %8, align 8
  %605 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %604, i32 0, i32 2
  %606 = load i32, i32* %605, align 4
  %607 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %608 = call i32 @SIRFUART_FIFO_THD(%struct.uart_port* %607)
  %609 = load i32, i32* %19, align 4
  %610 = sdiv i32 %608, %609
  %611 = sext i32 %610 to i64
  %612 = call i32 @wr_regl(%struct.uart_port* %603, i32 %606, i64 %611)
  %613 = load i64, i64* @SIRFUART_FIFO_START, align 8
  %614 = load i64, i64* %16, align 8
  %615 = or i64 %614, %613
  store i64 %615, i64* %16, align 8
  %616 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %617 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %8, align 8
  %618 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %617, i32 0, i32 1
  %619 = load i32, i32* %618, align 4
  %620 = load i64, i64* %16, align 8
  %621 = call i32 @wr_regl(%struct.uart_port* %616, i32 %619, i64 %620)
  %622 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %623 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %624 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %623, i32 0, i32 0
  %625 = load i32, i32* %624, align 4
  %626 = load i64, i64* %12, align 8
  %627 = call i32 @uart_update_timeout(%struct.uart_port* %622, i32 %625, i64 %626)
  %628 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %629 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %8, align 8
  %630 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %629, i32 0, i32 0
  %631 = load i32, i32* %630, align 4
  %632 = load i64, i64* @SIRFUART_TX_EN, align 8
  %633 = load i64, i64* @SIRFUART_RX_EN, align 8
  %634 = or i64 %632, %633
  %635 = call i32 @wr_regl(%struct.uart_port* %628, i32 %631, i64 %634)
  %636 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %637 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %636, i32 0, i32 3
  %638 = load i64, i64* %13, align 8
  %639 = call i32 @spin_unlock_irqrestore(i32* %637, i64 %638)
  ret void
}

declare dso_local %struct.sirfsoc_uart_port* @to_sirfport(%struct.uart_port*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i64 @UART_ENABLE_MS(%struct.uart_port*, i32) #1

declare dso_local i32 @sirfsoc_uart_enable_ms(%struct.uart_port*) #1

declare dso_local i32 @sirfsoc_uart_disable_ms(%struct.uart_port*) #1

declare dso_local i64 @uart_get_baud_rate(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @sirfsoc_uart_calc_sample_div(i64, i64, i64*) #1

declare dso_local i32 @wr_regl(%struct.uart_port*, i32, i64) #1

declare dso_local i32 @sirfsoc_usp_calc_sample_div(i64, i64, i64*) #1

declare dso_local i64 @tty_termios_baud_rate(%struct.ktermios*) #1

declare dso_local i32 @tty_termios_encode_baud_rate(%struct.ktermios*, i64, i64) #1

declare dso_local i64 @SIRFSOC_UART_RX_TIMEOUT(i64, i32) #1

declare dso_local i64 @SIRFUART_RECV_TIMEOUT_VALUE(i64) #1

declare dso_local i64 @rd_regl(%struct.uart_port*, i32) #1

declare dso_local i64 @SIRFUART_UART_RECV_TIMEOUT(i64) #1

declare dso_local i64 @SIRFUART_USP_RECV_TIMEOUT(i64) #1

declare dso_local i32 @SIRFUART_FIFO_THD(%struct.uart_port*) #1

declare dso_local i32 @uart_update_timeout(%struct.uart_port*, i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
