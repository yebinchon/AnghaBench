; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_at91_udc.c_at91_udc_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_at91_udc.c_at91_udc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at91_udc = type { i32, i32, %struct.at91_ep*, %struct.TYPE_5__, %struct.TYPE_4__*, i64, i32 }
%struct.at91_ep = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)* }

@AT91_UDP_ISR = common dso_local global i32 0, align 4
@AT91_UDP_IMR = common dso_local global i32 0, align 4
@AT91_UDP_ENDBUSRES = common dso_local global i32 0, align 4
@AT91_UDP_IDR = common dso_local global i32 0, align 4
@MINIMUS_INTERRUPTUS = common dso_local global i32 0, align 4
@AT91_UDP_IER = common dso_local global i32 0, align 4
@AT91_UDP_ICR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"end bus reset\0A\00", align 1
@AT91_UDP_EPEDS = common dso_local global i32 0, align 4
@AT91_UDP_EPTYPE_CTRL = common dso_local global i32 0, align 4
@USB_SPEED_FULL = common dso_local global i32 0, align 4
@AT91_UDP_RXSUSP = common dso_local global i32 0, align 4
@AT91_UDP_RXRSM = common dso_local global i32 0, align 4
@NUM_ENDPOINTS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @at91_udc_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91_udc_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.at91_udc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.at91_ep*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.at91_udc*
  store %struct.at91_udc* %14, %struct.at91_udc** %5, align 8
  store i32 5, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %15 = load %struct.at91_udc*, %struct.at91_udc** %5, align 8
  %16 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %15, i32 0, i32 1
  %17 = load i64, i64* %8, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.at91_udc*, %struct.at91_udc** %5, align 8
  %20 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load %struct.at91_udc*, %struct.at91_udc** %5, align 8
  %25 = call i32 @clk_on(%struct.at91_udc* %24)
  store i32 1, i32* %7, align 4
  br label %26

26:                                               ; preds = %23, %2
  br label %27

27:                                               ; preds = %228, %161, %108, %26
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %6, align 4
  %30 = icmp ne i32 %28, 0
  br i1 %30, label %31, label %229

31:                                               ; preds = %27
  %32 = load %struct.at91_udc*, %struct.at91_udc** %5, align 8
  %33 = load i32, i32* @AT91_UDP_ISR, align 4
  %34 = call i32 @at91_udp_read(%struct.at91_udc* %32, i32 %33)
  %35 = load %struct.at91_udc*, %struct.at91_udc** %5, align 8
  %36 = load i32, i32* @AT91_UDP_IMR, align 4
  %37 = call i32 @at91_udp_read(%struct.at91_udc* %35, i32 %36)
  %38 = and i32 %34, %37
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %31
  br label %229

42:                                               ; preds = %31
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @AT91_UDP_ENDBUSRES, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %86

47:                                               ; preds = %42
  %48 = load %struct.at91_udc*, %struct.at91_udc** %5, align 8
  %49 = load i32, i32* @AT91_UDP_IDR, align 4
  %50 = load i32, i32* @MINIMUS_INTERRUPTUS, align 4
  %51 = xor i32 %50, -1
  %52 = call i32 @at91_udp_write(%struct.at91_udc* %48, i32 %49, i32 %51)
  %53 = load %struct.at91_udc*, %struct.at91_udc** %5, align 8
  %54 = load i32, i32* @AT91_UDP_IER, align 4
  %55 = load i32, i32* @MINIMUS_INTERRUPTUS, align 4
  %56 = call i32 @at91_udp_write(%struct.at91_udc* %53, i32 %54, i32 %55)
  %57 = load %struct.at91_udc*, %struct.at91_udc** %5, align 8
  %58 = load i32, i32* @AT91_UDP_ICR, align 4
  %59 = load i32, i32* @AT91_UDP_ENDBUSRES, align 4
  %60 = call i32 @at91_udp_write(%struct.at91_udc* %57, i32 %58, i32 %59)
  %61 = load %struct.at91_udc*, %struct.at91_udc** %5, align 8
  %62 = load i32, i32* @AT91_UDP_ICR, align 4
  %63 = load i32, i32* @AT91_UDP_ENDBUSRES, align 4
  %64 = call i32 @at91_udp_write(%struct.at91_udc* %61, i32 %62, i32 %63)
  %65 = call i32 @VDBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %66 = load %struct.at91_udc*, %struct.at91_udc** %5, align 8
  %67 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %66, i32 0, i32 5
  store i64 0, i64* %67, align 8
  %68 = load %struct.at91_udc*, %struct.at91_udc** %5, align 8
  %69 = call i32 @reset_gadget(%struct.at91_udc* %68)
  %70 = load %struct.at91_udc*, %struct.at91_udc** %5, align 8
  %71 = call i32 @AT91_UDP_CSR(i32 0)
  %72 = load i32, i32* @AT91_UDP_EPEDS, align 4
  %73 = load i32, i32* @AT91_UDP_EPTYPE_CTRL, align 4
  %74 = or i32 %72, %73
  %75 = call i32 @at91_udp_write(%struct.at91_udc* %70, i32 %71, i32 %74)
  %76 = load i32, i32* @USB_SPEED_FULL, align 4
  %77 = load %struct.at91_udc*, %struct.at91_udc** %5, align 8
  %78 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  store i32 %76, i32* %79, align 8
  %80 = load %struct.at91_udc*, %struct.at91_udc** %5, align 8
  %81 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %80, i32 0, i32 0
  store i32 0, i32* %81, align 8
  %82 = load %struct.at91_udc*, %struct.at91_udc** %5, align 8
  %83 = load i32, i32* @AT91_UDP_IER, align 4
  %84 = call i32 @AT91_UDP_EP(i32 0)
  %85 = call i32 @at91_udp_write(%struct.at91_udc* %82, i32 %83, i32 %84)
  br label %228

