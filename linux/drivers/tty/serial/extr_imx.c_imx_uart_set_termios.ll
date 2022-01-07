; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_imx.c_imx_uart_set_termios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_imx.c_imx_uart_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ktermios = type { i32, i32 }
%struct.imx_port = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@CSIZE = common dso_local global i32 0, align 4
@CS8 = common dso_local global i32 0, align 4
@CS7 = common dso_local global i32 0, align 4
@UCR2 = common dso_local global i32 0, align 4
@UCR2_TXEN = common dso_local global i32 0, align 4
@UCR2_RXEN = common dso_local global i32 0, align 4
@UCR2_ATEN = common dso_local global i32 0, align 4
@UCR2_CTS = common dso_local global i32 0, align 4
@UCR2_SRST = common dso_local global i32 0, align 4
@UCR2_IRTS = common dso_local global i32 0, align 4
@UCR2_WS = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@SER_RS485_ENABLED = common dso_local global i32 0, align 4
@SER_RS485_RTS_AFTER_SEND = common dso_local global i32 0, align 4
@UCR2_CTSC = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@UCR2_STPB = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@UCR2_PREN = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@UCR2_PROE = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@URXD_FRMERR = common dso_local global i32 0, align 4
@URXD_PRERR = common dso_local global i32 0, align 4
@BRKINT = common dso_local global i32 0, align 4
@PARMRK = common dso_local global i32 0, align 4
@URXD_BRK = common dso_local global i32 0, align 4
@IGNPAR = common dso_local global i32 0, align 4
@IGNBRK = common dso_local global i32 0, align 4
@URXD_OVRRUN = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@URXD_DUMMY_READ = common dso_local global i32 0, align 4
@UFCR = common dso_local global i32 0, align 4
@UFCR_RFDIV = common dso_local global i32 0, align 4
@UBIR = common dso_local global i32 0, align 4
@UBMR = common dso_local global i32 0, align 4
@IMX21_ONEMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @imx_uart_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx_uart_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca %struct.imx_port*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %21 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %22 = bitcast %struct.uart_port* %21 to %struct.imx_port*
  store %struct.imx_port* %22, %struct.imx_port** %7, align 8
  %23 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %24 = icmp ne %struct.ktermios* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %3
  %26 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %27 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @CSIZE, align 4
  %30 = and i32 %28, %29
  br label %33

31:                                               ; preds = %3
  %32 = load i32, i32* @CS8, align 4
  br label %33

33:                                               ; preds = %31, %25
  %34 = phi i32 [ %30, %25 ], [ %32, %31 ]
  store i32 %34, i32* %14, align 4
  br label %35

35:                                               ; preds = %53, %33
  %36 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %37 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @CSIZE, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* @CS7, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %35
  %44 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %45 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @CSIZE, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* @CS8, align 4
  %50 = icmp ne i32 %48, %49
  br label %51

51:                                               ; preds = %43, %35
  %52 = phi i1 [ false, %35 ], [ %50, %43 ]
  br i1 %52, label %53, label %66

53:                                               ; preds = %51
  %54 = load i32, i32* @CSIZE, align 4
  %55 = xor i32 %54, -1
  %56 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %57 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, %55
  store i32 %59, i32* %57, align 4
  %60 = load i32, i32* %14, align 4
  %61 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %62 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load i32, i32* @CS8, align 4
  store i32 %65, i32* %14, align 4
  br label %35

66:                                               ; preds = %51
  %67 = load %struct.imx_port*, %struct.imx_port** %7, align 8
  %68 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %67, i32 0, i32 2
  %69 = call i32 @del_timer_sync(i32* %68)
  %70 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %71 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %72 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %73 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %74 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = sdiv i32 %75, 16
  %77 = call i32 @uart_get_baud_rate(%struct.uart_port* %70, %struct.ktermios* %71, %struct.ktermios* %72, i32 50, i32 %76)
  store i32 %77, i32* %12, align 4
  %78 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @uart_get_divisor(%struct.uart_port* %78, i32 %79)
  store i32 %80, i32* %13, align 4
  %81 = load %struct.imx_port*, %struct.imx_port** %7, align 8
  %82 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 3
  %84 = load i64, i64* %8, align 8
  %85 = call i32 @spin_lock_irqsave(i32* %83, i64 %84)
  %86 = load %struct.imx_port*, %struct.imx_port** %7, align 8
  %87 = load i32, i32* @UCR2, align 4
  %88 = call i8* @imx_uart_readl(%struct.imx_port* %86, i32 %87)
  %89 = ptrtoint i8* %88 to i32
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* @UCR2_TXEN, align 4
  %92 = load i32, i32* @UCR2_RXEN, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @UCR2_ATEN, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @UCR2_CTS, align 4
  %97 = or i32 %95, %96
  %98 = and i32 %90, %97
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* @UCR2_SRST, align 4
  %100 = load i32, i32* @UCR2_IRTS, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* %9, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %9, align 4
  %104 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %105 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @CSIZE, align 4
  %108 = and i32 %106, %107
  %109 = load i32, i32* @CS8, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %66
  %112 = load i32, i32* @UCR2_WS, align 4
  %113 = load i32, i32* %9, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %9, align 4
  br label %115

