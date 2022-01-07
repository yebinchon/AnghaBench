; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_s3c-hsudc.c_s3c_hsudc_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_s3c-hsudc.c_s3c_hsudc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c_hsudc = type { i32, i64, %struct.s3c_hsudc_ep*, i32, %struct.TYPE_6__*, %struct.TYPE_7__, %struct.TYPE_5__* }
%struct.s3c_hsudc_ep = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)* }

@S3C_SSR = common dso_local global i64 0, align 8
@S3C_EIR = common dso_local global i64 0, align 8
@S3C_SSR_DTZIEN_EN = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@S3C_SSR_VBUSON = common dso_local global i32 0, align 4
@S3C_SSR_ERR = common dso_local global i32 0, align 4
@S3C_SSR_SDE = common dso_local global i32 0, align 4
@S3C_SSR_HSP = common dso_local global i32 0, align 4
@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@USB_SPEED_FULL = common dso_local global i64 0, align 8
@S3C_SSR_SUSPEND = common dso_local global i32 0, align 4
@USB_SPEED_UNKNOWN = common dso_local global i64 0, align 8
@S3C_SSR_RESUME = common dso_local global i32 0, align 4
@S3C_SSR_RESET = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@WAIT_FOR_SETUP = common dso_local global i32 0, align 4
@S3C_EIR_EP0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @s3c_hsudc_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c_hsudc_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.s3c_hsudc*, align 8
  %7 = alloca %struct.s3c_hsudc_ep*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.s3c_hsudc*
  store %struct.s3c_hsudc* %12, %struct.s3c_hsudc** %6, align 8
  %13 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %14 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %13, i32 0, i32 0
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %17 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @S3C_SSR, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @readl(i64 %20)
  store i32 %21, i32* %9, align 4
  %22 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %23 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @S3C_EIR, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @readl(i64 %26)
  %28 = and i32 %27, 1023
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %2
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @S3C_SSR_DTZIEN_EN, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %38 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %37, i32 0, i32 0
  %39 = call i32 @spin_unlock(i32* %38)
  %40 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %40, i32* %3, align 4
  br label %289

41:                                               ; preds = %31, %2
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %222

44:                                               ; preds = %41
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @S3C_SSR_VBUSON, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = load i32, i32* @S3C_SSR_VBUSON, align 4
  %51 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %52 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @S3C_SSR, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @writel(i32 %50, i64 %55)
  br label %57

57:                                               ; preds = %49, %44
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @S3C_SSR_ERR, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %57
  %63 = load i32, i32* @S3C_SSR_ERR, align 4
  %64 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %65 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @S3C_SSR, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @writel(i32 %63, i64 %68)
  br label %70

70:                                               ; preds = %62, %57
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @S3C_SSR_SDE, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %96

75:                                               ; preds = %70
  %76 = load i32, i32* @S3C_SSR_SDE, align 4
  %77 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %78 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @S3C_SSR, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @writel(i32 %76, i64 %81)
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* @S3C_SSR_HSP, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %75
  %88 = load i64, i64* @USB_SPEED_HIGH, align 8
  br label %91

89:                                               ; preds = %75
  %90 = load i64, i64* @USB_SPEED_FULL, align 8
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i64 [ %88, %87 ], [ %90, %89 ]
  %93 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %94 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %93, i32 0, i32 5
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  store i64 %92, i64* %95, align 8
  br label %96

96:                                               ; preds = %91, %70
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* @S3C_SSR_SUSPEND, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %137

101:                                              ; preds = %96
  %102 = load i32, i32* @S3C_SSR_SUSPEND, align 4
  %103 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %104 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @S3C_SSR, align 8
  %107 = add nsw i64 %105, %106
  %108 = call i32 @writel(i32 %102, i64 %107)
  %109 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %110 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %109, i32 0, i32 5
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @USB_SPEED_UNKNOWN, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %136

115:                                              ; preds = %101
  %116 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %117 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %116, i32 0, i32 6
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %117, align 8
  %119 = icmp ne %struct.TYPE_5__* %118, null
  br i1 %119, label %120, label %136

