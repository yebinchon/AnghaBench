; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_atmel_serial.c_atmel_set_termios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_atmel_serial.c_atmel_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ktermios = type { i32, i32 }
%struct.atmel_uart_port = type { i32, i64, i32 }

@ATMEL_US_MR = common dso_local global i32 0, align 4
@ATMEL_US_USCLKS = common dso_local global i32 0, align 4
@ATMEL_US_CHRL = common dso_local global i32 0, align 4
@ATMEL_US_NBSTOP = common dso_local global i32 0, align 4
@ATMEL_US_PAR = common dso_local global i32 0, align 4
@ATMEL_US_USMODE = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@ATMEL_US_CHRL_5 = common dso_local global i32 0, align 4
@ATMEL_US_CHRL_6 = common dso_local global i32 0, align 4
@ATMEL_US_CHRL_7 = common dso_local global i32 0, align 4
@ATMEL_US_CHRL_8 = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@ATMEL_US_NBSTOP_2 = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@CMSPAR = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@ATMEL_US_PAR_MARK = common dso_local global i32 0, align 4
@ATMEL_US_PAR_SPACE = common dso_local global i32 0, align 4
@ATMEL_US_PAR_ODD = common dso_local global i32 0, align 4
@ATMEL_US_PAR_EVEN = common dso_local global i32 0, align 4
@ATMEL_US_PAR_NONE = common dso_local global i32 0, align 4
@ATMEL_US_OVRE = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@ATMEL_US_FRAME = common dso_local global i32 0, align 4
@ATMEL_US_PARE = common dso_local global i32 0, align 4
@IGNBRK = common dso_local global i32 0, align 4
@BRKINT = common dso_local global i32 0, align 4
@PARMRK = common dso_local global i32 0, align 4
@ATMEL_US_RXBRK = common dso_local global i32 0, align 4
@ATMEL_US_IER = common dso_local global i32 0, align 4
@IGNPAR = common dso_local global i32 0, align 4
@ATMEL_US_IMR = common dso_local global i32 0, align 4
@ATMEL_US_IDR = common dso_local global i32 0, align 4
@ATMEL_US_CR = common dso_local global i32 0, align 4
@ATMEL_US_TXDIS = common dso_local global i32 0, align 4
@ATMEL_US_RXDIS = common dso_local global i32 0, align 4
@SER_RS485_ENABLED = common dso_local global i32 0, align 4
@ATMEL_US_TTGR = common dso_local global i32 0, align 4
@ATMEL_US_USMODE_RS485 = common dso_local global i32 0, align 4
@SER_ISO7816_ENABLED = common dso_local global i32 0, align 4
@ATMEL_US_USCLKS_MCK = common dso_local global i32 0, align 4
@ATMEL_US_CLKO = common dso_local global i32 0, align 4
@SER_ISO7816_T_PARAM = common dso_local global i32 0, align 4
@ATMEL_US_USMODE_ISO7816_T0 = common dso_local global i32 0, align 4
@ATMEL_US_USMODE_ISO7816_T1 = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@UART_GPIO_CTS = common dso_local global i32 0, align 4
@ATMEL_US_USMODE_HWHS = common dso_local global i32 0, align 4
@ATMEL_US_USMODE_NORMAL = common dso_local global i32 0, align 4
@ATMEL_US_RTSDIS = common dso_local global i32 0, align 4
@ATMEL_US_RTSEN = common dso_local global i32 0, align 4
@ATMEL_US_FP_MASK = common dso_local global i32 0, align 4
@ATMEL_US_USCLKS_MCK_DIV8 = common dso_local global i32 0, align 4
@ATMEL_US_FP_OFFSET = common dso_local global i32 0, align 4
@ATMEL_US_BRGR = common dso_local global i32 0, align 4
@ATMEL_US_RSTSTA = common dso_local global i32 0, align 4
@ATMEL_US_RSTRX = common dso_local global i32 0, align 4
@ATMEL_US_TXEN = common dso_local global i32 0, align 4
@ATMEL_US_RXEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @atmel_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca %struct.atmel_uart_port*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %18 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %19 = call %struct.atmel_uart_port* @to_atmel_uart_port(%struct.uart_port* %18)
  store %struct.atmel_uart_port* %19, %struct.atmel_uart_port** %7, align 8
  store i32 0, i32* %16, align 4
  %20 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %21 = load i32, i32* @ATMEL_US_MR, align 4
  %22 = call i32 @atmel_uart_readl(%struct.uart_port* %20, i32 %21)
  store i32 %22, i32* %9, align 4
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* @ATMEL_US_USCLKS, align 4
  %24 = load i32, i32* @ATMEL_US_CHRL, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @ATMEL_US_NBSTOP, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @ATMEL_US_PAR, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @ATMEL_US_USMODE, align 4
  %31 = or i32 %29, %30
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %10, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %10, align 4
  %35 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %36 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %37 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %38 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %39 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sdiv i32 %40, 16
  %42 = call i32 @uart_get_baud_rate(%struct.uart_port* %35, %struct.ktermios* %36, %struct.ktermios* %37, i32 0, i32 %41)
  store i32 %42, i32* %13, align 4
  %43 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %44 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @CSIZE, align 4
  %47 = and i32 %45, %46
  switch i32 %47, label %60 [
    i32 130, label %48
    i32 129, label %52
    i32 128, label %56
  ]

