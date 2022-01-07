; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbdux.c_usbdux_alloc_usb_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbdux.c_usbdux_alloc_usb_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.usbdux_private* }
%struct.usbdux_private = type { i32, i32, i8*, %struct.urb*, i64, %struct.urb**, %struct.urb**, i8*, i8*, i8* }
%struct.urb = type { i32, i32, i8*, %struct.TYPE_2__*, i8*, i32, i8*, i32, %struct.comedi_device*, %struct.usb_device* }
%struct.TYPE_2__ = type { i8*, i64 }
%struct.usb_device = type { i32 }

@SIZEOFDUXBUFFER = common dso_local global i8* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@SIZEINBUF = common dso_local global i8* null, align 8
@SIZEINSNBUF = common dso_local global i8* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@URB_ISO_ASAP = common dso_local global i8* null, align 8
@usbduxsub_ai_isoc_irq = common dso_local global i32 0, align 4
@SIZEOUTBUF = common dso_local global i8* null, align 8
@usbduxsub_ao_isoc_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*)* @usbdux_alloc_usb_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbdux_alloc_usb_buffers(%struct.comedi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.usbdux_private*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  %8 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %9 = call %struct.usb_device* @comedi_to_usb_dev(%struct.comedi_device* %8)
  store %struct.usb_device* %9, %struct.usb_device** %4, align 8
  %10 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 0
  %12 = load %struct.usbdux_private*, %struct.usbdux_private** %11, align 8
  store %struct.usbdux_private* %12, %struct.usbdux_private** %5, align 8
  %13 = load i8*, i8** @SIZEOFDUXBUFFER, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i8* @kzalloc(i8* %13, i32 %14)
  %16 = load %struct.usbdux_private*, %struct.usbdux_private** %5, align 8
  %17 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %16, i32 0, i32 9
  store i8* %15, i8** %17, align 8
  %18 = load i8*, i8** @SIZEINBUF, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i8* @kzalloc(i8* %18, i32 %19)
  %21 = load %struct.usbdux_private*, %struct.usbdux_private** %5, align 8
  %22 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %21, i32 0, i32 8
  store i8* %20, i8** %22, align 8
  %23 = load i8*, i8** @SIZEINSNBUF, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i8* @kzalloc(i8* %23, i32 %24)
  %26 = load %struct.usbdux_private*, %struct.usbdux_private** %5, align 8
  %27 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %26, i32 0, i32 7
  store i8* %25, i8** %27, align 8
  %28 = load %struct.usbdux_private*, %struct.usbdux_private** %5, align 8
  %29 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i8* @kcalloc(i32 %30, i32 8, i32 %31)
  %33 = bitcast i8* %32 to %struct.urb**
  %34 = load %struct.usbdux_private*, %struct.usbdux_private** %5, align 8
  %35 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %34, i32 0, i32 6
  store %struct.urb** %33, %struct.urb*** %35, align 8
  %36 = load %struct.usbdux_private*, %struct.usbdux_private** %5, align 8
  %37 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call i8* @kcalloc(i32 %38, i32 8, i32 %39)
  %41 = bitcast i8* %40 to %struct.urb**
  %42 = load %struct.usbdux_private*, %struct.usbdux_private** %5, align 8
  %43 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %42, i32 0, i32 5
  store %struct.urb** %41, %struct.urb*** %43, align 8
  %44 = load %struct.usbdux_private*, %struct.usbdux_private** %5, align 8
  %45 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %44, i32 0, i32 9
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %68

48:                                               ; preds = %1
  %49 = load %struct.usbdux_private*, %struct.usbdux_private** %5, align 8
  %50 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %49, i32 0, i32 8
  %51 = load i8*, i8** %50, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %68

53:                                               ; preds = %48
  %54 = load %struct.usbdux_private*, %struct.usbdux_private** %5, align 8
  %55 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %54, i32 0, i32 7
  %56 = load i8*, i8** %55, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %68

58:                                               ; preds = %53
  %59 = load %struct.usbdux_private*, %struct.usbdux_private** %5, align 8
  %60 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %59, i32 0, i32 6
  %61 = load %struct.urb**, %struct.urb*** %60, align 8
  %62 = icmp ne %struct.urb** %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load %struct.usbdux_private*, %struct.usbdux_private** %5, align 8
  %65 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %64, i32 0, i32 5
  %66 = load %struct.urb**, %struct.urb*** %65, align 8
  %67 = icmp ne %struct.urb** %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %63, %58, %53, %48, %1
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %257

71:                                               ; preds = %63
  store i32 0, i32* %7, align 4
  br label %72

72:                                               ; preds = %139, %71
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.usbdux_private*, %struct.usbdux_private** %5, align 8
  %75 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %142

78:                                               ; preds = %72
  %79 = load i32, i32* @GFP_KERNEL, align 4
  %80 = call %struct.urb* @usb_alloc_urb(i32 1, i32 %79)
  store %struct.urb* %80, %struct.urb** %6, align 8
  %81 = load %struct.urb*, %struct.urb** %6, align 8
  %82 = icmp ne %struct.urb* %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %78
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %2, align 4
  br label %257

86:                                               ; preds = %78
  %87 = load %struct.urb*, %struct.urb** %6, align 8
  %88 = load %struct.usbdux_private*, %struct.usbdux_private** %5, align 8
  %89 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %88, i32 0, i32 6
  %90 = load %struct.urb**, %struct.urb*** %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.urb*, %struct.urb** %90, i64 %92
  store %struct.urb* %87, %struct.urb** %93, align 8
  %94 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %95 = load %struct.urb*, %struct.urb** %6, align 8
  %96 = getelementptr inbounds %struct.urb, %struct.urb* %95, i32 0, i32 9
  store %struct.usb_device* %94, %struct.usb_device** %96, align 8
  %97 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %98 = load %struct.urb*, %struct.urb** %6, align 8
  %99 = getelementptr inbounds %struct.urb, %struct.urb* %98, i32 0, i32 8
  store %struct.comedi_device* %97, %struct.comedi_device** %99, align 8
  %100 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %101 = call i32 @usb_rcvisocpipe(%struct.usb_device* %100, i32 6)
  %102 = load %struct.urb*, %struct.urb** %6, align 8
  %103 = getelementptr inbounds %struct.urb, %struct.urb* %102, i32 0, i32 7
  store i32 %101, i32* %103, align 8
  %104 = load i8*, i8** @URB_ISO_ASAP, align 8
  %105 = load %struct.urb*, %struct.urb** %6, align 8
  %106 = getelementptr inbounds %struct.urb, %struct.urb* %105, i32 0, i32 6
  store i8* %104, i8** %106, align 8
  %107 = load i8*, i8** @SIZEINBUF, align 8
  %108 = load i32, i32* @GFP_KERNEL, align 4
  %109 = call i8* @kzalloc(i8* %107, i32 %108)
  %110 = load %struct.urb*, %struct.urb** %6, align 8
  %111 = getelementptr inbounds %struct.urb, %struct.urb* %110, i32 0, i32 2
  store i8* %109, i8** %111, align 8
  %112 = load %struct.urb*, %struct.urb** %6, align 8
  %113 = getelementptr inbounds %struct.urb, %struct.urb* %112, i32 0, i32 2
  %114 = load i8*, i8** %113, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %119, label %116

116:                                              ; preds = %86
  %117 = load i32, i32* @ENOMEM, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %2, align 4
  br label %257

119:                                              ; preds = %86
  %120 = load i32, i32* @usbduxsub_ai_isoc_irq, align 4
  %121 = load %struct.urb*, %struct.urb** %6, align 8
  %122 = getelementptr inbounds %struct.urb, %struct.urb* %121, i32 0, i32 5
  store i32 %120, i32* %122, align 8
  %123 = load %struct.urb*, %struct.urb** %6, align 8
  %124 = getelementptr inbounds %struct.urb, %struct.urb* %123, i32 0, i32 0
  store i32 1, i32* %124, align 8
  %125 = load i8*, i8** @SIZEINBUF, align 8
  %126 = load %struct.urb*, %struct.urb** %6, align 8
  %127 = getelementptr inbounds %struct.urb, %struct.urb* %126, i32 0, i32 4
  store i8* %125, i8** %127, align 8
  %128 = load %struct.urb*, %struct.urb** %6, align 8
  %129 = getelementptr inbounds %struct.urb, %struct.urb* %128, i32 0, i32 3
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i64 0
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 1
  store i64 0, i64* %132, align 8
  %133 = load i8*, i8** @SIZEINBUF, align 8
  %134 = load %struct.urb*, %struct.urb** %6, align 8
  %135 = getelementptr inbounds %struct.urb, %struct.urb* %134, i32 0, i32 3
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i64 0
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  store i8* %133, i8** %138, align 8
  br label %139

139:                                              ; preds = %119
  %140 = load i32, i32* %7, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %7, align 4
  br label %72

142:                                              ; preds = %72
  store i32 0, i32* %7, align 4
  br label %143

143:                                              ; preds = %221, %142
  %144 = load i32, i32* %7, align 4
  %145 = load %struct.usbdux_private*, %struct.usbdux_private** %5, align 8
  %146 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = icmp slt i32 %144, %147
  br i1 %148, label %149, label %224

149:                                              ; preds = %143
  %150 = load i32, i32* @GFP_KERNEL, align 4
  %151 = call %struct.urb* @usb_alloc_urb(i32 1, i32 %150)
  store %struct.urb* %151, %struct.urb** %6, align 8
  %152 = load %struct.urb*, %struct.urb** %6, align 8
  %153 = icmp ne %struct.urb* %152, null
  br i1 %153, label %157, label %154

154:                                              ; preds = %149
  %155 = load i32, i32* @ENOMEM, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %2, align 4
  br label %257

157:                                              ; preds = %149
  %158 = load %struct.urb*, %struct.urb** %6, align 8
  %159 = load %struct.usbdux_private*, %struct.usbdux_private** %5, align 8
  %160 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %159, i32 0, i32 5
  %161 = load %struct.urb**, %struct.urb*** %160, align 8
  %162 = load i32, i32* %7, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.urb*, %struct.urb** %161, i64 %163
  store %struct.urb* %158, %struct.urb** %164, align 8
  %165 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %166 = load %struct.urb*, %struct.urb** %6, align 8
  %167 = getelementptr inbounds %struct.urb, %struct.urb* %166, i32 0, i32 9
  store %struct.usb_device* %165, %struct.usb_device** %167, align 8
  %168 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %169 = load %struct.urb*, %struct.urb** %6, align 8
  %170 = getelementptr inbounds %struct.urb, %struct.urb* %169, i32 0, i32 8
  store %struct.comedi_device* %168, %struct.comedi_device** %170, align 8
  %171 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %172 = call i32 @usb_sndisocpipe(%struct.usb_device* %171, i32 2)
  %173 = load %struct.urb*, %struct.urb** %6, align 8
  %174 = getelementptr inbounds %struct.urb, %struct.urb* %173, i32 0, i32 7
  store i32 %172, i32* %174, align 8
  %175 = load i8*, i8** @URB_ISO_ASAP, align 8
  %176 = load %struct.urb*, %struct.urb** %6, align 8
  %177 = getelementptr inbounds %struct.urb, %struct.urb* %176, i32 0, i32 6
  store i8* %175, i8** %177, align 8
  %178 = load i8*, i8** @SIZEOUTBUF, align 8
  %179 = load i32, i32* @GFP_KERNEL, align 4
  %180 = call i8* @kzalloc(i8* %178, i32 %179)
  %181 = load %struct.urb*, %struct.urb** %6, align 8
  %182 = getelementptr inbounds %struct.urb, %struct.urb* %181, i32 0, i32 2
  store i8* %180, i8** %182, align 8
  %183 = load %struct.urb*, %struct.urb** %6, align 8
  %184 = getelementptr inbounds %struct.urb, %struct.urb* %183, i32 0, i32 2
  %185 = load i8*, i8** %184, align 8
  %186 = icmp ne i8* %185, null
  br i1 %186, label %190, label %187

187:                                              ; preds = %157
  %188 = load i32, i32* @ENOMEM, align 4
  %189 = sub nsw i32 0, %188
  store i32 %189, i32* %2, align 4
  br label %257

190:                                              ; preds = %157
  %191 = load i32, i32* @usbduxsub_ao_isoc_irq, align 4
  %192 = load %struct.urb*, %struct.urb** %6, align 8
  %193 = getelementptr inbounds %struct.urb, %struct.urb* %192, i32 0, i32 5
  store i32 %191, i32* %193, align 8
  %194 = load %struct.urb*, %struct.urb** %6, align 8
  %195 = getelementptr inbounds %struct.urb, %struct.urb* %194, i32 0, i32 0
  store i32 1, i32* %195, align 8
  %196 = load i8*, i8** @SIZEOUTBUF, align 8
  %197 = load %struct.urb*, %struct.urb** %6, align 8
  %198 = getelementptr inbounds %struct.urb, %struct.urb* %197, i32 0, i32 4
  store i8* %196, i8** %198, align 8
  %199 = load %struct.urb*, %struct.urb** %6, align 8
  %200 = getelementptr inbounds %struct.urb, %struct.urb* %199, i32 0, i32 3
  %201 = load %struct.TYPE_2__*, %struct.TYPE_2__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i64 0
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 1
  store i64 0, i64* %203, align 8
  %204 = load i8*, i8** @SIZEOUTBUF, align 8
  %205 = load %struct.urb*, %struct.urb** %6, align 8
  %206 = getelementptr inbounds %struct.urb, %struct.urb* %205, i32 0, i32 3
  %207 = load %struct.TYPE_2__*, %struct.TYPE_2__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i64 0
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 0
  store i8* %204, i8** %209, align 8
  %210 = load %struct.usbdux_private*, %struct.usbdux_private** %5, align 8
  %211 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %210, i32 0, i32 4
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %190
  %215 = load %struct.urb*, %struct.urb** %6, align 8
  %216 = getelementptr inbounds %struct.urb, %struct.urb* %215, i32 0, i32 1
  store i32 8, i32* %216, align 4
  br label %220

217:                                              ; preds = %190
  %218 = load %struct.urb*, %struct.urb** %6, align 8
  %219 = getelementptr inbounds %struct.urb, %struct.urb* %218, i32 0, i32 1
  store i32 1, i32* %219, align 4
  br label %220

220:                                              ; preds = %217, %214
  br label %221

221:                                              ; preds = %220
  %222 = load i32, i32* %7, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %7, align 4
  br label %143

224:                                              ; preds = %143
  %225 = load %struct.usbdux_private*, %struct.usbdux_private** %5, align 8
  %226 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %225, i32 0, i32 2
  %227 = load i8*, i8** %226, align 8
  %228 = icmp ne i8* %227, null
  br i1 %228, label %229, label %256

229:                                              ; preds = %224
  %230 = load i32, i32* @GFP_KERNEL, align 4
  %231 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %230)
  store %struct.urb* %231, %struct.urb** %6, align 8
  %232 = load %struct.urb*, %struct.urb** %6, align 8
  %233 = icmp ne %struct.urb* %232, null
  br i1 %233, label %237, label %234

