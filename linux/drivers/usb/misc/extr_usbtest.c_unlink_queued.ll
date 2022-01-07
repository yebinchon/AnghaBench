; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_usbtest.c_unlink_queued.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_usbtest.c_unlink_queued.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbtest_dev = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.queued_ctx = type { i32, i32, %struct.TYPE_11__**, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.usb_device = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@unlink_queued_callback = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@URB_ZERO_PACKET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"submit urbs[%d] fail %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbtest_dev*, i32, i32, i32)* @unlink_queued to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unlink_queued(%struct.usbtest_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.usbtest_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.queued_ctx, align 8
  %11 = alloca %struct.usb_device*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.usbtest_dev* %0, %struct.usbtest_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %17 = call %struct.usb_device* @testdev_to_usbdev(%struct.usbtest_dev* %16)
  store %struct.usb_device* %17, %struct.usb_device** %11, align 8
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %15, align 4
  %20 = getelementptr inbounds %struct.queued_ctx, %struct.queued_ctx* %10, i32 0, i32 3
  %21 = call i32 @init_completion(i32* %20)
  %22 = getelementptr inbounds %struct.queued_ctx, %struct.queued_ctx* %10, i32 0, i32 4
  %23 = call i32 @atomic_set(i32* %22, i32 1)
  %24 = load i32, i32* %8, align 4
  %25 = getelementptr inbounds %struct.queued_ctx, %struct.queued_ctx* %10, i32 0, i32 0
  store i32 %24, i32* %25, align 8
  %26 = getelementptr inbounds %struct.queued_ctx, %struct.queued_ctx* %10, i32 0, i32 1
  store i32 0, i32* %26, align 4
  %27 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i8* @usb_alloc_coherent(%struct.usb_device* %27, i32 %28, i32 %29, i32* %13)
  store i8* %30, i8** %12, align 8
  %31 = load i8*, i8** %12, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %4
  %34 = load i32, i32* %15, align 4
  store i32 %34, i32* %5, align 4
  br label %237

35:                                               ; preds = %4
  %36 = load i8*, i8** %12, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @memset(i8* %36, i32 0, i32 %37)
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.TYPE_11__** @kcalloc(i32 %39, i32 8, i32 %40)
  %42 = getelementptr inbounds %struct.queued_ctx, %struct.queued_ctx* %10, i32 0, i32 2
  store %struct.TYPE_11__** %41, %struct.TYPE_11__*** %42, align 8
  %43 = getelementptr inbounds %struct.queued_ctx, %struct.queued_ctx* %10, i32 0, i32 2
  %44 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %43, align 8
  %45 = icmp ne %struct.TYPE_11__** %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %35
  br label %230

47:                                               ; preds = %35
  store i32 0, i32* %14, align 4
  br label %48

48:                                               ; preds = %126, %47
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %52, label %129

52:                                               ; preds = %48
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call %struct.TYPE_11__* @usb_alloc_urb(i32 0, i32 %53)
  %55 = getelementptr inbounds %struct.queued_ctx, %struct.queued_ctx* %10, i32 0, i32 2
  %56 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %55, align 8
  %57 = load i32, i32* %14, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %56, i64 %58
  store %struct.TYPE_11__* %54, %struct.TYPE_11__** %59, align 8
  %60 = getelementptr inbounds %struct.queued_ctx, %struct.queued_ctx* %10, i32 0, i32 2
  %61 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %60, align 8
  %62 = load i32, i32* %14, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %61, i64 %63
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %64, align 8
  %66 = icmp ne %struct.TYPE_11__* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %52
  br label %210

68:                                               ; preds = %52
  %69 = getelementptr inbounds %struct.queued_ctx, %struct.queued_ctx* %10, i32 0, i32 2
  %70 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %69, align 8
  %71 = load i32, i32* %14, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %70, i64 %72
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %73, align 8
  %75 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %76 = load i32, i32* %7, align 4
  %77 = load i8*, i8** %12, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @unlink_queued_callback, align 4
  %80 = call i32 @usb_fill_bulk_urb(%struct.TYPE_11__* %74, %struct.usb_device* %75, i32 %76, i8* %77, i32 %78, i32 %79, %struct.queued_ctx* %10)
  %81 = load i32, i32* %13, align 4
  %82 = getelementptr inbounds %struct.queued_ctx, %struct.queued_ctx* %10, i32 0, i32 2
  %83 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %82, align 8
  %84 = load i32, i32* %14, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %83, i64 %85
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 2
  store i32 %81, i32* %88, align 4
  %89 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %90 = getelementptr inbounds %struct.queued_ctx, %struct.queued_ctx* %10, i32 0, i32 2
  %91 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %90, align 8
  %92 = load i32, i32* %14, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %91, i64 %93
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  store i32 %89, i32* %96, align 4
  %97 = getelementptr inbounds %struct.queued_ctx, %struct.queued_ctx* %10, i32 0, i32 2
  %98 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %97, align 8
  %99 = load i32, i32* %14, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %98, i64 %100
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @usb_pipeout(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %125

107:                                              ; preds = %68
  %108 = getelementptr inbounds %struct.queued_ctx, %struct.queued_ctx* %10, i32 0, i32 2
  %109 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %108, align 8
  %110 = load i32, i32* %14, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %109, i64 %111
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %112, align 8
  %114 = call i32 @simple_fill_buf(%struct.TYPE_11__* %113)
  %115 = load i32, i32* @URB_ZERO_PACKET, align 4
  %116 = getelementptr inbounds %struct.queued_ctx, %struct.queued_ctx* %10, i32 0, i32 2
  %117 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %116, align 8
  %118 = load i32, i32* %14, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %117, i64 %119
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = or i32 %123, %115
  store i32 %124, i32* %122, align 4
  br label %125

125:                                              ; preds = %107, %68
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %14, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %14, align 4
  br label %48

129:                                              ; preds = %48
  store i32 0, i32* %14, align 4
  br label %130

130:                                              ; preds = %160, %129
  %131 = load i32, i32* %14, align 4
  %132 = load i32, i32* %8, align 4
  %133 = icmp ult i32 %131, %132
  br i1 %133, label %134, label %163

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.queued_ctx, %struct.queued_ctx* %10, i32 0, i32 4
  %136 = call i32 @atomic_inc(i32* %135)
  %137 = getelementptr inbounds %struct.queued_ctx, %struct.queued_ctx* %10, i32 0, i32 2
  %138 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %137, align 8
  %139 = load i32, i32* %14, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %138, i64 %140
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %141, align 8
  %143 = load i32, i32* @GFP_KERNEL, align 4
  %144 = call i32 @usb_submit_urb(%struct.TYPE_11__* %142, i32 %143)
  store i32 %144, i32* %15, align 4
  %145 = load i32, i32* %15, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %159

147:                                              ; preds = %134
  %148 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %149 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %148, i32 0, i32 0
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  %152 = load i32, i32* %14, align 4
  %153 = load i32, i32* %15, align 4
  %154 = call i32 @dev_err(i32* %151, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %152, i32 %153)
  %155 = getelementptr inbounds %struct.queued_ctx, %struct.queued_ctx* %10, i32 0, i32 4
  %156 = call i32 @atomic_dec(i32* %155)
  %157 = load i32, i32* %15, align 4
  %158 = getelementptr inbounds %struct.queued_ctx, %struct.queued_ctx* %10, i32 0, i32 1
  store i32 %157, i32* %158, align 4
  br label %163

159:                                              ; preds = %134
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %14, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %14, align 4
  br label %130

163:                                              ; preds = %147, %130
  %164 = load i32, i32* %14, align 4
  %165 = load i32, i32* %8, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %184

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct.queued_ctx, %struct.queued_ctx* %10, i32 0, i32 2
  %169 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %168, align 8
  %170 = load i32, i32* %8, align 4
  %171 = sub i32 %170, 4
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %169, i64 %172
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %173, align 8
  %175 = call i32 @usb_unlink_urb(%struct.TYPE_11__* %174)
  %176 = getelementptr inbounds %struct.queued_ctx, %struct.queued_ctx* %10, i32 0, i32 2
  %177 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %176, align 8
  %178 = load i32, i32* %8, align 4
  %179 = sub i32 %178, 2
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %177, i64 %180
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %181, align 8
  %183 = call i32 @usb_unlink_urb(%struct.TYPE_11__* %182)
  br label %198

184:                                              ; preds = %163
  br label %185

185:                                              ; preds = %189, %184
  %186 = load i32, i32* %14, align 4
  %187 = add nsw i32 %186, -1
  store i32 %187, i32* %14, align 4
  %188 = icmp sge i32 %187, 0
  br i1 %188, label %189, label %197

189:                                              ; preds = %185
  %190 = getelementptr inbounds %struct.queued_ctx, %struct.queued_ctx* %10, i32 0, i32 2
  %191 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %190, align 8
  %192 = load i32, i32* %14, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %191, i64 %193
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %194, align 8
  %196 = call i32 @usb_unlink_urb(%struct.TYPE_11__* %195)
  br label %185

197:                                              ; preds = %185
  br label %198

198:                                              ; preds = %197, %167
  %199 = getelementptr inbounds %struct.queued_ctx, %struct.queued_ctx* %10, i32 0, i32 4
  %200 = call i64 @atomic_dec_and_test(i32* %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %198
  %203 = getelementptr inbounds %struct.queued_ctx, %struct.queued_ctx* %10, i32 0, i32 3
  %204 = call i32 @complete(i32* %203)
  br label %205

205:                                              ; preds = %202, %198
  %206 = getelementptr inbounds %struct.queued_ctx, %struct.queued_ctx* %10, i32 0, i32 3
  %207 = call i32 @wait_for_completion(i32* %206)
  %208 = getelementptr inbounds %struct.queued_ctx, %struct.queued_ctx* %10, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  store i32 %209, i32* %15, align 4
  br label %210

210:                                              ; preds = %205, %67
  store i32 0, i32* %14, align 4
  br label %211

211:                                              ; preds = %223, %210
  %212 = load i32, i32* %14, align 4
  %213 = load i32, i32* %8, align 4
  %214 = icmp ult i32 %212, %213
  br i1 %214, label %215, label %226

215:                                              ; preds = %211
  %216 = getelementptr inbounds %struct.queued_ctx, %struct.queued_ctx* %10, i32 0, i32 2
  %217 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %216, align 8
  %218 = load i32, i32* %14, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %217, i64 %219
  %221 = load %struct.TYPE_11__*, %struct.TYPE_11__** %220, align 8
  %222 = call i32 @usb_free_urb(%struct.TYPE_11__* %221)
  br label %223

223:                                              ; preds = %215
  %224 = load i32, i32* %14, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %14, align 4
  br label %211

226:                                              ; preds = %211
  %227 = getelementptr inbounds %struct.queued_ctx, %struct.queued_ctx* %10, i32 0, i32 2
  %228 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %227, align 8
  %229 = call i32 @kfree(%struct.TYPE_11__** %228)
  br label %230

230:                                              ; preds = %226, %46
  %231 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %232 = load i32, i32* %9, align 4
  %233 = load i8*, i8** %12, align 8
  %234 = load i32, i32* %13, align 4
  %235 = call i32 @usb_free_coherent(%struct.usb_device* %231, i32 %232, i8* %233, i32 %234)
  %236 = load i32, i32* %15, align 4
  store i32 %236, i32* %5, align 4
  br label %237

237:                                              ; preds = %230, %33
  %238 = load i32, i32* %5, align 4
  ret i32 %238
}

declare dso_local %struct.usb_device* @testdev_to_usbdev(%struct.usbtest_dev*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i8* @usb_alloc_coherent(%struct.usb_device*, i32, i32, i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local %struct.TYPE_11__** @kcalloc(i32, i32, i32) #1

declare dso_local %struct.TYPE_11__* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.TYPE_11__*, %struct.usb_device*, i32, i8*, i32, i32, %struct.queued_ctx*) #1

declare dso_local i64 @usb_pipeout(i32) #1

declare dso_local i32 @simple_fill_buf(%struct.TYPE_11__*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @usb_unlink_urb(%struct.TYPE_11__*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @usb_free_urb(%struct.TYPE_11__*) #1

declare dso_local i32 @kfree(%struct.TYPE_11__**) #1

declare dso_local i32 @usb_free_coherent(%struct.usb_device*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