115:                                              ; preds = %111, %66
  %116 = load %struct.imx_port*, %struct.imx_port** %7, align 8
  %117 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %127, label %120

120:                                              ; preds = %115
  %121 = load i32, i32* @CRTSCTS, align 4
  %122 = xor i32 %121, -1
  %123 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %124 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = and i32 %125, %122
  store i32 %126, i32* %124, align 4
  br label %127

127:                                              ; preds = %120, %115
  %128 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %129 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @SER_RS485_ENABLED, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %150

135:                                              ; preds = %127
  %136 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %137 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @SER_RS485_RTS_AFTER_SEND, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %135
  %144 = load %struct.imx_port*, %struct.imx_port** %7, align 8
  %145 = call i32 @imx_uart_rts_active(%struct.imx_port* %144, i32* %9)
  br label %149

146:                                              ; preds = %135
  %147 = load %struct.imx_port*, %struct.imx_port** %7, align 8
  %148 = call i32 @imx_uart_rts_inactive(%struct.imx_port* %147, i32* %9)
  br label %149

149:                                              ; preds = %146, %143
  br label %168

150:                                              ; preds = %127
  %151 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %152 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @CRTSCTS, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %167

157:                                              ; preds = %150
  %158 = load i32, i32* %9, align 4
  %159 = load i32, i32* @UCR2_CTS, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %157
  %163 = load i32, i32* @UCR2_CTSC, align 4
  %164 = load i32, i32* %9, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %9, align 4
  br label %166

166:                                              ; preds = %162, %157
  br label %167

167:                                              ; preds = %166, %150
  br label %168

168:                                              ; preds = %167, %149
  %169 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %170 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @CRTSCTS, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %168
  %176 = load i32, i32* @UCR2_IRTS, align 4
  %177 = xor i32 %176, -1
  %178 = load i32, i32* %9, align 4
  %179 = and i32 %178, %177
  store i32 %179, i32* %9, align 4
  br label %180

180:                                              ; preds = %175, %168
  %181 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %182 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @CSTOPB, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %180
  %188 = load i32, i32* @UCR2_STPB, align 4
  %189 = load i32, i32* %9, align 4
  %190 = or i32 %189, %188
  store i32 %190, i32* %9, align 4
  br label %191

191:                                              ; preds = %187, %180
  %192 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %193 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @PARENB, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %213

198:                                              ; preds = %191
  %199 = load i32, i32* @UCR2_PREN, align 4
  %200 = load i32, i32* %9, align 4
  %201 = or i32 %200, %199
  store i32 %201, i32* %9, align 4
  %202 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %203 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* @PARODD, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %198
  %209 = load i32, i32* @UCR2_PROE, align 4
  %210 = load i32, i32* %9, align 4
  %211 = or i32 %210, %209
  store i32 %211, i32* %9, align 4
  br label %212

212:                                              ; preds = %208, %198
  br label %213

213:                                              ; preds = %212, %191
  %214 = load %struct.imx_port*, %struct.imx_port** %7, align 8
  %215 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i32 0, i32 0
  store i32 0, i32* %216, align 4
  %217 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %218 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @INPCK, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %232

223:                                              ; preds = %213
  %224 = load i32, i32* @URXD_FRMERR, align 4
  %225 = load i32, i32* @URXD_PRERR, align 4
  %226 = or i32 %224, %225
  %227 = load %struct.imx_port*, %struct.imx_port** %7, align 8
  %228 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = or i32 %230, %226
  store i32 %231, i32* %229, align 4
  br label %232

