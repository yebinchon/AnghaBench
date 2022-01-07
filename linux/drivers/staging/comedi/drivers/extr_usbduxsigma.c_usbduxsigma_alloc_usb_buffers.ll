; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbduxsigma.c_usbduxsigma_alloc_usb_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbduxsigma.c_usbduxsigma_alloc_usb_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.usbduxsigma_private* }
%struct.usbduxsigma_private = type { i32, i32, i8*, %struct.urb*, %struct.urb**, %struct.urb**, i8*, i8*, i8* }
%struct.urb = type { i32, i32, i8*, %struct.TYPE_2__*, i8*, i32, i8*, i32, i32*, %struct.usb_device* }
%struct.TYPE_2__ = type { i8*, i64 }
%struct.usb_device = type { i32 }

@SIZEOFDUXBUFFER = common dso_local global i8* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@SIZEINBUF = common dso_local global i8* null, align 8
@SIZEINSNBUF = common dso_local global i8* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@URB_ISO_ASAP = common dso_local global i8* null, align 8
@usbduxsigma_ai_urb_complete = common dso_local global i32 0, align 4
@SIZEOUTBUF = common dso_local global i8* null, align 8
@usbduxsigma_ao_urb_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*)* @usbduxsigma_alloc_usb_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbduxsigma_alloc_usb_buffers(%struct.comedi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.usbduxsigma_private*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  %8 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %9 = call %struct.usb_device* @comedi_to_usb_dev(%struct.comedi_device* %8)
  store %struct.usb_device* %9, %struct.usb_device** %4, align 8
  %10 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 0
  %12 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %11, align 8
  store %struct.usbduxsigma_private* %12, %struct.usbduxsigma_private** %5, align 8
  %13 = load i8*, i8** @SIZEOFDUXBUFFER, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i8* @kzalloc(i8* %13, i32 %14)
  %16 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %5, align 8
  %17 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %16, i32 0, i32 8
  store i8* %15, i8** %17, align 8
  %18 = load i8*, i8** @SIZEINBUF, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i8* @kzalloc(i8* %18, i32 %19)
  %21 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %5, align 8
  %22 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %21, i32 0, i32 7
  store i8* %20, i8** %22, align 8
  %23 = load i8*, i8** @SIZEINSNBUF, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i8* @kzalloc(i8* %23, i32 %24)
  %26 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %5, align 8
  %27 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %26, i32 0, i32 6
  store i8* %25, i8** %27, align 8
  %28 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %5, align 8
  %29 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i8* @kcalloc(i32 %30, i32 8, i32 %31)
  %33 = bitcast i8* %32 to %struct.urb**
  %34 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %5, align 8
  %35 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %34, i32 0, i32 5
  store %struct.urb** %33, %struct.urb*** %35, align 8
  %36 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %5, align 8
  %37 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call i8* @kcalloc(i32 %38, i32 8, i32 %39)
  %41 = bitcast i8* %40 to %struct.urb**
  %42 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %5, align 8
  %43 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %42, i32 0, i32 4
  store %struct.urb** %41, %struct.urb*** %43, align 8
  %44 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %5, align 8
  %45 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %44, i32 0, i32 8
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %68

48:                                               ; preds = %1
  %49 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %5, align 8
  %50 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %49, i32 0, i32 7
  %51 = load i8*, i8** %50, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %68

53:                                               ; preds = %48
  %54 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %5, align 8
  %55 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %54, i32 0, i32 6
  %56 = load i8*, i8** %55, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %68

58:                                               ; preds = %53
  %59 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %5, align 8
  %60 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %59, i32 0, i32 5
  %61 = load %struct.urb**, %struct.urb*** %60, align 8
  %62 = icmp ne %struct.urb** %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %5, align 8
  %65 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %64, i32 0, i32 4
  %66 = load %struct.urb**, %struct.urb*** %65, align 8
  %67 = icmp ne %struct.urb** %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %63, %58, %53, %48, %1
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %246

71:                                               ; preds = %63
  store i32 0, i32* %7, align 4
  br label %72

72:                                               ; preds = %138, %71
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %5, align 8
  %75 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %141

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
  br label %246

86:                                               ; preds = %78
  %87 = load %struct.urb*, %struct.urb** %6, align 8
  %88 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %5, align 8
  %89 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %88, i32 0, i32 5
  %90 = load %struct.urb**, %struct.urb*** %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.urb*, %struct.urb** %90, i64 %92
  store %struct.urb* %87, %struct.urb** %93, align 8
  %94 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %95 = load %struct.urb*, %struct.urb** %6, align 8
  %96 = getelementptr inbounds %struct.urb, %struct.urb* %95, i32 0, i32 9
  store %struct.usb_device* %94, %struct.usb_device** %96, align 8
  %97 = load %struct.urb*, %struct.urb** %6, align 8
  %98 = getelementptr inbounds %struct.urb, %struct.urb* %97, i32 0, i32 8
  store i32* null, i32** %98, align 8
  %99 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %100 = call i32 @usb_rcvisocpipe(%struct.usb_device* %99, i32 6)
  %101 = load %struct.urb*, %struct.urb** %6, align 8
  %102 = getelementptr inbounds %struct.urb, %struct.urb* %101, i32 0, i32 7
  store i32 %100, i32* %102, align 8
  %103 = load i8*, i8** @URB_ISO_ASAP, align 8
  %104 = load %struct.urb*, %struct.urb** %6, align 8
  %105 = getelementptr inbounds %struct.urb, %struct.urb* %104, i32 0, i32 6
  store i8* %103, i8** %105, align 8
  %106 = load i8*, i8** @SIZEINBUF, align 8
  %107 = load i32, i32* @GFP_KERNEL, align 4
  %108 = call i8* @kzalloc(i8* %106, i32 %107)
  %109 = load %struct.urb*, %struct.urb** %6, align 8
  %110 = getelementptr inbounds %struct.urb, %struct.urb* %109, i32 0, i32 2
  store i8* %108, i8** %110, align 8
  %111 = load %struct.urb*, %struct.urb** %6, align 8
  %112 = getelementptr inbounds %struct.urb, %struct.urb* %111, i32 0, i32 2
  %113 = load i8*, i8** %112, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %118, label %115

115:                                              ; preds = %86
  %116 = load i32, i32* @ENOMEM, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %2, align 4
  br label %246

118:                                              ; preds = %86
  %119 = load i32, i32* @usbduxsigma_ai_urb_complete, align 4
  %120 = load %struct.urb*, %struct.urb** %6, align 8
  %121 = getelementptr inbounds %struct.urb, %struct.urb* %120, i32 0, i32 5
  store i32 %119, i32* %121, align 8
  %122 = load %struct.urb*, %struct.urb** %6, align 8
  %123 = getelementptr inbounds %struct.urb, %struct.urb* %122, i32 0, i32 0
  store i32 1, i32* %123, align 8
  %124 = load i8*, i8** @SIZEINBUF, align 8
  %125 = load %struct.urb*, %struct.urb** %6, align 8
  %126 = getelementptr inbounds %struct.urb, %struct.urb* %125, i32 0, i32 4
  store i8* %124, i8** %126, align 8
  %127 = load %struct.urb*, %struct.urb** %6, align 8
  %128 = getelementptr inbounds %struct.urb, %struct.urb* %127, i32 0, i32 3
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i64 0
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 1
  store i64 0, i64* %131, align 8
  %132 = load i8*, i8** @SIZEINBUF, align 8
  %133 = load %struct.urb*, %struct.urb** %6, align 8
  %134 = getelementptr inbounds %struct.urb, %struct.urb* %133, i32 0, i32 3
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i64 0
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  store i8* %132, i8** %137, align 8
  br label %138

138:                                              ; preds = %118
  %139 = load i32, i32* %7, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %7, align 4
  br label %72

141:                                              ; preds = %72
  store i32 0, i32* %7, align 4
  br label %142

142:                                              ; preds = %210, %141
  %143 = load i32, i32* %7, align 4
  %144 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %5, align 8
  %145 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = icmp slt i32 %143, %146
  br i1 %147, label %148, label %213

148:                                              ; preds = %142
  %149 = load i32, i32* @GFP_KERNEL, align 4
  %150 = call %struct.urb* @usb_alloc_urb(i32 1, i32 %149)
  store %struct.urb* %150, %struct.urb** %6, align 8
  %151 = load %struct.urb*, %struct.urb** %6, align 8
  %152 = icmp ne %struct.urb* %151, null
  br i1 %152, label %156, label %153

153:                                              ; preds = %148
  %154 = load i32, i32* @ENOMEM, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %2, align 4
  br label %246

156:                                              ; preds = %148
  %157 = load %struct.urb*, %struct.urb** %6, align 8
  %158 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %5, align 8
  %159 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %158, i32 0, i32 4
  %160 = load %struct.urb**, %struct.urb*** %159, align 8
  %161 = load i32, i32* %7, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.urb*, %struct.urb** %160, i64 %162
  store %struct.urb* %157, %struct.urb** %163, align 8
  %164 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %165 = load %struct.urb*, %struct.urb** %6, align 8
  %166 = getelementptr inbounds %struct.urb, %struct.urb* %165, i32 0, i32 9
  store %struct.usb_device* %164, %struct.usb_device** %166, align 8
  %167 = load %struct.urb*, %struct.urb** %6, align 8
  %168 = getelementptr inbounds %struct.urb, %struct.urb* %167, i32 0, i32 8
  store i32* null, i32** %168, align 8
  %169 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %170 = call i32 @usb_sndisocpipe(%struct.usb_device* %169, i32 2)
  %171 = load %struct.urb*, %struct.urb** %6, align 8
  %172 = getelementptr inbounds %struct.urb, %struct.urb* %171, i32 0, i32 7
  store i32 %170, i32* %172, align 8
  %173 = load i8*, i8** @URB_ISO_ASAP, align 8
  %174 = load %struct.urb*, %struct.urb** %6, align 8
  %175 = getelementptr inbounds %struct.urb, %struct.urb* %174, i32 0, i32 6
  store i8* %173, i8** %175, align 8
  %176 = load i8*, i8** @SIZEOUTBUF, align 8
  %177 = load i32, i32* @GFP_KERNEL, align 4
  %178 = call i8* @kzalloc(i8* %176, i32 %177)
  %179 = load %struct.urb*, %struct.urb** %6, align 8
  %180 = getelementptr inbounds %struct.urb, %struct.urb* %179, i32 0, i32 2
  store i8* %178, i8** %180, align 8
  %181 = load %struct.urb*, %struct.urb** %6, align 8
  %182 = getelementptr inbounds %struct.urb, %struct.urb* %181, i32 0, i32 2
  %183 = load i8*, i8** %182, align 8
  %184 = icmp ne i8* %183, null
  br i1 %184, label %188, label %185

185:                                              ; preds = %156
  %186 = load i32, i32* @ENOMEM, align 4
  %187 = sub nsw i32 0, %186
  store i32 %187, i32* %2, align 4
  br label %246

188:                                              ; preds = %156
  %189 = load i32, i32* @usbduxsigma_ao_urb_complete, align 4
  %190 = load %struct.urb*, %struct.urb** %6, align 8
  %191 = getelementptr inbounds %struct.urb, %struct.urb* %190, i32 0, i32 5
  store i32 %189, i32* %191, align 8
  %192 = load %struct.urb*, %struct.urb** %6, align 8
  %193 = getelementptr inbounds %struct.urb, %struct.urb* %192, i32 0, i32 0
  store i32 1, i32* %193, align 8
  %194 = load i8*, i8** @SIZEOUTBUF, align 8
  %195 = load %struct.urb*, %struct.urb** %6, align 8
  %196 = getelementptr inbounds %struct.urb, %struct.urb* %195, i32 0, i32 4
  store i8* %194, i8** %196, align 8
  %197 = load %struct.urb*, %struct.urb** %6, align 8
  %198 = getelementptr inbounds %struct.urb, %struct.urb* %197, i32 0, i32 3
  %199 = load %struct.TYPE_2__*, %struct.TYPE_2__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %199, i64 0
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 1
  store i64 0, i64* %201, align 8
  %202 = load i8*, i8** @SIZEOUTBUF, align 8
  %203 = load %struct.urb*, %struct.urb** %6, align 8
  %204 = getelementptr inbounds %struct.urb, %struct.urb* %203, i32 0, i32 3
  %205 = load %struct.TYPE_2__*, %struct.TYPE_2__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i64 0
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i32 0, i32 0
  store i8* %202, i8** %207, align 8
  %208 = load %struct.urb*, %struct.urb** %6, align 8
  %209 = getelementptr inbounds %struct.urb, %struct.urb* %208, i32 0, i32 1
  store i32 1, i32* %209, align 4
  br label %210

210:                                              ; preds = %188
  %211 = load i32, i32* %7, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %7, align 4
  br label %142

213:                                              ; preds = %142
  %214 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %5, align 8
  %215 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %214, i32 0, i32 2
  %216 = load i8*, i8** %215, align 8
  %217 = icmp ne i8* %216, null
  br i1 %217, label %218, label %245

218:                                              ; preds = %213
  %219 = load i32, i32* @GFP_KERNEL, align 4
  %220 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %219)
  store %struct.urb* %220, %struct.urb** %6, align 8
  %221 = load %struct.urb*, %struct.urb** %6, align 8
  %222 = icmp ne %struct.urb* %221, null
  br i1 %222, label %226, label %223

