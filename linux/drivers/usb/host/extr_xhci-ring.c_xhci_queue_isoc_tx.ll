; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_xhci_queue_isoc_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_xhci_queue_isoc_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32, i32, i32, %struct.TYPE_14__** }
%struct.TYPE_14__ = type { %struct.xhci_virt_ep* }
%struct.xhci_virt_ep = type { i64, i64, %struct.xhci_ring* }
%struct.xhci_ring = type { i32, i32, i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.xhci_generic_trb }
%struct.xhci_generic_trb = type { i32 }
%struct.urb = type { i32, i32, i32, %struct.TYPE_9__*, i32, i64, %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.urb_priv*, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i64 }
%struct.urb_priv = type { %struct.xhci_td* }
%struct.xhci_td = type { i32, i32, %struct.TYPE_12__*, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@.str = private unnamed_addr constant [29 x i8] c"Isoc URB with zero packets?\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TRB_SIA = common dso_local global i32 0, align 4
@URB_ISO_ASAP = common dso_local global i32 0, align 4
@TRB_ISOC = common dso_local global i32 0, align 4
@TRB_NORMAL = common dso_local global i32 0, align 4
@TRB_ISP = common dso_local global i32 0, align 4
@TRB_CHAIN = common dso_local global i32 0, align 4
@TRB_IOC = common dso_local global i32 0, align 4
@XHCI_AVOID_BEI = common dso_local global i32 0, align 4
@TRB_BEI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"ISOC TD length unmatch\0A\00", align 1
@XHCI_AMD_PLL_FIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xhci_hcd*, i32, %struct.urb*, i32, i32)* @xhci_queue_isoc_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_queue_isoc_tx(%struct.xhci_hcd* %0, i32 %1, %struct.urb* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.xhci_hcd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.urb*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.xhci_ring*, align 8
  %13 = alloca %struct.urb_priv*, align 8
  %14 = alloca %struct.xhci_td*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.xhci_generic_trb*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca %struct.xhci_virt_ep*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.urb* %2, %struct.urb** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %40 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %41 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %40, i32 0, i32 3
  %42 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %41, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %42, i64 %44
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %47, align 8
  %49 = load i32, i32* %11, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %48, i64 %50
  store %struct.xhci_virt_ep* %51, %struct.xhci_virt_ep** %32, align 8
  %52 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %53 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %52, i32 0, i32 3
  %54 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %54, i64 %56
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %59, align 8
  %61 = load i32, i32* %11, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %60, i64 %62
  %64 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %63, i32 0, i32 2
  %65 = load %struct.xhci_ring*, %struct.xhci_ring** %64, align 8
  store %struct.xhci_ring* %65, %struct.xhci_ring** %12, align 8
  %66 = load %struct.urb*, %struct.urb** %9, align 8
  %67 = getelementptr inbounds %struct.urb, %struct.urb* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %15, align 4
  %70 = icmp slt i32 %69, 1
  br i1 %70, label %71, label %76

71:                                               ; preds = %5
  %72 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %73 = call i32 @xhci_dbg(%struct.xhci_hcd* %72, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %6, align 4
  br label %483

76:                                               ; preds = %5
  %77 = load %struct.urb*, %struct.urb** %9, align 8
  %78 = getelementptr inbounds %struct.urb, %struct.urb* %77, i32 0, i32 9
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %27, align 8
  %80 = load %struct.xhci_ring*, %struct.xhci_ring** %12, align 8
  %81 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %80, i32 0, i32 4
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  store %struct.xhci_generic_trb* %83, %struct.xhci_generic_trb** %17, align 8
  %84 = load %struct.xhci_ring*, %struct.xhci_ring** %12, align 8
  %85 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  store i32 %86, i32* %19, align 4
  %87 = load %struct.urb*, %struct.urb** %9, align 8
  %88 = getelementptr inbounds %struct.urb, %struct.urb* %87, i32 0, i32 8
  %89 = load %struct.urb_priv*, %struct.urb_priv** %88, align 8
  store %struct.urb_priv* %89, %struct.urb_priv** %13, align 8
  store i32 0, i32* %29, align 4
  br label %90

90:                                               ; preds = %359, %76
  %91 = load i32, i32* %29, align 4
  %92 = load i32, i32* %15, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %362

94:                                               ; preds = %90
  store i32 1, i32* %18, align 4
  store i32 0, i32* %22, align 4
  %95 = load i64, i64* %27, align 8
  %96 = load %struct.urb*, %struct.urb** %9, align 8
  %97 = getelementptr inbounds %struct.urb, %struct.urb* %96, i32 0, i32 7
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %97, align 8
  %99 = load i32, i32* %29, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %95, %103
  store i64 %104, i64* %28, align 8
  %105 = load %struct.urb*, %struct.urb** %9, align 8
  %106 = getelementptr inbounds %struct.urb, %struct.urb* %105, i32 0, i32 7
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %106, align 8
  %108 = load i32, i32* %29, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  store i32 %112, i32* %24, align 4
  %113 = load i32, i32* %24, align 4
  store i32 %113, i32* %25, align 4
  %114 = load %struct.urb*, %struct.urb** %9, align 8
  %115 = getelementptr inbounds %struct.urb, %struct.urb* %114, i32 0, i32 6
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = call i32 @usb_endpoint_maxp(i32* %117)
  store i32 %118, i32* %35, align 4
  %119 = load i32, i32* %24, align 4
  %120 = load i32, i32* %35, align 4
  %121 = call i32 @DIV_ROUND_UP(i32 %119, i32 %120)
  store i32 %121, i32* %34, align 4
  %122 = load i32, i32* %34, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %94
  %125 = load i32, i32* %34, align 4
  %126 = add i32 %125, 1
  store i32 %126, i32* %34, align 4
  br label %127

127:                                              ; preds = %124, %94
  %128 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %129 = load %struct.urb*, %struct.urb** %9, align 8
  %130 = load i32, i32* %34, align 4
  %131 = call i32 @xhci_get_burst_count(%struct.xhci_hcd* %128, %struct.urb* %129, i32 %130)
  store i32 %131, i32* %36, align 4
  %132 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %133 = load %struct.urb*, %struct.urb** %9, align 8
  %134 = load i32, i32* %34, align 4
  %135 = call i32 @xhci_get_last_burst_packet_count(%struct.xhci_hcd* %132, %struct.urb* %133, i32 %134)
  store i32 %135, i32* %37, align 4
  %136 = load %struct.urb*, %struct.urb** %9, align 8
  %137 = load i32, i32* %29, align 4
  %138 = call i32 @count_isoc_trbs_needed(%struct.urb* %136, i32 %137)
  store i32 %138, i32* %16, align 4
  %139 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %140 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %141 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %140, i32 0, i32 3
  %142 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %141, align 8
  %143 = load i32, i32* %10, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %142, i64 %144
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %145, align 8
  %147 = load i32, i32* %11, align 4
  %148 = load %struct.urb*, %struct.urb** %9, align 8
  %149 = getelementptr inbounds %struct.urb, %struct.urb* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* %16, align 4
  %152 = load %struct.urb*, %struct.urb** %9, align 8
  %153 = load i32, i32* %29, align 4
  %154 = load i32, i32* %8, align 4
  %155 = call i32 @prepare_transfer(%struct.xhci_hcd* %139, %struct.TYPE_14__* %146, i32 %147, i32 %150, i32 %151, %struct.urb* %152, i32 %153, i32 %154)
  store i32 %155, i32* %26, align 4
  %156 = load i32, i32* %26, align 4
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %127
  %159 = load i32, i32* %29, align 4
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %158
  %162 = load i32, i32* %26, align 4
  store i32 %162, i32* %6, align 4
  br label %483

163:                                              ; preds = %158
  br label %414

164:                                              ; preds = %127
  %165 = load %struct.urb_priv*, %struct.urb_priv** %13, align 8
  %166 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %165, i32 0, i32 0
  %167 = load %struct.xhci_td*, %struct.xhci_td** %166, align 8
  %168 = load i32, i32* %29, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %167, i64 %169
  store %struct.xhci_td* %170, %struct.xhci_td** %14, align 8
  %171 = load i32, i32* @TRB_SIA, align 4
  store i32 %171, i32* %38, align 4
  %172 = load %struct.urb*, %struct.urb** %9, align 8
  %173 = getelementptr inbounds %struct.urb, %struct.urb* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @URB_ISO_ASAP, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %195, label %178

178:                                              ; preds = %164
  %179 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %180 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = call i64 @HCC_CFC(i32 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %195

184:                                              ; preds = %178
  %185 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %186 = load %struct.urb*, %struct.urb** %9, align 8
  %187 = load i32, i32* %29, align 4
  %188 = call i32 @xhci_get_isoc_frame_id(%struct.xhci_hcd* %185, %struct.urb* %186, i32 %187)
  store i32 %188, i32* %33, align 4
  %189 = load i32, i32* %33, align 4
  %190 = icmp sge i32 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %184
  %192 = load i32, i32* %33, align 4
  %193 = call i32 @TRB_FRAME_ID(i32 %192)
  store i32 %193, i32* %38, align 4
  br label %194

194:                                              ; preds = %191, %184
  br label %195

195:                                              ; preds = %194, %178, %164
  %196 = load i32, i32* @TRB_ISOC, align 4
  %197 = call i32 @TRB_TYPE(i32 %196)
  %198 = load i32, i32* %37, align 4
  %199 = call i32 @TRB_TLBPC(i32 %198)
  %200 = or i32 %197, %199
  %201 = load i32, i32* %38, align 4
  %202 = or i32 %200, %201
  %203 = load i32, i32* %29, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %195
  %206 = load %struct.xhci_ring*, %struct.xhci_ring** %12, align 8
  %207 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  br label %214

209:                                              ; preds = %195
  %210 = load i32, i32* %19, align 4
  %211 = icmp ne i32 %210, 0
  %212 = xor i1 %211, true
  %213 = zext i1 %212 to i32
  br label %214

214:                                              ; preds = %209, %205
  %215 = phi i32 [ %208, %205 ], [ %213, %209 ]
  %216 = or i32 %202, %215
  store i32 %216, i32* %20, align 4
  %217 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %32, align 8
  %218 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %226, label %221

221:                                              ; preds = %214
  %222 = load i32, i32* %36, align 4
  %223 = call i32 @TRB_TBC(i32 %222)
  %224 = load i32, i32* %20, align 4
  %225 = or i32 %224, %223
  store i32 %225, i32* %20, align 4
  br label %226

226:                                              ; preds = %221, %214
  store i32 0, i32* %30, align 4
  br label %227

227:                                              ; preds = %346, %226
  %228 = load i32, i32* %30, align 4
  %229 = load i32, i32* %16, align 4
  %230 = icmp slt i32 %228, %229
  br i1 %230, label %231, label %349

231:                                              ; preds = %227
  store i32 0, i32* %39, align 4
  %232 = load i32, i32* %18, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %241, label %234

234:                                              ; preds = %231
  %235 = load i32, i32* @TRB_NORMAL, align 4
  %236 = call i32 @TRB_TYPE(i32 %235)
  %237 = load %struct.xhci_ring*, %struct.xhci_ring** %12, align 8
  %238 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = or i32 %236, %239
  store i32 %240, i32* %20, align 4
  br label %241

241:                                              ; preds = %234, %231
  %242 = load %struct.urb*, %struct.urb** %9, align 8
  %243 = call i64 @usb_urb_dir_in(%struct.urb* %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %249

245:                                              ; preds = %241
  %246 = load i32, i32* @TRB_ISP, align 4
  %247 = load i32, i32* %20, align 4
  %248 = or i32 %247, %246
  store i32 %248, i32* %20, align 4
  br label %249

249:                                              ; preds = %245, %241
  %250 = load i32, i32* %30, align 4
  %251 = load i32, i32* %16, align 4
  %252 = sub nsw i32 %251, 1
  %253 = icmp slt i32 %250, %252
  br i1 %253, label %254, label %258

254:                                              ; preds = %249
  store i32 1, i32* %31, align 4
  %255 = load i32, i32* @TRB_CHAIN, align 4
  %256 = load i32, i32* %20, align 4
  %257 = or i32 %256, %255
  store i32 %257, i32* %20, align 4
  br label %288

258:                                              ; preds = %249
  store i32 0, i32* %31, align 4
  %259 = load %struct.xhci_ring*, %struct.xhci_ring** %12, align 8
  %260 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %259, i32 0, i32 4
  %261 = load %struct.TYPE_12__*, %struct.TYPE_12__** %260, align 8
  %262 = load %struct.xhci_td*, %struct.xhci_td** %14, align 8
  %263 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %262, i32 0, i32 2
  store %struct.TYPE_12__* %261, %struct.TYPE_12__** %263, align 8
  %264 = load i32, i32* @TRB_IOC, align 4
  %265 = load i32, i32* %20, align 4
  %266 = or i32 %265, %264
  store i32 %266, i32* %20, align 4
  %267 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %268 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = icmp sge i32 %269, 256
  br i1 %270, label %271, label %287

271:                                              ; preds = %258
  %272 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %273 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = load i32, i32* @XHCI_AVOID_BEI, align 4
  %276 = and i32 %274, %275
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %287, label %278

278:                                              ; preds = %271
  %279 = load i32, i32* %29, align 4
  %280 = load i32, i32* %15, align 4
  %281 = sub nsw i32 %280, 1
  %282 = icmp slt i32 %279, %281
  br i1 %282, label %283, label %287

283:                                              ; preds = %278
  %284 = load i32, i32* @TRB_BEI, align 4
  %285 = load i32, i32* %20, align 4
  %286 = or i32 %285, %284
  store i32 %286, i32* %20, align 4
  br label %287

287:                                              ; preds = %283, %278, %271, %258
  br label %288

288:                                              ; preds = %287, %254
  %289 = load i64, i64* %28, align 8
  %290 = call i32 @TRB_BUFF_LEN_UP_TO_BOUNDARY(i64 %289)
  store i32 %290, i32* %23, align 4
  %291 = load i32, i32* %23, align 4
  %292 = load i32, i32* %25, align 4
  %293 = icmp sgt i32 %291, %292
  br i1 %293, label %294, label %296

294:                                              ; preds = %288
  %295 = load i32, i32* %25, align 4
  store i32 %295, i32* %23, align 4
  br label %296

296:                                              ; preds = %294, %288
  %297 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %298 = load i32, i32* %22, align 4
  %299 = load i32, i32* %23, align 4
  %300 = load i32, i32* %24, align 4
  %301 = load %struct.urb*, %struct.urb** %9, align 8
  %302 = load i32, i32* %31, align 4
  %303 = call i32 @xhci_td_remainder(%struct.xhci_hcd* %297, i32 %298, i32 %299, i32 %300, %struct.urb* %301, i32 %302)
  store i32 %303, i32* %39, align 4
  %304 = load i32, i32* %23, align 4
  %305 = call i32 @TRB_LEN(i32 %304)
  %306 = call i32 @TRB_INTR_TARGET(i32 0)
  %307 = or i32 %305, %306
  store i32 %307, i32* %21, align 4
  %308 = load i32, i32* %18, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %320

310:                                              ; preds = %296
  %311 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %32, align 8
  %312 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %311, i32 0, i32 1
  %313 = load i64, i64* %312, align 8
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %320

315:                                              ; preds = %310
  %316 = load i32, i32* %36, align 4
  %317 = call i32 @TRB_TD_SIZE_TBC(i32 %316)
  %318 = load i32, i32* %21, align 4
  %319 = or i32 %318, %317
  store i32 %319, i32* %21, align 4
  br label %325

320:                                              ; preds = %310, %296
  %321 = load i32, i32* %39, align 4
  %322 = call i32 @TRB_TD_SIZE(i32 %321)
  %323 = load i32, i32* %21, align 4
  %324 = or i32 %323, %322
  store i32 %324, i32* %21, align 4
  br label %325

325:                                              ; preds = %320, %315
  store i32 0, i32* %18, align 4
  %326 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %327 = load %struct.xhci_ring*, %struct.xhci_ring** %12, align 8
  %328 = load i32, i32* %31, align 4
  %329 = load i64, i64* %28, align 8
  %330 = call i32 @lower_32_bits(i64 %329)
  %331 = load i64, i64* %28, align 8
  %332 = call i32 @upper_32_bits(i64 %331)
  %333 = load i32, i32* %21, align 4
  %334 = load i32, i32* %20, align 4
  %335 = call i32 @queue_trb(%struct.xhci_hcd* %326, %struct.xhci_ring* %327, i32 %328, i32 %330, i32 %332, i32 %333, i32 %334)
  %336 = load i32, i32* %23, align 4
  %337 = load i32, i32* %22, align 4
  %338 = add nsw i32 %337, %336
  store i32 %338, i32* %22, align 4
  %339 = load i32, i32* %23, align 4
  %340 = sext i32 %339 to i64
  %341 = load i64, i64* %28, align 8
  %342 = add nsw i64 %341, %340
  store i64 %342, i64* %28, align 8
  %343 = load i32, i32* %23, align 4
  %344 = load i32, i32* %25, align 4
  %345 = sub nsw i32 %344, %343
  store i32 %345, i32* %25, align 4
  br label %346

346:                                              ; preds = %325
  %347 = load i32, i32* %30, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %30, align 4
  br label %227

349:                                              ; preds = %227
  %350 = load i32, i32* %22, align 4
  %351 = load i32, i32* %24, align 4
  %352 = icmp ne i32 %350, %351
  br i1 %352, label %353, label %358

353:                                              ; preds = %349
  %354 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %355 = call i32 @xhci_err(%struct.xhci_hcd* %354, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %356 = load i32, i32* @EINVAL, align 4
  %357 = sub nsw i32 0, %356
  store i32 %357, i32* %26, align 4
  br label %414

358:                                              ; preds = %349
  br label %359

359:                                              ; preds = %358
  %360 = load i32, i32* %29, align 4
  %361 = add nsw i32 %360, 1
  store i32 %361, i32* %29, align 4
  br label %90

362:                                              ; preds = %90
  %363 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %364 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %363, i32 0, i32 2
  %365 = load i32, i32* %364, align 8
  %366 = call i64 @HCC_CFC(i32 %365)
  %367 = icmp ne i64 %366, 0
  br i1 %367, label %368, label %381

368:                                              ; preds = %362
  %369 = load %struct.urb*, %struct.urb** %9, align 8
  %370 = getelementptr inbounds %struct.urb, %struct.urb* %369, i32 0, i32 5
  %371 = load i64, i64* %370, align 8
  %372 = load i32, i32* %15, align 4
  %373 = load %struct.urb*, %struct.urb** %9, align 8
  %374 = getelementptr inbounds %struct.urb, %struct.urb* %373, i32 0, i32 2
  %375 = load i32, i32* %374, align 8
  %376 = mul nsw i32 %372, %375
  %377 = sext i32 %376 to i64
  %378 = add nsw i64 %371, %377
  %379 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %32, align 8
  %380 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %379, i32 0, i32 0
  store i64 %378, i64* %380, align 8
  br label %381

381:                                              ; preds = %368, %362
  %382 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %383 = call %struct.TYPE_13__* @xhci_to_hcd(%struct.xhci_hcd* %382)
  %384 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %383, i32 0, i32 0
  %385 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %384, i32 0, i32 0
  %386 = load i64, i64* %385, align 8
  %387 = icmp eq i64 %386, 0
  br i1 %387, label %388, label %398

388:                                              ; preds = %381
  %389 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %390 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %389, i32 0, i32 1
  %391 = load i32, i32* %390, align 4
  %392 = load i32, i32* @XHCI_AMD_PLL_FIX, align 4
  %393 = and i32 %391, %392
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %397

395:                                              ; preds = %388
  %396 = call i32 (...) @usb_amd_quirk_pll_disable()
  br label %397

397:                                              ; preds = %395, %388
  br label %398

398:                                              ; preds = %397, %381
  %399 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %400 = call %struct.TYPE_13__* @xhci_to_hcd(%struct.xhci_hcd* %399)
  %401 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %400, i32 0, i32 0
  %402 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %401, i32 0, i32 0
  %403 = load i64, i64* %402, align 8
  %404 = add nsw i64 %403, 1
  store i64 %404, i64* %402, align 8
  %405 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %406 = load i32, i32* %10, align 4
  %407 = load i32, i32* %11, align 4
  %408 = load %struct.urb*, %struct.urb** %9, align 8
  %409 = getelementptr inbounds %struct.urb, %struct.urb* %408, i32 0, i32 4
  %410 = load i32, i32* %409, align 8
  %411 = load i32, i32* %19, align 4
  %412 = load %struct.xhci_generic_trb*, %struct.xhci_generic_trb** %17, align 8
  %413 = call i32 @giveback_first_trb(%struct.xhci_hcd* %405, i32 %406, i32 %407, i32 %410, i32 %411, %struct.xhci_generic_trb* %412)
  store i32 0, i32* %6, align 4
  br label %483

414:                                              ; preds = %353, %163
  %415 = load i32, i32* %29, align 4
  %416 = add nsw i32 %415, -1
  store i32 %416, i32* %29, align 4
  br label %417

417:                                              ; preds = %429, %414
  %418 = load i32, i32* %29, align 4
  %419 = icmp sge i32 %418, 0
  br i1 %419, label %420, label %432

420:                                              ; preds = %417
  %421 = load %struct.urb_priv*, %struct.urb_priv** %13, align 8
  %422 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %421, i32 0, i32 0
  %423 = load %struct.xhci_td*, %struct.xhci_td** %422, align 8
  %424 = load i32, i32* %29, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %423, i64 %425
  %427 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %426, i32 0, i32 3
  %428 = call i32 @list_del_init(i32* %427)
  br label %429

429:                                              ; preds = %420
  %430 = load i32, i32* %29, align 4
  %431 = add nsw i32 %430, -1
  store i32 %431, i32* %29, align 4
  br label %417

432:                                              ; preds = %417
  %433 = load %struct.xhci_ring*, %struct.xhci_ring** %12, align 8
  %434 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %433, i32 0, i32 4
  %435 = load %struct.TYPE_12__*, %struct.TYPE_12__** %434, align 8
  %436 = load %struct.urb_priv*, %struct.urb_priv** %13, align 8
  %437 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %436, i32 0, i32 0
  %438 = load %struct.xhci_td*, %struct.xhci_td** %437, align 8
  %439 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %438, i64 0
  %440 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %439, i32 0, i32 2
  store %struct.TYPE_12__* %435, %struct.TYPE_12__** %440, align 8
  %441 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %442 = load %struct.xhci_ring*, %struct.xhci_ring** %12, align 8
  %443 = load %struct.urb_priv*, %struct.urb_priv** %13, align 8
  %444 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %443, i32 0, i32 0
  %445 = load %struct.xhci_td*, %struct.xhci_td** %444, align 8
  %446 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %445, i64 0
  %447 = call i32 @td_to_noop(%struct.xhci_hcd* %441, %struct.xhci_ring* %442, %struct.xhci_td* %446, i32 1)
  %448 = load %struct.urb_priv*, %struct.urb_priv** %13, align 8
  %449 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %448, i32 0, i32 0
  %450 = load %struct.xhci_td*, %struct.xhci_td** %449, align 8
  %451 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %450, i64 0
  %452 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %451, i32 0, i32 1
  %453 = load i32, i32* %452, align 4
  %454 = sext i32 %453 to i64
  %455 = inttoptr i64 %454 to %struct.TYPE_12__*
  %456 = load %struct.xhci_ring*, %struct.xhci_ring** %12, align 8
  %457 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %456, i32 0, i32 4
  store %struct.TYPE_12__* %455, %struct.TYPE_12__** %457, align 8
  %458 = load %struct.urb_priv*, %struct.urb_priv** %13, align 8
  %459 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %458, i32 0, i32 0
  %460 = load %struct.xhci_td*, %struct.xhci_td** %459, align 8
  %461 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %460, i64 0
  %462 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %461, i32 0, i32 0
  %463 = load i32, i32* %462, align 8
  %464 = load %struct.xhci_ring*, %struct.xhci_ring** %12, align 8
  %465 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %464, i32 0, i32 3
  store i32 %463, i32* %465, align 4
  %466 = load i32, i32* %19, align 4
  %467 = load %struct.xhci_ring*, %struct.xhci_ring** %12, align 8
  %468 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %467, i32 0, i32 0
  store i32 %466, i32* %468, align 8
  %469 = load %struct.xhci_ring*, %struct.xhci_ring** %12, align 8
  %470 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %469, i32 0, i32 1
  %471 = load i32, i32* %470, align 4
  %472 = load %struct.xhci_ring*, %struct.xhci_ring** %12, align 8
  %473 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %472, i32 0, i32 2
  store i32 %471, i32* %473, align 8
  %474 = load %struct.urb*, %struct.urb** %9, align 8
  %475 = getelementptr inbounds %struct.urb, %struct.urb* %474, i32 0, i32 3
  %476 = load %struct.TYPE_9__*, %struct.TYPE_9__** %475, align 8
  %477 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %476, i32 0, i32 0
  %478 = load i32, i32* %477, align 4
  %479 = call i32 @bus_to_hcd(i32 %478)
  %480 = load %struct.urb*, %struct.urb** %9, align 8
  %481 = call i32 @usb_hcd_unlink_urb_from_ep(i32 %479, %struct.urb* %480)
  %482 = load i32, i32* %26, align 4
  store i32 %482, i32* %6, align 4
  br label %483

483:                                              ; preds = %432, %398, %161, %71
  %484 = load i32, i32* %6, align 4
  ret i32 %484
}

declare dso_local i32 @xhci_dbg(%struct.xhci_hcd*, i8*) #1

declare dso_local i32 @usb_endpoint_maxp(i32*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @xhci_get_burst_count(%struct.xhci_hcd*, %struct.urb*, i32) #1

declare dso_local i32 @xhci_get_last_burst_packet_count(%struct.xhci_hcd*, %struct.urb*, i32) #1

declare dso_local i32 @count_isoc_trbs_needed(%struct.urb*, i32) #1

declare dso_local i32 @prepare_transfer(%struct.xhci_hcd*, %struct.TYPE_14__*, i32, i32, i32, %struct.urb*, i32, i32) #1

declare dso_local i64 @HCC_CFC(i32) #1

declare dso_local i32 @xhci_get_isoc_frame_id(%struct.xhci_hcd*, %struct.urb*, i32) #1

declare dso_local i32 @TRB_FRAME_ID(i32) #1

declare dso_local i32 @TRB_TYPE(i32) #1

declare dso_local i32 @TRB_TLBPC(i32) #1

declare dso_local i32 @TRB_TBC(i32) #1

declare dso_local i64 @usb_urb_dir_in(%struct.urb*) #1

declare dso_local i32 @TRB_BUFF_LEN_UP_TO_BOUNDARY(i64) #1

declare dso_local i32 @xhci_td_remainder(%struct.xhci_hcd*, i32, i32, i32, %struct.urb*, i32) #1

declare dso_local i32 @TRB_LEN(i32) #1

declare dso_local i32 @TRB_INTR_TARGET(i32) #1

declare dso_local i32 @TRB_TD_SIZE_TBC(i32) #1

declare dso_local i32 @TRB_TD_SIZE(i32) #1

declare dso_local i32 @queue_trb(%struct.xhci_hcd*, %struct.xhci_ring*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @lower_32_bits(i64) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @xhci_err(%struct.xhci_hcd*, i8*) #1

declare dso_local %struct.TYPE_13__* @xhci_to_hcd(%struct.xhci_hcd*) #1

declare dso_local i32 @usb_amd_quirk_pll_disable(...) #1

declare dso_local i32 @giveback_first_trb(%struct.xhci_hcd*, i32, i32, i32, i32, %struct.xhci_generic_trb*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @td_to_noop(%struct.xhci_hcd*, %struct.xhci_ring*, %struct.xhci_td*, i32) #1

declare dso_local i32 @usb_hcd_unlink_urb_from_ep(i32, %struct.urb*) #1

declare dso_local i32 @bus_to_hcd(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