120:                                              ; preds = %115
  %121 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %122 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %121, i32 0, i32 6
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 1
  %125 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %124, align 8
  %126 = icmp ne i32 (%struct.TYPE_7__*)* %125, null
  br i1 %126, label %127, label %136

127:                                              ; preds = %120
  %128 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %129 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %128, i32 0, i32 6
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 1
  %132 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %131, align 8
  %133 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %134 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %133, i32 0, i32 5
  %135 = call i32 %132(%struct.TYPE_7__* %134)
  br label %136

136:                                              ; preds = %127, %120, %115, %101
  br label %137

137:                                              ; preds = %136, %96
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* @S3C_SSR_RESUME, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %178

142:                                              ; preds = %137
  %143 = load i32, i32* @S3C_SSR_RESUME, align 4
  %144 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %145 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @S3C_SSR, align 8
  %148 = add nsw i64 %146, %147
  %149 = call i32 @writel(i32 %143, i64 %148)
  %150 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %151 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %150, i32 0, i32 5
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @USB_SPEED_UNKNOWN, align 8
  %155 = icmp ne i64 %153, %154
  br i1 %155, label %156, label %177

156:                                              ; preds = %142
  %157 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %158 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %157, i32 0, i32 6
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %158, align 8
  %160 = icmp ne %struct.TYPE_5__* %159, null
  br i1 %160, label %161, label %177

161:                                              ; preds = %156
  %162 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %163 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %162, i32 0, i32 6
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 0
  %166 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %165, align 8
  %167 = icmp ne i32 (%struct.TYPE_7__*)* %166, null
  br i1 %167, label %168, label %177

168:                                              ; preds = %161
  %169 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %170 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %169, i32 0, i32 6
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 0
  %173 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %172, align 8
  %174 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %175 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %174, i32 0, i32 5
  %176 = call i32 %173(%struct.TYPE_7__* %175)
  br label %177

177:                                              ; preds = %168, %161, %156, %142
  br label %178

178:                                              ; preds = %177, %137
  %179 = load i32, i32* %9, align 4
  %180 = load i32, i32* @S3C_SSR_RESET, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %221

183:                                              ; preds = %178
  %184 = load i32, i32* @S3C_SSR_RESET, align 4
  %185 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %186 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @S3C_SSR, align 8
  %189 = add nsw i64 %187, %188
  %190 = call i32 @writel(i32 %184, i64 %189)
  store i32 0, i32* %10, align 4
  br label %191

191:                                              ; preds = %212, %183
  %192 = load i32, i32* %10, align 4
  %193 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %194 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %193, i32 0, i32 4
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = icmp slt i32 %192, %197
  br i1 %198, label %199, label %215

199:                                              ; preds = %191
  %200 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %201 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %200, i32 0, i32 2
  %202 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %201, align 8
  %203 = load i32, i32* %10, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.s3c_hsudc_ep, %struct.s3c_hsudc_ep* %202, i64 %204
  store %struct.s3c_hsudc_ep* %205, %struct.s3c_hsudc_ep** %7, align 8
  %206 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %7, align 8
  %207 = getelementptr inbounds %struct.s3c_hsudc_ep, %struct.s3c_hsudc_ep* %206, i32 0, i32 0
  store i32 1, i32* %207, align 4
  %208 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %7, align 8
  %209 = load i32, i32* @ECONNRESET, align 4
  %210 = sub nsw i32 0, %209
  %211 = call i32 @s3c_hsudc_nuke_ep(%struct.s3c_hsudc_ep* %208, i32 %210)
  br label %212

212:                                              ; preds = %199
  %213 = load i32, i32* %10, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %10, align 4
  br label %191

215:                                              ; preds = %191
  %216 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %217 = call i32 @s3c_hsudc_reconfig(%struct.s3c_hsudc* %216)
  %218 = load i32, i32* @WAIT_FOR_SETUP, align 4
  %219 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %220 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %219, i32 0, i32 3
  store i32 %218, i32* %220, align 8
  br label %221