232:                                              ; preds = %223, %213
  %233 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %234 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* @BRKINT, align 4
  %237 = load i32, i32* @PARMRK, align 4
  %238 = or i32 %236, %237
  %239 = and i32 %235, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %248

241:                                              ; preds = %232
  %242 = load i32, i32* @URXD_BRK, align 4
  %243 = load %struct.imx_port*, %struct.imx_port** %7, align 8
  %244 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = or i32 %246, %242
  store i32 %247, i32* %245, align 4
  br label %248

248:                                              ; preds = %241, %232
  %249 = load %struct.imx_port*, %struct.imx_port** %7, align 8
  %250 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %250, i32 0, i32 1
  store i32 0, i32* %251, align 4
  %252 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %253 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* @IGNPAR, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %267

258:                                              ; preds = %248
  %259 = load i32, i32* @URXD_PRERR, align 4
  %260 = load i32, i32* @URXD_FRMERR, align 4
  %261 = or i32 %259, %260
  %262 = load %struct.imx_port*, %struct.imx_port** %7, align 8
  %263 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = or i32 %265, %261
  store i32 %266, i32* %264, align 4
  br label %267

267:                                              ; preds = %258, %248
  %268 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %269 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = load i32, i32* @IGNBRK, align 4
  %272 = and i32 %270, %271
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %295

274:                                              ; preds = %267
  %275 = load i32, i32* @URXD_BRK, align 4
  %276 = load %struct.imx_port*, %struct.imx_port** %7, align 8
  %277 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = or i32 %279, %275
  store i32 %280, i32* %278, align 4
  %281 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %282 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* @IGNPAR, align 4
  %285 = and i32 %283, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %294

287:                                              ; preds = %274
  %288 = load i32, i32* @URXD_OVRRUN, align 4
  %289 = load %struct.imx_port*, %struct.imx_port** %7, align 8
  %290 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = or i32 %292, %288
  store i32 %293, i32* %291, align 4
  br label %294

294:                                              ; preds = %287, %274
  br label %295

295:                                              ; preds = %294, %267
  %296 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %297 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = load i32, i32* @CREAD, align 4
  %300 = and i32 %298, %299
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %302, label %309

302:                                              ; preds = %295
  %303 = load i32, i32* @URXD_DUMMY_READ, align 4
  %304 = load %struct.imx_port*, %struct.imx_port** %7, align 8
  %305 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = or i32 %307, %303
  store i32 %308, i32* %306, align 4
  br label %309

309:                                              ; preds = %302, %295
  %310 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %311 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %312 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 4
  %314 = load i32, i32* %12, align 4
  %315 = call i32 @uart_update_timeout(%struct.uart_port* %310, i32 %313, i32 %314)
  %316 = load %struct.imx_port*, %struct.imx_port** %7, align 8
  %317 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %317, i32 0, i32 2
  %319 = load i32, i32* %318, align 4
  %320 = load i32, i32* %12, align 4
  %321 = mul i32 %320, 16
  %322 = udiv i32 %319, %321
  %323 = zext i32 %322 to i64
  store i64 %323, i64* %15, align 8
  %324 = load i32, i32* %12, align 4
  %325 = icmp eq i32 %324, 38400
  br i1 %325, label %326, label %339

326:                                              ; preds = %309
  %327 = load i32, i32* %13, align 4
  %328 = zext i32 %327 to i64
  %329 = load i64, i64* %15, align 8
  %330 = icmp ne i64 %328, %329
  br i1 %330, label %331, label %339

331:                                              ; preds = %326
  %332 = load %struct.imx_port*, %struct.imx_port** %7, align 8
  %333 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %333, i32 0, i32 2
  %335 = load i32, i32* %334, align 4
  %336 = load i32, i32* %13, align 4
  %337 = mul i32 %336, 16
  %338 = udiv i32 %335, %337
  store i32 %338, i32* %12, align 4
  br label %339

339:                                              ; preds = %331, %326, %309
  %340 = load %struct.imx_port*, %struct.imx_port** %7, align 8
  %341 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %341, i32 0, i32 2
  %343 = load i32, i32* %342, align 4
  %344 = load i32, i32* %12, align 4
  %345 = mul i32 %344, 16
  %346 = udiv i32 %343, %345
  %347 = zext i32 %346 to i64
  store i64 %347, i64* %15, align 8
  %348 = load i64, i64* %15, align 8
  %349 = icmp ugt i64 %348, 7
  br i1 %349, label %350, label %351

