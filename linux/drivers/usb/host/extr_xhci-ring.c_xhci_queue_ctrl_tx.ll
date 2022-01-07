; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_xhci_queue_ctrl_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_xhci_queue_ctrl_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32, i32, i32* }
%struct.urb = type { i32, i64, i32, i64, %struct.urb_priv*, i32 }
%struct.urb_priv = type { %struct.xhci_td* }
%struct.xhci_td = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.xhci_generic_trb }
%struct.xhci_generic_trb = type { i32 }
%struct.xhci_ring = type { i32, %struct.TYPE_2__* }
%struct.usb_ctrlrequest = type { i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@TRB_IDT = common dso_local global i32 0, align 4
@TRB_SETUP = common dso_local global i32 0, align 4
@XHCI_MTK_HOST = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@TRB_DATA_IN = common dso_local global i32 0, align 4
@TRB_DATA_OUT = common dso_local global i32 0, align 4
@TRB_ISP = common dso_local global i32 0, align 4
@TRB_DATA = common dso_local global i32 0, align 4
@TRB_DIR_IN = common dso_local global i32 0, align 4
@TRB_IOC = common dso_local global i32 0, align 4
@TRB_STATUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xhci_queue_ctrl_tx(%struct.xhci_hcd* %0, i32 %1, %struct.urb* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.xhci_hcd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.urb*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.xhci_ring*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.usb_ctrlrequest*, align 8
  %16 = alloca %struct.xhci_generic_trb*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.urb_priv*, align 8
  %20 = alloca %struct.xhci_td*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.urb* %2, %struct.urb** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %24 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %25 = load %struct.urb*, %struct.urb** %9, align 8
  %26 = call %struct.xhci_ring* @xhci_urb_to_transfer_ring(%struct.xhci_hcd* %24, %struct.urb* %25)
  store %struct.xhci_ring* %26, %struct.xhci_ring** %12, align 8
  %27 = load %struct.xhci_ring*, %struct.xhci_ring** %12, align 8
  %28 = icmp ne %struct.xhci_ring* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %5
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %287

32:                                               ; preds = %5
  %33 = load %struct.urb*, %struct.urb** %9, align 8
  %34 = getelementptr inbounds %struct.urb, %struct.urb* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %6, align 4
  br label %287

40:                                               ; preds = %32
  store i32 2, i32* %13, align 4
  %41 = load %struct.urb*, %struct.urb** %9, align 8
  %42 = getelementptr inbounds %struct.urb, %struct.urb* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* %13, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %13, align 4
  br label %48

48:                                               ; preds = %45, %40
  %49 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %50 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %51 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.urb*, %struct.urb** %9, align 8
  %59 = getelementptr inbounds %struct.urb, %struct.urb* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %13, align 4
  %62 = load %struct.urb*, %struct.urb** %9, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @prepare_transfer(%struct.xhci_hcd* %49, i32 %56, i32 %57, i32 %60, i32 %61, %struct.urb* %62, i32 0, i32 %63)
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %14, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %48
  %68 = load i32, i32* %14, align 4
  store i32 %68, i32* %6, align 4
  br label %287

69:                                               ; preds = %48
  %70 = load %struct.urb*, %struct.urb** %9, align 8
  %71 = getelementptr inbounds %struct.urb, %struct.urb* %70, i32 0, i32 4
  %72 = load %struct.urb_priv*, %struct.urb_priv** %71, align 8
  store %struct.urb_priv* %72, %struct.urb_priv** %19, align 8
  %73 = load %struct.urb_priv*, %struct.urb_priv** %19, align 8
  %74 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %73, i32 0, i32 0
  %75 = load %struct.xhci_td*, %struct.xhci_td** %74, align 8
  %76 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %75, i64 0
  store %struct.xhci_td* %76, %struct.xhci_td** %20, align 8
  %77 = load %struct.xhci_ring*, %struct.xhci_ring** %12, align 8
  %78 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  store %struct.xhci_generic_trb* %80, %struct.xhci_generic_trb** %16, align 8
  %81 = load %struct.xhci_ring*, %struct.xhci_ring** %12, align 8
  %82 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %17, align 4
  %84 = load %struct.urb*, %struct.urb** %9, align 8
  %85 = getelementptr inbounds %struct.urb, %struct.urb* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = inttoptr i64 %86 to %struct.usb_ctrlrequest*
  store %struct.usb_ctrlrequest* %87, %struct.usb_ctrlrequest** %15, align 8
  store i32 0, i32* %18, align 4
  %88 = load i32, i32* @TRB_IDT, align 4
  %89 = load i32, i32* @TRB_SETUP, align 4
  %90 = call i32 @TRB_TYPE(i32 %89)
  %91 = or i32 %88, %90
  %92 = load i32, i32* %18, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %18, align 4
  %94 = load i32, i32* %17, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %69
  %97 = load i32, i32* %18, align 4
  %98 = or i32 %97, 1
  store i32 %98, i32* %18, align 4
  br label %99

99:                                               ; preds = %96, %69
  %100 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %101 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp sge i32 %102, 256
  br i1 %103, label %111, label %104

104:                                              ; preds = %99
  %105 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %106 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @XHCI_MTK_HOST, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %135

111:                                              ; preds = %104, %99
  %112 = load %struct.urb*, %struct.urb** %9, align 8
  %113 = getelementptr inbounds %struct.urb, %struct.urb* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %116, label %134

116:                                              ; preds = %111
  %117 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %15, align 8
  %118 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @USB_DIR_IN, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %116
  %124 = load i32, i32* @TRB_DATA_IN, align 4
  %125 = call i32 @TRB_TX_TYPE(i32 %124)
  %126 = load i32, i32* %18, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %18, align 4
  br label %133

128:                                              ; preds = %116
  %129 = load i32, i32* @TRB_DATA_OUT, align 4
  %130 = call i32 @TRB_TX_TYPE(i32 %129)
  %131 = load i32, i32* %18, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %18, align 4
  br label %133

133:                                              ; preds = %128, %123
  br label %134

134:                                              ; preds = %133, %111
  br label %135

135:                                              ; preds = %134, %104
  %136 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %137 = load %struct.xhci_ring*, %struct.xhci_ring** %12, align 8
  %138 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %15, align 8
  %139 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %15, align 8
  %142 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = shl i32 %143, 8
  %145 = or i32 %140, %144
  %146 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %15, align 8
  %147 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @le16_to_cpu(i32 %148)
  %150 = shl i32 %149, 16
  %151 = or i32 %145, %150
  %152 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %15, align 8
  %153 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @le16_to_cpu(i32 %154)
  %156 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %15, align 8
  %157 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @le16_to_cpu(i32 %158)
  %160 = shl i32 %159, 16
  %161 = or i32 %155, %160
  %162 = call i32 @TRB_LEN(i32 8)
  %163 = call i32 @TRB_INTR_TARGET(i32 0)
  %164 = or i32 %162, %163
  %165 = load i32, i32* %18, align 4
  %166 = call i32 @queue_trb(%struct.xhci_hcd* %136, %struct.xhci_ring* %137, i32 1, i32 %151, i32 %161, i32 %164, i32 %165)
  %167 = load %struct.urb*, %struct.urb** %9, align 8
  %168 = call i64 @usb_urb_dir_in(%struct.urb* %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %135
  %171 = load i32, i32* @TRB_ISP, align 4
  %172 = load i32, i32* @TRB_DATA, align 4
  %173 = call i32 @TRB_TYPE(i32 %172)
  %174 = or i32 %171, %173
  store i32 %174, i32* %18, align 4
  br label %178

175:                                              ; preds = %135
  %176 = load i32, i32* @TRB_DATA, align 4
  %177 = call i32 @TRB_TYPE(i32 %176)
  store i32 %177, i32* %18, align 4
  br label %178

178:                                              ; preds = %175, %170
  %179 = load %struct.urb*, %struct.urb** %9, align 8
  %180 = getelementptr inbounds %struct.urb, %struct.urb* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = icmp sgt i32 %181, 0
  br i1 %182, label %183, label %246

183:                                              ; preds = %178
  %184 = load %struct.urb*, %struct.urb** %9, align 8
  %185 = call i64 @xhci_urb_suitable_for_idt(%struct.urb* %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %199

187:                                              ; preds = %183
  %188 = load %struct.urb*, %struct.urb** %9, align 8
  %189 = getelementptr inbounds %struct.urb, %struct.urb* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.urb*, %struct.urb** %9, align 8
  %192 = getelementptr inbounds %struct.urb, %struct.urb* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @memcpy(i64* %23, i32 %190, i32 %193)
  %195 = call i32 @le64_to_cpus(i64* %23)
  %196 = load i32, i32* @TRB_IDT, align 4
  %197 = load i32, i32* %18, align 4
  %198 = or i32 %197, %196
  store i32 %198, i32* %18, align 4
  br label %203

199:                                              ; preds = %183
  %200 = load %struct.urb*, %struct.urb** %9, align 8
  %201 = getelementptr inbounds %struct.urb, %struct.urb* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  store i64 %202, i64* %23, align 8
  br label %203

203:                                              ; preds = %199, %187
  %204 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %205 = load %struct.urb*, %struct.urb** %9, align 8
  %206 = getelementptr inbounds %struct.urb, %struct.urb* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.urb*, %struct.urb** %9, align 8
  %209 = getelementptr inbounds %struct.urb, %struct.urb* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.urb*, %struct.urb** %9, align 8
  %212 = call i32 @xhci_td_remainder(%struct.xhci_hcd* %204, i32 0, i32 %207, i32 %210, %struct.urb* %211, i32 1)
  store i32 %212, i32* %22, align 4
  %213 = load %struct.urb*, %struct.urb** %9, align 8
  %214 = getelementptr inbounds %struct.urb, %struct.urb* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @TRB_LEN(i32 %215)
  %217 = load i32, i32* %22, align 4
  %218 = call i32 @TRB_TD_SIZE(i32 %217)
  %219 = or i32 %216, %218
  %220 = call i32 @TRB_INTR_TARGET(i32 0)
  %221 = or i32 %219, %220
  store i32 %221, i32* %21, align 4
  %222 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %15, align 8
  %223 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* @USB_DIR_IN, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %232

228:                                              ; preds = %203
  %229 = load i32, i32* @TRB_DIR_IN, align 4
  %230 = load i32, i32* %18, align 4
  %231 = or i32 %230, %229
  store i32 %231, i32* %18, align 4
  br label %232

232:                                              ; preds = %228, %203
  %233 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %234 = load %struct.xhci_ring*, %struct.xhci_ring** %12, align 8
  %235 = load i64, i64* %23, align 8
  %236 = call i32 @lower_32_bits(i64 %235)
  %237 = load i64, i64* %23, align 8
  %238 = call i32 @upper_32_bits(i64 %237)
  %239 = load i32, i32* %21, align 4
  %240 = load i32, i32* %18, align 4
  %241 = load %struct.xhci_ring*, %struct.xhci_ring** %12, align 8
  %242 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = or i32 %240, %243
  %245 = call i32 @queue_trb(%struct.xhci_hcd* %233, %struct.xhci_ring* %234, i32 1, i32 %236, i32 %238, i32 %239, i32 %244)
  br label %246

246:                                              ; preds = %232, %178
  %247 = load %struct.xhci_ring*, %struct.xhci_ring** %12, align 8
  %248 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %247, i32 0, i32 1
  %249 = load %struct.TYPE_2__*, %struct.TYPE_2__** %248, align 8
  %250 = load %struct.xhci_td*, %struct.xhci_td** %20, align 8
  %251 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %250, i32 0, i32 0
  store %struct.TYPE_2__* %249, %struct.TYPE_2__** %251, align 8
  %252 = load %struct.urb*, %struct.urb** %9, align 8
  %253 = getelementptr inbounds %struct.urb, %struct.urb* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = icmp sgt i32 %254, 0
  br i1 %255, label %256, label %264

256:                                              ; preds = %246
  %257 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %15, align 8
  %258 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* @USB_DIR_IN, align 4
  %261 = and i32 %259, %260
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %264

263:                                              ; preds = %256
  store i32 0, i32* %18, align 4
  br label %266

264:                                              ; preds = %256, %246
  %265 = load i32, i32* @TRB_DIR_IN, align 4
  store i32 %265, i32* %18, align 4
  br label %266

266:                                              ; preds = %264, %263
  %267 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %268 = load %struct.xhci_ring*, %struct.xhci_ring** %12, align 8
  %269 = call i32 @TRB_INTR_TARGET(i32 0)
  %270 = load i32, i32* %18, align 4
  %271 = load i32, i32* @TRB_IOC, align 4
  %272 = or i32 %270, %271
  %273 = load i32, i32* @TRB_STATUS, align 4
  %274 = call i32 @TRB_TYPE(i32 %273)
  %275 = or i32 %272, %274
  %276 = load %struct.xhci_ring*, %struct.xhci_ring** %12, align 8
  %277 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = or i32 %275, %278
  %280 = call i32 @queue_trb(%struct.xhci_hcd* %267, %struct.xhci_ring* %268, i32 0, i32 0, i32 0, i32 %269, i32 %279)
  %281 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %282 = load i32, i32* %10, align 4
  %283 = load i32, i32* %11, align 4
  %284 = load i32, i32* %17, align 4
  %285 = load %struct.xhci_generic_trb*, %struct.xhci_generic_trb** %16, align 8
  %286 = call i32 @giveback_first_trb(%struct.xhci_hcd* %281, i32 %282, i32 %283, i32 0, i32 %284, %struct.xhci_generic_trb* %285)
  store i32 0, i32* %6, align 4
  br label %287

287:                                              ; preds = %266, %67, %37, %29
  %288 = load i32, i32* %6, align 4
  ret i32 %288
}

declare dso_local %struct.xhci_ring* @xhci_urb_to_transfer_ring(%struct.xhci_hcd*, %struct.urb*) #1

declare dso_local i32 @prepare_transfer(%struct.xhci_hcd*, i32, i32, i32, i32, %struct.urb*, i32, i32) #1

declare dso_local i32 @TRB_TYPE(i32) #1

declare dso_local i32 @TRB_TX_TYPE(i32) #1

declare dso_local i32 @queue_trb(%struct.xhci_hcd*, %struct.xhci_ring*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @TRB_LEN(i32) #1

declare dso_local i32 @TRB_INTR_TARGET(i32) #1

declare dso_local i64 @usb_urb_dir_in(%struct.urb*) #1

declare dso_local i64 @xhci_urb_suitable_for_idt(%struct.urb*) #1

declare dso_local i32 @memcpy(i64*, i32, i32) #1

declare dso_local i32 @le64_to_cpus(i64*) #1

declare dso_local i32 @xhci_td_remainder(%struct.xhci_hcd*, i32, i32, i32, %struct.urb*, i32) #1

declare dso_local i32 @TRB_TD_SIZE(i32) #1

declare dso_local i32 @lower_32_bits(i64) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @giveback_first_trb(%struct.xhci_hcd*, i32, i32, i32, i32, %struct.xhci_generic_trb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