86:                                               ; preds = %42
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @AT91_UDP_RXSUSP, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %139

91:                                               ; preds = %86
  %92 = load %struct.at91_udc*, %struct.at91_udc** %5, align 8
  %93 = load i32, i32* @AT91_UDP_IDR, align 4
  %94 = load i32, i32* @AT91_UDP_RXSUSP, align 4
  %95 = call i32 @at91_udp_write(%struct.at91_udc* %92, i32 %93, i32 %94)
  %96 = load %struct.at91_udc*, %struct.at91_udc** %5, align 8
  %97 = load i32, i32* @AT91_UDP_IER, align 4
  %98 = load i32, i32* @AT91_UDP_RXRSM, align 4
  %99 = call i32 @at91_udp_write(%struct.at91_udc* %96, i32 %97, i32 %98)
  %100 = load %struct.at91_udc*, %struct.at91_udc** %5, align 8
  %101 = load i32, i32* @AT91_UDP_ICR, align 4
  %102 = load i32, i32* @AT91_UDP_RXSUSP, align 4
  %103 = call i32 @at91_udp_write(%struct.at91_udc* %100, i32 %101, i32 %102)
  %104 = load %struct.at91_udc*, %struct.at91_udc** %5, align 8
  %105 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %91
  br label %27

109:                                              ; preds = %91
  %110 = load %struct.at91_udc*, %struct.at91_udc** %5, align 8
  %111 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %110, i32 0, i32 0
  store i32 1, i32* %111, align 8
  %112 = load %struct.at91_udc*, %struct.at91_udc** %5, align 8
  %113 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %112, i32 0, i32 4
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = icmp ne %struct.TYPE_4__* %114, null
  br i1 %115, label %116, label %138

116:                                              ; preds = %109
  %117 = load %struct.at91_udc*, %struct.at91_udc** %5, align 8
  %118 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %117, i32 0, i32 4
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  %121 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %120, align 8
  %122 = icmp ne i32 (%struct.TYPE_5__*)* %121, null
  br i1 %122, label %123, label %138

123:                                              ; preds = %116
  %124 = load %struct.at91_udc*, %struct.at91_udc** %5, align 8
  %125 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %124, i32 0, i32 1
  %126 = call i32 @spin_unlock(i32* %125)
  %127 = load %struct.at91_udc*, %struct.at91_udc** %5, align 8
  %128 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %127, i32 0, i32 4
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 1
  %131 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %130, align 8
  %132 = load %struct.at91_udc*, %struct.at91_udc** %5, align 8
  %133 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %132, i32 0, i32 3
  %134 = call i32 %131(%struct.TYPE_5__* %133)
  %135 = load %struct.at91_udc*, %struct.at91_udc** %5, align 8
  %136 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %135, i32 0, i32 1
  %137 = call i32 @spin_lock(i32* %136)
  br label %138

138:                                              ; preds = %123, %116, %109
  br label %227

139:                                              ; preds = %86
  %140 = load i32, i32* %9, align 4
  %141 = load i32, i32* @AT91_UDP_RXRSM, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %192

144:                                              ; preds = %139
  %145 = load %struct.at91_udc*, %struct.at91_udc** %5, align 8
  %146 = load i32, i32* @AT91_UDP_IDR, align 4
  %147 = load i32, i32* @AT91_UDP_RXRSM, align 4
  %148 = call i32 @at91_udp_write(%struct.at91_udc* %145, i32 %146, i32 %147)
  %149 = load %struct.at91_udc*, %struct.at91_udc** %5, align 8
  %150 = load i32, i32* @AT91_UDP_IER, align 4
  %151 = load i32, i32* @AT91_UDP_RXSUSP, align 4
  %152 = call i32 @at91_udp_write(%struct.at91_udc* %149, i32 %150, i32 %151)
  %153 = load %struct.at91_udc*, %struct.at91_udc** %5, align 8
  %154 = load i32, i32* @AT91_UDP_ICR, align 4
  %155 = load i32, i32* @AT91_UDP_RXRSM, align 4
  %156 = call i32 @at91_udp_write(%struct.at91_udc* %153, i32 %154, i32 %155)
  %157 = load %struct.at91_udc*, %struct.at91_udc** %5, align 8
  %158 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %162, label %161

161:                                              ; preds = %144
  br label %27

