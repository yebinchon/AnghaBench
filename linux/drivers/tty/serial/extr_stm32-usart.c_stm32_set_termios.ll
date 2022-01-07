; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_stm32-usart.c_stm32_set_termios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_stm32-usart.c_stm32_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i64, i32, i32, i32, i32, i32, %struct.serial_rs485 }
%struct.serial_rs485 = type { i32, i32, i32 }
%struct.ktermios = type { i32, i32 }
%struct.stm32_port = type { i32, i32, i32, i64, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.stm32_usart_config, %struct.stm32_usart_offsets }
%struct.stm32_usart_config = type { i32, i64 }
%struct.stm32_usart_offsets = type { i64, i64, i64, i64, i64, i64 }

@CRTSCTS = common dso_local global i32 0, align 4
@UNDEF_REG = common dso_local global i64 0, align 8
@USART_RQR_TXFRQ = common dso_local global i32 0, align 4
@USART_RQR_RXFRQ = common dso_local global i32 0, align 4
@USART_CR1_TE = common dso_local global i32 0, align 4
@USART_CR1_RE = common dso_local global i32 0, align 4
@USART_CR1_FIFOEN = common dso_local global i32 0, align 4
@USART_CR3_TXFTIE = common dso_local global i32 0, align 4
@USART_CR3_RXFTCFG_MASK = common dso_local global i32 0, align 4
@USART_CR3_RXFTIE = common dso_local global i32 0, align 4
@USART_CR3_TXFTCFG_MASK = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@USART_CR2_STOP_2B = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@USART_CR1_PCE = common dso_local global i32 0, align 4
@USART_CR1_M0 = common dso_local global i32 0, align 4
@USART_CR1_M1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Unsupported data bits config: %u bits\0A\00", align 1
@USART_CR1_RTOIE = common dso_local global i32 0, align 4
@USART_CR2_RTOEN = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@USART_CR1_PS = common dso_local global i32 0, align 4
@UPSTAT_AUTOCTS = common dso_local global i32 0, align 4
@UPSTAT_AUTORTS = common dso_local global i32 0, align 4
@USART_CR3_CTSE = common dso_local global i32 0, align 4
@USART_CR3_RTSE = common dso_local global i32 0, align 4
@USART_CR1_OVER8 = common dso_local global i32 0, align 4
@USART_BRR_DIV_M_SHIFT = common dso_local global i32 0, align 4
@USART_SR_ORE = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@USART_SR_PE = common dso_local global i32 0, align 4
@USART_SR_FE = common dso_local global i32 0, align 4
@IGNBRK = common dso_local global i32 0, align 4
@BRKINT = common dso_local global i32 0, align 4
@PARMRK = common dso_local global i32 0, align 4
@IGNPAR = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@USART_SR_DUMMY_RX = common dso_local global i32 0, align 4
@USART_CR3_DMAR = common dso_local global i32 0, align 4
@SER_RS485_ENABLED = common dso_local global i32 0, align 4
@SER_RS485_RTS_ON_SEND = common dso_local global i32 0, align 4
@USART_CR3_DEP = common dso_local global i32 0, align 4
@SER_RS485_RTS_AFTER_SEND = common dso_local global i32 0, align 4
@USART_CR3_DEM = common dso_local global i32 0, align 4
@USART_CR1_DEDT_MASK = common dso_local global i32 0, align 4
@USART_CR1_DEAT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @stm32_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca %struct.stm32_port*, align 8
  %8 = alloca %struct.stm32_usart_offsets*, align 8
  %9 = alloca %struct.stm32_usart_config*, align 8
  %10 = alloca %struct.serial_rs485*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %22 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %23 = call %struct.stm32_port* @to_stm32_port(%struct.uart_port* %22)
  store %struct.stm32_port* %23, %struct.stm32_port** %7, align 8
  %24 = load %struct.stm32_port*, %struct.stm32_port** %7, align 8
  %25 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %24, i32 0, i32 6
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store %struct.stm32_usart_offsets* %27, %struct.stm32_usart_offsets** %8, align 8
  %28 = load %struct.stm32_port*, %struct.stm32_port** %7, align 8
  %29 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %28, i32 0, i32 6
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store %struct.stm32_usart_config* %31, %struct.stm32_usart_config** %9, align 8
  %32 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %33 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %32, i32 0, i32 7
  store %struct.serial_rs485* %33, %struct.serial_rs485** %10, align 8
  %34 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %35 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %17, align 4
  %37 = load %struct.stm32_port*, %struct.stm32_port** %7, align 8
  %38 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %3
  %42 = load i32, i32* @CRTSCTS, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %17, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %17, align 4
  br label %46

