; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_hfa384x_usb.c_hfa384x_drvr_flashdl_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_hfa384x_usb.c_hfa384x_drvr_flashdl_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfa384x = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"daddr=0x%08x len=%d\0A\00", align 1
@HFA384x_DLSTATE_FLASHENABLED = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Download %d bytes to flash @0x%06x\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"dlbuf.page=0x%04x dlbuf.offset=0x%04x dlbufaddr=0x%08x\0A\00", align 1
@HFA384x_USB_RWMEM_MAXLEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Writing %d bytes to flash @0x%06x\0A\00", align 1
@HFA384x_PROGMODE_NV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [69 x i8] c"download(NV,lo=%x,hi=%x,len=%x) cmd failed, result=%d. Aborting d/l\0A\00", align 1
@HFA384x_PROGMODE_NVWRITE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [74 x i8] c"download(NVWRITE,lo=%x,hi=%x,len=%x) cmd failed, result=%d. Aborting d/l\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfa384x_drvr_flashdl_write(%struct.hfa384x* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hfa384x*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.hfa384x* %0, %struct.hfa384x** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load %struct.hfa384x*, %struct.hfa384x** %6, align 8
  %28 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @HFA384x_DLSTATE_FLASHENABLED, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %4
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %250

35:                                               ; preds = %4
  %36 = load %struct.hfa384x*, %struct.hfa384x** %6, align 8
  %37 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @netdev_info(i32 %40, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %42)
  %44 = load %struct.hfa384x*, %struct.hfa384x** %6, align 8
  %45 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.hfa384x*, %struct.hfa384x** %6, align 8
  %49 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @HFA384x_ADDR_AUX_MKFLAT(i32 %47, i32 %51)
  store i32 %52, i32* %11, align 4
  %53 = load %struct.hfa384x*, %struct.hfa384x** %6, align 8
  %54 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.hfa384x*, %struct.hfa384x** %6, align 8
  %58 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %56, i32 %60, i32 %61)
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.hfa384x*, %struct.hfa384x** %6, align 8
  %65 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sdiv i32 %63, %67
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.hfa384x*, %struct.hfa384x** %6, align 8
  %71 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = srem i32 %69, %73
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i32 1, i32 0
  %78 = load i32, i32* %12, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %12, align 4
  %80 = load %struct.hfa384x*, %struct.hfa384x** %6, align 8
  %81 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @HFA384x_USB_RWMEM_MAXLEN, align 4
  %85 = sdiv i32 %83, %84
  store i32 %85, i32* %17, align 4
  %86 = load %struct.hfa384x*, %struct.hfa384x** %6, align 8
  %87 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @HFA384x_USB_RWMEM_MAXLEN, align 4
  %91 = srem i32 %89, %90
  %92 = icmp ne i32 %91, 0
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i32 1, i32 0
  %95 = load i32, i32* %17, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* %17, align 4
  store i32 0, i32* %22, align 4
  br label %97

97:                                               ; preds = %244, %35
  %98 = load i32, i32* %22, align 4
  %99 = load i32, i32* %12, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %247

101:                                              ; preds = %97
  %102 = load i32, i32* %9, align 4
  %103 = load %struct.hfa384x*, %struct.hfa384x** %6, align 8
  %104 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %22, align 4
  %108 = mul nsw i32 %106, %107
  %109 = sub nsw i32 %102, %108
  %110 = load %struct.hfa384x*, %struct.hfa384x** %6, align 8
  %111 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp sgt i32 %109, %113
  br i1 %114, label %115, label %120

115:                                              ; preds = %101
  %116 = load %struct.hfa384x*, %struct.hfa384x** %6, align 8
  %117 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  br label %129

120:                                              ; preds = %101
  %121 = load i32, i32* %9, align 4
  %122 = load %struct.hfa384x*, %struct.hfa384x** %6, align 8
  %123 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* %22, align 4
  %127 = mul nsw i32 %125, %126
  %128 = sub nsw i32 %121, %127
  br label %129