234:                                              ; preds = %229
  %235 = load i32, i32* @ENOMEM, align 4
  %236 = sub nsw i32 0, %235
  store i32 %236, i32* %2, align 4
  br label %257

237:                                              ; preds = %229
  %238 = load %struct.urb*, %struct.urb** %6, align 8
  %239 = load %struct.usbdux_private*, %struct.usbdux_private** %5, align 8
  %240 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %239, i32 0, i32 3
  store %struct.urb* %238, %struct.urb** %240, align 8
  %241 = load %struct.usbdux_private*, %struct.usbdux_private** %5, align 8
  %242 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %241, i32 0, i32 2
  %243 = load i8*, i8** %242, align 8
  %244 = load i32, i32* @GFP_KERNEL, align 4
  %245 = call i8* @kzalloc(i8* %243, i32 %244)
  %246 = load %struct.urb*, %struct.urb** %6, align 8
  %247 = getelementptr inbounds %struct.urb, %struct.urb* %246, i32 0, i32 2
  store i8* %245, i8** %247, align 8
  %248 = load %struct.urb*, %struct.urb** %6, align 8
  %249 = getelementptr inbounds %struct.urb, %struct.urb* %248, i32 0, i32 2
  %250 = load i8*, i8** %249, align 8
  %251 = icmp ne i8* %250, null
  br i1 %251, label %255, label %252

252:                                              ; preds = %237
  %253 = load i32, i32* @ENOMEM, align 4
  %254 = sub nsw i32 0, %253
  store i32 %254, i32* %2, align 4
  br label %257

255:                                              ; preds = %237
  br label %256

256:                                              ; preds = %255, %224
  store i32 0, i32* %2, align 4
  br label %257

257:                                              ; preds = %256, %252, %234, %187, %154, %116, %83, %68
  %258 = load i32, i32* %2, align 4
  ret i32 %258
}

declare dso_local %struct.usb_device* @comedi_to_usb_dev(%struct.comedi_device*) #1

declare dso_local i8* @kzalloc(i8*, i32) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_rcvisocpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_sndisocpipe(%struct.usb_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