162:                                              ; preds = %144
  %163 = load %struct.at91_udc*, %struct.at91_udc** %5, align 8
  %164 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %163, i32 0, i32 0
  store i32 0, i32* %164, align 8
  %165 = load %struct.at91_udc*, %struct.at91_udc** %5, align 8
  %166 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %165, i32 0, i32 4
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %166, align 8
  %168 = icmp ne %struct.TYPE_4__* %167, null
  br i1 %168, label %169, label %191

169:                                              ; preds = %162
  %170 = load %struct.at91_udc*, %struct.at91_udc** %5, align 8
  %171 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %170, i32 0, i32 4
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  %174 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %173, align 8
  %175 = icmp ne i32 (%struct.TYPE_5__*)* %174, null
  br i1 %175, label %176, label %191

176:                                              ; preds = %169
  %177 = load %struct.at91_udc*, %struct.at91_udc** %5, align 8
  %178 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %177, i32 0, i32 1
  %179 = call i32 @spin_unlock(i32* %178)
  %180 = load %struct.at91_udc*, %struct.at91_udc** %5, align 8
  %181 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %180, i32 0, i32 4
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 0
  %184 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %183, align 8
  %185 = load %struct.at91_udc*, %struct.at91_udc** %5, align 8
  %186 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %185, i32 0, i32 3
  %187 = call i32 %184(%struct.TYPE_5__* %186)
  %188 = load %struct.at91_udc*, %struct.at91_udc** %5, align 8
  %189 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %188, i32 0, i32 1
  %190 = call i32 @spin_lock(i32* %189)
  br label %191

191:                                              ; preds = %176, %169, %162
  br label %226

192:                                              ; preds = %139
  store i32 1, i32* %11, align 4
  %193 = load %struct.at91_udc*, %struct.at91_udc** %5, align 8
  %194 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %193, i32 0, i32 2
  %195 = load %struct.at91_ep*, %struct.at91_ep** %194, align 8
  %196 = getelementptr inbounds %struct.at91_ep, %struct.at91_ep* %195, i64 1
  store %struct.at91_ep* %196, %struct.at91_ep** %12, align 8
  %197 = load i32, i32* %9, align 4
  %198 = load i32, i32* %11, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %192
  %202 = load %struct.at91_udc*, %struct.at91_udc** %5, align 8
  %203 = call i32 @handle_ep0(%struct.at91_udc* %202)
  br label %204

204:                                              ; preds = %201, %192
  store i32 1, i32* %10, align 4
  br label %205

205:                                              ; preds = %222, %204
  %206 = load i32, i32* %10, align 4
  %207 = load i32, i32* @NUM_ENDPOINTS, align 4
  %208 = icmp slt i32 %206, %207
  br i1 %208, label %209, label %225

209:                                              ; preds = %205
  %210 = load i32, i32* %11, align 4
  %211 = shl i32 %210, 1
  store i32 %211, i32* %11, align 4
  %212 = load i32, i32* %9, align 4
  %213 = load i32, i32* %11, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %219

216:                                              ; preds = %209
  %217 = load %struct.at91_ep*, %struct.at91_ep** %12, align 8
  %218 = call i32 @handle_ep(%struct.at91_ep* %217)
  br label %219

219:                                              ; preds = %216, %209
  %220 = load %struct.at91_ep*, %struct.at91_ep** %12, align 8
  %221 = getelementptr inbounds %struct.at91_ep, %struct.at91_ep* %220, i32 1
  store %struct.at91_ep* %221, %struct.at91_ep** %12, align 8
  br label %222

222:                                              ; preds = %219
  %223 = load i32, i32* %10, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %10, align 4
  br label %205

225:                                              ; preds = %205
  br label %226

226:                                              ; preds = %225, %191
  br label %227

227:                                              ; preds = %226, %138
  br label %228

228:                                              ; preds = %227, %47
  br label %27

229:                                              ; preds = %41, %27
  %230 = load i32, i32* %7, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %229
  %233 = load %struct.at91_udc*, %struct.at91_udc** %5, align 8
  %234 = call i32 @clk_off(%struct.at91_udc* %233)
  br label %235

235:                                              ; preds = %232, %229
  %236 = load %struct.at91_udc*, %struct.at91_udc** %5, align 8
  %237 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %236, i32 0, i32 1
  %238 = load i64, i64* %8, align 8
  %239 = call i32 @spin_unlock_irqrestore(i32* %237, i64 %238)
  %240 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %240
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @clk_on(%struct.at91_udc*) #1

declare dso_local i32 @at91_udp_read(%struct.at91_udc*, i32) #1

declare dso_local i32 @at91_udp_write(%struct.at91_udc*, i32, i32) #1

declare dso_local i32 @VDBG(i8*) #1

declare dso_local i32 @reset_gadget(%struct.at91_udc*) #1

declare dso_local i32 @AT91_UDP_CSR(i32) #1

declare dso_local i32 @AT91_UDP_EP(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @handle_ep0(%struct.at91_udc*) #1

declare dso_local i32 @handle_ep(%struct.at91_ep*) #1

declare dso_local i32 @clk_off(%struct.at91_udc*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
