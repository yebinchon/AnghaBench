; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial-tegra.c_tegra_uart_set_termios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial-tegra.c_tegra_uart_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.ktermios = type { i32, i32 }
%struct.tegra_uart_port = type { i32, i32, i32, i32, %struct.TYPE_4__, i64, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.clk = type { i32 }

@UART_IER_RDI = common dso_local global i32 0, align 4
@UART_IER = common dso_local global i32 0, align 4
@UART_LCR_PARITY = common dso_local global i32 0, align 4
@CMSPAR = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@UART_LCR_EPAR = common dso_local global i32 0, align 4
@UART_LCR_SPAR = common dso_local global i32 0, align 4
@UART_LCR_WLEN8 = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@UART_LCR_WLEN5 = common dso_local global i32 0, align 4
@UART_LCR_WLEN6 = common dso_local global i32 0, align 4
@UART_LCR_WLEN7 = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@UART_LCR_STOP = common dso_local global i32 0, align 4
@UART_LCR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Failed to set baud rate\0A\00", align 1
@CRTSCTS = common dso_local global i32 0, align 4
@TEGRA_UART_MCR_CTS_EN = common dso_local global i32 0, align 4
@TEGRA_UART_MCR_RTS_EN = common dso_local global i32 0, align 4
@UART_MCR = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@UART_LSR_DR = common dso_local global i32 0, align 4
@IGNBRK = common dso_local global i32 0, align 4
@UART_LSR_BI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @tegra_uart_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_uart_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca %struct.tegra_uart_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.clk*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %16 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %17 = call %struct.tegra_uart_port* @to_tegra_uport(%struct.uart_port* %16)
  store %struct.tegra_uart_port* %17, %struct.tegra_uart_port** %7, align 8
  store i32 1, i32* %11, align 4
  %18 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %7, align 8
  %19 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %18, i32 0, i32 7
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.clk* @clk_get_parent(i32 %20)
  store %struct.clk* %21, %struct.clk** %12, align 8
  %22 = load %struct.clk*, %struct.clk** %12, align 8
  %23 = call i64 @clk_get_rate(%struct.clk* %22)
  store i64 %23, i64* %13, align 8
  %24 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %7, align 8
  %25 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %24, i32 0, i32 6
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 32767, i32 65535
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = mul nsw i32 %32, 16
  store i32 %33, i32* %14, align 4
  %34 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %35 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %34, i32 0, i32 0
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @spin_lock_irqsave(i32* %35, i64 %36)
  %38 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %7, align 8
  %39 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %38, i32 0, i32 5
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %3
  %43 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %7, align 8
  %44 = call i32 @set_rts(%struct.tegra_uart_port* %43, i32 0)
  br label %45

45:                                               ; preds = %42, %3
  %46 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %7, align 8
  %47 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %7, align 8
  %48 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @UART_IER_RDI, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @UART_IER, align 4
  %53 = call i32 @tegra_uart_write(%struct.tegra_uart_port* %46, i32 %51, i32 %52)
  %54 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %7, align 8
  %55 = load i32, i32* @UART_IER, align 4
  %56 = call i32 @tegra_uart_read(%struct.tegra_uart_port* %54, i32 %55)
  %57 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %7, align 8
  %58 = load i32, i32* @UART_IER, align 4
  %59 = call i32 @tegra_uart_write(%struct.tegra_uart_port* %57, i32 0, i32 %58)
  %60 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %7, align 8
  %61 = load i32, i32* @UART_IER, align 4
  %62 = call i32 @tegra_uart_read(%struct.tegra_uart_port* %60, i32 %61)
  %63 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %7, align 8
  %64 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* @UART_LCR_PARITY, align 4
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %10, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* @CMSPAR, align 4
  %71 = xor i32 %70, -1
  %72 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %73 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, %71
  store i32 %75, i32* %73, align 4
  %76 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %77 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @PARENB, align 4
  %80 = and i32 %78, %79
  %81 = load i32, i32* @PARENB, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %116

83:                                               ; preds = %45
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %11, align 4
  %86 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %87 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @PARODD, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %104

92:                                               ; preds = %83
  %93 = load i32, i32* @UART_LCR_PARITY, align 4
  %94 = load i32, i32* %10, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* @UART_LCR_EPAR, align 4
  %97 = xor i32 %96, -1
  %98 = load i32, i32* %10, align 4
  %99 = and i32 %98, %97
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* @UART_LCR_SPAR, align 4
  %101 = xor i32 %100, -1
  %102 = load i32, i32* %10, align 4
  %103 = and i32 %102, %101
  store i32 %103, i32* %10, align 4
  br label %115

104:                                              ; preds = %83
  %105 = load i32, i32* @UART_LCR_PARITY, align 4
  %106 = load i32, i32* %10, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* @UART_LCR_EPAR, align 4
  %109 = load i32, i32* %10, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* @UART_LCR_SPAR, align 4
  %112 = xor i32 %111, -1
  %113 = load i32, i32* %10, align 4
  %114 = and i32 %113, %112
  store i32 %114, i32* %10, align 4
  br label %115

115:                                              ; preds = %104, %92
  br label %116

116:                                              ; preds = %115, %45
  %117 = load i32, i32* @UART_LCR_WLEN8, align 4
  %118 = xor i32 %117, -1
  %119 = load i32, i32* %10, align 4
  %120 = and i32 %119, %118
  store i32 %120, i32* %10, align 4
  %121 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %122 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @CSIZE, align 4
  %125 = and i32 %123, %124
  switch i32 %125, label %144 [
    i32 130, label %126
    i32 129, label %132
    i32 128, label %138
  ]

126:                                              ; preds = %116
  %127 = load i32, i32* @UART_LCR_WLEN5, align 4
  %128 = load i32, i32* %10, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %10, align 4
  %130 = load i32, i32* %11, align 4
  %131 = add nsw i32 %130, 5
  store i32 %131, i32* %11, align 4
  br label %150

132:                                              ; preds = %116
  %133 = load i32, i32* @UART_LCR_WLEN6, align 4
  %134 = load i32, i32* %10, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %10, align 4
  %136 = load i32, i32* %11, align 4
  %137 = add nsw i32 %136, 6
  store i32 %137, i32* %11, align 4
  br label %150

138:                                              ; preds = %116
  %139 = load i32, i32* @UART_LCR_WLEN7, align 4
  %140 = load i32, i32* %10, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %10, align 4
  %142 = load i32, i32* %11, align 4
  %143 = add nsw i32 %142, 7
  store i32 %143, i32* %11, align 4
  br label %150

144:                                              ; preds = %116
  %145 = load i32, i32* @UART_LCR_WLEN8, align 4
  %146 = load i32, i32* %10, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %10, align 4
  %148 = load i32, i32* %11, align 4
  %149 = add nsw i32 %148, 8
  store i32 %149, i32* %11, align 4
  br label %150

150:                                              ; preds = %144, %138, %132, %126
  %151 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %152 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @CSTOPB, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %150
  %158 = load i32, i32* @UART_LCR_STOP, align 4
  %159 = load i32, i32* %10, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %10, align 4
  %161 = load i32, i32* %11, align 4
  %162 = add nsw i32 %161, 2
  store i32 %162, i32* %11, align 4
  br label %170

163:                                              ; preds = %150
  %164 = load i32, i32* @UART_LCR_STOP, align 4
  %165 = xor i32 %164, -1
  %166 = load i32, i32* %10, align 4
  %167 = and i32 %166, %165
  store i32 %167, i32* %10, align 4
  %168 = load i32, i32* %11, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %11, align 4
  br label %170

170:                                              ; preds = %163, %157
  %171 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %7, align 8
  %172 = load i32, i32* %10, align 4
  %173 = load i32, i32* @UART_LCR, align 4
  %174 = call i32 @tegra_uart_write(%struct.tegra_uart_port* %171, i32 %172, i32 %173)
  %175 = load i32, i32* %10, align 4
  %176 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %7, align 8
  %177 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %176, i32 0, i32 1
  store i32 %175, i32* %177, align 4
  %178 = load i32, i32* %11, align 4
  %179 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %7, align 8
  %180 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %179, i32 0, i32 2
  store i32 %178, i32* %180, align 8
  %181 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %182 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %183 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %184 = load i64, i64* %13, align 8
  %185 = load i32, i32* %14, align 4
  %186 = sext i32 %185 to i64
  %187 = udiv i64 %184, %186
  %188 = load i64, i64* %13, align 8
  %189 = udiv i64 %188, 16
  %190 = call i32 @uart_get_baud_rate(%struct.uart_port* %181, %struct.ktermios* %182, %struct.ktermios* %183, i64 %187, i64 %189)
  store i32 %190, i32* %8, align 4
  %191 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %192 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %191, i32 0, i32 0
  %193 = load i64, i64* %9, align 8
  %194 = call i32 @spin_unlock_irqrestore(i32* %192, i64 %193)
  %195 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %7, align 8
  %196 = load i32, i32* %8, align 4
  %197 = call i32 @tegra_set_baudrate(%struct.tegra_uart_port* %195, i32 %196)
  store i32 %197, i32* %15, align 4
  %198 = load i32, i32* %15, align 4
  %199 = icmp slt i32 %198, 0
  br i1 %199, label %200, label %206

200:                                              ; preds = %170
  %201 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %7, align 8
  %202 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %201, i32 0, i32 4
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @dev_err(i32 %204, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %325

206:                                              ; preds = %170
  %207 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %208 = call i64 @tty_termios_baud_rate(%struct.ktermios* %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %206
  %211 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %212 = load i32, i32* %8, align 4
  %213 = load i32, i32* %8, align 4
  %214 = call i32 @tty_termios_encode_baud_rate(%struct.ktermios* %211, i32 %212, i32 %213)
  br label %215

215:                                              ; preds = %210, %206
  %216 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %217 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %216, i32 0, i32 0
  %218 = load i64, i64* %9, align 8
  %219 = call i32 @spin_lock_irqsave(i32* %217, i64 %218)
  %220 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %221 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* @CRTSCTS, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %252

226:                                              ; preds = %215
  %227 = load i32, i32* @TEGRA_UART_MCR_CTS_EN, align 4
  %228 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %7, align 8
  %229 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 4
  %231 = or i32 %230, %227
  store i32 %231, i32* %229, align 4
  %232 = load i32, i32* @TEGRA_UART_MCR_RTS_EN, align 4
  %233 = xor i32 %232, -1
  %234 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %7, align 8
  %235 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %234, i32 0, i32 3
  %236 = load i32, i32* %235, align 4
  %237 = and i32 %236, %233
  store i32 %237, i32* %235, align 4
  %238 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %7, align 8
  %239 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %7, align 8
  %240 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %239, i32 0, i32 3
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* @UART_MCR, align 4
  %243 = call i32 @tegra_uart_write(%struct.tegra_uart_port* %238, i32 %241, i32 %242)
  %244 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %7, align 8
  %245 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %244, i32 0, i32 5
  %246 = load i64, i64* %245, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %251

248:                                              ; preds = %226
  %249 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %7, align 8
  %250 = call i32 @set_rts(%struct.tegra_uart_port* %249, i32 1)
  br label %251

251:                                              ; preds = %248, %226
  br label %271

252:                                              ; preds = %215
  %253 = load i32, i32* @TEGRA_UART_MCR_CTS_EN, align 4
  %254 = xor i32 %253, -1
  %255 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %7, align 8
  %256 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %255, i32 0, i32 3
  %257 = load i32, i32* %256, align 4
  %258 = and i32 %257, %254
  store i32 %258, i32* %256, align 4
  %259 = load i32, i32* @TEGRA_UART_MCR_RTS_EN, align 4
  %260 = xor i32 %259, -1
  %261 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %7, align 8
  %262 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 4
  %264 = and i32 %263, %260
  store i32 %264, i32* %262, align 4
  %265 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %7, align 8
  %266 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %7, align 8
  %267 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %266, i32 0, i32 3
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* @UART_MCR, align 4
  %270 = call i32 @tegra_uart_write(%struct.tegra_uart_port* %265, i32 %268, i32 %269)
  br label %271

271:                                              ; preds = %252, %251
  %272 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %273 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %274 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = load i32, i32* %8, align 4
  %277 = call i32 @uart_update_timeout(%struct.uart_port* %272, i32 %275, i32 %276)
  %278 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %7, align 8
  %279 = load i32, i32* @UART_IER, align 4
  %280 = call i32 @tegra_uart_read(%struct.tegra_uart_port* %278, i32 %279)
  %281 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %7, align 8
  %282 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %7, align 8
  %283 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = load i32, i32* @UART_IER, align 4
  %286 = call i32 @tegra_uart_write(%struct.tegra_uart_port* %281, i32 %284, i32 %285)
  %287 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %7, align 8
  %288 = load i32, i32* @UART_IER, align 4
  %289 = call i32 @tegra_uart_read(%struct.tegra_uart_port* %287, i32 %288)
  %290 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %7, align 8
  %291 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %290, i32 0, i32 4
  %292 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %291, i32 0, i32 0
  store i32 0, i32* %292, align 8
  %293 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %294 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 4
  %296 = load i32, i32* @CREAD, align 4
  %297 = and i32 %295, %296
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %299, label %306

299:                                              ; preds = %271
  %300 = load i32, i32* @UART_LSR_DR, align 4
  %301 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %7, align 8
  %302 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %301, i32 0, i32 4
  %303 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = or i32 %304, %300
  store i32 %305, i32* %303, align 8
  br label %306

306:                                              ; preds = %299, %271
  %307 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %308 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 4
  %310 = load i32, i32* @IGNBRK, align 4
  %311 = and i32 %309, %310
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %320

313:                                              ; preds = %306
  %314 = load i32, i32* @UART_LSR_BI, align 4
  %315 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %7, align 8
  %316 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %315, i32 0, i32 4
  %317 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = or i32 %318, %314
  store i32 %319, i32* %317, align 8
  br label %320

320:                                              ; preds = %313, %306
  %321 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %322 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %321, i32 0, i32 0
  %323 = load i64, i64* %9, align 8
  %324 = call i32 @spin_unlock_irqrestore(i32* %322, i64 %323)
  br label %325

325:                                              ; preds = %320, %200
  ret void
}

declare dso_local %struct.tegra_uart_port* @to_tegra_uport(%struct.uart_port*) #1

declare dso_local %struct.clk* @clk_get_parent(i32) #1

declare dso_local i64 @clk_get_rate(%struct.clk*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @set_rts(%struct.tegra_uart_port*, i32) #1

declare dso_local i32 @tegra_uart_write(%struct.tegra_uart_port*, i32, i32) #1

declare dso_local i32 @tegra_uart_read(%struct.tegra_uart_port*, i32) #1

declare dso_local i32 @uart_get_baud_rate(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*, i64, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @tegra_set_baudrate(%struct.tegra_uart_port*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @tty_termios_baud_rate(%struct.ktermios*) #1

declare dso_local i32 @tty_termios_encode_baud_rate(%struct.ktermios*, i32, i32) #1

declare dso_local i32 @uart_update_timeout(%struct.uart_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
