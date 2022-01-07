; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_alloc_scbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_alloc_scbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32, %struct.scb_data }
%struct.scb_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.scb = type { %struct.TYPE_2__*, %struct.hardware_scb*, i32, %struct.ahd_softc*, i8*, i8*, i32*, i32*, %struct.scb*, %struct.scb*, %struct.scb*, %struct.scb_platform_data*, i8*, i32*, i32 }
%struct.TYPE_2__ = type { %struct.scb* }
%struct.hardware_scb = type { i32, i32 }
%struct.scb_platform_data = type { i32 }
%struct.map_node = type { %struct.TYPE_2__*, %struct.hardware_scb*, i32, %struct.ahd_softc*, i8*, i8*, i32*, i32*, %struct.map_node*, %struct.map_node*, %struct.map_node*, %struct.scb_platform_data*, i8*, i32*, i32 }

@AHD_SCB_MAX_ALLOC = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@links = common dso_local global i32 0, align 4
@ahd_dmamap_cb = common dso_local global i32 0, align 4
@AHD_SENSE_BUFSIZE = common dso_local global i32 0, align 4
@AHD_64BIT_ADDRESSING = common dso_local global i32 0, align 4
@SCB_FLAG_NONE = common dso_local global i32 0, align 4
@AHD_SHOW_MEMORY = common dso_local global i32 0, align 4
@ahd_debug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahd_softc*)* @ahd_alloc_scbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahd_alloc_scbs(%struct.ahd_softc* %0) #0 {
  %2 = alloca %struct.ahd_softc*, align 8
  %3 = alloca %struct.scb_data*, align 8
  %4 = alloca %struct.scb*, align 8
  %5 = alloca %struct.hardware_scb*, align 8
  %6 = alloca %struct.map_node*, align 8
  %7 = alloca %struct.map_node*, align 8
  %8 = alloca %struct.map_node*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.scb_platform_data*, align 8
  %20 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %2, align 8
  %21 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %22 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %21, i32 0, i32 1
  store %struct.scb_data* %22, %struct.scb_data** %3, align 8
  %23 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %24 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @AHD_SCB_MAX_ALLOC, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  br label %473

29:                                               ; preds = %1
  %30 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %31 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %62

34:                                               ; preds = %29
  %35 = load i32, i32* @PAGE_SIZE, align 4
  %36 = sext i32 %35 to i64
  %37 = udiv i64 %36, 8
  %38 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %39 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = sub i64 %37, %41
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %16, align 4
  %44 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %45 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %44, i32 0, i32 9
  %46 = call %struct.scb* @SLIST_FIRST(i32* %45)
  %47 = bitcast %struct.scb* %46 to %struct.map_node*
  store %struct.map_node* %47, %struct.map_node** %6, align 8
  %48 = load %struct.map_node*, %struct.map_node** %6, align 8
  %49 = getelementptr inbounds %struct.map_node, %struct.map_node* %48, i32 0, i32 13
  %50 = load i32*, i32** %49, align 8
  %51 = bitcast i32* %50 to %struct.hardware_scb*
  %52 = load i32, i32* %16, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %51, i64 %53
  store %struct.hardware_scb* %54, %struct.hardware_scb** %5, align 8
  %55 = load %struct.map_node*, %struct.map_node** %6, align 8
  %56 = getelementptr inbounds %struct.map_node, %struct.map_node* %55, i32 0, i32 12
  %57 = load i8*, i8** %56, align 8
  %58 = load i32, i32* %16, align 4
  %59 = sext i32 %58 to i64
  %60 = mul i64 %59, 8
  %61 = getelementptr i8, i8* %57, i64 %60
  store i8* %61, i8** %11, align 8
  br label %121

62:                                               ; preds = %29
  %63 = load i32, i32* @GFP_ATOMIC, align 4
  %64 = call i8* @kmalloc(i32 120, i32 %63)
  %65 = bitcast i8* %64 to %struct.map_node*
  store %struct.map_node* %65, %struct.map_node** %6, align 8
  %66 = load %struct.map_node*, %struct.map_node** %6, align 8
  %67 = icmp eq %struct.map_node* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %473

