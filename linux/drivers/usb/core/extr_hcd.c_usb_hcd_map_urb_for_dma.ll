; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_hcd.c_usb_hcd_map_urb_for_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_hcd.c_usb_hcd_map_urb_for_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64 }
%struct.urb = type { i8*, i32, i32, i32, i32, i8*, i8*, %struct.TYPE_6__*, %struct.scatterlist*, %struct.TYPE_4__*, i8* }
%struct.TYPE_6__ = type { i32 }
%struct.scatterlist = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"setup packet is not dma capable\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"setup packet is on stack\0A\00", align 1
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@URB_SETUP_MAP_SINGLE = common dso_local global i32 0, align 4
@URB_SETUP_MAP_LOCAL = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@URB_DMA_MAP_SG = common dso_local global i32 0, align 4
@URB_DMA_SG_COMBINED = common dso_local global i32 0, align 4
@URB_DMA_MAP_PAGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"transfer buffer not dma capable\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"transfer buffer is on stack\0A\00", align 1
@URB_DMA_MAP_SINGLE = common dso_local global i32 0, align 4
@URB_MAP_LOCAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_hcd_map_urb_for_dma(%struct.usb_hcd* %0, %struct.urb* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_hcd*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.scatterlist*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %5, align 8
  store %struct.urb* %1, %struct.urb** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %12 = load %struct.urb*, %struct.urb** %6, align 8
  %13 = getelementptr inbounds %struct.urb, %struct.urb* %12, i32 0, i32 9
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = call i64 @usb_endpoint_xfer_control(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %111

18:                                               ; preds = %3
  %19 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %20 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %4, align 4
  br label %344

26:                                               ; preds = %18
  %27 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %28 = call i64 @hcd_uses_dma(%struct.usb_hcd* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %81

30:                                               ; preds = %26
  %31 = load %struct.urb*, %struct.urb** %6, align 8
  %32 = getelementptr inbounds %struct.urb, %struct.urb* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i64 @is_vmalloc_addr(i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @EAGAIN, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %344

40:                                               ; preds = %30
  %41 = load %struct.urb*, %struct.urb** %6, align 8
  %42 = getelementptr inbounds %struct.urb, %struct.urb* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i64 @object_is_on_stack(i8* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @EAGAIN, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %344

50:                                               ; preds = %40
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %53 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.urb*, %struct.urb** %6, align 8
  %57 = getelementptr inbounds %struct.urb, %struct.urb* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = load i32, i32* @DMA_TO_DEVICE, align 4
  %60 = call i8* @dma_map_single(i32 %55, i8* %58, i32 4, i32 %59)
  %61 = load %struct.urb*, %struct.urb** %6, align 8
  %62 = getelementptr inbounds %struct.urb, %struct.urb* %61, i32 0, i32 10
  store i8* %60, i8** %62, align 8
  %63 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %64 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.urb*, %struct.urb** %6, align 8
  %68 = getelementptr inbounds %struct.urb, %struct.urb* %67, i32 0, i32 10
  %69 = load i8*, i8** %68, align 8
  %70 = call i64 @dma_mapping_error(i32 %66, i8* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %51
  %73 = load i32, i32* @EAGAIN, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %344

75:                                               ; preds = %51
  %76 = load i32, i32* @URB_SETUP_MAP_SINGLE, align 4
  %77 = load %struct.urb*, %struct.urb** %6, align 8
  %78 = getelementptr inbounds %struct.urb, %struct.urb* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 8
  br label %110

81:                                               ; preds = %26
  %82 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %83 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %109

86:                                               ; preds = %81
  %87 = load %struct.urb*, %struct.urb** %6, align 8
  %88 = getelementptr inbounds %struct.urb, %struct.urb* %87, i32 0, i32 7
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %7, align 4
  %93 = load %struct.urb*, %struct.urb** %6, align 8
  %94 = getelementptr inbounds %struct.urb, %struct.urb* %93, i32 0, i32 10
  %95 = load %struct.urb*, %struct.urb** %6, align 8
  %96 = getelementptr inbounds %struct.urb, %struct.urb* %95, i32 0, i32 0
  %97 = load i32, i32* @DMA_TO_DEVICE, align 4
  %98 = call i32 @hcd_alloc_coherent(i32 %91, i32 %92, i8** %94, i8** %96, i32 4, i32 %97)
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %86
  %102 = load i32, i32* %9, align 4
  store i32 %102, i32* %4, align 4
  br label %344

103:                                              ; preds = %86
  %104 = load i32, i32* @URB_SETUP_MAP_LOCAL, align 4
  %105 = load %struct.urb*, %struct.urb** %6, align 8
  %106 = getelementptr inbounds %struct.urb, %struct.urb* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 8
  br label %109

109:                                              ; preds = %103, %81
  br label %110

110:                                              ; preds = %109, %75
  br label %111

111:                                              ; preds = %110, %3
  %112 = load %struct.urb*, %struct.urb** %6, align 8
  %113 = call i64 @usb_urb_dir_in(%struct.urb* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %111
  %116 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %119

117:                                              ; preds = %111
  %118 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %119

119:                                              ; preds = %117, %115
  %120 = phi i32 [ %116, %115 ], [ %118, %117 ]
  store i32 %120, i32* %8, align 4
  %121 = load %struct.urb*, %struct.urb** %6, align 8
  %122 = getelementptr inbounds %struct.urb, %struct.urb* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %342

125:                                              ; preds = %119
  %126 = load %struct.urb*, %struct.urb** %6, align 8
  %127 = getelementptr inbounds %struct.urb, %struct.urb* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %342, label %132

132:                                              ; preds = %125
  %133 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %134 = call i64 @hcd_uses_dma(%struct.usb_hcd* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %294

136:                                              ; preds = %132
  %137 = load %struct.urb*, %struct.urb** %6, align 8
  %138 = getelementptr inbounds %struct.urb, %struct.urb* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %192

141:                                              ; preds = %136
  %142 = load %struct.urb*, %struct.urb** %6, align 8
  %143 = getelementptr inbounds %struct.urb, %struct.urb* %142, i32 0, i32 9
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = call i64 @usb_endpoint_xfer_isoc(i32* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %141
  %149 = call i32 @WARN_ON(i32 1)
  %150 = load i32, i32* @EINVAL, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %4, align 4
  br label %344

152:                                              ; preds = %141
  %153 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %154 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.urb*, %struct.urb** %6, align 8
  %158 = getelementptr inbounds %struct.urb, %struct.urb* %157, i32 0, i32 8
  %159 = load %struct.scatterlist*, %struct.scatterlist** %158, align 8
  %160 = load %struct.urb*, %struct.urb** %6, align 8
  %161 = getelementptr inbounds %struct.urb, %struct.urb* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* %8, align 4
  %164 = call i32 @dma_map_sg(i32 %156, %struct.scatterlist* %159, i32 %162, i32 %163)
  store i32 %164, i32* %10, align 4
  %165 = load i32, i32* %10, align 4
  %166 = icmp sle i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %152
  %168 = load i32, i32* @EAGAIN, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %9, align 4
  br label %176

170:                                              ; preds = %152
  %171 = load i32, i32* @URB_DMA_MAP_SG, align 4
  %172 = load %struct.urb*, %struct.urb** %6, align 8
  %173 = getelementptr inbounds %struct.urb, %struct.urb* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = or i32 %174, %171
  store i32 %175, i32* %173, align 8
  br label %176

176:                                              ; preds = %170, %167
  %177 = load i32, i32* %10, align 4
  %178 = load %struct.urb*, %struct.urb** %6, align 8
  %179 = getelementptr inbounds %struct.urb, %struct.urb* %178, i32 0, i32 4
  store i32 %177, i32* %179, align 4
  %180 = load i32, i32* %10, align 4
  %181 = load %struct.urb*, %struct.urb** %6, align 8
  %182 = getelementptr inbounds %struct.urb, %struct.urb* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 8
  %184 = icmp ne i32 %180, %183
  br i1 %184, label %185, label %191

185:                                              ; preds = %176
  %186 = load i32, i32* @URB_DMA_SG_COMBINED, align 4
  %187 = load %struct.urb*, %struct.urb** %6, align 8
  %188 = getelementptr inbounds %struct.urb, %struct.urb* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = or i32 %189, %186
  store i32 %190, i32* %188, align 8
  br label %191

191:                                              ; preds = %185, %176
  br label %293

192:                                              ; preds = %136
  %193 = load %struct.urb*, %struct.urb** %6, align 8
  %194 = getelementptr inbounds %struct.urb, %struct.urb* %193, i32 0, i32 8
  %195 = load %struct.scatterlist*, %struct.scatterlist** %194, align 8
  %196 = icmp ne %struct.scatterlist* %195, null
  br i1 %196, label %197, label %236

197:                                              ; preds = %192
  %198 = load %struct.urb*, %struct.urb** %6, align 8
  %199 = getelementptr inbounds %struct.urb, %struct.urb* %198, i32 0, i32 8
  %200 = load %struct.scatterlist*, %struct.scatterlist** %199, align 8
  store %struct.scatterlist* %200, %struct.scatterlist** %11, align 8
  %201 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %202 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %206 = call i32 @sg_page(%struct.scatterlist* %205)
  %207 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %208 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.urb*, %struct.urb** %6, align 8
  %211 = getelementptr inbounds %struct.urb, %struct.urb* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* %8, align 4
  %214 = call i8* @dma_map_page(i32 %204, i32 %206, i32 %209, i32 %212, i32 %213)
  %215 = load %struct.urb*, %struct.urb** %6, align 8
  %216 = getelementptr inbounds %struct.urb, %struct.urb* %215, i32 0, i32 6
  store i8* %214, i8** %216, align 8
  %217 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %218 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.urb*, %struct.urb** %6, align 8
  %222 = getelementptr inbounds %struct.urb, %struct.urb* %221, i32 0, i32 6
  %223 = load i8*, i8** %222, align 8
  %224 = call i64 @dma_mapping_error(i32 %220, i8* %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %197
  %227 = load i32, i32* @EAGAIN, align 4
  %228 = sub nsw i32 0, %227
  store i32 %228, i32* %9, align 4
  br label %235

229:                                              ; preds = %197
  %230 = load i32, i32* @URB_DMA_MAP_PAGE, align 4
  %231 = load %struct.urb*, %struct.urb** %6, align 8
  %232 = getelementptr inbounds %struct.urb, %struct.urb* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  %234 = or i32 %233, %230
  store i32 %234, i32* %232, align 8
  br label %235

235:                                              ; preds = %229, %226
  br label %292

236:                                              ; preds = %192
  %237 = load %struct.urb*, %struct.urb** %6, align 8
  %238 = getelementptr inbounds %struct.urb, %struct.urb* %237, i32 0, i32 5
  %239 = load i8*, i8** %238, align 8
  %240 = call i64 @is_vmalloc_addr(i8* %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %246

242:                                              ; preds = %236
  %243 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %244 = load i32, i32* @EAGAIN, align 4
  %245 = sub nsw i32 0, %244
  store i32 %245, i32* %9, align 4
  br label %291

246:                                              ; preds = %236
  %247 = load %struct.urb*, %struct.urb** %6, align 8
  %248 = getelementptr inbounds %struct.urb, %struct.urb* %247, i32 0, i32 5
  %249 = load i8*, i8** %248, align 8
  %250 = call i64 @object_is_on_stack(i8* %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %256

252:                                              ; preds = %246
  %253 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %254 = load i32, i32* @EAGAIN, align 4
  %255 = sub nsw i32 0, %254
  store i32 %255, i32* %9, align 4
  br label %290

256:                                              ; preds = %246
  %257 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %258 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = load %struct.urb*, %struct.urb** %6, align 8
  %262 = getelementptr inbounds %struct.urb, %struct.urb* %261, i32 0, i32 5
  %263 = load i8*, i8** %262, align 8
  %264 = load %struct.urb*, %struct.urb** %6, align 8
  %265 = getelementptr inbounds %struct.urb, %struct.urb* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* %8, align 4
  %268 = call i8* @dma_map_single(i32 %260, i8* %263, i32 %266, i32 %267)
  %269 = load %struct.urb*, %struct.urb** %6, align 8
  %270 = getelementptr inbounds %struct.urb, %struct.urb* %269, i32 0, i32 6
  store i8* %268, i8** %270, align 8
  %271 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %272 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %271, i32 0, i32 1
  %273 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = load %struct.urb*, %struct.urb** %6, align 8
  %276 = getelementptr inbounds %struct.urb, %struct.urb* %275, i32 0, i32 6
  %277 = load i8*, i8** %276, align 8
  %278 = call i64 @dma_mapping_error(i32 %274, i8* %277)
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %283

280:                                              ; preds = %256
  %281 = load i32, i32* @EAGAIN, align 4
  %282 = sub nsw i32 0, %281
  store i32 %282, i32* %9, align 4
  br label %289

283:                                              ; preds = %256
  %284 = load i32, i32* @URB_DMA_MAP_SINGLE, align 4
  %285 = load %struct.urb*, %struct.urb** %6, align 8
  %286 = getelementptr inbounds %struct.urb, %struct.urb* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 8
  %288 = or i32 %287, %284
  store i32 %288, i32* %286, align 8
  br label %289

289:                                              ; preds = %283, %280
  br label %290

290:                                              ; preds = %289, %252
  br label %291

291:                                              ; preds = %290, %242
  br label %292

292:                                              ; preds = %291, %235
  br label %293

293:                                              ; preds = %292, %191
  br label %325

294:                                              ; preds = %132
  %295 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %296 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %295, i32 0, i32 0
  %297 = load i64, i64* %296, align 8
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %324

299:                                              ; preds = %294
  %300 = load %struct.urb*, %struct.urb** %6, align 8
  %301 = getelementptr inbounds %struct.urb, %struct.urb* %300, i32 0, i32 7
  %302 = load %struct.TYPE_6__*, %struct.TYPE_6__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 4
  %305 = load i32, i32* %7, align 4
  %306 = load %struct.urb*, %struct.urb** %6, align 8
  %307 = getelementptr inbounds %struct.urb, %struct.urb* %306, i32 0, i32 6
  %308 = load %struct.urb*, %struct.urb** %6, align 8
  %309 = getelementptr inbounds %struct.urb, %struct.urb* %308, i32 0, i32 5
  %310 = load %struct.urb*, %struct.urb** %6, align 8
  %311 = getelementptr inbounds %struct.urb, %struct.urb* %310, i32 0, i32 2
  %312 = load i32, i32* %311, align 4
  %313 = load i32, i32* %8, align 4
  %314 = call i32 @hcd_alloc_coherent(i32 %304, i32 %305, i8** %307, i8** %309, i32 %312, i32 %313)
  store i32 %314, i32* %9, align 4
  %315 = load i32, i32* %9, align 4
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %317, label %323

317:                                              ; preds = %299
  %318 = load i32, i32* @URB_MAP_LOCAL, align 4
  %319 = load %struct.urb*, %struct.urb** %6, align 8
  %320 = getelementptr inbounds %struct.urb, %struct.urb* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 8
  %322 = or i32 %321, %318
  store i32 %322, i32* %320, align 8
  br label %323

323:                                              ; preds = %317, %299
  br label %324

324:                                              ; preds = %323, %294
  br label %325

325:                                              ; preds = %324, %293
  %326 = load i32, i32* %9, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %341

328:                                              ; preds = %325
  %329 = load %struct.urb*, %struct.urb** %6, align 8
  %330 = getelementptr inbounds %struct.urb, %struct.urb* %329, i32 0, i32 1
  %331 = load i32, i32* %330, align 8
  %332 = load i32, i32* @URB_SETUP_MAP_SINGLE, align 4
  %333 = load i32, i32* @URB_SETUP_MAP_LOCAL, align 4
  %334 = or i32 %332, %333
  %335 = and i32 %331, %334
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %341

337:                                              ; preds = %328
  %338 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %339 = load %struct.urb*, %struct.urb** %6, align 8
  %340 = call i32 @usb_hcd_unmap_urb_for_dma(%struct.usb_hcd* %338, %struct.urb* %339)
  br label %341

341:                                              ; preds = %337, %328, %325
  br label %342

342:                                              ; preds = %341, %125, %119
  %343 = load i32, i32* %9, align 4
  store i32 %343, i32* %4, align 4
  br label %344

344:                                              ; preds = %342, %148, %101, %72, %46, %36, %24
  %345 = load i32, i32* %4, align 4
  ret i32 %345
}

declare dso_local i64 @usb_endpoint_xfer_control(i32*) #1

declare dso_local i64 @hcd_uses_dma(%struct.usb_hcd*) #1

declare dso_local i64 @is_vmalloc_addr(i8*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i64 @object_is_on_stack(i8*) #1

declare dso_local i8* @dma_map_single(i32, i8*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i8*) #1

declare dso_local i32 @hcd_alloc_coherent(i32, i32, i8**, i8**, i32, i32) #1

declare dso_local i64 @usb_urb_dir_in(%struct.urb*) #1

declare dso_local i64 @usb_endpoint_xfer_isoc(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @dma_map_sg(i32, %struct.scatterlist*, i32, i32) #1

declare dso_local i8* @dma_map_page(i32, i32, i32, i32, i32) #1

declare dso_local i32 @sg_page(%struct.scatterlist*) #1

declare dso_local i32 @usb_hcd_unmap_urb_for_dma(%struct.usb_hcd*, %struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
