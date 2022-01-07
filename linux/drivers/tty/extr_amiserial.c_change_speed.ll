; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_amiserial.c_change_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_amiserial.c_change_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i16 }
%struct.tty_struct = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.serial_state = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.tty_port }
%struct.tty_port = type { i32 }
%struct.ktermios = type { i32 }

@CSTOPB = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@UART_LCR_PARITY = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@UART_LCR_EPAR = common dso_local global i32 0, align 4
@ASYNC_SPD_MASK = common dso_local global i32 0, align 4
@ASYNC_SPD_CUST = common dso_local global i32 0, align 4
@CBAUD = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@UART_IER_MSI = common dso_local global i32 0, align 4
@ASYNC_HARDPPS_CD = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@CLOCAL = common dso_local global i32 0, align 4
@UART_LSR_OE = common dso_local global i32 0, align 4
@UART_LSR_DR = common dso_local global i32 0, align 4
@UART_LSR_FE = common dso_local global i32 0, align 4
@UART_LSR_PE = common dso_local global i32 0, align 4
@UART_LSR_BI = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@SERPER_PARENB = common dso_local global i16 0, align 2
@custom = common dso_local global %struct.TYPE_4__ zeroinitializer, align 2
@CMSPAR = common dso_local global i32 0, align 4
@UART_LCR_SPAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.serial_state*, %struct.ktermios*)* @change_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @change_speed(%struct.tty_struct* %0, %struct.serial_state* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.serial_state*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca %struct.tty_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i16, align 2
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.serial_state* %1, %struct.serial_state** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %16 = load %struct.serial_state*, %struct.serial_state** %5, align 8
  %17 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %16, i32 0, i32 8
  store %struct.tty_port* %17, %struct.tty_port** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %12, align 4
  %18 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %19 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %11, align 4
  store i32 3, i32* %12, align 4
  store i32 10, i32* %13, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @CSTOPB, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %3
  %27 = load i32, i32* %12, align 4
  %28 = or i32 %27, 4
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %13, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %13, align 4
  br label %31

31:                                               ; preds = %26, %3
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* @PARENB, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load i32, i32* @UART_LCR_PARITY, align 4
  %38 = load i32, i32* %12, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %13, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %13, align 4
  br label %42

42:                                               ; preds = %36, %31
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @PARODD, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* @UART_LCR_EPAR, align 4
  %49 = load i32, i32* %12, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %12, align 4
  br label %51

51:                                               ; preds = %47, %42
  %52 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %53 = call i32 @tty_get_baud_rate(%struct.tty_struct* %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  store i32 9600, i32* %10, align 4
  br label %57

57:                                               ; preds = %56, %51
  %58 = load %struct.serial_state*, %struct.serial_state** %5, align 8
  %59 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp eq i32 %61, 38400
  br i1 %62, label %63, label %75

63:                                               ; preds = %57
  %64 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %65 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @ASYNC_SPD_MASK, align 4
  %68 = and i32 %66, %67
  %69 = load i32, i32* @ASYNC_SPD_CUST, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %63
  %72 = load %struct.serial_state*, %struct.serial_state** %5, align 8
  %73 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %8, align 4
  br label %91

75:                                               ; preds = %63, %57
  %76 = load i32, i32* %10, align 4
  %77 = icmp eq i32 %76, 134
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load i32, i32* %9, align 4
  %80 = mul nsw i32 2, %79
  %81 = sdiv i32 %80, 269
  store i32 %81, i32* %8, align 4
  br label %90

82:                                               ; preds = %75
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %10, align 4
  %88 = sdiv i32 %86, %87
  store i32 %88, i32* %8, align 4
  br label %89

89:                                               ; preds = %85, %82
  br label %90

90:                                               ; preds = %89, %78
  br label %91

91:                                               ; preds = %90, %71
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %152, label %94

94:                                               ; preds = %91
  %95 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %96 = icmp ne %struct.ktermios* %95, null
  br i1 %96, label %97, label %152

97:                                               ; preds = %94
  %98 = load i32, i32* @CBAUD, align 4
  %99 = xor i32 %98, -1
  %100 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %101 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %103, %99
  store i32 %104, i32* %102, align 4
  %105 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %106 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @CBAUD, align 4
  %109 = and i32 %107, %108
  %110 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %111 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %113, %109
  store i32 %114, i32* %112, align 4
  %115 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %116 = call i32 @tty_get_baud_rate(%struct.tty_struct* %115)
  store i32 %116, i32* %10, align 4
  %117 = load i32, i32* %10, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %97
  store i32 9600, i32* %10, align 4
  br label %120

120:                                              ; preds = %119, %97
  %121 = load i32, i32* %10, align 4
  %122 = icmp eq i32 %121, 38400
  br i1 %122, label %123, label %135

123:                                              ; preds = %120
  %124 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %125 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @ASYNC_SPD_MASK, align 4
  %128 = and i32 %126, %127
  %129 = load i32, i32* @ASYNC_SPD_CUST, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %123
  %132 = load %struct.serial_state*, %struct.serial_state** %5, align 8
  %133 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %8, align 4
  br label %151

135:                                              ; preds = %123, %120
  %136 = load i32, i32* %10, align 4
  %137 = icmp eq i32 %136, 134
  br i1 %137, label %138, label %142

138:                                              ; preds = %135
  %139 = load i32, i32* %9, align 4
  %140 = mul nsw i32 2, %139
  %141 = sdiv i32 %140, 269
  store i32 %141, i32* %8, align 4
  br label %150

142:                                              ; preds = %135
  %143 = load i32, i32* %10, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %142
  %146 = load i32, i32* %9, align 4
  %147 = load i32, i32* %10, align 4
  %148 = sdiv i32 %146, %147
  store i32 %148, i32* %8, align 4
  br label %149

149:                                              ; preds = %145, %142
  br label %150

150:                                              ; preds = %149, %138
  br label %151

151:                                              ; preds = %150, %131
  br label %152

152:                                              ; preds = %151, %94, %91
  %153 = load i32, i32* %8, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %158, label %155

155:                                              ; preds = %152
  %156 = load i32, i32* %9, align 4
  %157 = sdiv i32 %156, 9600
  store i32 %157, i32* %8, align 4
  br label %158

158:                                              ; preds = %155, %152
  %159 = load i32, i32* %8, align 4
  %160 = load %struct.serial_state*, %struct.serial_state** %5, align 8
  %161 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %160, i32 0, i32 2
  store i32 %159, i32* %161, align 4
  %162 = load %struct.serial_state*, %struct.serial_state** %5, align 8
  %163 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @HZ, align 4
  %166 = mul nsw i32 %164, %165
  %167 = load i32, i32* %13, align 4
  %168 = mul nsw i32 %166, %167
  %169 = load i32, i32* %8, align 4
  %170 = mul nsw i32 %168, %169
  %171 = load i32, i32* %9, align 4
  %172 = sdiv i32 %170, %171
  %173 = load %struct.serial_state*, %struct.serial_state** %5, align 8
  %174 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %173, i32 0, i32 3
  store i32 %172, i32* %174, align 4
  %175 = load i32, i32* @HZ, align 4
  %176 = sdiv i32 %175, 50
  %177 = load %struct.serial_state*, %struct.serial_state** %5, align 8
  %178 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = add nsw i32 %179, %176
  store i32 %180, i32* %178, align 4
  %181 = load i32, i32* @UART_IER_MSI, align 4
  %182 = xor i32 %181, -1
  %183 = load %struct.serial_state*, %struct.serial_state** %5, align 8
  %184 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %183, i32 0, i32 7
  %185 = load i32, i32* %184, align 4
  %186 = and i32 %185, %182
  store i32 %186, i32* %184, align 4
  %187 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %188 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @ASYNC_HARDPPS_CD, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %158
  %194 = load i32, i32* @UART_IER_MSI, align 4
  %195 = load %struct.serial_state*, %struct.serial_state** %5, align 8
  %196 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %195, i32 0, i32 7
  %197 = load i32, i32* %196, align 4
  %198 = or i32 %197, %194
  store i32 %198, i32* %196, align 4
  br label %199

199:                                              ; preds = %193, %158
  %200 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %201 = load i32, i32* %11, align 4
  %202 = load i32, i32* @CRTSCTS, align 4
  %203 = and i32 %201, %202
  %204 = call i32 @tty_port_set_cts_flow(%struct.tty_port* %200, i32 %203)
  %205 = load i32, i32* %11, align 4
  %206 = load i32, i32* @CRTSCTS, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %215

209:                                              ; preds = %199
  %210 = load i32, i32* @UART_IER_MSI, align 4
  %211 = load %struct.serial_state*, %struct.serial_state** %5, align 8
  %212 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %211, i32 0, i32 7
  %213 = load i32, i32* %212, align 4
  %214 = or i32 %213, %210
  store i32 %214, i32* %212, align 4
  br label %215

215:                                              ; preds = %209, %199
  %216 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %217 = load i32, i32* %11, align 4
  %218 = xor i32 %217, -1
  %219 = load i32, i32* @CLOCAL, align 4
  %220 = and i32 %218, %219
  %221 = call i32 @tty_port_set_check_carrier(%struct.tty_port* %216, i32 %220)
  %222 = load i32, i32* %11, align 4
  %223 = xor i32 %222, -1
  %224 = load i32, i32* @CLOCAL, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %233

227:                                              ; preds = %215
  %228 = load i32, i32* @UART_IER_MSI, align 4
  %229 = load %struct.serial_state*, %struct.serial_state** %5, align 8
  %230 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %229, i32 0, i32 7
  %231 = load i32, i32* %230, align 4
  %232 = or i32 %231, %228
  store i32 %232, i32* %230, align 4
  br label %233

233:                                              ; preds = %227, %215
  %234 = load i32, i32* @UART_LSR_OE, align 4
  %235 = load i32, i32* @UART_LSR_DR, align 4
  %236 = or i32 %234, %235
  %237 = load %struct.serial_state*, %struct.serial_state** %5, align 8
  %238 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %237, i32 0, i32 5
  store i32 %236, i32* %238, align 4
  %239 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %240 = call i64 @I_INPCK(%struct.tty_struct* %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %250

242:                                              ; preds = %233
  %243 = load i32, i32* @UART_LSR_FE, align 4
  %244 = load i32, i32* @UART_LSR_PE, align 4
  %245 = or i32 %243, %244
  %246 = load %struct.serial_state*, %struct.serial_state** %5, align 8
  %247 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %246, i32 0, i32 5
  %248 = load i32, i32* %247, align 4
  %249 = or i32 %248, %245
  store i32 %249, i32* %247, align 4
  br label %250

250:                                              ; preds = %242, %233
  %251 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %252 = call i64 @I_BRKINT(%struct.tty_struct* %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %258, label %254

254:                                              ; preds = %250
  %255 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %256 = call i64 @I_PARMRK(%struct.tty_struct* %255)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %264

258:                                              ; preds = %254, %250
  %259 = load i32, i32* @UART_LSR_BI, align 4
  %260 = load %struct.serial_state*, %struct.serial_state** %5, align 8
  %261 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %260, i32 0, i32 5
  %262 = load i32, i32* %261, align 4
  %263 = or i32 %262, %259
  store i32 %263, i32* %261, align 4
  br label %264

264:                                              ; preds = %258, %254
  %265 = load %struct.serial_state*, %struct.serial_state** %5, align 8
  %266 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %265, i32 0, i32 6
  store i32 0, i32* %266, align 4
  %267 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %268 = call i64 @I_IGNPAR(%struct.tty_struct* %267)
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %278

270:                                              ; preds = %264
  %271 = load i32, i32* @UART_LSR_PE, align 4
  %272 = load i32, i32* @UART_LSR_FE, align 4
  %273 = or i32 %271, %272
  %274 = load %struct.serial_state*, %struct.serial_state** %5, align 8
  %275 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %274, i32 0, i32 6
  %276 = load i32, i32* %275, align 4
  %277 = or i32 %276, %273
  store i32 %277, i32* %275, align 4
  br label %278

278:                                              ; preds = %270, %264
  %279 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %280 = call i64 @I_IGNBRK(%struct.tty_struct* %279)
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %298

282:                                              ; preds = %278
  %283 = load i32, i32* @UART_LSR_BI, align 4
  %284 = load %struct.serial_state*, %struct.serial_state** %5, align 8
  %285 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %284, i32 0, i32 6
  %286 = load i32, i32* %285, align 4
  %287 = or i32 %286, %283
  store i32 %287, i32* %285, align 4
  %288 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %289 = call i64 @I_IGNPAR(%struct.tty_struct* %288)
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %297

291:                                              ; preds = %282
  %292 = load i32, i32* @UART_LSR_OE, align 4
  %293 = load %struct.serial_state*, %struct.serial_state** %5, align 8
  %294 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %293, i32 0, i32 6
  %295 = load i32, i32* %294, align 4
  %296 = or i32 %295, %292
  store i32 %296, i32* %294, align 4
  br label %297

297:                                              ; preds = %291, %282
  br label %298

298:                                              ; preds = %297, %278
  %299 = load i32, i32* %11, align 4
  %300 = load i32, i32* @CREAD, align 4
  %301 = and i32 %299, %300
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %303, label %309

303:                                              ; preds = %298
  %304 = load i32, i32* @UART_LSR_DR, align 4
  %305 = load %struct.serial_state*, %struct.serial_state** %5, align 8
  %306 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %305, i32 0, i32 6
  %307 = load i32, i32* %306, align 4
  %308 = or i32 %307, %304
  store i32 %308, i32* %306, align 4
  br label %309

309:                                              ; preds = %303, %298
  %310 = load i64, i64* %14, align 8
  %311 = call i32 @local_irq_save(i64 %310)
  %312 = load i32, i32* %8, align 4
  %313 = sub nsw i32 %312, 1
  %314 = trunc i32 %313 to i16
  store i16 %314, i16* %15, align 2
  %315 = load i32, i32* %12, align 4
  %316 = load i32, i32* @UART_LCR_PARITY, align 4
  %317 = and i32 %315, %316
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %326

319:                                              ; preds = %309
  %320 = load i16, i16* @SERPER_PARENB, align 2
  %321 = sext i16 %320 to i32
  %322 = load i16, i16* %15, align 2
  %323 = sext i16 %322 to i32
  %324 = or i32 %323, %321
  %325 = trunc i32 %324 to i16
  store i16 %325, i16* %15, align 2
  br label %326

326:                                              ; preds = %319, %309
  %327 = load i16, i16* %15, align 2
  store i16 %327, i16* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @custom, i32 0, i32 0), align 2
  %328 = call i32 (...) @mb()
  %329 = load i64, i64* %14, align 8
  %330 = call i32 @local_irq_restore(i64 %329)
  ret void
}

declare dso_local i32 @tty_get_baud_rate(%struct.tty_struct*) #1

declare dso_local i32 @tty_port_set_cts_flow(%struct.tty_port*, i32) #1

declare dso_local i32 @tty_port_set_check_carrier(%struct.tty_port*, i32) #1

declare dso_local i64 @I_INPCK(%struct.tty_struct*) #1

declare dso_local i64 @I_BRKINT(%struct.tty_struct*) #1

declare dso_local i64 @I_PARMRK(%struct.tty_struct*) #1

declare dso_local i64 @I_IGNPAR(%struct.tty_struct*) #1

declare dso_local i64 @I_IGNBRK(%struct.tty_struct*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