221:                                              ; preds = %215, %178
  br label %222

222:                                              ; preds = %221, %41
  %223 = load i32, i32* %8, align 4
  %224 = load i32, i32* @S3C_EIR_EP0, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %239

227:                                              ; preds = %222
  %228 = load i32, i32* @S3C_EIR_EP0, align 4
  %229 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %230 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %229, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = load i64, i64* @S3C_EIR, align 8
  %233 = add nsw i64 %231, %232
  %234 = call i32 @writel(i32 %228, i64 %233)
  %235 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %236 = call i32 @set_index(%struct.s3c_hsudc* %235, i32 0)
  %237 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %238 = call i32 @s3c_hsudc_handle_ep0_intr(%struct.s3c_hsudc* %237)
  br label %239

239:                                              ; preds = %227, %222
  %240 = load i32, i32* %8, align 4
  %241 = ashr i32 %240, 1
  store i32 %241, i32* %8, align 4
  store i32 1, i32* %10, align 4
  br label %242

242:                                              ; preds = %279, %239
  %243 = load i32, i32* %8, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %284

245:                                              ; preds = %242
  %246 = load i32, i32* %8, align 4
  %247 = and i32 %246, 1
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %279

249:                                              ; preds = %245
  %250 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %251 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %250, i32 0, i32 2
  %252 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %251, align 8
  %253 = load i32, i32* %10, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.s3c_hsudc_ep, %struct.s3c_hsudc_ep* %252, i64 %254
  store %struct.s3c_hsudc_ep* %255, %struct.s3c_hsudc_ep** %7, align 8
  %256 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %257 = load i32, i32* %10, align 4
  %258 = call i32 @set_index(%struct.s3c_hsudc* %256, i32 %257)
  %259 = load i32, i32* %10, align 4
  %260 = shl i32 1, %259
  %261 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %262 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %261, i32 0, i32 1
  %263 = load i64, i64* %262, align 8
  %264 = load i64, i64* @S3C_EIR, align 8
  %265 = add nsw i64 %263, %264
  %266 = call i32 @writel(i32 %260, i64 %265)
  %267 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %7, align 8
  %268 = call i64 @ep_is_in(%struct.s3c_hsudc_ep* %267)
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %274

270:                                              ; preds = %249
  %271 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %272 = load i32, i32* %10, align 4
  %273 = call i32 @s3c_hsudc_epin_intr(%struct.s3c_hsudc* %271, i32 %272)
  br label %278

274:                                              ; preds = %249
  %275 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %276 = load i32, i32* %10, align 4
  %277 = call i32 @s3c_hsudc_epout_intr(%struct.s3c_hsudc* %275, i32 %276)
  br label %278

278:                                              ; preds = %274, %270
  br label %279

279:                                              ; preds = %278, %245
  %280 = load i32, i32* %8, align 4
  %281 = ashr i32 %280, 1
  store i32 %281, i32* %8, align 4
  %282 = load i32, i32* %10, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %10, align 4
  br label %242

284:                                              ; preds = %242
  %285 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %286 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %285, i32 0, i32 0
  %287 = call i32 @spin_unlock(i32* %286)
  %288 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %288, i32* %3, align 4
  br label %289

289:                                              ; preds = %284, %36
  %290 = load i32, i32* %3, align 4
  ret i32 %290
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @s3c_hsudc_nuke_ep(%struct.s3c_hsudc_ep*, i32) #1

declare dso_local i32 @s3c_hsudc_reconfig(%struct.s3c_hsudc*) #1

declare dso_local i32 @set_index(%struct.s3c_hsudc*, i32) #1

declare dso_local i32 @s3c_hsudc_handle_ep0_intr(%struct.s3c_hsudc*) #1

declare dso_local i64 @ep_is_in(%struct.s3c_hsudc_ep*) #1

declare dso_local i32 @s3c_hsudc_epin_intr(%struct.s3c_hsudc*, i32) #1

declare dso_local i32 @s3c_hsudc_epout_intr(%struct.s3c_hsudc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