46:                                               ; preds = %41, %3
  %47 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %48 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %49 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %50 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %51 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sdiv i32 %52, 8
  %54 = call i32 @uart_get_baud_rate(%struct.uart_port* %47, %struct.ktermios* %48, %struct.ktermios* %49, i32 0, i32 %53)
  store i32 %54, i32* %11, align 4
  %55 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %56 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %55, i32 0, i32 5
  %57 = load i64, i64* %21, align 8
  %58 = call i32 @spin_lock_irqsave(i32* %56, i64 %57)
  %59 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %60 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.stm32_usart_offsets*, %struct.stm32_usart_offsets** %8, align 8
  %63 = getelementptr inbounds %struct.stm32_usart_offsets, %struct.stm32_usart_offsets* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %61, %64
  %66 = call i32 @writel_relaxed(i32 0, i64 %65)
  %67 = load %struct.stm32_usart_offsets*, %struct.stm32_usart_offsets** %8, align 8
  %68 = getelementptr inbounds %struct.stm32_usart_offsets, %struct.stm32_usart_offsets* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @UNDEF_REG, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %46
  %73 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %74 = load %struct.stm32_usart_offsets*, %struct.stm32_usart_offsets** %8, align 8
  %75 = getelementptr inbounds %struct.stm32_usart_offsets, %struct.stm32_usart_offsets* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* @USART_RQR_TXFRQ, align 4
  %78 = load i32, i32* @USART_RQR_RXFRQ, align 4
  %79 = or i32 %77, %78
  %80 = call i32 @stm32_set_bits(%struct.uart_port* %73, i64 %76, i32 %79)
  br label %81

81:                                               ; preds = %72, %46
  %82 = load i32, i32* @USART_CR1_TE, align 4
  %83 = load i32, i32* @USART_CR1_RE, align 4
  %84 = or i32 %82, %83
  store i32 %84, i32* %18, align 4
  %85 = load %struct.stm32_port*, %struct.stm32_port** %7, align 8
  %86 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %81
  %90 = load i32, i32* @USART_CR1_FIFOEN, align 4
  %91 = load i32, i32* %18, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %18, align 4
  br label %93

93:                                               ; preds = %89, %81
  store i32 0, i32* %19, align 4
  %94 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %95 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.stm32_usart_offsets*, %struct.stm32_usart_offsets** %8, align 8
  %98 = getelementptr inbounds %struct.stm32_usart_offsets, %struct.stm32_usart_offsets* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %96, %99
  %101 = call i32 @readl_relaxed(i64 %100)
  store i32 %101, i32* %20, align 4
  %102 = load i32, i32* @USART_CR3_TXFTIE, align 4
  %103 = load i32, i32* @USART_CR3_RXFTCFG_MASK, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @USART_CR3_RXFTIE, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @USART_CR3_TXFTCFG_MASK, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* %20, align 4
  %110 = and i32 %109, %108
  store i32 %110, i32* %20, align 4
  %111 = load i32, i32* %17, align 4
  %112 = load i32, i32* @CSTOPB, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %93
  %116 = load i32, i32* @USART_CR2_STOP_2B, align 4
  %117 = load i32, i32* %19, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %19, align 4
  br label %119

119:                                              ; preds = %115, %93
  %120 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %121 = call i32 @stm32_get_databits(%struct.ktermios* %120)
  store i32 %121, i32* %12, align 4
  %122 = load i32, i32* %12, align 4
  %123 = call i32 @BIT(i32 %122)
  %124 = sub nsw i32 %123, 1
  %125 = load %struct.stm32_port*, %struct.stm32_port** %7, align 8
  %126 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  %127 = load i32, i32* %17, align 4
  %128 = load i32, i32* @PARENB, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %119
  %132 = load i32, i32* %12, align 4
  %133 = add i32 %132, 1
  store i32 %133, i32* %12, align 4
  %134 = load i32, i32* @USART_CR1_PCE, align 4
  %135 = load i32, i32* %18, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %18, align 4
  br label %137