350:                                              ; preds = %339
  store i64 7, i64* %15, align 8
  br label %351

351:                                              ; preds = %350, %339
  %352 = load i64, i64* %15, align 8
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %355, label %354

354:                                              ; preds = %351
  store i64 1, i64* %15, align 8
  br label %355

355:                                              ; preds = %354, %351
  %356 = load i64, i64* %15, align 8
  %357 = mul i64 16, %356
  %358 = load i32, i32* %12, align 4
  %359 = zext i32 %358 to i64
  %360 = mul i64 %357, %359
  %361 = trunc i64 %360 to i32
  %362 = load %struct.imx_port*, %struct.imx_port** %7, align 8
  %363 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %362, i32 0, i32 0
  %364 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %363, i32 0, i32 2
  %365 = load i32, i32* %364, align 4
  %366 = call i32 @rational_best_approximation(i32 %361, i32 %365, i32 65536, i32 65536, i64* %16, i64* %17)
  %367 = load %struct.imx_port*, %struct.imx_port** %7, align 8
  %368 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %367, i32 0, i32 0
  %369 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %368, i32 0, i32 2
  %370 = load i32, i32* %369, align 4
  %371 = zext i32 %370 to i64
  store i64 %371, i64* %20, align 8
  %372 = load i64, i64* %16, align 8
  %373 = load i64, i64* %20, align 8
  %374 = mul i64 %373, %372
  store i64 %374, i64* %20, align 8
  %375 = load i64, i64* %20, align 8
  %376 = load i64, i64* %17, align 8
  %377 = mul i64 %376, 16
  %378 = load i64, i64* %15, align 8
  %379 = mul i64 %377, %378
  %380 = call i32 @do_div(i64 %375, i64 %379)
  %381 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %382 = load i64, i64* %20, align 8
  %383 = trunc i64 %382 to i32
  %384 = load i64, i64* %20, align 8
  %385 = trunc i64 %384 to i32
  %386 = call i32 @tty_termios_encode_baud_rate(%struct.ktermios* %381, i32 %383, i32 %385)
  %387 = load i64, i64* %16, align 8
  %388 = sub i64 %387, 1
  store i64 %388, i64* %16, align 8
  %389 = load i64, i64* %17, align 8
  %390 = sub i64 %389, 1
  store i64 %390, i64* %17, align 8
  %391 = load %struct.imx_port*, %struct.imx_port** %7, align 8
  %392 = load i32, i32* @UFCR, align 4
  %393 = call i8* @imx_uart_readl(%struct.imx_port* %391, i32 %392)
  %394 = ptrtoint i8* %393 to i32
  store i32 %394, i32* %11, align 4
  %395 = load i32, i32* %11, align 4
  %396 = load i32, i32* @UFCR_RFDIV, align 4
  %397 = xor i32 %396, -1
  %398 = and i32 %395, %397
  %399 = load i64, i64* %15, align 8
  %400 = call i32 @UFCR_RFDIV_REG(i64 %399)
  %401 = or i32 %398, %400
  store i32 %401, i32* %11, align 4
  %402 = load %struct.imx_port*, %struct.imx_port** %7, align 8
  %403 = load i32, i32* %11, align 4
  %404 = load i32, i32* @UFCR, align 4
  %405 = call i32 @imx_uart_writel(%struct.imx_port* %402, i32 %403, i32 %404)
  %406 = load %struct.imx_port*, %struct.imx_port** %7, align 8
  %407 = load i32, i32* @UBIR, align 4
  %408 = call i8* @imx_uart_readl(%struct.imx_port* %406, i32 %407)
  %409 = ptrtoint i8* %408 to i64
  store i64 %409, i64* %18, align 8
  %410 = load %struct.imx_port*, %struct.imx_port** %7, align 8
  %411 = load i32, i32* @UBMR, align 4
  %412 = call i8* @imx_uart_readl(%struct.imx_port* %410, i32 %411)
  %413 = ptrtoint i8* %412 to i64
  store i64 %413, i64* %19, align 8
  %414 = load i64, i64* %18, align 8
  %415 = load i64, i64* %16, align 8
  %416 = icmp ne i64 %414, %415
  br i1 %416, label %421, label %417

