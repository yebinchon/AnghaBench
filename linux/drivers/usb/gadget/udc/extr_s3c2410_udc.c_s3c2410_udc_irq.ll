; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_s3c2410_udc.c_s3c2410_udc_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_s3c2410_udc.c_s3c2410_udc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c2410_udc = type { i32, %struct.TYPE_9__*, i8*, %struct.TYPE_8__, %struct.TYPE_7__*, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)* }

@S3C2410_UDC_USB_INT_REG = common dso_local global i32 0, align 4
@S3C2410_UDC_EP_INT_REG = common dso_local global i32 0, align 4
@S3C2410_UDC_INDEX_REG = common dso_local global i32 0, align 4
@S3C2410_UDC_PWR_REG = common dso_local global i32 0, align 4
@base_addr = common dso_local global i32 0, align 4
@S3C2410_UDC_INDEX_EP0 = common dso_local global i32 0, align 4
@S3C2410_UDC_IN_CSR1_REG = common dso_local global i32 0, align 4
@DEBUG_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"usbs=%02x, usbds=%02x, pwr=%02x ep0csr=%02x\0A\00", align 1
@S3C2410_UDC_USBINT_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"USB reset csr %x pwr %x\0A\00", align 1
@USB_SPEED_UNKNOWN = common dso_local global i64 0, align 8
@S3C2410_UDC_MAXP_REG = common dso_local global i32 0, align 4
@EP0_IDLE = common dso_local global i8* null, align 8
@USB_SPEED_FULL = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@S3C2410_UDC_USBINT_RESUME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"USB resume\0A\00", align 1
@S3C2410_UDC_USBINT_SUSPEND = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"USB suspend\0A\00", align 1
@S3C2410_UDC_INT_EP0 = common dso_local global i32 0, align 4
@DEBUG_VERBOSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"USB ep0 irq\0A\00", align 1
@S3C2410_ENDPOINTS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"USB ep%d irq\0A\00", align 1
@S3C2410_UDC_OUT_CSR1_REG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"irq: %d s3c2410_udc_done.\0A\00", align 1
@IRQ_USBD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @s3c2410_udc_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c2410_udc_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.s3c2410_udc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to %struct.s3c2410_udc*
  store %struct.s3c2410_udc* %17, %struct.s3c2410_udc** %6, align 8
  %18 = load %struct.s3c2410_udc*, %struct.s3c2410_udc** %6, align 8
  %19 = getelementptr inbounds %struct.s3c2410_udc, %struct.s3c2410_udc* %18, i32 0, i32 0
  %20 = load i64, i64* %14, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.s3c2410_udc*, %struct.s3c2410_udc** %6, align 8
  %23 = getelementptr inbounds %struct.s3c2410_udc, %struct.s3c2410_udc* %22, i32 0, i32 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = icmp ne %struct.TYPE_7__* %24, null
  br i1 %25, label %35, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @S3C2410_UDC_USB_INT_REG, align 4
  %28 = call i32 @udc_read(i32 %27)
  %29 = load i32, i32* @S3C2410_UDC_USB_INT_REG, align 4
  %30 = call i32 @udc_write(i32 %28, i32 %29)
  %31 = load i32, i32* @S3C2410_UDC_EP_INT_REG, align 4
  %32 = call i32 @udc_read(i32 %31)
  %33 = load i32, i32* @S3C2410_UDC_EP_INT_REG, align 4
  %34 = call i32 @udc_write(i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %26, %2
  %36 = load i32, i32* @S3C2410_UDC_INDEX_REG, align 4
  %37 = call i32 @udc_read(i32 %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* @S3C2410_UDC_USB_INT_REG, align 4
  %39 = call i32 @udc_read(i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* @S3C2410_UDC_EP_INT_REG, align 4
  %41 = call i32 @udc_read(i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* @S3C2410_UDC_PWR_REG, align 4
  %43 = call i32 @udc_read(i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* @base_addr, align 4
  %45 = load i32, i32* @S3C2410_UDC_INDEX_EP0, align 4
  %46 = load i32, i32* @S3C2410_UDC_INDEX_REG, align 4
  %47 = call i32 @udc_writeb(i32 %44, i32 %45, i32 %46)
  %48 = load i32, i32* @S3C2410_UDC_IN_CSR1_REG, align 4
  %49 = call i32 @udc_read(i32 %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* @DEBUG_NORMAL, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i32 (i32, i8*, ...) @dprintk(i32 %50, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %52, i32 %53, i32 %54)
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @S3C2410_UDC_USBINT_RESET, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %102

60:                                               ; preds = %35
  %61 = load i32, i32* @DEBUG_NORMAL, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 (i32, i8*, ...) @dprintk(i32 %61, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %63)
  %65 = load i64, i64* @USB_SPEED_UNKNOWN, align 8
  %66 = load %struct.s3c2410_udc*, %struct.s3c2410_udc** %6, align 8
  %67 = getelementptr inbounds %struct.s3c2410_udc, %struct.s3c2410_udc* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  store i64 %65, i64* %68, align 8
  %69 = load i32, i32* @S3C2410_UDC_INDEX_REG, align 4
  %70 = call i32 @udc_write(i32 0, i32 %69)
  %71 = load %struct.s3c2410_udc*, %struct.s3c2410_udc** %6, align 8
  %72 = getelementptr inbounds %struct.s3c2410_udc, %struct.s3c2410_udc* %71, i32 0, i32 1
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i64 0
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, 2047
  %79 = ashr i32 %78, 3
  %80 = load i32, i32* @S3C2410_UDC_MAXP_REG, align 4
  %81 = call i32 @udc_write(i32 %79, i32 %80)
  %82 = load %struct.s3c2410_udc*, %struct.s3c2410_udc** %6, align 8
  %83 = getelementptr inbounds %struct.s3c2410_udc, %struct.s3c2410_udc* %82, i32 0, i32 5
  store i64 0, i64* %83, align 8
  %84 = load i8*, i8** @EP0_IDLE, align 8
  %85 = load %struct.s3c2410_udc*, %struct.s3c2410_udc** %6, align 8
  %86 = getelementptr inbounds %struct.s3c2410_udc, %struct.s3c2410_udc* %85, i32 0, i32 2
  store i8* %84, i8** %86, align 8
  %87 = load i64, i64* @USB_SPEED_FULL, align 8
  %88 = load %struct.s3c2410_udc*, %struct.s3c2410_udc** %6, align 8
  %89 = getelementptr inbounds %struct.s3c2410_udc, %struct.s3c2410_udc* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  store i64 %87, i64* %90, align 8
  %91 = load i32, i32* @S3C2410_UDC_USBINT_RESET, align 4
  %92 = load i32, i32* @S3C2410_UDC_USB_INT_REG, align 4
  %93 = call i32 @udc_write(i32 %91, i32 %92)
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* @S3C2410_UDC_INDEX_REG, align 4
  %96 = call i32 @udc_write(i32 %94, i32 %95)
  %97 = load %struct.s3c2410_udc*, %struct.s3c2410_udc** %6, align 8
  %98 = getelementptr inbounds %struct.s3c2410_udc, %struct.s3c2410_udc* %97, i32 0, i32 0
  %99 = load i64, i64* %14, align 8
  %100 = call i32 @spin_unlock_irqrestore(i32* %98, i64 %99)
  %101 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %101, i32* %3, align 4
  br label %281

102:                                              ; preds = %35
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @S3C2410_UDC_USBINT_RESUME, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %141

107:                                              ; preds = %102
  %108 = load i32, i32* @DEBUG_NORMAL, align 4
  %109 = call i32 (i32, i8*, ...) @dprintk(i32 %108, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %110 = load i32, i32* @S3C2410_UDC_USBINT_RESUME, align 4
  %111 = load i32, i32* @S3C2410_UDC_USB_INT_REG, align 4
  %112 = call i32 @udc_write(i32 %110, i32 %111)
  %113 = load %struct.s3c2410_udc*, %struct.s3c2410_udc** %6, align 8
  %114 = getelementptr inbounds %struct.s3c2410_udc, %struct.s3c2410_udc* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @USB_SPEED_UNKNOWN, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %140

119:                                              ; preds = %107
  %120 = load %struct.s3c2410_udc*, %struct.s3c2410_udc** %6, align 8
  %121 = getelementptr inbounds %struct.s3c2410_udc, %struct.s3c2410_udc* %120, i32 0, i32 4
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %121, align 8
  %123 = icmp ne %struct.TYPE_7__* %122, null
  br i1 %123, label %124, label %140

124:                                              ; preds = %119
  %125 = load %struct.s3c2410_udc*, %struct.s3c2410_udc** %6, align 8
  %126 = getelementptr inbounds %struct.s3c2410_udc, %struct.s3c2410_udc* %125, i32 0, i32 4
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 1
  %129 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %128, align 8
  %130 = icmp ne i32 (%struct.TYPE_8__*)* %129, null
  br i1 %130, label %131, label %140

131:                                              ; preds = %124
  %132 = load %struct.s3c2410_udc*, %struct.s3c2410_udc** %6, align 8
  %133 = getelementptr inbounds %struct.s3c2410_udc, %struct.s3c2410_udc* %132, i32 0, i32 4
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 1
  %136 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %135, align 8
  %137 = load %struct.s3c2410_udc*, %struct.s3c2410_udc** %6, align 8
  %138 = getelementptr inbounds %struct.s3c2410_udc, %struct.s3c2410_udc* %137, i32 0, i32 3
  %139 = call i32 %136(%struct.TYPE_8__* %138)
  br label %140

140:                                              ; preds = %131, %124, %119, %107
  br label %141

141:                                              ; preds = %140, %102
  %142 = load i32, i32* %7, align 4
  %143 = load i32, i32* @S3C2410_UDC_USBINT_SUSPEND, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %183

146:                                              ; preds = %141
  %147 = load i32, i32* @DEBUG_NORMAL, align 4
  %148 = call i32 (i32, i8*, ...) @dprintk(i32 %147, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %149 = load i32, i32* @S3C2410_UDC_USBINT_SUSPEND, align 4
  %150 = load i32, i32* @S3C2410_UDC_USB_INT_REG, align 4
  %151 = call i32 @udc_write(i32 %149, i32 %150)
  %152 = load %struct.s3c2410_udc*, %struct.s3c2410_udc** %6, align 8
  %153 = getelementptr inbounds %struct.s3c2410_udc, %struct.s3c2410_udc* %152, i32 0, i32 3
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @USB_SPEED_UNKNOWN, align 8
  %157 = icmp ne i64 %155, %156
  br i1 %157, label %158, label %179

158:                                              ; preds = %146
  %159 = load %struct.s3c2410_udc*, %struct.s3c2410_udc** %6, align 8
  %160 = getelementptr inbounds %struct.s3c2410_udc, %struct.s3c2410_udc* %159, i32 0, i32 4
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %160, align 8
  %162 = icmp ne %struct.TYPE_7__* %161, null
  br i1 %162, label %163, label %179

163:                                              ; preds = %158
  %164 = load %struct.s3c2410_udc*, %struct.s3c2410_udc** %6, align 8
  %165 = getelementptr inbounds %struct.s3c2410_udc, %struct.s3c2410_udc* %164, i32 0, i32 4
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 0
  %168 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %167, align 8
  %169 = icmp ne i32 (%struct.TYPE_8__*)* %168, null
  br i1 %169, label %170, label %179

170:                                              ; preds = %163
  %171 = load %struct.s3c2410_udc*, %struct.s3c2410_udc** %6, align 8
  %172 = getelementptr inbounds %struct.s3c2410_udc, %struct.s3c2410_udc* %171, i32 0, i32 4
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 0
  %175 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %174, align 8
  %176 = load %struct.s3c2410_udc*, %struct.s3c2410_udc** %6, align 8
  %177 = getelementptr inbounds %struct.s3c2410_udc, %struct.s3c2410_udc* %176, i32 0, i32 3
  %178 = call i32 %175(%struct.TYPE_8__* %177)
  br label %179

179:                                              ; preds = %170, %163, %158, %146
  %180 = load i8*, i8** @EP0_IDLE, align 8
  %181 = load %struct.s3c2410_udc*, %struct.s3c2410_udc** %6, align 8
  %182 = getelementptr inbounds %struct.s3c2410_udc, %struct.s3c2410_udc* %181, i32 0, i32 2
  store i8* %180, i8** %182, align 8
  br label %183

183:                                              ; preds = %179, %141
  %184 = load i32, i32* %8, align 4
  %185 = load i32, i32* @S3C2410_UDC_INT_EP0, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %196

188:                                              ; preds = %183
  %189 = load i32, i32* @DEBUG_VERBOSE, align 4
  %190 = call i32 (i32, i8*, ...) @dprintk(i32 %189, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %191 = load i32, i32* @S3C2410_UDC_INT_EP0, align 4
  %192 = load i32, i32* @S3C2410_UDC_EP_INT_REG, align 4
  %193 = call i32 @udc_write(i32 %191, i32 %192)
  %194 = load %struct.s3c2410_udc*, %struct.s3c2410_udc** %6, align 8
  %195 = call i32 @s3c2410_udc_handle_ep0(%struct.s3c2410_udc* %194)
  br label %196

196:                                              ; preds = %188, %183
  store i32 1, i32* %11, align 4
  br label %197

197:                                              ; preds = %223, %196
  %198 = load i32, i32* %11, align 4
  %199 = load i32, i32* @S3C2410_ENDPOINTS, align 4
  %200 = icmp slt i32 %198, %199
  br i1 %200, label %201, label %226

201:                                              ; preds = %197
  %202 = load i32, i32* %11, align 4
  %203 = shl i32 1, %202
  store i32 %203, i32* %15, align 4
  %204 = load i32, i32* %8, align 4
  %205 = load i32, i32* %15, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %222

208:                                              ; preds = %201
  %209 = load i32, i32* @DEBUG_VERBOSE, align 4
  %210 = load i32, i32* %11, align 4
  %211 = call i32 (i32, i8*, ...) @dprintk(i32 %209, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %210)
  %212 = load i32, i32* %15, align 4
  %213 = load i32, i32* @S3C2410_UDC_EP_INT_REG, align 4
  %214 = call i32 @udc_write(i32 %212, i32 %213)
  %215 = load %struct.s3c2410_udc*, %struct.s3c2410_udc** %6, align 8
  %216 = getelementptr inbounds %struct.s3c2410_udc, %struct.s3c2410_udc* %215, i32 0, i32 1
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** %216, align 8
  %218 = load i32, i32* %11, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i64 %219
  %221 = call i32 @s3c2410_udc_handle_ep(%struct.TYPE_9__* %220)
  br label %222

222:                                              ; preds = %208, %201
  br label %223

223:                                              ; preds = %222
  %224 = load i32, i32* %11, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %11, align 4
  br label %197

226:                                              ; preds = %197
  %227 = load i32, i32* %7, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %269, label %229

229:                                              ; preds = %226
  %230 = load i32, i32* %8, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %269, label %232

232:                                              ; preds = %229
  %233 = load i32, i32* %9, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %269, label %235

235:                                              ; preds = %232
  %236 = load i32, i32* %10, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %269, label %238

238:                                              ; preds = %235
  store i32 1, i32* %11, align 4
  br label %239

239:                                              ; preds = %265, %238
  %240 = load i32, i32* %11, align 4
  %241 = load i32, i32* @S3C2410_ENDPOINTS, align 4
  %242 = icmp slt i32 %240, %241
  br i1 %242, label %243, label %268

243:                                              ; preds = %239
  %244 = load i32, i32* @S3C2410_UDC_INDEX_REG, align 4
  %245 = call i32 @udc_read(i32 %244)
  store i32 %245, i32* %13, align 4
  %246 = load i32, i32* %11, align 4
  %247 = load i32, i32* @S3C2410_UDC_INDEX_REG, align 4
  %248 = call i32 @udc_write(i32 %246, i32 %247)
  %249 = load i32, i32* @S3C2410_UDC_OUT_CSR1_REG, align 4
  %250 = call i32 @udc_read(i32 %249)
  %251 = and i32 %250, 1
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %261

253:                                              ; preds = %243
  %254 = load %struct.s3c2410_udc*, %struct.s3c2410_udc** %6, align 8
  %255 = getelementptr inbounds %struct.s3c2410_udc, %struct.s3c2410_udc* %254, i32 0, i32 1
  %256 = load %struct.TYPE_9__*, %struct.TYPE_9__** %255, align 8
  %257 = load i32, i32* %11, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %256, i64 %258
  %260 = call i32 @s3c2410_udc_handle_ep(%struct.TYPE_9__* %259)
  br label %261

261:                                              ; preds = %253, %243
  %262 = load i32, i32* %13, align 4
  %263 = load i32, i32* @S3C2410_UDC_INDEX_REG, align 4
  %264 = call i32 @udc_write(i32 %262, i32 %263)
  br label %265

265:                                              ; preds = %261
  %266 = load i32, i32* %11, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %11, align 4
  br label %239

268:                                              ; preds = %239
  br label %269

269:                                              ; preds = %268, %235, %232, %229, %226
  %270 = load i32, i32* @DEBUG_VERBOSE, align 4
  %271 = load i32, i32* @IRQ_USBD, align 4
  %272 = call i32 (i32, i8*, ...) @dprintk(i32 %270, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %271)
  %273 = load i32, i32* %12, align 4
  %274 = load i32, i32* @S3C2410_UDC_INDEX_REG, align 4
  %275 = call i32 @udc_write(i32 %273, i32 %274)
  %276 = load %struct.s3c2410_udc*, %struct.s3c2410_udc** %6, align 8
  %277 = getelementptr inbounds %struct.s3c2410_udc, %struct.s3c2410_udc* %276, i32 0, i32 0
  %278 = load i64, i64* %14, align 8
  %279 = call i32 @spin_unlock_irqrestore(i32* %277, i64 %278)
  %280 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %280, i32* %3, align 4
  br label %281

281:                                              ; preds = %269, %60
  %282 = load i32, i32* %3, align 4
  ret i32 %282
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @udc_write(i32, i32) #1

declare dso_local i32 @udc_read(i32) #1

declare dso_local i32 @udc_writeb(i32, i32, i32) #1

declare dso_local i32 @dprintk(i32, i8*, ...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @s3c2410_udc_handle_ep0(%struct.s3c2410_udc*) #1

declare dso_local i32 @s3c2410_udc_handle_ep(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