223:                                              ; preds = %218
  %224 = load i32, i32* @ENOMEM, align 4
  %225 = sub nsw i32 0, %224
  store i32 %225, i32* %2, align 4
  br label %246

226:                                              ; preds = %218
  %227 = load %struct.urb*, %struct.urb** %6, align 8
  %228 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %5, align 8
  %229 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %228, i32 0, i32 3
  store %struct.urb* %227, %struct.urb** %229, align 8
  %230 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %5, align 8
  %231 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %230, i32 0, i32 2
  %232 = load i8*, i8** %231, align 8
  %233 = load i32, i32* @GFP_KERNEL, align 4
  %234 = call i8* @kzalloc(i8* %232, i32 %233)
  %235 = load %struct.urb*, %struct.urb** %6, align 8
  %236 = getelementptr inbounds %struct.urb, %struct.urb* %235, i32 0, i32 2
  store i8* %234, i8** %236, align 8
  %237 = load %struct.urb*, %struct.urb** %6, align 8
  %238 = getelementptr inbounds %struct.urb, %struct.urb* %237, i32 0, i32 2
  %239 = load i8*, i8** %238, align 8
  %240 = icmp ne i8* %239, null
  br i1 %240, label %244, label %241

241:                                              ; preds = %226
  %242 = load i32, i32* @ENOMEM, align 4
  %243 = sub nsw i32 0, %242
  store i32 %243, i32* %2, align 4
  br label %246

244:                                              ; preds = %226
  br label %245

245:                                              ; preds = %244, %213
  store i32 0, i32* %2, align 4
  br label %246

246:                                              ; preds = %245, %241, %223, %185, %153, %115, %83, %68
  %247 = load i32, i32* %2, align 4
  ret i32 %247
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