137:                                              ; preds = %131, %119
  %138 = load i32, i32* %12, align 4
  %139 = icmp eq i32 %138, 9
  br i1 %139, label %140, label %144

140:                                              ; preds = %137
  %141 = load i32, i32* @USART_CR1_M0, align 4
  %142 = load i32, i32* %18, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %18, align 4
  br label %167

144:                                              ; preds = %137
  %145 = load i32, i32* %12, align 4
  %146 = icmp eq i32 %145, 7
  br i1 %146, label %147, label %156

147:                                              ; preds = %144
  %148 = load %struct.stm32_usart_config*, %struct.stm32_usart_config** %9, align 8
  %149 = getelementptr inbounds %struct.stm32_usart_config, %struct.stm32_usart_config* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %147
  %153 = load i32, i32* @USART_CR1_M1, align 4
  %154 = load i32, i32* %18, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %18, align 4
  br label %166

156:                                              ; preds = %147, %144
  %157 = load i32, i32* %12, align 4
  %158 = icmp ne i32 %157, 8
  br i1 %158, label %159, label %165

159:                                              ; preds = %156
  %160 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %161 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %160, i32 0, i32 6
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* %12, align 4
  %164 = call i32 @dev_dbg(i32 %162, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %163)
  br label %165

165:                                              ; preds = %159, %156
  br label %166

166:                                              ; preds = %165, %152
  br label %167

167:                                              ; preds = %166, %140
  %168 = load %struct.stm32_usart_offsets*, %struct.stm32_usart_offsets** %8, align 8
  %169 = getelementptr inbounds %struct.stm32_usart_offsets, %struct.stm32_usart_offsets* %168, i32 0, i32 3
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @UNDEF_REG, align 8
  %172 = icmp ne i64 %170, %171
  br i1 %172, label %173, label %219

173:                                              ; preds = %167
  %174 = load %struct.stm32_port*, %struct.stm32_port** %7, align 8
  %175 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %174, i32 0, i32 3
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %183, label %178

178:                                              ; preds = %173
  %179 = load %struct.stm32_port*, %struct.stm32_port** %7, align 8
  %180 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %179, i32 0, i32 4
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %219

183:                                              ; preds = %178, %173
  %184 = load i32, i32* %17, align 4
  %185 = load i32, i32* @CSTOPB, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %183
  %189 = load i32, i32* %12, align 4
  %190 = add i32 %189, 3
  store i32 %190, i32* %12, align 4
  br label %194

191:                                              ; preds = %183
  %192 = load i32, i32* %12, align 4
  %193 = add i32 %192, 2
  store i32 %193, i32* %12, align 4
  br label %194

194:                                              ; preds = %191, %188
  %195 = load i32, i32* @USART_CR1_RTOIE, align 4
  %196 = load %struct.stm32_port*, %struct.stm32_port** %7, align 8
  %197 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %196, i32 0, i32 1
  store i32 %195, i32* %197, align 4
  %198 = load i32, i32* %12, align 4
  %199 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %200 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.stm32_usart_offsets*, %struct.stm32_usart_offsets** %8, align 8
  %203 = getelementptr inbounds %struct.stm32_usart_offsets, %struct.stm32_usart_offsets* %202, i32 0, i32 3
  %204 = load i64, i64* %203, align 8
  %205 = add nsw i64 %201, %204
  %206 = call i32 @writel_relaxed(i32 %198, i64 %205)
  %207 = load i32, i32* @USART_CR2_RTOEN, align 4
  %208 = load i32, i32* %19, align 4
  %209 = or i32 %208, %207
  store i32 %209, i32* %19, align 4
  %210 = load %struct.stm32_port*, %struct.stm32_port** %7, align 8
  %211 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %210, i32 0, i32 3
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %218, label %214

214:                                              ; preds = %194
  %215 = load i32, i32* @USART_CR3_RXFTIE, align 4
  %216 = load %struct.stm32_port*, %struct.stm32_port** %7, align 8
  %217 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %216, i32 0, i32 2
  store i32 %215, i32* %217, align 8
  br label %218