48:                                               ; preds = %3
  %49 = load i32, i32* @ATMEL_US_CHRL_5, align 4
  %50 = load i32, i32* %10, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %10, align 4
  br label %64

52:                                               ; preds = %3
  %53 = load i32, i32* @ATMEL_US_CHRL_6, align 4
  %54 = load i32, i32* %10, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %10, align 4
  br label %64

56:                                               ; preds = %3
  %57 = load i32, i32* @ATMEL_US_CHRL_7, align 4
  %58 = load i32, i32* %10, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %10, align 4
  br label %64

60:                                               ; preds = %3
  %61 = load i32, i32* @ATMEL_US_CHRL_8, align 4
  %62 = load i32, i32* %10, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %60, %56, %52, %48
  %65 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %66 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @CSTOPB, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %64
  %72 = load i32, i32* @ATMEL_US_NBSTOP_2, align 4
  %73 = load i32, i32* %10, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %10, align 4
  br label %75

75:                                               ; preds = %71, %64
  %76 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %77 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @PARENB, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %122

82:                                               ; preds = %75
  %83 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %84 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @CMSPAR, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %105

89:                                               ; preds = %82
  %90 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %91 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @PARODD, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %89
  %97 = load i32, i32* @ATMEL_US_PAR_MARK, align 4
  %98 = load i32, i32* %10, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %10, align 4
  br label %104

100:                                              ; preds = %89
  %101 = load i32, i32* @ATMEL_US_PAR_SPACE, align 4
  %102 = load i32, i32* %10, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %10, align 4
  br label %104

104:                                              ; preds = %100, %96
  br label %121

105:                                              ; preds = %82
  %106 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %107 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @PARODD, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %105
  %113 = load i32, i32* @ATMEL_US_PAR_ODD, align 4
  %114 = load i32, i32* %10, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %10, align 4
  br label %120

116:                                              ; preds = %105
  %117 = load i32, i32* @ATMEL_US_PAR_EVEN, align 4
  %118 = load i32, i32* %10, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %10, align 4
  br label %120

120:                                              ; preds = %116, %112
  br label %121

121:                                              ; preds = %120, %104
  br label %126

122:                                              ; preds = %75
  %123 = load i32, i32* @ATMEL_US_PAR_NONE, align 4
  %124 = load i32, i32* %10, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %10, align 4
  br label %126

126:                                              ; preds = %122, %121
  %127 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %128 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %127, i32 0, i32 3
  %129 = load i64, i64* %8, align 8
  %130 = call i32 @spin_lock_irqsave(i32* %128, i64 %129)
  %131 = load i32, i32* @ATMEL_US_OVRE, align 4
  %132 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %133 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 4
  %134 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %135 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @INPCK, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %126
  %141 = load i32, i32* @ATMEL_US_FRAME, align 4
  %142 = load i32, i32* @ATMEL_US_PARE, align 4
  %143 = or i32 %141, %142
  %144 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %145 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = or i32 %146, %143
  store i32 %147, i32* %145, align 4
  br label %148

148:                                              ; preds = %140, %126
  %149 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %150 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @IGNBRK, align 4
  %153 = load i32, i32* @BRKINT, align 4
  %154 = or i32 %152, %153
  %155 = load i32, i32* @PARMRK, align 4
  %156 = or i32 %154, %155
  %157 = and i32 %151, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %148
  %160 = load i32, i32* @ATMEL_US_RXBRK, align 4
  %161 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %162 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = or i32 %163, %160
  store i32 %164, i32* %162, align 4
  br label %165

