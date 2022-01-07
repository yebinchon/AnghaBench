; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pxa.c_serial_pxa_set_termios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pxa.c_serial_pxa_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.ktermios = type { i32, i32 }
%struct.uart_pxa_port = type { i8, i8, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@CSIZE = common dso_local global i32 0, align 4
@UART_LCR_WLEN5 = common dso_local global i8 0, align 1
@UART_LCR_WLEN6 = common dso_local global i8 0, align 1
@UART_LCR_WLEN7 = common dso_local global i8 0, align 1
@UART_LCR_WLEN8 = common dso_local global i8 0, align 1
@CSTOPB = common dso_local global i32 0, align 4
@UART_LCR_STOP = common dso_local global i8 0, align 1
@PARENB = common dso_local global i32 0, align 4
@UART_LCR_PARITY = common dso_local global i8 0, align 1
@PARODD = common dso_local global i32 0, align 4
@UART_LCR_EPAR = common dso_local global i8 0, align 1
@UART_FCR_ENABLE_FIFO = common dso_local global i8 0, align 1
@UART_FCR_PXAR1 = common dso_local global i8 0, align 1
@UART_FCR_PXAR8 = common dso_local global i8 0, align 1
@UART_FCR_PXAR32 = common dso_local global i8 0, align 1
@UART_IER_UUE = common dso_local global i8 0, align 1
@UART_LSR_OE = common dso_local global i32 0, align 4
@UART_LSR_THRE = common dso_local global i32 0, align 4
@UART_LSR_DR = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@UART_LSR_FE = common dso_local global i32 0, align 4
@UART_LSR_PE = common dso_local global i32 0, align 4
@IGNBRK = common dso_local global i32 0, align 4
@BRKINT = common dso_local global i32 0, align 4
@PARMRK = common dso_local global i32 0, align 4
@UART_LSR_BI = common dso_local global i32 0, align 4
@IGNPAR = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@UART_IER_MSI = common dso_local global i8 0, align 1
@UART_IER = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@UART_MCR_AFE = common dso_local global i32 0, align 4
@UART_LCR = common dso_local global i32 0, align 4
@UART_LCR_DLAB = common dso_local global i8 0, align 1
@UART_DLL = common dso_local global i32 0, align 4
@UART_DLM = common dso_local global i32 0, align 4
@UART_FCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @serial_pxa_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serial_pxa_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca %struct.uart_pxa_port*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %14 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %15 = bitcast %struct.uart_port* %14 to %struct.uart_pxa_port*
  store %struct.uart_pxa_port* %15, %struct.uart_pxa_port** %7, align 8
  store i8 0, i8* %9, align 1
  %16 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %17 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @CSIZE, align 4
  %20 = and i32 %18, %19
  switch i32 %20, label %27 [
    i32 131, label %21
    i32 130, label %23
    i32 129, label %25
    i32 128, label %28
  ]

21:                                               ; preds = %3
  %22 = load i8, i8* @UART_LCR_WLEN5, align 1
  store i8 %22, i8* %8, align 1
  br label %30

23:                                               ; preds = %3
  %24 = load i8, i8* @UART_LCR_WLEN6, align 1
  store i8 %24, i8* %8, align 1
  br label %30

25:                                               ; preds = %3
  %26 = load i8, i8* @UART_LCR_WLEN7, align 1
  store i8 %26, i8* %8, align 1
  br label %30

27:                                               ; preds = %3
  br label %28

28:                                               ; preds = %3, %27
  %29 = load i8, i8* @UART_LCR_WLEN8, align 1
  store i8 %29, i8* %8, align 1
  br label %30

30:                                               ; preds = %28, %25, %23, %21
  %31 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %32 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @CSTOPB, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %30
  %38 = load i8, i8* @UART_LCR_STOP, align 1
  %39 = zext i8 %38 to i32
  %40 = load i8, i8* %8, align 1
  %41 = zext i8 %40 to i32
  %42 = or i32 %41, %39
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* %8, align 1
  br label %44

44:                                               ; preds = %37, %30
  %45 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %46 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @PARENB, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %44
  %52 = load i8, i8* @UART_LCR_PARITY, align 1
  %53 = zext i8 %52 to i32
  %54 = load i8, i8* %8, align 1
  %55 = zext i8 %54 to i32
  %56 = or i32 %55, %53
  %57 = trunc i32 %56 to i8
  store i8 %57, i8* %8, align 1
  br label %58

58:                                               ; preds = %51, %44
  %59 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %60 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @PARODD, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %58
  %66 = load i8, i8* @UART_LCR_EPAR, align 1
  %67 = zext i8 %66 to i32
  %68 = load i8, i8* %8, align 1
  %69 = zext i8 %68 to i32
  %70 = or i32 %69, %67
  %71 = trunc i32 %70 to i8
  store i8 %71, i8* %8, align 1
  br label %72

72:                                               ; preds = %65, %58
  %73 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %74 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %75 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %76 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %77 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = sdiv i32 %78, 16
  %80 = call i32 @uart_get_baud_rate(%struct.uart_port* %73, %struct.ktermios* %74, %struct.ktermios* %75, i32 0, i32 %79)
  store i32 %80, i32* %11, align 4
  %81 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @uart_get_divisor(%struct.uart_port* %81, i32 %82)
  store i32 %83, i32* %12, align 4
  %84 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %7, align 8
  %85 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %12, align 4
  %89 = udiv i32 %87, %88
  %90 = icmp ult i32 %89, 38400
  br i1 %90, label %91, label %98

91:                                               ; preds = %72
  %92 = load i8, i8* @UART_FCR_ENABLE_FIFO, align 1
  %93 = zext i8 %92 to i32
  %94 = load i8, i8* @UART_FCR_PXAR1, align 1
  %95 = zext i8 %94 to i32
  %96 = or i32 %93, %95
  %97 = trunc i32 %96 to i8
  store i8 %97, i8* %9, align 1
  br label %121

98:                                               ; preds = %72
  %99 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %7, align 8
  %100 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %12, align 4
  %104 = udiv i32 %102, %103
  %105 = icmp ult i32 %104, 3686400
  br i1 %105, label %106, label %113

106:                                              ; preds = %98
  %107 = load i8, i8* @UART_FCR_ENABLE_FIFO, align 1
  %108 = zext i8 %107 to i32
  %109 = load i8, i8* @UART_FCR_PXAR8, align 1
  %110 = zext i8 %109 to i32
  %111 = or i32 %108, %110
  %112 = trunc i32 %111 to i8
  store i8 %112, i8* %9, align 1
  br label %120

113:                                              ; preds = %98
  %114 = load i8, i8* @UART_FCR_ENABLE_FIFO, align 1
  %115 = zext i8 %114 to i32
  %116 = load i8, i8* @UART_FCR_PXAR32, align 1
  %117 = zext i8 %116 to i32
  %118 = or i32 %115, %117
  %119 = trunc i32 %118 to i8
  store i8 %119, i8* %9, align 1
  br label %120

120:                                              ; preds = %113, %106
  br label %121

121:                                              ; preds = %120, %91
  %122 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %7, align 8
  %123 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 3
  %125 = load i64, i64* %10, align 8
  %126 = call i32 @spin_lock_irqsave(i32* %124, i64 %125)
  %127 = load i8, i8* @UART_IER_UUE, align 1
  %128 = zext i8 %127 to i32
  %129 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %7, align 8
  %130 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %129, i32 0, i32 0
  %131 = load i8, i8* %130, align 4
  %132 = zext i8 %131 to i32
  %133 = or i32 %132, %128
  %134 = trunc i32 %133 to i8
  store i8 %134, i8* %130, align 4
  %135 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %136 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %137 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %11, align 4
  %140 = call i32 @uart_update_timeout(%struct.uart_port* %135, i32 %138, i32 %139)
  %141 = load i32, i32* @UART_LSR_OE, align 4
  %142 = load i32, i32* @UART_LSR_THRE, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* @UART_LSR_DR, align 4
  %145 = or i32 %143, %144
  %146 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %7, align 8
  %147 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 1
  store i32 %145, i32* %148, align 4
  %149 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %150 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @INPCK, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %164

155:                                              ; preds = %121
  %156 = load i32, i32* @UART_LSR_FE, align 4
  %157 = load i32, i32* @UART_LSR_PE, align 4
  %158 = or i32 %156, %157
  %159 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %7, align 8
  %160 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = or i32 %162, %158
  store i32 %163, i32* %161, align 4
  br label %164

164:                                              ; preds = %155, %121
  %165 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %166 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @IGNBRK, align 4
  %169 = load i32, i32* @BRKINT, align 4
  %170 = or i32 %168, %169
  %171 = load i32, i32* @PARMRK, align 4
  %172 = or i32 %170, %171
  %173 = and i32 %167, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %182

175:                                              ; preds = %164
  %176 = load i32, i32* @UART_LSR_BI, align 4
  %177 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %7, align 8
  %178 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = or i32 %180, %176
  store i32 %181, i32* %179, align 4
  br label %182

182:                                              ; preds = %175, %164
  %183 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %7, align 8
  %184 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 2
  store i32 0, i32* %185, align 4
  %186 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %187 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @IGNPAR, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %201

192:                                              ; preds = %182
  %193 = load i32, i32* @UART_LSR_PE, align 4
  %194 = load i32, i32* @UART_LSR_FE, align 4
  %195 = or i32 %193, %194
  %196 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %7, align 8
  %197 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = or i32 %199, %195
  store i32 %200, i32* %198, align 4
  br label %201

201:                                              ; preds = %192, %182
  %202 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %203 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* @IGNBRK, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %229

208:                                              ; preds = %201
  %209 = load i32, i32* @UART_LSR_BI, align 4
  %210 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %7, align 8
  %211 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %210, i32 0, i32 2
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 4
  %214 = or i32 %213, %209
  store i32 %214, i32* %212, align 4
  %215 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %216 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* @IGNPAR, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %228

221:                                              ; preds = %208
  %222 = load i32, i32* @UART_LSR_OE, align 4
  %223 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %7, align 8
  %224 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %223, i32 0, i32 2
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 4
  %227 = or i32 %226, %222
  store i32 %227, i32* %225, align 4
  br label %228

228:                                              ; preds = %221, %208
  br label %229

229:                                              ; preds = %228, %201
  %230 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %231 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* @CREAD, align 4
  %234 = and i32 %232, %233
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %243

236:                                              ; preds = %229
  %237 = load i32, i32* @UART_LSR_DR, align 4
  %238 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %7, align 8
  %239 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %238, i32 0, i32 2
  %240 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 4
  %242 = or i32 %241, %237
  store i32 %242, i32* %240, align 4
  br label %243

243:                                              ; preds = %236, %229
  %244 = load i8, i8* @UART_IER_MSI, align 1
  %245 = zext i8 %244 to i32
  %246 = xor i32 %245, -1
  %247 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %7, align 8
  %248 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %247, i32 0, i32 0
  %249 = load i8, i8* %248, align 4
  %250 = zext i8 %249 to i32
  %251 = and i32 %250, %246
  %252 = trunc i32 %251 to i8
  store i8 %252, i8* %248, align 4
  %253 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %7, align 8
  %254 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %253, i32 0, i32 2
  %255 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %256 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = call i64 @UART_ENABLE_MS(%struct.TYPE_3__* %254, i32 %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %269

260:                                              ; preds = %243
  %261 = load i8, i8* @UART_IER_MSI, align 1
  %262 = zext i8 %261 to i32
  %263 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %7, align 8
  %264 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %263, i32 0, i32 0
  %265 = load i8, i8* %264, align 4
  %266 = zext i8 %265 to i32
  %267 = or i32 %266, %262
  %268 = trunc i32 %267 to i8
  store i8 %268, i8* %264, align 4
  br label %269

269:                                              ; preds = %260, %243
  %270 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %7, align 8
  %271 = load i32, i32* @UART_IER, align 4
  %272 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %7, align 8
  %273 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %272, i32 0, i32 0
  %274 = load i8, i8* %273, align 4
  %275 = call i32 @serial_out(%struct.uart_pxa_port* %270, i32 %271, i8 zeroext %274)
  %276 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %277 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = load i32, i32* @CRTSCTS, align 4
  %280 = and i32 %278, %279
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %288

282:                                              ; preds = %269
  %283 = load i32, i32* @UART_MCR_AFE, align 4
  %284 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %7, align 8
  %285 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %284, i32 0, i32 3
  %286 = load i32, i32* %285, align 4
  %287 = or i32 %286, %283
  store i32 %287, i32* %285, align 4
  br label %295

288:                                              ; preds = %269
  %289 = load i32, i32* @UART_MCR_AFE, align 4
  %290 = xor i32 %289, -1
  %291 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %7, align 8
  %292 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %291, i32 0, i32 3
  %293 = load i32, i32* %292, align 4
  %294 = and i32 %293, %290
  store i32 %294, i32* %292, align 4
  br label %295

295:                                              ; preds = %288, %282
  %296 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %7, align 8
  %297 = load i32, i32* @UART_LCR, align 4
  %298 = load i8, i8* %8, align 1
  %299 = zext i8 %298 to i32
  %300 = load i8, i8* @UART_LCR_DLAB, align 1
  %301 = zext i8 %300 to i32
  %302 = or i32 %299, %301
  %303 = trunc i32 %302 to i8
  %304 = call i32 @serial_out(%struct.uart_pxa_port* %296, i32 %297, i8 zeroext %303)
  %305 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %7, align 8
  %306 = load i32, i32* @UART_DLL, align 4
  %307 = load i32, i32* %12, align 4
  %308 = and i32 %307, 255
  %309 = trunc i32 %308 to i8
  %310 = call i32 @serial_out(%struct.uart_pxa_port* %305, i32 %306, i8 zeroext %309)
  %311 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %7, align 8
  %312 = load i32, i32* @UART_DLL, align 4
  %313 = call i32 @serial_in(%struct.uart_pxa_port* %311, i32 %312)
  store i32 %313, i32* %13, align 4
  %314 = load i32, i32* %13, align 4
  %315 = load i32, i32* %12, align 4
  %316 = and i32 %315, 255
  %317 = icmp ne i32 %314, %316
  %318 = zext i1 %317 to i32
  %319 = call i32 @WARN_ON(i32 %318)
  %320 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %7, align 8
  %321 = load i32, i32* @UART_DLM, align 4
  %322 = load i32, i32* %12, align 4
  %323 = lshr i32 %322, 8
  %324 = trunc i32 %323 to i8
  %325 = call i32 @serial_out(%struct.uart_pxa_port* %320, i32 %321, i8 zeroext %324)
  %326 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %7, align 8
  %327 = load i32, i32* @UART_LCR, align 4
  %328 = load i8, i8* %8, align 1
  %329 = call i32 @serial_out(%struct.uart_pxa_port* %326, i32 %327, i8 zeroext %328)
  %330 = load i8, i8* %8, align 1
  %331 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %7, align 8
  %332 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %331, i32 0, i32 1
  store i8 %330, i8* %332, align 1
  %333 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %7, align 8
  %334 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %333, i32 0, i32 2
  %335 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %7, align 8
  %336 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %335, i32 0, i32 2
  %337 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %336, i32 0, i32 4
  %338 = load i32, i32* %337, align 4
  %339 = call i32 @serial_pxa_set_mctrl(%struct.TYPE_3__* %334, i32 %338)
  %340 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %7, align 8
  %341 = load i32, i32* @UART_FCR, align 4
  %342 = load i8, i8* %9, align 1
  %343 = call i32 @serial_out(%struct.uart_pxa_port* %340, i32 %341, i8 zeroext %342)
  %344 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %7, align 8
  %345 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %344, i32 0, i32 2
  %346 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %345, i32 0, i32 3
  %347 = load i64, i64* %10, align 8
  %348 = call i32 @spin_unlock_irqrestore(i32* %346, i64 %347)
  ret void
}

declare dso_local i32 @uart_get_baud_rate(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*, i32, i32) #1

declare dso_local i32 @uart_get_divisor(%struct.uart_port*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @uart_update_timeout(%struct.uart_port*, i32, i32) #1

declare dso_local i64 @UART_ENABLE_MS(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @serial_out(%struct.uart_pxa_port*, i32, i8 zeroext) #1

declare dso_local i32 @serial_in(%struct.uart_pxa_port*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @serial_pxa_set_mctrl(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
