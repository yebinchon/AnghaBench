; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_port.c_serial8250_do_set_termios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_port.c_serial8250_do_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i32, i32, i64, i32, i32 }
%struct.ktermios = type { i32, i32 }
%struct.uart_8250_port = type { i32, i8, i32, i32, i32, i32, i32, i64, i32 }

@UART_CAP_MINI = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@CMSPAR = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@CS5 = common dso_local global i32 0, align 4
@CS6 = common dso_local global i32 0, align 4
@CS7 = common dso_local global i32 0, align 4
@UART_CAP_FIFO = common dso_local global i32 0, align 4
@UART_FCR_TRIGGER_MASK = common dso_local global i32 0, align 4
@UART_FCR_TRIGGER_1 = common dso_local global i32 0, align 4
@UART_CAP_AFE = common dso_local global i32 0, align 4
@UART_MCR_AFE = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
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
@UART_IER_MSI = common dso_local global i32 0, align 4
@UART_BUG_NOMSR = common dso_local global i32 0, align 4
@UART_CAP_UUE = common dso_local global i32 0, align 4
@UART_IER_UUE = common dso_local global i32 0, align 4
@UART_CAP_RTOIE = common dso_local global i32 0, align 4
@UART_IER_RTOIE = common dso_local global i32 0, align 4
@UART_IER = common dso_local global i32 0, align 4
@UART_CAP_EFR = common dso_local global i32 0, align 4
@UART_EFR_CTS = common dso_local global i8 0, align 1
@UART_LCR = common dso_local global i32 0, align 4
@UART_LCR_CONF_MODE_B = common dso_local global i32 0, align 4
@UPF_EXAR_EFR = common dso_local global i32 0, align 4
@UART_XR_EFR = common dso_local global i32 0, align 4
@UART_EFR = common dso_local global i32 0, align 4
@PORT_16750 = common dso_local global i64 0, align 8
@UART_FCR = common dso_local global i32 0, align 4
@UART_FCR_ENABLE_FIFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @serial8250_do_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca %struct.uart_8250_port*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %14 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %15 = call %struct.uart_8250_port* @up_to_u8250p(%struct.uart_port* %14)
  store %struct.uart_8250_port* %15, %struct.uart_8250_port** %7, align 8
  store i32 0, i32* %12, align 4
  %16 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %17 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @UART_CAP_MINI, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %62

22:                                               ; preds = %3
  %23 = load i32, i32* @CSTOPB, align 4
  %24 = load i32, i32* @PARENB, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @PARODD, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @CMSPAR, align 4
  %29 = or i32 %27, %28
  %30 = xor i32 %29, -1
  %31 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %32 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %36 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @CSIZE, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* @CS5, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %50, label %42

42:                                               ; preds = %22
  %43 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %44 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @CSIZE, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* @CS6, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %42, %22
  %51 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %52 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @CSIZE, align 4
  %55 = xor i32 %54, -1
  %56 = and i32 %53, %55
  %57 = load i32, i32* @CS7, align 4
  %58 = or i32 %56, %57
  %59 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %60 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %50, %42
  br label %62

62:                                               ; preds = %61, %3
  %63 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %64 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %65 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call zeroext i8 @serial8250_compute_lcr(%struct.uart_8250_port* %63, i32 %66)
  store i8 %67, i8* %8, align 1
  %68 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %69 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %70 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %71 = call i32 @serial8250_get_baud_rate(%struct.uart_port* %68, %struct.ktermios* %69, %struct.ktermios* %70)
  store i32 %71, i32* %10, align 4
  %72 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @serial8250_get_divisor(%struct.uart_port* %72, i32 %73, i32* %12)
  store i32 %74, i32* %11, align 4
  %75 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %76 = call i32 @serial8250_rpm_get(%struct.uart_8250_port* %75)
  %77 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %78 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %77, i32 0, i32 5
  %79 = load i64, i64* %9, align 8
  %80 = call i32 @spin_lock_irqsave(i32* %78, i64 %79)
  %81 = load i8, i8* %8, align 1
  %82 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %83 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %82, i32 0, i32 1
  store i8 %81, i8* %83, align 4
  %84 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %85 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @UART_CAP_FIFO, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %121

90:                                               ; preds = %62
  %91 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %92 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp sgt i32 %93, 1
  br i1 %94, label %95, label %121