218:                                              ; preds = %214, %194
  br label %219

219:                                              ; preds = %218, %178, %167
  %220 = load %struct.stm32_port*, %struct.stm32_port** %7, align 8
  %221 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* %18, align 4
  %224 = or i32 %223, %222
  store i32 %224, i32* %18, align 4
  %225 = load %struct.stm32_port*, %struct.stm32_port** %7, align 8
  %226 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* %20, align 4
  %229 = or i32 %228, %227
  store i32 %229, i32* %20, align 4
  %230 = load i32, i32* %17, align 4
  %231 = load i32, i32* @PARODD, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %238

234:                                              ; preds = %219
  %235 = load i32, i32* @USART_CR1_PS, align 4
  %236 = load i32, i32* %18, align 4
  %237 = or i32 %236, %235
  store i32 %237, i32* %18, align 4
  br label %238

238:                                              ; preds = %234, %219
  %239 = load i32, i32* @UPSTAT_AUTOCTS, align 4
  %240 = load i32, i32* @UPSTAT_AUTORTS, align 4
  %241 = or i32 %239, %240
  %242 = xor i32 %241, -1
  %243 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %244 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 8
  %246 = and i32 %245, %242
  store i32 %246, i32* %244, align 8
  %247 = load i32, i32* %17, align 4
  %248 = load i32, i32* @CRTSCTS, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %264

251:                                              ; preds = %238
  %252 = load i32, i32* @UPSTAT_AUTOCTS, align 4
  %253 = load i32, i32* @UPSTAT_AUTORTS, align 4
  %254 = or i32 %252, %253
  %255 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %256 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 8
  %258 = or i32 %257, %254
  store i32 %258, i32* %256, align 8
  %259 = load i32, i32* @USART_CR3_CTSE, align 4
  %260 = load i32, i32* @USART_CR3_RTSE, align 4
  %261 = or i32 %259, %260
  %262 = load i32, i32* %20, align 4
  %263 = or i32 %262, %261
  store i32 %263, i32* %20, align 4
  br label %264

264:                                              ; preds = %251, %238
  %265 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %266 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = load i32, i32* %11, align 4
  %269 = call i32 @DIV_ROUND_CLOSEST(i32 %267, i32 %268)
  store i32 %269, i32* %13, align 4
  %270 = load i32, i32* %13, align 4
  %271 = icmp slt i32 %270, 16
  br i1 %271, label %272, label %282

272:                                              ; preds = %264
  store i32 8, i32* %16, align 4
  %273 = load i32, i32* @USART_CR1_OVER8, align 4
  %274 = load i32, i32* %18, align 4
  %275 = or i32 %274, %273
  store i32 %275, i32* %18, align 4
  %276 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %277 = load %struct.stm32_usart_offsets*, %struct.stm32_usart_offsets** %8, align 8
  %278 = getelementptr inbounds %struct.stm32_usart_offsets, %struct.stm32_usart_offsets* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = load i32, i32* @USART_CR1_OVER8, align 4
  %281 = call i32 @stm32_set_bits(%struct.uart_port* %276, i64 %279, i32 %280)
  br label %293

282:                                              ; preds = %264
  store i32 16, i32* %16, align 4
  %283 = load i32, i32* @USART_CR1_OVER8, align 4
  %284 = xor i32 %283, -1
  %285 = load i32, i32* %18, align 4
  %286 = and i32 %285, %284
  store i32 %286, i32* %18, align 4
  %287 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %288 = load %struct.stm32_usart_offsets*, %struct.stm32_usart_offsets** %8, align 8
  %289 = getelementptr inbounds %struct.stm32_usart_offsets, %struct.stm32_usart_offsets* %288, i32 0, i32 0
  %290 = load i64, i64* %289, align 8
  %291 = load i32, i32* @USART_CR1_OVER8, align 4
  %292 = call i32 @stm32_clr_bits(%struct.uart_port* %287, i64 %290, i32 %291)
  br label %293