417:                                              ; preds = %355
  %418 = load i64, i64* %19, align 8
  %419 = load i64, i64* %17, align 8
  %420 = icmp ne i64 %418, %419
  br i1 %420, label %421, label %432

421:                                              ; preds = %417, %355
  %422 = load %struct.imx_port*, %struct.imx_port** %7, align 8
  %423 = load i64, i64* %16, align 8
  %424 = trunc i64 %423 to i32
  %425 = load i32, i32* @UBIR, align 4
  %426 = call i32 @imx_uart_writel(%struct.imx_port* %422, i32 %424, i32 %425)
  %427 = load %struct.imx_port*, %struct.imx_port** %7, align 8
  %428 = load i64, i64* %17, align 8
  %429 = trunc i64 %428 to i32
  %430 = load i32, i32* @UBMR, align 4
  %431 = call i32 @imx_uart_writel(%struct.imx_port* %427, i32 %429, i32 %430)
  br label %432

432:                                              ; preds = %421, %417
  %433 = load %struct.imx_port*, %struct.imx_port** %7, align 8
  %434 = call i32 @imx_uart_is_imx1(%struct.imx_port* %433)
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %449, label %436

436:                                              ; preds = %432
  %437 = load %struct.imx_port*, %struct.imx_port** %7, align 8
  %438 = load %struct.imx_port*, %struct.imx_port** %7, align 8
  %439 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %438, i32 0, i32 0
  %440 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %439, i32 0, i32 2
  %441 = load i32, i32* %440, align 4
  %442 = zext i32 %441 to i64
  %443 = load i64, i64* %15, align 8
  %444 = udiv i64 %442, %443
  %445 = udiv i64 %444, 1000
  %446 = trunc i64 %445 to i32
  %447 = load i32, i32* @IMX21_ONEMS, align 4
  %448 = call i32 @imx_uart_writel(%struct.imx_port* %437, i32 %446, i32 %447)
  br label %449

449:                                              ; preds = %436, %432
  %450 = load %struct.imx_port*, %struct.imx_port** %7, align 8
  %451 = load i32, i32* %9, align 4
  %452 = load i32, i32* @UCR2, align 4
  %453 = call i32 @imx_uart_writel(%struct.imx_port* %450, i32 %451, i32 %452)
  %454 = load %struct.imx_port*, %struct.imx_port** %7, align 8
  %455 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %454, i32 0, i32 0
  %456 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %457 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %456, i32 0, i32 0
  %458 = load i32, i32* %457, align 4
  %459 = call i64 @UART_ENABLE_MS(%struct.TYPE_5__* %455, i32 %458)
  %460 = icmp ne i64 %459, 0
  br i1 %460, label %461, label %465

461:                                              ; preds = %449
  %462 = load %struct.imx_port*, %struct.imx_port** %7, align 8
  %463 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %462, i32 0, i32 0
  %464 = call i32 @imx_uart_enable_ms(%struct.TYPE_5__* %463)
  br label %465

465:                                              ; preds = %461, %449
  %466 = load %struct.imx_port*, %struct.imx_port** %7, align 8
  %467 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %466, i32 0, i32 0
  %468 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %467, i32 0, i32 3
  %469 = load i64, i64* %8, align 8
  %470 = call i32 @spin_unlock_irqrestore(i32* %468, i64 %469)
  ret void
}

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @uart_get_baud_rate(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*, i32, i32) #1

declare dso_local i32 @uart_get_divisor(%struct.uart_port*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i8* @imx_uart_readl(%struct.imx_port*, i32) #1

declare dso_local i32 @imx_uart_rts_active(%struct.imx_port*, i32*) #1

declare dso_local i32 @imx_uart_rts_inactive(%struct.imx_port*, i32*) #1

declare dso_local i32 @uart_update_timeout(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @rational_best_approximation(i32, i32, i32, i32, i64*, i64*) #1

declare dso_local i32 @do_div(i64, i64) #1

declare dso_local i32 @tty_termios_encode_baud_rate(%struct.ktermios*, i32, i32) #1

declare dso_local i32 @UFCR_RFDIV_REG(i64) #1

declare dso_local i32 @imx_uart_writel(%struct.imx_port*, i32, i32) #1

declare dso_local i32 @imx_uart_is_imx1(%struct.imx_port*) #1

declare dso_local i64 @UART_ENABLE_MS(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @imx_uart_enable_ms(%struct.TYPE_5__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