69:                                               ; preds = %62
  %70 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %71 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %72 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %71, i32 0, i32 8
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.map_node*, %struct.map_node** %6, align 8
  %75 = getelementptr inbounds %struct.map_node, %struct.map_node* %74, i32 0, i32 13
  %76 = bitcast i32** %75 to i8**
  %77 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %78 = load %struct.map_node*, %struct.map_node** %6, align 8
  %79 = getelementptr inbounds %struct.map_node, %struct.map_node* %78, i32 0, i32 14
  %80 = call i64 @ahd_dmamem_alloc(%struct.ahd_softc* %70, i32 %73, i8** %76, i32 %77, i32* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %69
  %83 = load %struct.map_node*, %struct.map_node** %6, align 8
  %84 = bitcast %struct.map_node* %83 to %struct.scb*
  %85 = call i32 @kfree(%struct.scb* %84)
  br label %473

86:                                               ; preds = %69
  %87 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %88 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %87, i32 0, i32 9
  %89 = load %struct.map_node*, %struct.map_node** %6, align 8
  %90 = bitcast %struct.map_node* %89 to %struct.scb*
  %91 = load i32, i32* @links, align 4
  %92 = call i32 @SLIST_INSERT_HEAD(i32* %88, %struct.scb* %90, i32 %91)
  %93 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %94 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %95 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %94, i32 0, i32 8
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.map_node*, %struct.map_node** %6, align 8
  %98 = getelementptr inbounds %struct.map_node, %struct.map_node* %97, i32 0, i32 14
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.map_node*, %struct.map_node** %6, align 8
  %101 = getelementptr inbounds %struct.map_node, %struct.map_node* %100, i32 0, i32 13
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* @PAGE_SIZE, align 4
  %104 = load i32, i32* @ahd_dmamap_cb, align 4
  %105 = load %struct.map_node*, %struct.map_node** %6, align 8
  %106 = getelementptr inbounds %struct.map_node, %struct.map_node* %105, i32 0, i32 12
  %107 = call i32 @ahd_dmamap_load(%struct.ahd_softc* %93, i32 %96, i32 %99, i32* %102, i32 %103, i32 %104, i8** %106, i32 0)
  %108 = load %struct.map_node*, %struct.map_node** %6, align 8
  %109 = getelementptr inbounds %struct.map_node, %struct.map_node* %108, i32 0, i32 13
  %110 = load i32*, i32** %109, align 8
  %111 = bitcast i32* %110 to %struct.hardware_scb*
  store %struct.hardware_scb* %111, %struct.hardware_scb** %5, align 8
  %112 = load %struct.map_node*, %struct.map_node** %6, align 8
  %113 = getelementptr inbounds %struct.map_node, %struct.map_node* %112, i32 0, i32 12
  %114 = load i8*, i8** %113, align 8
  store i8* %114, i8** %11, align 8
  %115 = load i32, i32* @PAGE_SIZE, align 4
  %116 = sext i32 %115 to i64
  %117 = udiv i64 %116, 8
  %118 = trunc i64 %117 to i32
  %119 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %120 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  br label %121

121:                                              ; preds = %86, %34
  %122 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %123 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %155

126:                                              ; preds = %121
  %127 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %128 = call i32 @ahd_sglist_allocsize(%struct.ahd_softc* %127)
  %129 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %130 = call i32 @ahd_sglist_size(%struct.ahd_softc* %129)
  %131 = sdiv i32 %128, %130
  %132 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %133 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = sub nsw i32 %131, %134
  %136 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %137 = call i32 @ahd_sglist_size(%struct.ahd_softc* %136)
  %138 = mul nsw i32 %135, %137
  store i32 %138, i32* %17, align 4
  %139 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %140 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %139, i32 0, i32 7
  %141 = call %struct.scb* @SLIST_FIRST(i32* %140)
  %142 = bitcast %struct.scb* %141 to %struct.map_node*
  store %struct.map_node* %142, %struct.map_node** %7, align 8
  %143 = load %struct.map_node*, %struct.map_node** %7, align 8
  %144 = getelementptr inbounds %struct.map_node, %struct.map_node* %143, i32 0, i32 13
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %17, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  store i32* %148, i32** %9, align 8
  %149 = load %struct.map_node*, %struct.map_node** %7, align 8
  %150 = getelementptr inbounds %struct.map_node, %struct.map_node* %149, i32 0, i32 12
  %151 = load i8*, i8** %150, align 8
  %152 = load i32, i32* %17, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr i8, i8* %151, i64 %153
  store i8* %154, i8** %12, align 8
  br label %215

155:                                              ; preds = %121
  %156 = load i32, i32* @GFP_ATOMIC, align 4
  %157 = call i8* @kmalloc(i32 120, i32 %156)
  %158 = bitcast i8* %157 to %struct.map_node*
  store %struct.map_node* %158, %struct.map_node** %7, align 8
  %159 = load %struct.map_node*, %struct.map_node** %7, align 8
  %160 = icmp eq %struct.map_node* %159, null
  br i1 %160, label %161, label %162

161:                                              ; preds = %155
  br label %473

162:                                              ; preds = %155
  %163 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %164 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %165 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %164, i32 0, i32 6
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.map_node*, %struct.map_node** %7, align 8
  %168 = getelementptr inbounds %struct.map_node, %struct.map_node* %167, i32 0, i32 13
  %169 = bitcast i32** %168 to i8**
  %170 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %171 = load %struct.map_node*, %struct.map_node** %7, align 8
  %172 = getelementptr inbounds %struct.map_node, %struct.map_node* %171, i32 0, i32 14
  %173 = call i64 @ahd_dmamem_alloc(%struct.ahd_softc* %163, i32 %166, i8** %169, i32 %170, i32* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %162
  %176 = load %struct.map_node*, %struct.map_node** %7, align 8
  %177 = bitcast %struct.map_node* %176 to %struct.scb*
  %178 = call i32 @kfree(%struct.scb* %177)
  br label %473

179:                                              ; preds = %162
  %180 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %181 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %180, i32 0, i32 7
  %182 = load %struct.map_node*, %struct.map_node** %7, align 8
  %183 = bitcast %struct.map_node* %182 to %struct.scb*
  %184 = load i32, i32* @links, align 4
  %185 = call i32 @SLIST_INSERT_HEAD(i32* %181, %struct.scb* %183, i32 %184)
  %186 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %187 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %188 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %187, i32 0, i32 6
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.map_node*, %struct.map_node** %7, align 8
  %191 = getelementptr inbounds %struct.map_node, %struct.map_node* %190, i32 0, i32 14
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.map_node*, %struct.map_node** %7, align 8
  %194 = getelementptr inbounds %struct.map_node, %struct.map_node* %193, i32 0, i32 13
  %195 = load i32*, i32** %194, align 8
  %196 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %197 = call i32 @ahd_sglist_allocsize(%struct.ahd_softc* %196)
  %198 = load i32, i32* @ahd_dmamap_cb, align 4
  %199 = load %struct.map_node*, %struct.map_node** %7, align 8
  %200 = getelementptr inbounds %struct.map_node, %struct.map_node* %199, i32 0, i32 12
  %201 = call i32 @ahd_dmamap_load(%struct.ahd_softc* %186, i32 %189, i32 %192, i32* %195, i32 %197, i32 %198, i8** %200, i32 0)
  %202 = load %struct.map_node*, %struct.map_node** %7, align 8
  %203 = getelementptr inbounds %struct.map_node, %struct.map_node* %202, i32 0, i32 13
  %204 = load i32*, i32** %203, align 8
  store i32* %204, i32** %9, align 8
  %205 = load %struct.map_node*, %struct.map_node** %7, align 8
  %206 = getelementptr inbounds %struct.map_node, %struct.map_node* %205, i32 0, i32 12
  %207 = load i8*, i8** %206, align 8
  store i8* %207, i8** %12, align 8
  %208 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %209 = call i32 @ahd_sglist_allocsize(%struct.ahd_softc* %208)
  %210 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %211 = call i32 @ahd_sglist_size(%struct.ahd_softc* %210)
  %212 = sdiv i32 %209, %211
  %213 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %214 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %213, i32 0, i32 2
  store i32 %212, i32* %214, align 4
  br label %215

215:                                              ; preds = %179, %126
  %216 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %217 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %244

220:                                              ; preds = %215
  %221 = load i32, i32* @PAGE_SIZE, align 4
  %222 = load i32, i32* @AHD_SENSE_BUFSIZE, align 4
  %223 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %224 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 4
  %226 = mul nsw i32 %222, %225
  %227 = sub nsw i32 %221, %226
  store i32 %227, i32* %18, align 4
  %228 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %229 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %228, i32 0, i32 5
  %230 = call %struct.scb* @SLIST_FIRST(i32* %229)
  %231 = bitcast %struct.scb* %230 to %struct.map_node*
  store %struct.map_node* %231, %struct.map_node** %8, align 8
  %232 = load %struct.map_node*, %struct.map_node** %8, align 8
  %233 = getelementptr inbounds %struct.map_node, %struct.map_node* %232, i32 0, i32 13
  %234 = load i32*, i32** %233, align 8
  %235 = load i32, i32* %18, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %234, i64 %236
  store i32* %237, i32** %10, align 8
  %238 = load %struct.map_node*, %struct.map_node** %8, align 8
  %239 = getelementptr inbounds %struct.map_node, %struct.map_node* %238, i32 0, i32 12
  %240 = load i8*, i8** %239, align 8
  %241 = load i32, i32* %18, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr i8, i8* %240, i64 %242
  store i8* %243, i8** %13, align 8
  br label %301

244:                                              ; preds = %215
  %245 = load i32, i32* @GFP_ATOMIC, align 4
  %246 = call i8* @kmalloc(i32 120, i32 %245)
  %247 = bitcast i8* %246 to %struct.map_node*
  store %struct.map_node* %247, %struct.map_node** %8, align 8
  %248 = load %struct.map_node*, %struct.map_node** %8, align 8
  %249 = icmp eq %struct.map_node* %248, null
  br i1 %249, label %250, label %251

250:                                              ; preds = %244
  br label %473

251:                                              ; preds = %244
  %252 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %253 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %254 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %253, i32 0, i32 4
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.map_node*, %struct.map_node** %8, align 8
  %257 = getelementptr inbounds %struct.map_node, %struct.map_node* %256, i32 0, i32 13
  %258 = bitcast i32** %257 to i8**
  %259 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %260 = load %struct.map_node*, %struct.map_node** %8, align 8
  %261 = getelementptr inbounds %struct.map_node, %struct.map_node* %260, i32 0, i32 14
  %262 = call i64 @ahd_dmamem_alloc(%struct.ahd_softc* %252, i32 %255, i8** %258, i32 %259, i32* %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %268

264:                                              ; preds = %251
  %265 = load %struct.map_node*, %struct.map_node** %8, align 8
  %266 = bitcast %struct.map_node* %265 to %struct.scb*
  %267 = call i32 @kfree(%struct.scb* %266)
  br label %473

268:                                              ; preds = %251
  %269 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %270 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %269, i32 0, i32 5
  %271 = load %struct.map_node*, %struct.map_node** %8, align 8
  %272 = bitcast %struct.map_node* %271 to %struct.scb*
  %273 = load i32, i32* @links, align 4
  %274 = call i32 @SLIST_INSERT_HEAD(i32* %270, %struct.scb* %272, i32 %273)
  %275 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %276 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %277 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %276, i32 0, i32 4
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.map_node*, %struct.map_node** %8, align 8
  %280 = getelementptr inbounds %struct.map_node, %struct.map_node* %279, i32 0, i32 14
  %281 = load i32, i32* %280, align 8
  %282 = load %struct.map_node*, %struct.map_node** %8, align 8
  %283 = getelementptr inbounds %struct.map_node, %struct.map_node* %282, i32 0, i32 13
  %284 = load i32*, i32** %283, align 8
  %285 = load i32, i32* @PAGE_SIZE, align 4
  %286 = load i32, i32* @ahd_dmamap_cb, align 4
  %287 = load %struct.map_node*, %struct.map_node** %8, align 8
  %288 = getelementptr inbounds %struct.map_node, %struct.map_node* %287, i32 0, i32 12
  %289 = call i32 @ahd_dmamap_load(%struct.ahd_softc* %275, i32 %278, i32 %281, i32* %284, i32 %285, i32 %286, i8** %288, i32 0)
  %290 = load %struct.map_node*, %struct.map_node** %8, align 8
  %291 = getelementptr inbounds %struct.map_node, %struct.map_node* %290, i32 0, i32 13
  %292 = load i32*, i32** %291, align 8
  store i32* %292, i32** %10, align 8
  %293 = load %struct.map_node*, %struct.map_node** %8, align 8
  %294 = getelementptr inbounds %struct.map_node, %struct.map_node* %293, i32 0, i32 12
  %295 = load i8*, i8** %294, align 8
  store i8* %295, i8** %13, align 8
  %296 = load i32, i32* @PAGE_SIZE, align 4
  %297 = load i32, i32* @AHD_SENSE_BUFSIZE, align 4
  %298 = sdiv i32 %296, %297
  %299 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %300 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %299, i32 0, i32 3
  store i32 %298, i32* %300, align 4
  br label %301

301:                                              ; preds = %268, %220
  %302 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %303 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %302, i32 0, i32 3
  %304 = load i32, i32* %303, align 4
  %305 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %306 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = call i32 @min(i32 %304, i32 %307)
  store i32 %308, i32* %14, align 4
  %309 = load i32, i32* %14, align 4
  %310 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %311 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %310, i32 0, i32 2
  %312 = load i32, i32* %311, align 4
  %313 = call i32 @min(i32 %309, i32 %312)
  store i32 %313, i32* %14, align 4
  %314 = load i32, i32* %14, align 4
  %315 = load i32, i32* @AHD_SCB_MAX_ALLOC, align 4
  %316 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %317 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 4
  %319 = sub nsw i32 %315, %318
  %320 = call i32 @min(i32 %314, i32 %319)
  store i32 %320, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %321

321:                                              ; preds = %470, %301
  %322 = load i32, i32* %15, align 4
  %323 = load i32, i32* %14, align 4
  %324 = icmp slt i32 %322, %323
  br i1 %324, label %325, label %473

325:                                              ; preds = %321
  %326 = load i32, i32* @GFP_ATOMIC, align 4
  %327 = call i8* @kmalloc(i32 120, i32 %326)
  %328 = bitcast i8* %327 to %struct.scb*
  store %struct.scb* %328, %struct.scb** %4, align 8
  %329 = load %struct.scb*, %struct.scb** %4, align 8
  %330 = icmp eq %struct.scb* %329, null
  br i1 %330, label %331, label %332

331:                                              ; preds = %325
  br label %473

332:                                              ; preds = %325
  %333 = load i32, i32* @GFP_ATOMIC, align 4
  %334 = call i8* @kmalloc(i32 4, i32 %333)
  %335 = bitcast i8* %334 to %struct.scb_platform_data*
  store %struct.scb_platform_data* %335, %struct.scb_platform_data** %19, align 8
  %336 = load %struct.scb_platform_data*, %struct.scb_platform_data** %19, align 8
  %337 = icmp eq %struct.scb_platform_data* %336, null
  br i1 %337, label %338, label %341

338:                                              ; preds = %332
  %339 = load %struct.scb*, %struct.scb** %4, align 8
  %340 = call i32 @kfree(%struct.scb* %339)
  br label %473

341:                                              ; preds = %332
  %342 = load %struct.scb_platform_data*, %struct.scb_platform_data** %19, align 8
  %343 = load %struct.scb*, %struct.scb** %4, align 8
  %344 = getelementptr inbounds %struct.scb, %struct.scb* %343, i32 0, i32 11
  store %struct.scb_platform_data* %342, %struct.scb_platform_data** %344, align 8
  %345 = load %struct.map_node*, %struct.map_node** %6, align 8
  %346 = bitcast %struct.map_node* %345 to %struct.scb*
  %347 = load %struct.scb*, %struct.scb** %4, align 8
  %348 = getelementptr inbounds %struct.scb, %struct.scb* %347, i32 0, i32 10
  store %struct.scb* %346, %struct.scb** %348, align 8
  %349 = load %struct.map_node*, %struct.map_node** %7, align 8
  %350 = bitcast %struct.map_node* %349 to %struct.scb*
  %351 = load %struct.scb*, %struct.scb** %4, align 8
  %352 = getelementptr inbounds %struct.scb, %struct.scb* %351, i32 0, i32 9
  store %struct.scb* %350, %struct.scb** %352, align 8
  %353 = load %struct.map_node*, %struct.map_node** %8, align 8
  %354 = bitcast %struct.map_node* %353 to %struct.scb*
  %355 = load %struct.scb*, %struct.scb** %4, align 8
  %356 = getelementptr inbounds %struct.scb, %struct.scb* %355, i32 0, i32 8
  store %struct.scb* %354, %struct.scb** %356, align 8
  %357 = load i32*, i32** %9, align 8
  %358 = load %struct.scb*, %struct.scb** %4, align 8
  %359 = getelementptr inbounds %struct.scb, %struct.scb* %358, i32 0, i32 7
  store i32* %357, i32** %359, align 8
  %360 = load i32*, i32** %10, align 8
  %361 = load %struct.scb*, %struct.scb** %4, align 8
  %362 = getelementptr inbounds %struct.scb, %struct.scb* %361, i32 0, i32 6
  store i32* %360, i32** %362, align 8
  %363 = load i8*, i8** %13, align 8
  %364 = load %struct.scb*, %struct.scb** %4, align 8
  %365 = getelementptr inbounds %struct.scb, %struct.scb* %364, i32 0, i32 5
  store i8* %363, i8** %365, align 8
  %366 = load %struct.hardware_scb*, %struct.hardware_scb** %5, align 8
  %367 = call i32 @memset(%struct.hardware_scb* %366, i32 0, i32 8)
  %368 = load %struct.hardware_scb*, %struct.hardware_scb** %5, align 8
  %369 = load %struct.scb*, %struct.scb** %4, align 8
  %370 = getelementptr inbounds %struct.scb, %struct.scb* %369, i32 0, i32 1
  store %struct.hardware_scb* %368, %struct.hardware_scb** %370, align 8
  %371 = load i8*, i8** %11, align 8
  %372 = call i32 @ahd_htole32(i8* %371)
  %373 = load %struct.hardware_scb*, %struct.hardware_scb** %5, align 8
  %374 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %373, i32 0, i32 1
  store i32 %372, i32* %374, align 4
  %375 = load i8*, i8** %12, align 8
  %376 = load %struct.scb*, %struct.scb** %4, align 8
  %377 = getelementptr inbounds %struct.scb, %struct.scb* %376, i32 0, i32 4
  store i8* %375, i8** %377, align 8
  %378 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %379 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 4
  %381 = load i32, i32* @AHD_64BIT_ADDRESSING, align 4
  %382 = and i32 %380, %381
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %389

384:                                              ; preds = %341
  %385 = load %struct.scb*, %struct.scb** %4, align 8
  %386 = getelementptr inbounds %struct.scb, %struct.scb* %385, i32 0, i32 4
  %387 = load i8*, i8** %386, align 8
  %388 = getelementptr i8, i8* %387, i64 4
  store i8* %388, i8** %386, align 8
  br label %394

389:                                              ; preds = %341
  %390 = load %struct.scb*, %struct.scb** %4, align 8
  %391 = getelementptr inbounds %struct.scb, %struct.scb* %390, i32 0, i32 4
  %392 = load i8*, i8** %391, align 8
  %393 = getelementptr i8, i8* %392, i64 4
  store i8* %393, i8** %391, align 8
  br label %394

394:                                              ; preds = %389, %384
  %395 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %396 = load %struct.scb*, %struct.scb** %4, align 8
  %397 = getelementptr inbounds %struct.scb, %struct.scb* %396, i32 0, i32 3
  store %struct.ahd_softc* %395, %struct.ahd_softc** %397, align 8
  %398 = load i32, i32* @SCB_FLAG_NONE, align 4
  %399 = load %struct.scb*, %struct.scb** %4, align 8
  %400 = getelementptr inbounds %struct.scb, %struct.scb* %399, i32 0, i32 2
  store i32 %398, i32* %400, align 8
  %401 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %402 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %401, i32 0, i32 0
  %403 = load i32, i32* %402, align 4
  %404 = call i32 @ahd_htole16(i32 %403)
  %405 = load %struct.scb*, %struct.scb** %4, align 8
  %406 = getelementptr inbounds %struct.scb, %struct.scb* %405, i32 0, i32 1
  %407 = load %struct.hardware_scb*, %struct.hardware_scb** %406, align 8
  %408 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %407, i32 0, i32 0
  store i32 %404, i32* %408, align 4
  %409 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %410 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %409, i32 0, i32 0
  %411 = load i32, i32* %410, align 4
  %412 = xor i32 %411, 256
  store i32 %412, i32* %20, align 4
  %413 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %414 = load i32, i32* %20, align 4
  %415 = call %struct.TYPE_2__* @ahd_find_scb_by_tag(%struct.ahd_softc* %413, i32 %414)
  %416 = load %struct.scb*, %struct.scb** %4, align 8
  %417 = getelementptr inbounds %struct.scb, %struct.scb* %416, i32 0, i32 0
  store %struct.TYPE_2__* %415, %struct.TYPE_2__** %417, align 8
  %418 = load %struct.scb*, %struct.scb** %4, align 8
  %419 = getelementptr inbounds %struct.scb, %struct.scb* %418, i32 0, i32 0
  %420 = load %struct.TYPE_2__*, %struct.TYPE_2__** %419, align 8
  %421 = icmp ne %struct.TYPE_2__* %420, null
  br i1 %421, label %422, label %428

422:                                              ; preds = %394
  %423 = load %struct.scb*, %struct.scb** %4, align 8
  %424 = load %struct.scb*, %struct.scb** %4, align 8
  %425 = getelementptr inbounds %struct.scb, %struct.scb* %424, i32 0, i32 0
  %426 = load %struct.TYPE_2__*, %struct.TYPE_2__** %425, align 8
  %427 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %426, i32 0, i32 0
  store %struct.scb* %423, %struct.scb** %427, align 8
  br label %428

428:                                              ; preds = %422, %394
  %429 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %430 = load %struct.scb*, %struct.scb** %4, align 8
  %431 = call i32 @ahd_free_scb(%struct.ahd_softc* %429, %struct.scb* %430)
  %432 = load %struct.hardware_scb*, %struct.hardware_scb** %5, align 8
  %433 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %432, i32 1
  store %struct.hardware_scb* %433, %struct.hardware_scb** %5, align 8
  %434 = load i8*, i8** %11, align 8
  %435 = getelementptr i8, i8* %434, i64 8
  store i8* %435, i8** %11, align 8
  %436 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %437 = call i32 @ahd_sglist_size(%struct.ahd_softc* %436)
  %438 = load i32*, i32** %9, align 8
  %439 = sext i32 %437 to i64
  %440 = getelementptr inbounds i32, i32* %438, i64 %439
  store i32* %440, i32** %9, align 8
  %441 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %442 = call i32 @ahd_sglist_size(%struct.ahd_softc* %441)
  %443 = load i8*, i8** %12, align 8
  %444 = sext i32 %442 to i64
  %445 = getelementptr i8, i8* %443, i64 %444
  store i8* %445, i8** %12, align 8
  %446 = load i32, i32* @AHD_SENSE_BUFSIZE, align 4
  %447 = load i32*, i32** %10, align 8
  %448 = sext i32 %446 to i64
  %449 = getelementptr inbounds i32, i32* %447, i64 %448
  store i32* %449, i32** %10, align 8
  %450 = load i32, i32* @AHD_SENSE_BUFSIZE, align 4
  %451 = load i8*, i8** %13, align 8
  %452 = sext i32 %450 to i64
  %453 = getelementptr i8, i8* %451, i64 %452
  store i8* %453, i8** %13, align 8
  %454 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %455 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %454, i32 0, i32 0
  %456 = load i32, i32* %455, align 4
  %457 = add nsw i32 %456, 1
  store i32 %457, i32* %455, align 4
  %458 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %459 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %458, i32 0, i32 3
  %460 = load i32, i32* %459, align 4
  %461 = add nsw i32 %460, -1
  store i32 %461, i32* %459, align 4
  %462 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %463 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %462, i32 0, i32 1
  %464 = load i32, i32* %463, align 4
  %465 = add nsw i32 %464, -1
  store i32 %465, i32* %463, align 4
  %466 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %467 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %466, i32 0, i32 2
  %468 = load i32, i32* %467, align 4
  %469 = add nsw i32 %468, -1
  store i32 %469, i32* %467, align 4
  br label %470

470:                                              ; preds = %428
  %471 = load i32, i32* %15, align 4
  %472 = add nsw i32 %471, 1
  store i32 %472, i32* %15, align 4
  br label %321

473:                                              ; preds = %28, %68, %82, %161, %175, %250, %264, %338, %331, %321
  ret void
}

declare dso_local %struct.scb* @SLIST_FIRST(i32*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i64 @ahd_dmamem_alloc(%struct.ahd_softc*, i32, i8**, i32, i32*) #1

declare dso_local i32 @kfree(%struct.scb*) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.scb*, i32) #1

declare dso_local i32 @ahd_dmamap_load(%struct.ahd_softc*, i32, i32, i32*, i32, i32, i8**, i32) #1

declare dso_local i32 @ahd_sglist_allocsize(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_sglist_size(%struct.ahd_softc*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memset(%struct.hardware_scb*, i32, i32) #1

declare dso_local i32 @ahd_htole32(i8*) #1

declare dso_local i32 @ahd_htole16(i32) #1

declare dso_local %struct.TYPE_2__* @ahd_find_scb_by_tag(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_free_scb(%struct.ahd_softc*, %struct.scb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