95:                                               ; preds = %90
  %96 = load i32, i32* %10, align 4
  %97 = icmp ult i32 %96, 2400
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %100 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %99, i32 0, i32 8
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %98, %95
  %104 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %105 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %104, i32 0, i32 7
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %103, %98
  %109 = load i32, i32* @UART_FCR_TRIGGER_MASK, align 4
  %110 = xor i32 %109, -1
  %111 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %112 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = and i32 %113, %110
  store i32 %114, i32* %112, align 8
  %115 = load i32, i32* @UART_FCR_TRIGGER_1, align 4
  %116 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %117 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 8
  br label %120

120:                                              ; preds = %108, %103
  br label %121

121:                                              ; preds = %120, %90, %62
  %122 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %123 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @UART_CAP_AFE, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %148

128:                                              ; preds = %121
  %129 = load i32, i32* @UART_MCR_AFE, align 4
  %130 = xor i32 %129, -1
  %131 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %132 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %131, i32 0, i32 6
  %133 = load i32, i32* %132, align 8
  %134 = and i32 %133, %130
  store i32 %134, i32* %132, align 8
  %135 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %136 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @CRTSCTS, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %128
  %142 = load i32, i32* @UART_MCR_AFE, align 4
  %143 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %144 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %143, i32 0, i32 6
  %145 = load i32, i32* %144, align 8
  %146 = or i32 %145, %142
  store i32 %146, i32* %144, align 8
  br label %147

147:                                              ; preds = %141, %128
  br label %148

148:                                              ; preds = %147, %121
  %149 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %150 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %151 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %10, align 4
  %154 = call i32 @uart_update_timeout(%struct.uart_port* %149, i32 %152, i32 %153)
  %155 = load i32, i32* @UART_LSR_OE, align 4
  %156 = load i32, i32* @UART_LSR_THRE, align 4
  %157 = or i32 %155, %156
  %158 = load i32, i32* @UART_LSR_DR, align 4
  %159 = or i32 %157, %158
  %160 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %161 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %160, i32 0, i32 1
  store i32 %159, i32* %161, align 4
  %162 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %163 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @INPCK, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %176

168:                                              ; preds = %148
  %169 = load i32, i32* @UART_LSR_FE, align 4
  %170 = load i32, i32* @UART_LSR_PE, align 4
  %171 = or i32 %169, %170
  %172 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %173 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = or i32 %174, %171
  store i32 %175, i32* %173, align 4
  br label %176

176:                                              ; preds = %168, %148
  %177 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %178 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @IGNBRK, align 4
  %181 = load i32, i32* @BRKINT, align 4
  %182 = or i32 %180, %181
  %183 = load i32, i32* @PARMRK, align 4
  %184 = or i32 %182, %183
  %185 = and i32 %179, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %176
  %188 = load i32, i32* @UART_LSR_BI, align 4
  %189 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %190 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = or i32 %191, %188
  store i32 %192, i32* %190, align 4
  br label %193

193:                                              ; preds = %187, %176
  %194 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %195 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %194, i32 0, i32 2
  store i32 0, i32* %195, align 8
  %196 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %197 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @IGNPAR, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %210

202:                                              ; preds = %193
  %203 = load i32, i32* @UART_LSR_PE, align 4
  %204 = load i32, i32* @UART_LSR_FE, align 4
  %205 = or i32 %203, %204
  %206 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %207 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = or i32 %208, %205
  store i32 %209, i32* %207, align 8
  br label %210

210:                                              ; preds = %202, %193
  %211 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %212 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @IGNBRK, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %236

217:                                              ; preds = %210
  %218 = load i32, i32* @UART_LSR_BI, align 4
  %219 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %220 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = or i32 %221, %218
  store i32 %222, i32* %220, align 8
  %223 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %224 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* @IGNPAR, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %235

229:                                              ; preds = %217
  %230 = load i32, i32* @UART_LSR_OE, align 4
  %231 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %232 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 8
  %234 = or i32 %233, %230
  store i32 %234, i32* %232, align 8
  br label %235

235:                                              ; preds = %229, %217
  br label %236

236:                                              ; preds = %235, %210
  %237 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %238 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* @CREAD, align 4
  %241 = and i32 %239, %240
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %249

243:                                              ; preds = %236
  %244 = load i32, i32* @UART_LSR_DR, align 4
  %245 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %246 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 8
  %248 = or i32 %247, %244
  store i32 %248, i32* %246, align 8
  br label %249