293:                                              ; preds = %282, %272
  %294 = load i32, i32* %13, align 4
  %295 = load i32, i32* %16, align 4
  %296 = sdiv i32 %294, %295
  %297 = load i32, i32* @USART_BRR_DIV_M_SHIFT, align 4
  %298 = shl i32 %296, %297
  store i32 %298, i32* %14, align 4
  %299 = load i32, i32* %13, align 4
  %300 = load i32, i32* %16, align 4
  %301 = srem i32 %299, %300
  store i32 %301, i32* %15, align 4
  %302 = load i32, i32* %14, align 4
  %303 = load i32, i32* %15, align 4
  %304 = or i32 %302, %303
  %305 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %306 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %305, i32 0, i32 1
  %307 = load i64, i64* %306, align 8
  %308 = load %struct.stm32_usart_offsets*, %struct.stm32_usart_offsets** %8, align 8
  %309 = getelementptr inbounds %struct.stm32_usart_offsets, %struct.stm32_usart_offsets* %308, i32 0, i32 4
  %310 = load i64, i64* %309, align 8
  %311 = add nsw i64 %307, %310
  %312 = call i32 @writel_relaxed(i32 %304, i64 %311)
  %313 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %314 = load i32, i32* %17, align 4
  %315 = load i32, i32* %11, align 4
  %316 = call i32 @uart_update_timeout(%struct.uart_port* %313, i32 %314, i32 %315)
  %317 = load i32, i32* @USART_SR_ORE, align 4
  %318 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %319 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %318, i32 0, i32 3
  store i32 %317, i32* %319, align 4
  %320 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %321 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %320, i32 0, i32 1
  %322 = load i32, i32* %321, align 4
  %323 = load i32, i32* @INPCK, align 4
  %324 = and i32 %322, %323
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %334

326:                                              ; preds = %293
  %327 = load i32, i32* @USART_SR_PE, align 4
  %328 = load i32, i32* @USART_SR_FE, align 4
  %329 = or i32 %327, %328
  %330 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %331 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %330, i32 0, i32 3
  %332 = load i32, i32* %331, align 4
  %333 = or i32 %332, %329
  store i32 %333, i32* %331, align 4
  br label %334

334:                                              ; preds = %326, %293
  %335 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %336 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 4
  %338 = load i32, i32* @IGNBRK, align 4
  %339 = load i32, i32* @BRKINT, align 4
  %340 = or i32 %338, %339
  %341 = load i32, i32* @PARMRK, align 4
  %342 = or i32 %340, %341
  %343 = and i32 %337, %342
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %351

345:                                              ; preds = %334
  %346 = load i32, i32* @USART_SR_FE, align 4
  %347 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %348 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %347, i32 0, i32 3
  %349 = load i32, i32* %348, align 4
  %350 = or i32 %349, %346
  store i32 %350, i32* %348, align 4
  br label %351

351:                                              ; preds = %345, %334
  %352 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %353 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %352, i32 0, i32 4
  store i32 0, i32* %353, align 8
  %354 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %355 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %354, i32 0, i32 1
  %356 = load i32, i32* %355, align 4
  %357 = load i32, i32* @IGNPAR, align 4
  %358 = and i32 %356, %357
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %366

360:                                              ; preds = %351
  %361 = load i32, i32* @USART_SR_PE, align 4
  %362 = load i32, i32* @USART_SR_FE, align 4
  %363 = or i32 %361, %362
  %364 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %365 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %364, i32 0, i32 4
  store i32 %363, i32* %365, align 8
  br label %366

366:                                              ; preds = %360, %351
  %367 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %368 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %367, i32 0, i32 1
  %369 = load i32, i32* %368, align 4
  %370 = load i32, i32* @IGNBRK, align 4
  %371 = and i32 %369, %370
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %392

373:                                              ; preds = %366
  %374 = load i32, i32* @USART_SR_FE, align 4
  %375 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %376 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %375, i32 0, i32 4
  %377 = load i32, i32* %376, align 8
  %378 = or i32 %377, %374
  store i32 %378, i32* %376, align 8
  %379 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %380 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %379, i32 0, i32 1
  %381 = load i32, i32* %380, align 4
  %382 = load i32, i32* @IGNPAR, align 4
  %383 = and i32 %381, %382
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %391

