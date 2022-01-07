; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_xilinx_uartps.c_cdns_uart_set_termios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_xilinx_uartps.c_cdns_uart_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i32, i32, i64, i32 }
%struct.ktermios = type { i32, i32 }

@CDNS_UART_CR = common dso_local global i64 0, align 8
@CDNS_UART_CR_TX_DIS = common dso_local global i32 0, align 4
@CDNS_UART_SR = common dso_local global i64 0, align 8
@CDNS_UART_SR_TXEMPTY = common dso_local global i32 0, align 4
@TX_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"timed out waiting for tx empty\00", align 1
@CDNS_UART_CR_RX_DIS = common dso_local global i32 0, align 4
@CDNS_UART_BDIV_MAX = common dso_local global i32 0, align 4
@CDNS_UART_CD_MAX = common dso_local global i32 0, align 4
@CDNS_UART_BDIV_MIN = common dso_local global i32 0, align 4
@CDNS_UART_CR_TXRST = common dso_local global i32 0, align 4
@CDNS_UART_CR_RXRST = common dso_local global i32 0, align 4
@CDNS_UART_CR_TX_EN = common dso_local global i32 0, align 4
@CDNS_UART_CR_RX_EN = common dso_local global i32 0, align 4
@rx_timeout = common dso_local global i32 0, align 4
@CDNS_UART_RXTOUT = common dso_local global i64 0, align 8
@CDNS_UART_IXR_TXEMPTY = common dso_local global i32 0, align 4
@CDNS_UART_IXR_RXTRIG = common dso_local global i32 0, align 4
@CDNS_UART_IXR_OVERRUN = common dso_local global i32 0, align 4
@CDNS_UART_IXR_TOUT = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@CDNS_UART_IXR_PARITY = common dso_local global i32 0, align 4
@CDNS_UART_IXR_FRAMING = common dso_local global i32 0, align 4
@IGNPAR = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@CDNS_UART_MR = common dso_local global i64 0, align 8
@CSIZE = common dso_local global i32 0, align 4
@CDNS_UART_MR_CHARLEN_6_BIT = common dso_local global i32 0, align 4
@CDNS_UART_MR_CHARLEN_7_BIT = common dso_local global i32 0, align 4
@CDNS_UART_MR_CHARLEN_8_BIT = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@CDNS_UART_MR_STOPMODE_2_BIT = common dso_local global i32 0, align 4
@CDNS_UART_MR_STOPMODE_1_BIT = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@CMSPAR = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@CDNS_UART_MR_PARITY_MARK = common dso_local global i32 0, align 4
@CDNS_UART_MR_PARITY_SPACE = common dso_local global i32 0, align 4
@CDNS_UART_MR_PARITY_ODD = common dso_local global i32 0, align 4
@CDNS_UART_MR_PARITY_EVEN = common dso_local global i32 0, align 4
@CDNS_UART_MR_PARITY_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @cdns_uart_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdns_uart_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  store i32 0, i32* %7, align 4
  %16 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %17 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CDNS_UART_CR, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @readl(i64 %20)
  %22 = load i32, i32* @CDNS_UART_CR_TX_DIS, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %45, label %25