249:                                              ; preds = %243, %236
  %250 = load i32, i32* @UART_IER_MSI, align 4
  %251 = xor i32 %250, -1
  %252 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %253 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 4
  %255 = and i32 %254, %251
  store i32 %255, i32* %253, align 4
  %256 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %257 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %256, i32 0, i32 4
  %258 = load i32, i32* %257, align 8
  %259 = load i32, i32* @UART_BUG_NOMSR, align 4
  %260 = and i32 %258, %259
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %276, label %262

262:                                              ; preds = %249
  %263 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %264 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %263, i32 0, i32 5
  %265 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %266 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = call i64 @UART_ENABLE_MS(i32* %264, i32 %267)
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %276

270:                                              ; preds = %262
  %271 = load i32, i32* @UART_IER_MSI, align 4
  %272 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %273 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %272, i32 0, i32 3
  %274 = load i32, i32* %273, align 4
  %275 = or i32 %274, %271
  store i32 %275, i32* %273, align 4
  br label %276

276:                                              ; preds = %270, %262, %249
  %277 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %278 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = load i32, i32* @UART_CAP_UUE, align 4
  %281 = and i32 %279, %280
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %289

283:                                              ; preds = %276
  %284 = load i32, i32* @UART_IER_UUE, align 4
  %285 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %286 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %285, i32 0, i32 3
  %287 = load i32, i32* %286, align 4
  %288 = or i32 %287, %284
  store i32 %288, i32* %286, align 4
  br label %289

289:                                              ; preds = %283, %276
  %290 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %291 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = load i32, i32* @UART_CAP_RTOIE, align 4
  %294 = and i32 %292, %293
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %302

296:                                              ; preds = %289
  %297 = load i32, i32* @UART_IER_RTOIE, align 4
  %298 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %299 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %298, i32 0, i32 3
  %300 = load i32, i32* %299, align 4
  %301 = or i32 %300, %297
  store i32 %301, i32* %299, align 4
  br label %302

302:                                              ; preds = %296, %289
  %303 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %304 = load i32, i32* @UART_IER, align 4
  %305 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %306 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %305, i32 0, i32 3
  %307 = load i32, i32* %306, align 4
  %308 = call i32 @serial_port_out(%struct.uart_port* %303, i32 %304, i32 %307)
  %309 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %310 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = load i32, i32* @UART_CAP_EFR, align 4
  %313 = and i32 %311, %312
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %353

315:                                              ; preds = %302
  store i8 0, i8* %13, align 1
  %316 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %317 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 4
  %319 = load i32, i32* @CRTSCTS, align 4
  %320 = and i32 %318, %319
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %329

322:                                              ; preds = %315
  %323 = load i8, i8* @UART_EFR_CTS, align 1
  %324 = zext i8 %323 to i32
  %325 = load i8, i8* %13, align 1
  %326 = zext i8 %325 to i32
  %327 = or i32 %326, %324
  %328 = trunc i32 %327 to i8
  store i8 %328, i8* %13, align 1
  br label %329

329:                                              ; preds = %322, %315
  %330 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %331 = load i32, i32* @UART_LCR, align 4
  %332 = load i32, i32* @UART_LCR_CONF_MODE_B, align 4
  %333 = call i32 @serial_port_out(%struct.uart_port* %330, i32 %331, i32 %332)
  %334 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %335 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %334, i32 0, i32 3
  %336 = load i32, i32* %335, align 4
  %337 = load i32, i32* @UPF_EXAR_EFR, align 4
  %338 = and i32 %336, %337
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %346

340:                                              ; preds = %329
  %341 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %342 = load i32, i32* @UART_XR_EFR, align 4
  %343 = load i8, i8* %13, align 1
  %344 = zext i8 %343 to i32
  %345 = call i32 @serial_port_out(%struct.uart_port* %341, i32 %342, i32 %344)
  br label %352

346:                                              ; preds = %329
  %347 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %348 = load i32, i32* @UART_EFR, align 4
  %349 = load i8, i8* %13, align 1
  %350 = zext i8 %349 to i32
  %351 = call i32 @serial_port_out(%struct.uart_port* %347, i32 %348, i32 %350)
  br label %352

352:                                              ; preds = %346, %340
  br label %353