385:                                              ; preds = %373
  %386 = load i32, i32* @USART_SR_ORE, align 4
  %387 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %388 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %387, i32 0, i32 4
  %389 = load i32, i32* %388, align 8
  %390 = or i32 %389, %386
  store i32 %390, i32* %388, align 8
  br label %391

391:                                              ; preds = %385, %373
  br label %392

392:                                              ; preds = %391, %366
  %393 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %394 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %393, i32 0, i32 0
  %395 = load i32, i32* %394, align 4
  %396 = load i32, i32* @CREAD, align 4
  %397 = and i32 %395, %396
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %399, label %405

399:                                              ; preds = %392
  %400 = load i32, i32* @USART_SR_DUMMY_RX, align 4
  %401 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %402 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %401, i32 0, i32 4
  %403 = load i32, i32* %402, align 8
  %404 = or i32 %403, %400
  store i32 %404, i32* %402, align 8
  br label %405

405:                                              ; preds = %399, %392
  %406 = load %struct.stm32_port*, %struct.stm32_port** %7, align 8
  %407 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %406, i32 0, i32 3
  %408 = load i64, i64* %407, align 8
  %409 = icmp ne i64 %408, 0
  br i1 %409, label %410, label %414

410:                                              ; preds = %405
  %411 = load i32, i32* @USART_CR3_DMAR, align 4
  %412 = load i32, i32* %20, align 4
  %413 = or i32 %412, %411
  store i32 %413, i32* %20, align 4
  br label %414

414:                                              ; preds = %410, %405
  %415 = load %struct.serial_rs485*, %struct.serial_rs485** %10, align 8
  %416 = getelementptr inbounds %struct.serial_rs485, %struct.serial_rs485* %415, i32 0, i32 0
  %417 = load i32, i32* %416, align 4
  %418 = load i32, i32* @SER_RS485_ENABLED, align 4
  %419 = and i32 %417, %418
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %421, label %457

421:                                              ; preds = %414
  %422 = load %struct.serial_rs485*, %struct.serial_rs485** %10, align 8
  %423 = getelementptr inbounds %struct.serial_rs485, %struct.serial_rs485* %422, i32 0, i32 2
  %424 = load i32, i32* %423, align 4
  %425 = load %struct.serial_rs485*, %struct.serial_rs485** %10, align 8
  %426 = getelementptr inbounds %struct.serial_rs485, %struct.serial_rs485* %425, i32 0, i32 1
  %427 = load i32, i32* %426, align 4
  %428 = load i32, i32* %11, align 4
  %429 = call i32 @stm32_config_reg_rs485(i32* %18, i32* %20, i32 %424, i32 %427, i32 %428)
  %430 = load %struct.serial_rs485*, %struct.serial_rs485** %10, align 8
  %431 = getelementptr inbounds %struct.serial_rs485, %struct.serial_rs485* %430, i32 0, i32 0
  %432 = load i32, i32* %431, align 4
  %433 = load i32, i32* @SER_RS485_RTS_ON_SEND, align 4
  %434 = and i32 %432, %433
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %436, label %447

436:                                              ; preds = %421
  %437 = load i32, i32* @USART_CR3_DEP, align 4
  %438 = xor i32 %437, -1
  %439 = load i32, i32* %20, align 4
  %440 = and i32 %439, %438
  store i32 %440, i32* %20, align 4
  %441 = load i32, i32* @SER_RS485_RTS_AFTER_SEND, align 4
  %442 = xor i32 %441, -1
  %443 = load %struct.serial_rs485*, %struct.serial_rs485** %10, align 8
  %444 = getelementptr inbounds %struct.serial_rs485, %struct.serial_rs485* %443, i32 0, i32 0
  %445 = load i32, i32* %444, align 4
  %446 = and i32 %445, %442
  store i32 %446, i32* %444, align 4
  br label %456

447:                                              ; preds = %421
  %448 = load i32, i32* @USART_CR3_DEP, align 4
  %449 = load i32, i32* %20, align 4
  %450 = or i32 %449, %448
  store i32 %450, i32* %20, align 4
  %451 = load i32, i32* @SER_RS485_RTS_AFTER_SEND, align 4
  %452 = load %struct.serial_rs485*, %struct.serial_rs485** %10, align 8
  %453 = getelementptr inbounds %struct.serial_rs485, %struct.serial_rs485* %452, i32 0, i32 0
  %454 = load i32, i32* %453, align 4
  %455 = or i32 %454, %451
  store i32 %455, i32* %453, align 4
  br label %456