129:                                              ; preds = %120, %115
  %130 = phi i32 [ %119, %115 ], [ %128, %120 ]
  store i32 %130, i32* %13, align 4
  %131 = load i32, i32* %7, align 4
  %132 = load %struct.hfa384x*, %struct.hfa384x** %6, align 8
  %133 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* %22, align 4
  %137 = mul nsw i32 %135, %136
  %138 = add nsw i32 %131, %137
  store i32 %138, i32* %14, align 4
  %139 = load i32, i32* %14, align 4
  %140 = call i32 @HFA384x_ADDR_CMD_MKOFF(i32 %139)
  store i32 %140, i32* %15, align 4
  %141 = load i32, i32* %14, align 4
  %142 = call i32 @HFA384x_ADDR_CMD_MKPAGE(i32 %141)
  store i32 %142, i32* %16, align 4
  %143 = load %struct.hfa384x*, %struct.hfa384x** %6, align 8
  %144 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %143, i32 0, i32 1
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %13, align 4
  %149 = load i32, i32* %14, align 4
  %150 = call i32 @netdev_info(i32 %147, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %148, i32 %149)
  %151 = load %struct.hfa384x*, %struct.hfa384x** %6, align 8
  %152 = load i32, i32* @HFA384x_PROGMODE_NV, align 4
  %153 = load i32, i32* %15, align 4
  %154 = load i32, i32* %16, align 4
  %155 = load i32, i32* %13, align 4
  %156 = call i32 @hfa384x_cmd_download(%struct.hfa384x* %151, i32 %152, i32 %153, i32 %154, i32 %155)
  store i32 %156, i32* %10, align 4
  %157 = load i32, i32* %10, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %170

159:                                              ; preds = %129
  %160 = load %struct.hfa384x*, %struct.hfa384x** %6, align 8
  %161 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %160, i32 0, i32 1
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* %15, align 4
  %166 = load i32, i32* %16, align 4
  %167 = load i32, i32* %13, align 4
  %168 = load i32, i32* %10, align 4
  %169 = call i32 @netdev_err(i32 %164, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.4, i64 0, i64 0), i32 %165, i32 %166, i32 %167, i32 %168)
  br label %248

170:                                              ; preds = %129
  store i32 0, i32* %23, align 4
  br label %171

171:                                              ; preds = %223, %170
  %172 = load i32, i32* %23, align 4
  %173 = load i32, i32* %17, align 4
  %174 = icmp slt i32 %172, %173
  br i1 %174, label %175, label %226

175:                                              ; preds = %171
  %176 = load i8*, i8** %8, align 8
  %177 = load i32, i32* %22, align 4
  %178 = load %struct.hfa384x*, %struct.hfa384x** %6, align 8
  %179 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = mul nsw i32 %177, %181
  %183 = sext i32 %182 to i64
  %184 = getelementptr i8, i8* %176, i64 %183
  %185 = load i32, i32* %23, align 4
  %186 = load i32, i32* @HFA384x_USB_RWMEM_MAXLEN, align 4
  %187 = mul nsw i32 %185, %186
  %188 = sext i32 %187 to i64
  %189 = getelementptr i8, i8* %184, i64 %188
  %190 = bitcast i8* %189 to i32*
  store i32* %190, i32** %18, align 8
  %191 = load i32, i32* %11, align 4
  %192 = load i32, i32* %23, align 4
  %193 = load i32, i32* @HFA384x_USB_RWMEM_MAXLEN, align 4
  %194 = mul nsw i32 %192, %193
  %195 = add nsw i32 %191, %194
  %196 = call i32 @HFA384x_ADDR_CMD_MKPAGE(i32 %195)
  store i32 %196, i32* %19, align 4
  %197 = load i32, i32* %11, align 4
  %198 = load i32, i32* %23, align 4
  %199 = load i32, i32* @HFA384x_USB_RWMEM_MAXLEN, align 4
  %200 = mul nsw i32 %198, %199
  %201 = add nsw i32 %197, %200
  %202 = call i32 @HFA384x_ADDR_CMD_MKOFF(i32 %201)
  store i32 %202, i32* %20, align 4
  %203 = load i32, i32* %13, align 4
  %204 = load i32, i32* %23, align 4
  %205 = load i32, i32* @HFA384x_USB_RWMEM_MAXLEN, align 4
  %206 = mul nsw i32 %204, %205
  %207 = sub nsw i32 %203, %206
  store i32 %207, i32* %21, align 4
  %208 = load i32, i32* %21, align 4
  %209 = load i32, i32* @HFA384x_USB_RWMEM_MAXLEN, align 4
  %210 = icmp sgt i32 %208, %209
  br i1 %210, label %211, label %213

