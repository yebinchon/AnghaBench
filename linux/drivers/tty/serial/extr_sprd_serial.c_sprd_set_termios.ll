; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sprd_serial.c_sprd_set_termios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sprd_serial.c_sprd_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i32, i32 }
%struct.ktermios = type { i32, i32 }

@SPRD_BAUD_IO_LIMIT = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@SPRD_LCR_DATA_LEN5 = common dso_local global i32 0, align 4
@SPRD_LCR_DATA_LEN6 = common dso_local global i32 0, align 4
@SPRD_LCR_DATA_LEN7 = common dso_local global i32 0, align 4
@SPRD_LCR_DATA_LEN8 = common dso_local global i32 0, align 4
@SPRD_LCR_STOP_1BIT = common dso_local global i32 0, align 4
@SPRD_LCR_STOP_2BIT = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@SPRD_LCR_PARITY = common dso_local global i32 0, align 4
@CMSPAR = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@SPRD_LCR_PARITY_EN = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@SPRD_LCR_ODD_PAR = common dso_local global i32 0, align 4
@SPRD_LCR_EVEN_PAR = common dso_local global i32 0, align 4
@SPRD_LSR_OE = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@SPRD_LSR_FE = common dso_local global i32 0, align 4
@SPRD_LSR_PE = common dso_local global i32 0, align 4
@IGNBRK = common dso_local global i32 0, align 4
@BRKINT = common dso_local global i32 0, align 4
@PARMRK = common dso_local global i32 0, align 4
@SPRD_LSR_BI = common dso_local global i32 0, align 4
@IGNPAR = common dso_local global i32 0, align 4
@SPRD_CTL1 = common dso_local global i32 0, align 4
@RX_HW_FLOW_CTL_THLD = common dso_local global i32 0, align 4
@RX_HW_FLOW_CTL_EN = common dso_local global i32 0, align 4
@TX_HW_FLOW_CTL_EN = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@SPRD_CLKD0 = common dso_local global i32 0, align 4
@SPRD_CLKD0_MASK = common dso_local global i32 0, align 4
@SPRD_CLKD1 = common dso_local global i32 0, align 4
@SPRD_CLKD1_MASK = common dso_local global i32 0, align 4
@SPRD_CLKD1_SHIFT = common dso_local global i32 0, align 4
@SPRD_LCR = common dso_local global i32 0, align 4
@RX_TOUT_THLD_DEF = common dso_local global i32 0, align 4
@RX_HFC_THLD_DEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @sprd_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sprd_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %13 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %14 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %15 = load i32, i32* @SPRD_BAUD_IO_LIMIT, align 4
  %16 = call i32 @uart_get_baud_rate(%struct.uart_port* %12, %struct.ktermios* %13, %struct.ktermios* %14, i32 0, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %18 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %7, align 4
  %21 = udiv i32 %19, %20
  store i32 %21, i32* %8, align 4
  %22 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %23 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @CSIZE, align 4
  %26 = and i32 %24, %25
  switch i32 %26, label %40 [
    i32 131, label %27
    i32 130, label %31
    i32 129, label %35
    i32 128, label %39
  ]

27:                                               ; preds = %3
  %28 = load i32, i32* @SPRD_LCR_DATA_LEN5, align 4
  %29 = load i32, i32* %9, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %9, align 4
  br label %44

31:                                               ; preds = %3
  %32 = load i32, i32* @SPRD_LCR_DATA_LEN6, align 4
  %33 = load i32, i32* %9, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %9, align 4
  br label %44

35:                                               ; preds = %3
  %36 = load i32, i32* @SPRD_LCR_DATA_LEN7, align 4
  %37 = load i32, i32* %9, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %9, align 4
  br label %44

39:                                               ; preds = %3
  br label %40

40:                                               ; preds = %3, %39
  %41 = load i32, i32* @SPRD_LCR_DATA_LEN8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %40, %35, %31, %27
  %45 = load i32, i32* @SPRD_LCR_STOP_1BIT, align 4
  %46 = load i32, i32* @SPRD_LCR_STOP_2BIT, align 4
  %47 = or i32 %45, %46
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %9, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %9, align 4
  %51 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %52 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @CSTOPB, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %44
  %58 = load i32, i32* @SPRD_LCR_STOP_2BIT, align 4
  %59 = load i32, i32* %9, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %9, align 4
  br label %65

61:                                               ; preds = %44
  %62 = load i32, i32* @SPRD_LCR_STOP_1BIT, align 4
  %63 = load i32, i32* %9, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %9, align 4
  br label %65

65:                                               ; preds = %61, %57
  %66 = load i32, i32* @SPRD_LCR_PARITY, align 4
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %9, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %9, align 4
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
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %101

82:                                               ; preds = %65
  %83 = load i32, i32* @SPRD_LCR_PARITY_EN, align 4
  %84 = load i32, i32* %9, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %9, align 4
  %86 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %87 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @PARODD, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %82
  %93 = load i32, i32* @SPRD_LCR_ODD_PAR, align 4
  %94 = load i32, i32* %9, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %9, align 4
  br label %100

96:                                               ; preds = %82
  %97 = load i32, i32* @SPRD_LCR_EVEN_PAR, align 4
  %98 = load i32, i32* %9, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %9, align 4
  br label %100

100:                                              ; preds = %96, %92
  br label %101

101:                                              ; preds = %100, %65
  %102 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %103 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %102, i32 0, i32 3
  %104 = load i64, i64* %11, align 8
  %105 = call i32 @spin_lock_irqsave(i32* %103, i64 %104)
  %106 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %107 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %108 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @uart_update_timeout(%struct.uart_port* %106, i32 %109, i32 %110)
  %112 = load i32, i32* @SPRD_LSR_OE, align 4
  %113 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %114 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  %115 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %116 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @INPCK, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %129

121:                                              ; preds = %101
  %122 = load i32, i32* @SPRD_LSR_FE, align 4
  %123 = load i32, i32* @SPRD_LSR_PE, align 4
  %124 = or i32 %122, %123
  %125 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %126 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = or i32 %127, %124
  store i32 %128, i32* %126, align 4
  br label %129

129:                                              ; preds = %121, %101
  %130 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %131 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @IGNBRK, align 4
  %134 = load i32, i32* @BRKINT, align 4
  %135 = or i32 %133, %134
  %136 = load i32, i32* @PARMRK, align 4
  %137 = or i32 %135, %136
  %138 = and i32 %132, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %129
  %141 = load i32, i32* @SPRD_LSR_BI, align 4
  %142 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %143 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = or i32 %144, %141
  store i32 %145, i32* %143, align 4
  br label %146

146:                                              ; preds = %140, %129
  %147 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %148 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %147, i32 0, i32 2
  store i32 0, i32* %148, align 4
  %149 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %150 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @IGNPAR, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %163

155:                                              ; preds = %146
  %156 = load i32, i32* @SPRD_LSR_PE, align 4
  %157 = load i32, i32* @SPRD_LSR_FE, align 4
  %158 = or i32 %156, %157
  %159 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %160 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = or i32 %161, %158
  store i32 %162, i32* %160, align 4
  br label %163

163:                                              ; preds = %155, %146
  %164 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %165 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @IGNBRK, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %189

170:                                              ; preds = %163
  %171 = load i32, i32* @SPRD_LSR_BI, align 4
  %172 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %173 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = or i32 %174, %171
  store i32 %175, i32* %173, align 4
  %176 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %177 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @IGNPAR, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %170
  %183 = load i32, i32* @SPRD_LSR_OE, align 4
  %184 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %185 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = or i32 %186, %183
  store i32 %187, i32* %185, align 4
  br label %188

188:                                              ; preds = %182, %170
  br label %189

189:                                              ; preds = %188, %163
  %190 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %191 = load i32, i32* @SPRD_CTL1, align 4
  %192 = call i32 @serial_in(%struct.uart_port* %190, i32 %191)
  store i32 %192, i32* %10, align 4
  %193 = load i32, i32* @RX_HW_FLOW_CTL_THLD, align 4
  %194 = load i32, i32* @RX_HW_FLOW_CTL_EN, align 4
  %195 = or i32 %193, %194
  %196 = load i32, i32* @TX_HW_FLOW_CTL_EN, align 4
  %197 = or i32 %195, %196
  %198 = xor i32 %197, -1
  %199 = load i32, i32* %10, align 4
  %200 = and i32 %199, %198
  store i32 %200, i32* %10, align 4
  %201 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %202 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @CRTSCTS, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %217

207:                                              ; preds = %189
  %208 = load i32, i32* @RX_HW_FLOW_CTL_THLD, align 4
  %209 = load i32, i32* %10, align 4
  %210 = or i32 %209, %208
  store i32 %210, i32* %10, align 4
  %211 = load i32, i32* @RX_HW_FLOW_CTL_EN, align 4
  %212 = load i32, i32* %10, align 4
  %213 = or i32 %212, %211
  store i32 %213, i32* %10, align 4
  %214 = load i32, i32* @TX_HW_FLOW_CTL_EN, align 4
  %215 = load i32, i32* %10, align 4
  %216 = or i32 %215, %214
  store i32 %216, i32* %10, align 4
  br label %217

217:                                              ; preds = %207, %189
  %218 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %219 = load i32, i32* @SPRD_CLKD0, align 4
  %220 = load i32, i32* %8, align 4
  %221 = load i32, i32* @SPRD_CLKD0_MASK, align 4
  %222 = and i32 %220, %221
  %223 = call i32 @serial_out(%struct.uart_port* %218, i32 %219, i32 %222)
  %224 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %225 = load i32, i32* @SPRD_CLKD1, align 4
  %226 = load i32, i32* %8, align 4
  %227 = load i32, i32* @SPRD_CLKD1_MASK, align 4
  %228 = and i32 %226, %227
  %229 = load i32, i32* @SPRD_CLKD1_SHIFT, align 4
  %230 = lshr i32 %228, %229
  %231 = call i32 @serial_out(%struct.uart_port* %224, i32 %225, i32 %230)
  %232 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %233 = load i32, i32* @SPRD_LCR, align 4
  %234 = load i32, i32* %9, align 4
  %235 = call i32 @serial_out(%struct.uart_port* %232, i32 %233, i32 %234)
  %236 = load i32, i32* @RX_TOUT_THLD_DEF, align 4
  %237 = load i32, i32* @RX_HFC_THLD_DEF, align 4
  %238 = or i32 %236, %237
  %239 = load i32, i32* %10, align 4
  %240 = or i32 %239, %238
  store i32 %240, i32* %10, align 4
  %241 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %242 = load i32, i32* @SPRD_CTL1, align 4
  %243 = load i32, i32* %10, align 4
  %244 = call i32 @serial_out(%struct.uart_port* %241, i32 %242, i32 %243)
  %245 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %246 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %245, i32 0, i32 3
  %247 = load i64, i64* %11, align 8
  %248 = call i32 @spin_unlock_irqrestore(i32* %246, i64 %247)
  %249 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %250 = call i64 @tty_termios_baud_rate(%struct.ktermios* %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %257

252:                                              ; preds = %217
  %253 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %254 = load i32, i32* %7, align 4
  %255 = load i32, i32* %7, align 4
  %256 = call i32 @tty_termios_encode_baud_rate(%struct.ktermios* %253, i32 %254, i32 %255)
  br label %257

257:                                              ; preds = %252, %217
  ret void
}

declare dso_local i32 @uart_get_baud_rate(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @uart_update_timeout(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @serial_in(%struct.uart_port*, i32) #1

declare dso_local i32 @serial_out(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @tty_termios_baud_rate(%struct.ktermios*) #1

declare dso_local i32 @tty_termios_encode_baud_rate(%struct.ktermios*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