353:                                              ; preds = %352, %302
  %354 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %355 = load i32, i32* %10, align 4
  %356 = load i32, i32* %11, align 4
  %357 = load i32, i32* %12, align 4
  %358 = call i32 @serial8250_set_divisor(%struct.uart_port* %354, i32 %355, i32 %356, i32 %357)
  %359 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %360 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %359, i32 0, i32 4
  %361 = load i64, i64* %360, align 8
  %362 = load i64, i64* @PORT_16750, align 8
  %363 = icmp eq i64 %361, %362
  br i1 %363, label %364, label %371

364:                                              ; preds = %353
  %365 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %366 = load i32, i32* @UART_FCR, align 4
  %367 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %368 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %367, i32 0, i32 2
  %369 = load i32, i32* %368, align 8
  %370 = call i32 @serial_port_out(%struct.uart_port* %365, i32 %366, i32 %369)
  br label %371

371:                                              ; preds = %364, %353
  %372 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %373 = load i32, i32* @UART_LCR, align 4
  %374 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %375 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %374, i32 0, i32 1
  %376 = load i8, i8* %375, align 4
  %377 = zext i8 %376 to i32
  %378 = call i32 @serial_port_out(%struct.uart_port* %372, i32 %373, i32 %377)
  %379 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %380 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %379, i32 0, i32 4
  %381 = load i64, i64* %380, align 8
  %382 = load i64, i64* @PORT_16750, align 8
  %383 = icmp ne i64 %381, %382
  br i1 %383, label %384, label %403

384:                                              ; preds = %371
  %385 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %386 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %385, i32 0, i32 2
  %387 = load i32, i32* %386, align 8
  %388 = load i32, i32* @UART_FCR_ENABLE_FIFO, align 4
  %389 = and i32 %387, %388
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %396

391:                                              ; preds = %384
  %392 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %393 = load i32, i32* @UART_FCR, align 4
  %394 = load i32, i32* @UART_FCR_ENABLE_FIFO, align 4
  %395 = call i32 @serial_port_out(%struct.uart_port* %392, i32 %393, i32 %394)
  br label %396

396:                                              ; preds = %391, %384
  %397 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %398 = load i32, i32* @UART_FCR, align 4
  %399 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %400 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %399, i32 0, i32 2
  %401 = load i32, i32* %400, align 8
  %402 = call i32 @serial_port_out(%struct.uart_port* %397, i32 %398, i32 %401)
  br label %403

403:                                              ; preds = %396, %371
  %404 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %405 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %406 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %405, i32 0, i32 6
  %407 = load i32, i32* %406, align 4
  %408 = call i32 @serial8250_set_mctrl(%struct.uart_port* %404, i32 %407)
  %409 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %410 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %409, i32 0, i32 5
  %411 = load i64, i64* %9, align 8
  %412 = call i32 @spin_unlock_irqrestore(i32* %410, i64 %411)
  %413 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %414 = call i32 @serial8250_rpm_put(%struct.uart_8250_port* %413)
  %415 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %416 = call i64 @tty_termios_baud_rate(%struct.ktermios* %415)
  %417 = icmp ne i64 %416, 0
  br i1 %417, label %418, label %423

418:                                              ; preds = %403
  %419 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %420 = load i32, i32* %10, align 4
  %421 = load i32, i32* %10, align 4
  %422 = call i32 @tty_termios_encode_baud_rate(%struct.ktermios* %419, i32 %420, i32 %421)
  br label %423

423:                                              ; preds = %418, %403
  ret void
}

declare dso_local %struct.uart_8250_port* @up_to_u8250p(%struct.uart_port*) #1

declare dso_local zeroext i8 @serial8250_compute_lcr(%struct.uart_8250_port*, i32) #1

declare dso_local i32 @serial8250_get_baud_rate(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*) #1

declare dso_local i32 @serial8250_get_divisor(%struct.uart_port*, i32, i32*) #1

declare dso_local i32 @serial8250_rpm_get(%struct.uart_8250_port*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @uart_update_timeout(%struct.uart_port*, i32, i32) #1

declare dso_local i64 @UART_ENABLE_MS(i32*, i32) #1

declare dso_local i32 @serial_port_out(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @serial8250_set_divisor(%struct.uart_port*, i32, i32, i32) #1

declare dso_local i32 @serial8250_set_mctrl(%struct.uart_port*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @serial8250_rpm_put(%struct.uart_8250_port*) #1

declare dso_local i64 @tty_termios_baud_rate(%struct.ktermios*) #1

declare dso_local i32 @tty_termios_encode_baud_rate(%struct.ktermios*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