211:                                              ; preds = %175
  %212 = load i32, i32* @HFA384x_USB_RWMEM_MAXLEN, align 4
  br label %215

213:                                              ; preds = %175
  %214 = load i32, i32* %21, align 4
  br label %215

215:                                              ; preds = %213, %211
  %216 = phi i32 [ %212, %211 ], [ %214, %213 ]
  store i32 %216, i32* %21, align 4
  %217 = load %struct.hfa384x*, %struct.hfa384x** %6, align 8
  %218 = load i32, i32* %19, align 4
  %219 = load i32, i32* %20, align 4
  %220 = load i32*, i32** %18, align 8
  %221 = load i32, i32* %21, align 4
  %222 = call i32 @hfa384x_dowmem(%struct.hfa384x* %217, i32 %218, i32 %219, i32* %220, i32 %221)
  store i32 %222, i32* %10, align 4
  br label %223

223:                                              ; preds = %215
  %224 = load i32, i32* %23, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %23, align 4
  br label %171

226:                                              ; preds = %171
  %227 = load %struct.hfa384x*, %struct.hfa384x** %6, align 8
  %228 = load i32, i32* @HFA384x_PROGMODE_NVWRITE, align 4
  %229 = call i32 @hfa384x_cmd_download(%struct.hfa384x* %227, i32 %228, i32 0, i32 0, i32 0)
  store i32 %229, i32* %10, align 4
  %230 = load i32, i32* %10, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %243

232:                                              ; preds = %226
  %233 = load %struct.hfa384x*, %struct.hfa384x** %6, align 8
  %234 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %233, i32 0, i32 1
  %235 = load %struct.TYPE_4__*, %struct.TYPE_4__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* %15, align 4
  %239 = load i32, i32* %16, align 4
  %240 = load i32, i32* %13, align 4
  %241 = load i32, i32* %10, align 4
  %242 = call i32 @netdev_err(i32 %237, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.5, i64 0, i64 0), i32 %238, i32 %239, i32 %240, i32 %241)
  br label %248

243:                                              ; preds = %226
  br label %244

244:                                              ; preds = %243
  %245 = load i32, i32* %22, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %22, align 4
  br label %97

247:                                              ; preds = %97
  br label %248

248:                                              ; preds = %247, %232, %159
  %249 = load i32, i32* %10, align 4
  store i32 %249, i32* %5, align 4
  br label %250

250:                                              ; preds = %248, %32
  %251 = load i32, i32* %5, align 4
  ret i32 %251
}

declare dso_local i32 @pr_debug(i8*, i32, i32, ...) #1

declare dso_local i32 @netdev_info(i32, i8*, i32, i32) #1

declare dso_local i32 @HFA384x_ADDR_AUX_MKFLAT(i32, i32) #1

declare dso_local i32 @HFA384x_ADDR_CMD_MKOFF(i32) #1

declare dso_local i32 @HFA384x_ADDR_CMD_MKPAGE(i32) #1

declare dso_local i32 @hfa384x_cmd_download(%struct.hfa384x*, i32, i32, i32, i32) #1

declare dso_local i32 @netdev_err(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @hfa384x_dowmem(%struct.hfa384x*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