165:                                              ; preds = %159, %148
  %166 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %167 = call i64 @atmel_use_pdc_rx(%struct.uart_port* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %176

169:                                              ; preds = %165
  %170 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %171 = load i32, i32* @ATMEL_US_IER, align 4
  %172 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %173 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @atmel_uart_writel(%struct.uart_port* %170, i32 %171, i32 %174)
  br label %176

176:                                              ; preds = %169, %165
  %177 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %178 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %177, i32 0, i32 2
  store i32 0, i32* %178, align 4
  %179 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %180 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @IGNPAR, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %193

185:                                              ; preds = %176
  %186 = load i32, i32* @ATMEL_US_FRAME, align 4
  %187 = load i32, i32* @ATMEL_US_PARE, align 4
  %188 = or i32 %186, %187
  %189 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %190 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  %192 = or i32 %191, %188
  store i32 %192, i32* %190, align 4
  br label %193

193:                                              ; preds = %185, %176
  %194 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %195 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @IGNBRK, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %219

200:                                              ; preds = %193
  %201 = load i32, i32* @ATMEL_US_RXBRK, align 4
  %202 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %203 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 4
  %205 = or i32 %204, %201
  store i32 %205, i32* %203, align 4
  %206 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %207 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* @IGNPAR, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %218

212:                                              ; preds = %200
  %213 = load i32, i32* @ATMEL_US_OVRE, align 4
  %214 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %215 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  %217 = or i32 %216, %213
  store i32 %217, i32* %215, align 4
  br label %218

218:                                              ; preds = %212, %200
  br label %219

219:                                              ; preds = %218, %193
  %220 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %221 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %222 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* %13, align 4
  %225 = call i32 @uart_update_timeout(%struct.uart_port* %220, i32 %223, i32 %224)
  %226 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %227 = load i32, i32* @ATMEL_US_IMR, align 4
  %228 = call i32 @atmel_uart_readl(%struct.uart_port* %226, i32 %227)
  store i32 %228, i32* %11, align 4
  %229 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %230 = load i32, i32* @ATMEL_US_IDR, align 4
  %231 = call i32 @atmel_uart_writel(%struct.uart_port* %229, i32 %230, i32 -1)
  %232 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %233 = load i32, i32* @ATMEL_US_CR, align 4
  %234 = load i32, i32* @ATMEL_US_TXDIS, align 4
  %235 = load i32, i32* @ATMEL_US_RXDIS, align 4
  %236 = or i32 %234, %235
  %237 = call i32 @atmel_uart_writel(%struct.uart_port* %232, i32 %233, i32 %236)
  %238 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %7, align 8
  %239 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %238, i32 0, i32 0
  store i32 1, i32* %239, align 8
  %240 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %241 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %240, i32 0, i32 5
  %242 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @SER_RS485_ENABLED, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %258

247:                                              ; preds = %219
  %248 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %249 = load i32, i32* @ATMEL_US_TTGR, align 4
  %250 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %251 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %250, i32 0, i32 5
  %252 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @atmel_uart_writel(%struct.uart_port* %248, i32 %249, i32 %253)
  %255 = load i32, i32* @ATMEL_US_USMODE_RS485, align 4
  %256 = load i32, i32* %10, align 4
  %257 = or i32 %256, %255
  store i32 %257, i32* %10, align 4
  br label %332

258:                                              ; preds = %219
  %259 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %260 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %259, i32 0, i32 4
  %261 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* @SER_ISO7816_ENABLED, align 4
  %264 = and i32 %262, %263
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %299

266:                                              ; preds = %258
  %267 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %268 = load i32, i32* @ATMEL_US_TTGR, align 4
  %269 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %270 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %269, i32 0, i32 4
  %271 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = call i32 @atmel_uart_writel(%struct.uart_port* %267, i32 %268, i32 %272)
  %274 = load i32, i32* @ATMEL_US_USCLKS_MCK, align 4
  %275 = load i32, i32* @ATMEL_US_CLKO, align 4
  %276 = or i32 %274, %275
  %277 = load i32, i32* %10, align 4
  %278 = or i32 %277, %276
  store i32 %278, i32* %10, align 4
  %279 = call i32 @ATMEL_US_MAX_ITER(i32 3)
  %280 = load i32, i32* %10, align 4
  %281 = or i32 %280, %279
  store i32 %281, i32* %10, align 4
  %282 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %283 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %282, i32 0, i32 4
  %284 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = load i32, i32* @SER_ISO7816_T_PARAM, align 4
  %287 = and i32 %285, %286
  %288 = call i32 @SER_ISO7816_T(i32 0)
  %289 = icmp eq i32 %287, %288
  br i1 %289, label %290, label %294

290:                                              ; preds = %266
  %291 = load i32, i32* @ATMEL_US_USMODE_ISO7816_T0, align 4
  %292 = load i32, i32* %10, align 4
  %293 = or i32 %292, %291
  store i32 %293, i32* %10, align 4
  br label %298

294:                                              ; preds = %266
  %295 = load i32, i32* @ATMEL_US_USMODE_ISO7816_T1, align 4
  %296 = load i32, i32* %10, align 4
  %297 = or i32 %296, %295
  store i32 %297, i32* %10, align 4
  br label %298

298:                                              ; preds = %294, %290
  br label %331

299:                                              ; preds = %258
  %300 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %301 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  %303 = load i32, i32* @CRTSCTS, align 4
  %304 = and i32 %302, %303
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %326

306:                                              ; preds = %299
  %307 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %308 = call i64 @atmel_use_fifo(%struct.uart_port* %307)
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %321

310:                                              ; preds = %306
  %311 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %7, align 8
  %312 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %311, i32 0, i32 2
  %313 = load i32, i32* %312, align 8
  %314 = load i32, i32* @UART_GPIO_CTS, align 4
  %315 = call i32 @mctrl_gpio_to_gpiod(i32 %313, i32 %314)
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %321, label %317

317:                                              ; preds = %310
  %318 = load i32, i32* @ATMEL_US_USMODE_HWHS, align 4
  %319 = load i32, i32* %10, align 4
  %320 = or i32 %319, %318
  store i32 %320, i32* %10, align 4
  br label %325

321:                                              ; preds = %310, %306
  %322 = load i32, i32* @ATMEL_US_USMODE_NORMAL, align 4
  %323 = load i32, i32* %10, align 4
  %324 = or i32 %323, %322
  store i32 %324, i32* %10, align 4
  br label %325

325:                                              ; preds = %321, %317
  br label %330

326:                                              ; preds = %299
  %327 = load i32, i32* @ATMEL_US_USMODE_NORMAL, align 4
  %328 = load i32, i32* %10, align 4
  %329 = or i32 %328, %327
  store i32 %329, i32* %10, align 4
  br label %330

330:                                              ; preds = %326, %325
  br label %331

331:                                              ; preds = %330, %298
  br label %332

332:                                              ; preds = %331, %247
  %333 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %334 = load i32, i32* @ATMEL_US_MR, align 4
  %335 = load i32, i32* %10, align 4
  %336 = call i32 @atmel_uart_writel(%struct.uart_port* %333, i32 %334, i32 %335)
  %337 = load i32, i32* %9, align 4
  %338 = load i32, i32* @ATMEL_US_USMODE, align 4
  %339 = and i32 %337, %338
  %340 = load i32, i32* %10, align 4
  %341 = load i32, i32* @ATMEL_US_USMODE, align 4
  %342 = and i32 %340, %341
  %343 = icmp ne i32 %339, %342
  br i1 %343, label %344, label %359

344:                                              ; preds = %332
  %345 = load i32, i32* %10, align 4
  %346 = load i32, i32* @ATMEL_US_USMODE, align 4
  %347 = and i32 %345, %346
  %348 = load i32, i32* @ATMEL_US_USMODE_HWHS, align 4
  %349 = icmp eq i32 %347, %348
  br i1 %349, label %350, label %352

350:                                              ; preds = %344
  %351 = load i32, i32* @ATMEL_US_RTSDIS, align 4
  store i32 %351, i32* %17, align 4
  br label %354

352:                                              ; preds = %344
  %353 = load i32, i32* @ATMEL_US_RTSEN, align 4
  store i32 %353, i32* %17, align 4
  br label %354

354:                                              ; preds = %352, %350
  %355 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %356 = load i32, i32* @ATMEL_US_CR, align 4
  %357 = load i32, i32* %17, align 4
  %358 = call i32 @atmel_uart_writel(%struct.uart_port* %355, i32 %356, i32 %357)
  br label %359

359:                                              ; preds = %354, %332
  %360 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %7, align 8
  %361 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %360, i32 0, i32 1
  %362 = load i64, i64* %361, align 8
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %364, label %376

364:                                              ; preds = %359
  %365 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %366 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 4
  %368 = load i32, i32* %13, align 4
  %369 = mul i32 %368, 2
  %370 = call i32 @DIV_ROUND_CLOSEST(i32 %367, i32 %369)
  store i32 %370, i32* %14, align 4
  %371 = load i32, i32* %14, align 4
  %372 = lshr i32 %371, 3
  store i32 %372, i32* %15, align 4
  %373 = load i32, i32* %14, align 4
  %374 = load i32, i32* @ATMEL_US_FP_MASK, align 4
  %375 = and i32 %373, %374
  store i32 %375, i32* %16, align 4
  br label %380

376:                                              ; preds = %359
  %377 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %378 = load i32, i32* %13, align 4
  %379 = call i32 @uart_get_divisor(%struct.uart_port* %377, i32 %378)
  store i32 %379, i32* %15, align 4
  br label %380

380:                                              ; preds = %376, %364
  %381 = load i32, i32* %15, align 4
  %382 = icmp ugt i32 %381, 65535
  br i1 %382, label %383, label %389

383:                                              ; preds = %380
  %384 = load i32, i32* %15, align 4
  %385 = udiv i32 %384, 8
  store i32 %385, i32* %15, align 4
  %386 = load i32, i32* @ATMEL_US_USCLKS_MCK_DIV8, align 4
  %387 = load i32, i32* %10, align 4
  %388 = or i32 %387, %386
  store i32 %388, i32* %10, align 4
  br label %389

389:                                              ; preds = %383, %380
  %390 = load i32, i32* %15, align 4
  %391 = load i32, i32* %16, align 4
  %392 = load i32, i32* @ATMEL_US_FP_OFFSET, align 4
  %393 = shl i32 %391, %392
  %394 = or i32 %390, %393
  store i32 %394, i32* %12, align 4
  %395 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %396 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %395, i32 0, i32 4
  %397 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %396, i32 0, i32 0
  %398 = load i32, i32* %397, align 4
  %399 = load i32, i32* @SER_ISO7816_ENABLED, align 4
  %400 = and i32 %398, %399
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %407, label %402

402:                                              ; preds = %389
  %403 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %404 = load i32, i32* @ATMEL_US_BRGR, align 4
  %405 = load i32, i32* %12, align 4
  %406 = call i32 @atmel_uart_writel(%struct.uart_port* %403, i32 %404, i32 %405)
  br label %407

407:                                              ; preds = %402, %389
  %408 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %409 = load i32, i32* @ATMEL_US_CR, align 4
  %410 = load i32, i32* @ATMEL_US_RSTSTA, align 4
  %411 = load i32, i32* @ATMEL_US_RSTRX, align 4
  %412 = or i32 %410, %411
  %413 = call i32 @atmel_uart_writel(%struct.uart_port* %408, i32 %409, i32 %412)
  %414 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %415 = load i32, i32* @ATMEL_US_CR, align 4
  %416 = load i32, i32* @ATMEL_US_TXEN, align 4
  %417 = load i32, i32* @ATMEL_US_RXEN, align 4
  %418 = or i32 %416, %417
  %419 = call i32 @atmel_uart_writel(%struct.uart_port* %414, i32 %415, i32 %418)
  %420 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %7, align 8
  %421 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %420, i32 0, i32 0
  store i32 0, i32* %421, align 8
  %422 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %423 = load i32, i32* @ATMEL_US_IER, align 4
  %424 = load i32, i32* %11, align 4
  %425 = call i32 @atmel_uart_writel(%struct.uart_port* %422, i32 %423, i32 %424)
  %426 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %427 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %428 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %427, i32 0, i32 0
  %429 = load i32, i32* %428, align 4
  %430 = call i64 @UART_ENABLE_MS(%struct.uart_port* %426, i32 %429)
  %431 = icmp ne i64 %430, 0
  br i1 %431, label %432, label %435

432:                                              ; preds = %407
  %433 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %434 = call i32 @atmel_enable_ms(%struct.uart_port* %433)
  br label %438

435:                                              ; preds = %407
  %436 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %437 = call i32 @atmel_disable_ms(%struct.uart_port* %436)
  br label %438

438:                                              ; preds = %435, %432
  %439 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %440 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %439, i32 0, i32 3
  %441 = load i64, i64* %8, align 8
  %442 = call i32 @spin_unlock_irqrestore(i32* %440, i64 %441)
  ret void
}

declare dso_local %struct.atmel_uart_port* @to_atmel_uart_port(%struct.uart_port*) #1

declare dso_local i32 @atmel_uart_readl(%struct.uart_port*, i32) #1

declare dso_local i32 @uart_get_baud_rate(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @atmel_use_pdc_rx(%struct.uart_port*) #1

declare dso_local i32 @atmel_uart_writel(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @uart_update_timeout(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @ATMEL_US_MAX_ITER(i32) #1

declare dso_local i32 @SER_ISO7816_T(i32) #1

declare dso_local i64 @atmel_use_fifo(%struct.uart_port*) #1

declare dso_local i32 @mctrl_gpio_to_gpiod(i32, i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @uart_get_divisor(%struct.uart_port*, i32) #1

declare dso_local i64 @UART_ENABLE_MS(%struct.uart_port*, i32) #1

declare dso_local i32 @atmel_enable_ms(%struct.uart_port*) #1

declare dso_local i32 @atmel_disable_ms(%struct.uart_port*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