25:                                               ; preds = %3
  %26 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %27 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CDNS_UART_SR, align 8
  %30 = add nsw i64 %28, %29
  %31 = load i32, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* @CDNS_UART_SR_TXEMPTY, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* @TX_TIMEOUT, align 4
  %36 = call i32 @readl_poll_timeout(i64 %30, i32 %31, i32 %34, i32 1000, i32 %35)
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* %15, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %25
  %40 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %41 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @dev_err(i32 %42, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %351

44:                                               ; preds = %25
  br label %45

45:                                               ; preds = %44, %3
  %46 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %47 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %46, i32 0, i32 3
  %48 = load i64, i64* %11, align 8
  %49 = call i32 @spin_lock_irqsave(i32* %47, i64 %48)
  %50 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %51 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @CDNS_UART_CR, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @readl(i64 %54)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* @CDNS_UART_CR_TX_DIS, align 4
  %57 = load i32, i32* @CDNS_UART_CR_RX_DIS, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* %12, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %63 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @CDNS_UART_CR, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @writel(i32 %61, i64 %66)
  %68 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %69 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @CDNS_UART_BDIV_MAX, align 4
  %72 = add nsw i32 %71, 1
  %73 = load i32, i32* @CDNS_UART_CD_MAX, align 4
  %74 = mul nsw i32 %72, %73
  %75 = mul nsw i32 %74, 8
  %76 = sdiv i32 %70, %75
  store i32 %76, i32* %9, align 4
  %77 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %78 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @CDNS_UART_BDIV_MIN, align 4
  %81 = add nsw i32 %80, 1
  %82 = sdiv i32 %79, %81
  store i32 %82, i32* %10, align 4
  %83 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %84 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %85 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @uart_get_baud_rate(%struct.uart_port* %83, %struct.ktermios* %84, %struct.ktermios* %85, i32 %86, i32 %87)
  store i32 %88, i32* %8, align 4
  %89 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @cdns_uart_set_baud_rate(%struct.uart_port* %89, i32 %90)
  store i32 %91, i32* %8, align 4
  %92 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %93 = call i64 @tty_termios_baud_rate(%struct.ktermios* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %45
  %96 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @tty_termios_encode_baud_rate(%struct.ktermios* %96, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %95, %45
  %101 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %102 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %103 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @uart_update_timeout(%struct.uart_port* %101, i32 %104, i32 %105)
  %107 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %108 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %107, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @CDNS_UART_CR, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @readl(i64 %111)
  store i32 %112, i32* %12, align 4
  %113 = load i32, i32* @CDNS_UART_CR_TXRST, align 4
  %114 = load i32, i32* @CDNS_UART_CR_RXRST, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* %12, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %12, align 4
  %118 = load i32, i32* %12, align 4
  %119 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %120 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %119, i32 0, i32 4
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @CDNS_UART_CR, align 8
  %123 = add nsw i64 %121, %122
  %124 = call i32 @writel(i32 %118, i64 %123)
  br label %125

125:                                              ; preds = %137, %100
  %126 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %127 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %126, i32 0, i32 4
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @CDNS_UART_CR, align 8
  %130 = add nsw i64 %128, %129
  %131 = call i32 @readl(i64 %130)
  %132 = load i32, i32* @CDNS_UART_CR_TXRST, align 4
  %133 = load i32, i32* @CDNS_UART_CR_RXRST, align 4
  %134 = or i32 %132, %133
  %135 = and i32 %131, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %125
  %138 = call i32 (...) @cpu_relax()
  br label %125

139:                                              ; preds = %125
  %140 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %141 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %140, i32 0, i32 4
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @CDNS_UART_CR, align 8
  %144 = add nsw i64 %142, %143
  %145 = call i32 @readl(i64 %144)
  store i32 %145, i32* %12, align 4
  %146 = load i32, i32* @CDNS_UART_CR_TX_DIS, align 4
  %147 = load i32, i32* @CDNS_UART_CR_RX_DIS, align 4
  %148 = or i32 %146, %147
  %149 = xor i32 %148, -1
  %150 = load i32, i32* %12, align 4
  %151 = and i32 %150, %149
  store i32 %151, i32* %12, align 4
  %152 = load i32, i32* @CDNS_UART_CR_TX_EN, align 4
  %153 = load i32, i32* @CDNS_UART_CR_RX_EN, align 4
  %154 = or i32 %152, %153
  %155 = load i32, i32* %12, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %12, align 4
  %157 = load i32, i32* %12, align 4
  %158 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %159 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %158, i32 0, i32 4
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @CDNS_UART_CR, align 8
  %162 = add nsw i64 %160, %161
  %163 = call i32 @writel(i32 %157, i64 %162)
  %164 = load i32, i32* @rx_timeout, align 4
  %165 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %166 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %165, i32 0, i32 4
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @CDNS_UART_RXTOUT, align 8
  %169 = add nsw i64 %167, %168
  %170 = call i32 @writel(i32 %164, i64 %169)
  %171 = load i32, i32* @CDNS_UART_IXR_TXEMPTY, align 4
  %172 = load i32, i32* @CDNS_UART_IXR_RXTRIG, align 4
  %173 = or i32 %171, %172
  %174 = load i32, i32* @CDNS_UART_IXR_OVERRUN, align 4
  %175 = or i32 %173, %174
  %176 = load i32, i32* @CDNS_UART_IXR_TOUT, align 4
  %177 = or i32 %175, %176
  %178 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %179 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %178, i32 0, i32 1
  store i32 %177, i32* %179, align 4
  %180 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %181 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %180, i32 0, i32 2
  store i32 0, i32* %181, align 8
  %182 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %183 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @INPCK, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %196

188:                                              ; preds = %139
  %189 = load i32, i32* @CDNS_UART_IXR_PARITY, align 4
  %190 = load i32, i32* @CDNS_UART_IXR_FRAMING, align 4
  %191 = or i32 %189, %190
  %192 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %193 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = or i32 %194, %191
  store i32 %195, i32* %193, align 4
  br label %196

196:                                              ; preds = %188, %139
  %197 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %198 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @IGNPAR, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %213

203:                                              ; preds = %196
  %204 = load i32, i32* @CDNS_UART_IXR_PARITY, align 4
  %205 = load i32, i32* @CDNS_UART_IXR_FRAMING, align 4
  %206 = or i32 %204, %205
  %207 = load i32, i32* @CDNS_UART_IXR_OVERRUN, align 4
  %208 = or i32 %206, %207
  %209 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %210 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = or i32 %211, %208
  store i32 %212, i32* %210, align 8
  br label %213

213:                                              ; preds = %203, %196
  %214 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %215 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @CREAD, align 4
  %218 = and i32 %216, %217
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %234

220:                                              ; preds = %213
  %221 = load i32, i32* @CDNS_UART_IXR_RXTRIG, align 4
  %222 = load i32, i32* @CDNS_UART_IXR_TOUT, align 4
  %223 = or i32 %221, %222
  %224 = load i32, i32* @CDNS_UART_IXR_PARITY, align 4
  %225 = or i32 %223, %224
  %226 = load i32, i32* @CDNS_UART_IXR_FRAMING, align 4
  %227 = or i32 %225, %226
  %228 = load i32, i32* @CDNS_UART_IXR_OVERRUN, align 4
  %229 = or i32 %227, %228
  %230 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %231 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 8
  %233 = or i32 %232, %229
  store i32 %233, i32* %231, align 8
  br label %234

234:                                              ; preds = %220, %213
  %235 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %236 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %235, i32 0, i32 4
  %237 = load i64, i64* %236, align 8
  %238 = load i64, i64* @CDNS_UART_MR, align 8
  %239 = add nsw i64 %237, %238
  %240 = call i32 @readl(i64 %239)
  store i32 %240, i32* %13, align 4
  %241 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %242 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @CSIZE, align 4
  %245 = and i32 %243, %244
  switch i32 %245, label %254 [
    i32 130, label %246
    i32 129, label %250
    i32 128, label %255
  ]

246:                                              ; preds = %234
  %247 = load i32, i32* @CDNS_UART_MR_CHARLEN_6_BIT, align 4
  %248 = load i32, i32* %7, align 4
  %249 = or i32 %248, %247
  store i32 %249, i32* %7, align 4
  br label %269

250:                                              ; preds = %234
  %251 = load i32, i32* @CDNS_UART_MR_CHARLEN_7_BIT, align 4
  %252 = load i32, i32* %7, align 4
  %253 = or i32 %252, %251
  store i32 %253, i32* %7, align 4
  br label %269

254:                                              ; preds = %234
  br label %255

255:                                              ; preds = %234, %254
  %256 = load i32, i32* @CDNS_UART_MR_CHARLEN_8_BIT, align 4
  %257 = load i32, i32* %7, align 4
  %258 = or i32 %257, %256
  store i32 %258, i32* %7, align 4
  %259 = load i32, i32* @CSIZE, align 4
  %260 = xor i32 %259, -1
  %261 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %262 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = and i32 %263, %260
  store i32 %264, i32* %262, align 4
  %265 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %266 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = or i32 %267, 128
  store i32 %268, i32* %266, align 4
  br label %269

269:                                              ; preds = %255, %250, %246
  %270 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %271 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* @CSTOPB, align 4
  %274 = and i32 %272, %273
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %280

276:                                              ; preds = %269
  %277 = load i32, i32* @CDNS_UART_MR_STOPMODE_2_BIT, align 4
  %278 = load i32, i32* %7, align 4
  %279 = or i32 %278, %277
  store i32 %279, i32* %7, align 4
  br label %284

280:                                              ; preds = %269
  %281 = load i32, i32* @CDNS_UART_MR_STOPMODE_1_BIT, align 4
  %282 = load i32, i32* %7, align 4
  %283 = or i32 %282, %281
  store i32 %283, i32* %7, align 4
  br label %284

284:                                              ; preds = %280, %276
  %285 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %286 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 4
  %288 = load i32, i32* @PARENB, align 4
  %289 = and i32 %287, %288
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %331

291:                                              ; preds = %284
  %292 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %293 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = load i32, i32* @CMSPAR, align 4
  %296 = and i32 %294, %295
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %314

298:                                              ; preds = %291
  %299 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %300 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = load i32, i32* @PARODD, align 4
  %303 = and i32 %301, %302
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %309

305:                                              ; preds = %298
  %306 = load i32, i32* @CDNS_UART_MR_PARITY_MARK, align 4
  %307 = load i32, i32* %7, align 4
  %308 = or i32 %307, %306
  store i32 %308, i32* %7, align 4
  br label %313

309:                                              ; preds = %298
  %310 = load i32, i32* @CDNS_UART_MR_PARITY_SPACE, align 4
  %311 = load i32, i32* %7, align 4
  %312 = or i32 %311, %310
  store i32 %312, i32* %7, align 4
  br label %313

313:                                              ; preds = %309, %305
  br label %330

314:                                              ; preds = %291
  %315 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %316 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 4
  %318 = load i32, i32* @PARODD, align 4
  %319 = and i32 %317, %318
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %325

321:                                              ; preds = %314
  %322 = load i32, i32* @CDNS_UART_MR_PARITY_ODD, align 4
  %323 = load i32, i32* %7, align 4
  %324 = or i32 %323, %322
  store i32 %324, i32* %7, align 4
  br label %329

325:                                              ; preds = %314
  %326 = load i32, i32* @CDNS_UART_MR_PARITY_EVEN, align 4
  %327 = load i32, i32* %7, align 4
  %328 = or i32 %327, %326
  store i32 %328, i32* %7, align 4
  br label %329

329:                                              ; preds = %325, %321
  br label %330

330:                                              ; preds = %329, %313
  br label %335

331:                                              ; preds = %284
  %332 = load i32, i32* @CDNS_UART_MR_PARITY_NONE, align 4
  %333 = load i32, i32* %7, align 4
  %334 = or i32 %333, %332
  store i32 %334, i32* %7, align 4
  br label %335

335:                                              ; preds = %331, %330
  %336 = load i32, i32* %13, align 4
  %337 = and i32 %336, 1
  %338 = load i32, i32* %7, align 4
  %339 = or i32 %338, %337
  store i32 %339, i32* %7, align 4
  %340 = load i32, i32* %7, align 4
  %341 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %342 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %341, i32 0, i32 4
  %343 = load i64, i64* %342, align 8
  %344 = load i64, i64* @CDNS_UART_MR, align 8
  %345 = add nsw i64 %343, %344
  %346 = call i32 @writel(i32 %340, i64 %345)
  %347 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %348 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %347, i32 0, i32 3
  %349 = load i64, i64* %11, align 8
  %350 = call i32 @spin_unlock_irqrestore(i32* %348, i64 %349)
  br label %351

351:                                              ; preds = %335, %39
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @readl_poll_timeout(i64, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @uart_get_baud_rate(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*, i32, i32) #1

declare dso_local i32 @cdns_uart_set_baud_rate(%struct.uart_port*, i32) #1

declare dso_local i64 @tty_termios_baud_rate(%struct.ktermios*) #1

declare dso_local i32 @tty_termios_encode_baud_rate(%struct.ktermios*, i32, i32) #1

declare dso_local i32 @uart_update_timeout(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