456:                                              ; preds = %447, %436
  br label %470

457:                                              ; preds = %414
  %458 = load i32, i32* @USART_CR3_DEM, align 4
  %459 = load i32, i32* @USART_CR3_DEP, align 4
  %460 = or i32 %458, %459
  %461 = xor i32 %460, -1
  %462 = load i32, i32* %20, align 4
  %463 = and i32 %462, %461
  store i32 %463, i32* %20, align 4
  %464 = load i32, i32* @USART_CR1_DEDT_MASK, align 4
  %465 = load i32, i32* @USART_CR1_DEAT_MASK, align 4
  %466 = or i32 %464, %465
  %467 = xor i32 %466, -1
  %468 = load i32, i32* %18, align 4
  %469 = and i32 %468, %467
  store i32 %469, i32* %18, align 4
  br label %470

470:                                              ; preds = %457, %456
  %471 = load i32, i32* %20, align 4
  %472 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %473 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %472, i32 0, i32 1
  %474 = load i64, i64* %473, align 8
  %475 = load %struct.stm32_usart_offsets*, %struct.stm32_usart_offsets** %8, align 8
  %476 = getelementptr inbounds %struct.stm32_usart_offsets, %struct.stm32_usart_offsets* %475, i32 0, i32 2
  %477 = load i64, i64* %476, align 8
  %478 = add nsw i64 %474, %477
  %479 = call i32 @writel_relaxed(i32 %471, i64 %478)
  %480 = load i32, i32* %19, align 4
  %481 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %482 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %481, i32 0, i32 1
  %483 = load i64, i64* %482, align 8
  %484 = load %struct.stm32_usart_offsets*, %struct.stm32_usart_offsets** %8, align 8
  %485 = getelementptr inbounds %struct.stm32_usart_offsets, %struct.stm32_usart_offsets* %484, i32 0, i32 5
  %486 = load i64, i64* %485, align 8
  %487 = add nsw i64 %483, %486
  %488 = call i32 @writel_relaxed(i32 %480, i64 %487)
  %489 = load i32, i32* %18, align 4
  %490 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %491 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %490, i32 0, i32 1
  %492 = load i64, i64* %491, align 8
  %493 = load %struct.stm32_usart_offsets*, %struct.stm32_usart_offsets** %8, align 8
  %494 = getelementptr inbounds %struct.stm32_usart_offsets, %struct.stm32_usart_offsets* %493, i32 0, i32 0
  %495 = load i64, i64* %494, align 8
  %496 = add nsw i64 %492, %495
  %497 = call i32 @writel_relaxed(i32 %489, i64 %496)
  %498 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %499 = load %struct.stm32_usart_offsets*, %struct.stm32_usart_offsets** %8, align 8
  %500 = getelementptr inbounds %struct.stm32_usart_offsets, %struct.stm32_usart_offsets* %499, i32 0, i32 0
  %501 = load i64, i64* %500, align 8
  %502 = load %struct.stm32_usart_config*, %struct.stm32_usart_config** %9, align 8
  %503 = getelementptr inbounds %struct.stm32_usart_config, %struct.stm32_usart_config* %502, i32 0, i32 0
  %504 = load i32, i32* %503, align 8
  %505 = call i32 @BIT(i32 %504)
  %506 = call i32 @stm32_set_bits(%struct.uart_port* %498, i64 %501, i32 %505)
  %507 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %508 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %507, i32 0, i32 5
  %509 = load i64, i64* %21, align 8
  %510 = call i32 @spin_unlock_irqrestore(i32* %508, i64 %509)
  ret void
}

declare dso_local %struct.stm32_port* @to_stm32_port(%struct.uart_port*) #1

declare dso_local i32 @uart_get_baud_rate(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @stm32_set_bits(%struct.uart_port*, i64, i32) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @stm32_get_databits(%struct.ktermios*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @stm32_clr_bits(%struct.uart_port*, i64, i32) #1

declare dso_local i32 @uart_update_timeout(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @stm32_config_reg_rs485(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
