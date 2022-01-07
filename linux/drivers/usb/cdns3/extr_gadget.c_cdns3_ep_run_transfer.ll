; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c_cdns3_ep_run_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c_cdns3_ep_run_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns3_endpoint = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, %struct.cdns3_trb*, i32, %struct.TYPE_11__, %struct.cdns3_device* }
%struct.cdns3_trb = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.cdns3_device = type { i64, %struct.TYPE_9__*, %struct.TYPE_12__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.usb_request = type { i32, i32, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.cdns3_request = type { i32, i32, i32, %struct.cdns3_trb*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@USB_ENDPOINT_XFER_ISOC = common dso_local global i64 0, align 8
@EP_RING_FULL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@EP_PENDING_REQUEST = common dso_local global i32 0, align 4
@REQUEST_UNALIGNED = common dso_local global i32 0, align 4
@EP_CMD_DRDY = common dso_local global i32 0, align 4
@EP_DEFERRED_DRDY = common dso_local global i32 0, align 4
@TRBS_PER_SEGMENT = common dso_local global i32 0, align 4
@TRB_CHAIN = common dso_local global i32 0, align 4
@TRB_CYCLE = common dso_local global i32 0, align 4
@TRB_LINK = common dso_local global i32 0, align 4
@TRB_TOGGLE = common dso_local global i32 0, align 4
@DEV_VER_V2 = common dso_local global i64 0, align 8
@TRB_NORMAL = common dso_local global i32 0, align 4
@USB_SPEED_SUPER = common dso_local global i64 0, align 8
@TRB_IOC = common dso_local global i32 0, align 4
@TRB_ISP = common dso_local global i32 0, align 4
@REQUEST_PENDING = common dso_local global i32 0, align 4
@EP_UPDATE_EP_TRBADDR = common dso_local global i32 0, align 4
@EP_QUIRK_ISO_OUT_EN = common dso_local global i32 0, align 4
@EP_CFG_ENABLE = common dso_local global i32 0, align 4
@TRB_SIZE = common dso_local global i32 0, align 4
@EP_STALLED = common dso_local global i32 0, align 4
@EP_STS_TRBERR = common dso_local global i32 0, align 4
@EP_STS_DESCMIS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cdns3_ep_run_transfer(%struct.cdns3_endpoint* %0, %struct.usb_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdns3_endpoint*, align 8
  %5 = alloca %struct.usb_request*, align 8
  %6 = alloca %struct.cdns3_device*, align 8
  %7 = alloca %struct.cdns3_request*, align 8
  %8 = alloca %struct.cdns3_trb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.cdns3_trb*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.cdns3_endpoint* %0, %struct.cdns3_endpoint** %4, align 8
  store %struct.usb_request* %1, %struct.usb_request** %5, align 8
  %22 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %23 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %22, i32 0, i32 14
  %24 = load %struct.cdns3_device*, %struct.cdns3_device** %23, align 8
  store %struct.cdns3_device* %24, %struct.cdns3_device** %6, align 8
  store i32 1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %25 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %26 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @USB_ENDPOINT_XFER_ISOC, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %2
  %31 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %32 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %12, align 4
  br label %46

34:                                               ; preds = %2
  %35 = load %struct.usb_request*, %struct.usb_request** %5, align 8
  %36 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load %struct.usb_request*, %struct.usb_request** %5, align 8
  %41 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  br label %44

43:                                               ; preds = %34
  br label %44

44:                                               ; preds = %43, %39
  %45 = phi i32 [ %42, %39 ], [ 1, %43 ]
  store i32 %45, i32* %12, align 4
  br label %46

46:                                               ; preds = %44, %30
  %47 = load i32, i32* %12, align 4
  %48 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %49 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = icmp sgt i32 %47, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %46
  %53 = load i32, i32* @EP_RING_FULL, align 4
  %54 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %55 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  %58 = load i32, i32* @ENOBUFS, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %535

60:                                               ; preds = %46
  %61 = load %struct.usb_request*, %struct.usb_request** %5, align 8
  %62 = call %struct.cdns3_request* @to_cdns3_request(%struct.usb_request* %61)
  store %struct.cdns3_request* %62, %struct.cdns3_request** %7, align 8
  %63 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %64 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %63, i32 0, i32 13
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* @EP_PENDING_REQUEST, align 4
  %70 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %71 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 8
  %74 = load %struct.cdns3_request*, %struct.cdns3_request** %7, align 8
  %75 = getelementptr inbounds %struct.cdns3_request, %struct.cdns3_request* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @REQUEST_UNALIGNED, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %60
  %81 = load %struct.cdns3_request*, %struct.cdns3_request** %7, align 8
  %82 = getelementptr inbounds %struct.cdns3_request, %struct.cdns3_request* %81, i32 0, i32 4
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %9, align 4
  br label %90

86:                                               ; preds = %60
  %87 = load %struct.usb_request*, %struct.usb_request** %5, align 8
  %88 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  store i32 %89, i32* %9, align 4
  br label %90

90:                                               ; preds = %86, %80
  %91 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %92 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %91, i32 0, i32 11
  %93 = load %struct.cdns3_trb*, %struct.cdns3_trb** %92, align 8
  %94 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %95 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.cdns3_trb, %struct.cdns3_trb* %93, i64 %97
  store %struct.cdns3_trb* %98, %struct.cdns3_trb** %8, align 8
  %99 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %100 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.cdns3_request*, %struct.cdns3_request** %7, align 8
  %103 = getelementptr inbounds %struct.cdns3_request, %struct.cdns3_request* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load %struct.cdns3_trb*, %struct.cdns3_trb** %8, align 8
  %105 = load %struct.cdns3_request*, %struct.cdns3_request** %7, align 8
  %106 = getelementptr inbounds %struct.cdns3_request, %struct.cdns3_request* %105, i32 0, i32 3
  store %struct.cdns3_trb* %104, %struct.cdns3_trb** %106, align 8
  %107 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %108 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %107, i32 0, i32 14
  %109 = load %struct.cdns3_device*, %struct.cdns3_device** %108, align 8
  %110 = load i32, i32* %13, align 4
  %111 = call i32 @cdns3_select_ep(%struct.cdns3_device* %109, i32 %110)
  %112 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %113 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %12, align 4
  %116 = add nsw i32 %114, %115
  %117 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %118 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 8
  %120 = sub nsw i32 %119, 1
  %121 = icmp sge i32 %116, %120
  br i1 %121, label %122, label %193

122:                                              ; preds = %90
  store i32 0, i32* %19, align 4
  %123 = load %struct.cdns3_device*, %struct.cdns3_device** %6, align 8
  %124 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %123, i32 0, i32 1
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 1
  %127 = call i32 @readl(i32* %126)
  %128 = load i32, i32* @EP_CMD_DRDY, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  %131 = xor i1 %130, true
  %132 = xor i1 %131, true
  %133 = zext i1 %132 to i32
  store i32 %133, i32* %17, align 4
  %134 = load %struct.cdns3_device*, %struct.cdns3_device** %6, align 8
  %135 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %136 = call i32 @cdns3_get_dma_pos(%struct.cdns3_device* %134, %struct.cdns3_endpoint* %135)
  store i32 %136, i32* %18, align 4
  %137 = load i32, i32* %17, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %154

139:                                              ; preds = %122
  %140 = load i32, i32* %18, align 4
  %141 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %142 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 8
  %144 = sub nsw i32 %143, 1
  %145 = icmp eq i32 %140, %144
  br i1 %145, label %146, label %154

146:                                              ; preds = %139
  %147 = load i32, i32* @EP_DEFERRED_DRDY, align 4
  %148 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %149 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  %151 = or i32 %150, %147
  store i32 %151, i32* %149, align 8
  %152 = load i32, i32* @ENOBUFS, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %3, align 4
  br label %535

154:                                              ; preds = %139, %122
  %155 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %156 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %155, i32 0, i32 11
  %157 = load %struct.cdns3_trb*, %struct.cdns3_trb** %156, align 8
  %158 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %159 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %158, i32 0, i32 5
  %160 = load i32, i32* %159, align 8
  %161 = sub nsw i32 %160, 1
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.cdns3_trb, %struct.cdns3_trb* %157, i64 %162
  store %struct.cdns3_trb* %163, %struct.cdns3_trb** %16, align 8
  %164 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %165 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @USB_ENDPOINT_XFER_ISOC, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %172, label %169

169:                                              ; preds = %154
  %170 = load i32, i32* @TRBS_PER_SEGMENT, align 4
  %171 = icmp sgt i32 %170, 2
  br i1 %171, label %172, label %174

172:                                              ; preds = %169, %154
  %173 = load i32, i32* @TRB_CHAIN, align 4
  store i32 %173, i32* %19, align 4
  br label %174

174:                                              ; preds = %172, %169
  %175 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %176 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %175, i32 0, i32 6
  %177 = load i32, i32* %176, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %174
  %180 = load i32, i32* @TRB_CYCLE, align 4
  br label %182

181:                                              ; preds = %174
  br label %182

182:                                              ; preds = %181, %179
  %183 = phi i32 [ %180, %179 ], [ 0, %181 ]
  %184 = load i32, i32* @TRB_LINK, align 4
  %185 = call i32 @TRB_TYPE(i32 %184)
  %186 = or i32 %183, %185
  %187 = load i32, i32* @TRB_TOGGLE, align 4
  %188 = or i32 %186, %187
  %189 = load i32, i32* %19, align 4
  %190 = or i32 %188, %189
  %191 = load %struct.cdns3_trb*, %struct.cdns3_trb** %16, align 8
  %192 = getelementptr inbounds %struct.cdns3_trb, %struct.cdns3_trb* %191, i32 0, i32 0
  store i32 %190, i32* %192, align 4
  br label %193

193:                                              ; preds = %182, %90
  %194 = load %struct.cdns3_device*, %struct.cdns3_device** %6, align 8
  %195 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @DEV_VER_V2, align 8
  %198 = icmp sle i64 %196, %197
  br i1 %198, label %199, label %203

199:                                              ; preds = %193
  %200 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %201 = load %struct.cdns3_trb*, %struct.cdns3_trb** %8, align 8
  %202 = call i32 @cdns3_wa1_update_guard(%struct.cdns3_endpoint* %200, %struct.cdns3_trb* %201)
  store i32 %202, i32* %10, align 4
  br label %203

203:                                              ; preds = %199, %193
  %204 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %205 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %204, i32 0, i32 6
  %206 = load i32, i32* %205, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %203
  br label %211

209:                                              ; preds = %203
  %210 = load i32, i32* @TRB_CYCLE, align 4
  br label %211

211:                                              ; preds = %209, %208
  %212 = phi i32 [ 0, %208 ], [ %210, %209 ]
  store i32 %212, i32* %14, align 4
  br label %213

213:                                              ; preds = %384, %211
  store i32 0, i32* %21, align 4
  %214 = load i32, i32* @TRB_NORMAL, align 4
  %215 = call i32 @TRB_TYPE(i32 %214)
  %216 = load i32, i32* %14, align 4
  %217 = or i32 %216, %215
  store i32 %217, i32* %14, align 4
  %218 = load %struct.usb_request*, %struct.usb_request** %5, align 8
  %219 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %224

222:                                              ; preds = %213
  %223 = load i32, i32* %9, align 4
  br label %233

224:                                              ; preds = %213
  %225 = load %struct.usb_request*, %struct.usb_request** %5, align 8
  %226 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %225, i32 0, i32 2
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** %226, align 8
  %228 = load i32, i32* %11, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  br label %233

233:                                              ; preds = %224, %222
  %234 = phi i32 [ %223, %222 ], [ %232, %224 ]
  %235 = call i32 @TRB_BUFFER(i32 %234)
  %236 = load %struct.cdns3_trb*, %struct.cdns3_trb** %8, align 8
  %237 = getelementptr inbounds %struct.cdns3_trb, %struct.cdns3_trb* %236, i32 0, i32 2
  store i32 %235, i32* %237, align 4
  %238 = load %struct.usb_request*, %struct.usb_request** %5, align 8
  %239 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = icmp ne i32 %240, 0
  %242 = xor i1 %241, true
  %243 = zext i1 %242 to i32
  %244 = call i64 @likely(i32 %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %250

246:                                              ; preds = %233
  %247 = load %struct.usb_request*, %struct.usb_request** %5, align 8
  %248 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  store i32 %249, i32* %20, align 4
  br label %259

250:                                              ; preds = %233
  %251 = load %struct.usb_request*, %struct.usb_request** %5, align 8
  %252 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %251, i32 0, i32 2
  %253 = load %struct.TYPE_10__*, %struct.TYPE_10__** %252, align 8
  %254 = load i32, i32* %11, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %253, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  store i32 %258, i32* %20, align 4
  br label %259

259:                                              ; preds = %250, %246
  %260 = load %struct.cdns3_device*, %struct.cdns3_device** %6, align 8
  %261 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* @DEV_VER_V2, align 8
  %264 = icmp sge i64 %262, %263
  %265 = zext i1 %264 to i32
  %266 = call i64 @likely(i32 %265)
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %275

268:                                              ; preds = %259
  %269 = load i32, i32* %20, align 4
  %270 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %271 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %270, i32 0, i32 13
  %272 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = call i32 @DIV_ROUND_UP(i32 %269, i32 %273)
  store i32 %274, i32* %21, align 4
  br label %275

275:                                              ; preds = %268, %259
  %276 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %277 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %276, i32 0, i32 12
  %278 = load i32, i32* %277, align 8
  %279 = call i32 @TRB_BURST_LEN(i32 %278)
  %280 = load i32, i32* %20, align 4
  %281 = call i32 @TRB_LEN(i32 %280)
  %282 = or i32 %279, %281
  %283 = load %struct.cdns3_trb*, %struct.cdns3_trb** %8, align 8
  %284 = getelementptr inbounds %struct.cdns3_trb, %struct.cdns3_trb* %283, i32 0, i32 1
  store i32 %282, i32* %284, align 4
  %285 = load %struct.cdns3_device*, %struct.cdns3_device** %6, align 8
  %286 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %285, i32 0, i32 2
  %287 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %286, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = load i64, i64* @USB_SPEED_SUPER, align 8
  %290 = icmp eq i64 %288, %289
  br i1 %290, label %291, label %298

291:                                              ; preds = %275
  %292 = load i32, i32* %21, align 4
  %293 = call i32 @TRB_TDL_SS_SIZE(i32 %292)
  %294 = load %struct.cdns3_trb*, %struct.cdns3_trb** %8, align 8
  %295 = getelementptr inbounds %struct.cdns3_trb, %struct.cdns3_trb* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = or i32 %296, %293
  store i32 %297, i32* %295, align 4
  br label %303

298:                                              ; preds = %275
  %299 = load i32, i32* %21, align 4
  %300 = call i32 @TRB_TDL_HS_SIZE(i32 %299)
  %301 = load i32, i32* %14, align 4
  %302 = or i32 %301, %300
  store i32 %302, i32* %14, align 4
  br label %303

303:                                              ; preds = %298, %291
  %304 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %305 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %304, i32 0, i32 6
  %306 = load i32, i32* %305, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %310

308:                                              ; preds = %303
  %309 = load i32, i32* @TRB_CYCLE, align 4
  br label %311

310:                                              ; preds = %303
  br label %311

311:                                              ; preds = %310, %308
  %312 = phi i32 [ %309, %308 ], [ 0, %310 ]
  store i32 %312, i32* %15, align 4
  %313 = load i32, i32* %11, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %319

315:                                              ; preds = %311
  %316 = load i32, i32* %15, align 4
  %317 = load i32, i32* %14, align 4
  %318 = or i32 %317, %316
  store i32 %318, i32* %14, align 4
  br label %319

319:                                              ; preds = %315, %311
  %320 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %321 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %320, i32 0, i32 0
  %322 = load i64, i64* %321, align 8
  %323 = load i64, i64* @USB_ENDPOINT_XFER_ISOC, align 8
  %324 = icmp eq i64 %322, %323
  br i1 %324, label %325, label %336

325:                                              ; preds = %319
  %326 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %327 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %326, i32 0, i32 10
  %328 = load i32, i32* %327, align 8
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %336, label %330

330:                                              ; preds = %325
  %331 = load i32, i32* @TRB_IOC, align 4
  %332 = load i32, i32* @TRB_ISP, align 4
  %333 = or i32 %331, %332
  %334 = load i32, i32* %14, align 4
  %335 = or i32 %334, %333
  store i32 %335, i32* %14, align 4
  br label %353

336:                                              ; preds = %325, %319
  %337 = load i32, i32* %11, align 4
  %338 = load i32, i32* %12, align 4
  %339 = sub nsw i32 %338, 1
  %340 = icmp eq i32 %337, %339
  br i1 %340, label %341, label %352

341:                                              ; preds = %336
  %342 = load i32, i32* %11, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %352

344:                                              ; preds = %341
  %345 = load i32, i32* %15, align 4
  %346 = load i32, i32* @TRB_IOC, align 4
  %347 = or i32 %345, %346
  %348 = load i32, i32* @TRB_ISP, align 4
  %349 = or i32 %347, %348
  %350 = load i32, i32* %14, align 4
  %351 = or i32 %350, %349
  store i32 %351, i32* %14, align 4
  br label %352

352:                                              ; preds = %344, %341, %336
  br label %353

353:                                              ; preds = %352, %330
  %354 = load i32, i32* %11, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %360

356:                                              ; preds = %353
  %357 = load i32, i32* %14, align 4
  %358 = load %struct.cdns3_trb*, %struct.cdns3_trb** %8, align 8
  %359 = getelementptr inbounds %struct.cdns3_trb, %struct.cdns3_trb* %358, i32 0, i32 0
  store i32 %357, i32* %359, align 4
  br label %366

360:                                              ; preds = %353
  %361 = load i32, i32* %14, align 4
  %362 = load %struct.cdns3_request*, %struct.cdns3_request** %7, align 8
  %363 = getelementptr inbounds %struct.cdns3_request, %struct.cdns3_request* %362, i32 0, i32 3
  %364 = load %struct.cdns3_trb*, %struct.cdns3_trb** %363, align 8
  %365 = getelementptr inbounds %struct.cdns3_trb, %struct.cdns3_trb* %364, i32 0, i32 0
  store i32 %361, i32* %365, align 4
  br label %366

366:                                              ; preds = %360, %356
  store i32 0, i32* %14, align 4
  %367 = load i32, i32* %11, align 4
  %368 = add nsw i32 %367, 1
  store i32 %368, i32* %11, align 4
  %369 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %370 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %369, i32 0, i32 4
  %371 = load i32, i32* %370, align 4
  %372 = load %struct.cdns3_request*, %struct.cdns3_request** %7, align 8
  %373 = getelementptr inbounds %struct.cdns3_request, %struct.cdns3_request* %372, i32 0, i32 2
  store i32 %371, i32* %373, align 8
  %374 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %375 = call i32 @cdns3_ep_inc_enq(%struct.cdns3_endpoint* %374)
  %376 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %377 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %376, i32 0, i32 11
  %378 = load %struct.cdns3_trb*, %struct.cdns3_trb** %377, align 8
  %379 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %380 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %379, i32 0, i32 4
  %381 = load i32, i32* %380, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds %struct.cdns3_trb, %struct.cdns3_trb* %378, i64 %382
  store %struct.cdns3_trb* %383, %struct.cdns3_trb** %8, align 8
  br label %384

384:                                              ; preds = %366
  %385 = load i32, i32* %11, align 4
  %386 = load i32, i32* %12, align 4
  %387 = icmp slt i32 %385, %386
  br i1 %387, label %213, label %388

388:                                              ; preds = %384
  %389 = load %struct.cdns3_request*, %struct.cdns3_request** %7, align 8
  %390 = getelementptr inbounds %struct.cdns3_request, %struct.cdns3_request* %389, i32 0, i32 3
  %391 = load %struct.cdns3_trb*, %struct.cdns3_trb** %390, align 8
  store %struct.cdns3_trb* %391, %struct.cdns3_trb** %8, align 8
  %392 = load i32, i32* @REQUEST_PENDING, align 4
  %393 = load %struct.cdns3_request*, %struct.cdns3_request** %7, align 8
  %394 = getelementptr inbounds %struct.cdns3_request, %struct.cdns3_request* %393, i32 0, i32 0
  %395 = load i32, i32* %394, align 8
  %396 = or i32 %395, %392
  store i32 %396, i32* %394, align 8
  %397 = load i32, i32* %11, align 4
  %398 = icmp eq i32 %397, 1
  br i1 %398, label %399, label %407

399:                                              ; preds = %388
  %400 = load i32, i32* @TRB_IOC, align 4
  %401 = load i32, i32* @TRB_ISP, align 4
  %402 = or i32 %400, %401
  %403 = load %struct.cdns3_trb*, %struct.cdns3_trb** %8, align 8
  %404 = getelementptr inbounds %struct.cdns3_trb, %struct.cdns3_trb* %403, i32 0, i32 0
  %405 = load i32, i32* %404, align 4
  %406 = or i32 %405, %402
  store i32 %406, i32* %404, align 4
  br label %407

407:                                              ; preds = %399, %388
  %408 = call i32 (...) @wmb()
  %409 = load i32, i32* %10, align 4
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %418

411:                                              ; preds = %407
  %412 = load %struct.cdns3_trb*, %struct.cdns3_trb** %8, align 8
  %413 = getelementptr inbounds %struct.cdns3_trb, %struct.cdns3_trb* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 4
  %415 = xor i32 %414, 1
  %416 = load %struct.cdns3_trb*, %struct.cdns3_trb** %8, align 8
  %417 = getelementptr inbounds %struct.cdns3_trb, %struct.cdns3_trb* %416, i32 0, i32 0
  store i32 %415, i32* %417, align 4
  br label %418

418:                                              ; preds = %411, %407
  %419 = load %struct.cdns3_device*, %struct.cdns3_device** %6, align 8
  %420 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %419, i32 0, i32 0
  %421 = load i64, i64* %420, align 8
  %422 = load i64, i64* @DEV_VER_V2, align 8
  %423 = icmp sle i64 %421, %422
  br i1 %423, label %424, label %428

424:                                              ; preds = %418
  %425 = load %struct.cdns3_device*, %struct.cdns3_device** %6, align 8
  %426 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %427 = call i32 @cdns3_wa1_tray_restore_cycle_bit(%struct.cdns3_device* %425, %struct.cdns3_endpoint* %426)
  br label %428

428:                                              ; preds = %424, %418
  %429 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %430 = load %struct.cdns3_request*, %struct.cdns3_request** %7, align 8
  %431 = getelementptr inbounds %struct.cdns3_request, %struct.cdns3_request* %430, i32 0, i32 3
  %432 = load %struct.cdns3_trb*, %struct.cdns3_trb** %431, align 8
  %433 = call i32 @trace_cdns3_prepare_trb(%struct.cdns3_endpoint* %429, %struct.cdns3_trb* %432)
  %434 = call i32 (...) @wmb()
  %435 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %436 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %435, i32 0, i32 3
  %437 = load i32, i32* %436, align 8
  %438 = load i32, i32* @EP_UPDATE_EP_TRBADDR, align 4
  %439 = and i32 %437, %438
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %441, label %494

441:                                              ; preds = %428
  %442 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %443 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %442, i32 0, i32 0
  %444 = load i64, i64* %443, align 8
  %445 = load i64, i64* @USB_ENDPOINT_XFER_ISOC, align 8
  %446 = icmp eq i64 %444, %445
  br i1 %446, label %447, label %471

447:                                              ; preds = %441
  %448 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %449 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %448, i32 0, i32 10
  %450 = load i32, i32* %449, align 8
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %471, label %452

452:                                              ; preds = %447
  %453 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %454 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %453, i32 0, i32 3
  %455 = load i32, i32* %454, align 8
  %456 = load i32, i32* @EP_QUIRK_ISO_OUT_EN, align 4
  %457 = and i32 %455, %456
  %458 = icmp ne i32 %457, 0
  br i1 %458, label %471, label %459

459:                                              ; preds = %452
  %460 = load i32, i32* @EP_QUIRK_ISO_OUT_EN, align 4
  %461 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %462 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %461, i32 0, i32 3
  %463 = load i32, i32* %462, align 8
  %464 = or i32 %463, %460
  store i32 %464, i32* %462, align 8
  %465 = load %struct.cdns3_device*, %struct.cdns3_device** %6, align 8
  %466 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %465, i32 0, i32 1
  %467 = load %struct.TYPE_9__*, %struct.TYPE_9__** %466, align 8
  %468 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %467, i32 0, i32 3
  %469 = load i32, i32* @EP_CFG_ENABLE, align 4
  %470 = call i32 @cdns3_set_register_bit(i32* %468, i32 %469)
  br label %471

471:                                              ; preds = %459, %452, %447, %441
  %472 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %473 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %472, i32 0, i32 9
  %474 = load i64, i64* %473, align 8
  %475 = load %struct.cdns3_request*, %struct.cdns3_request** %7, align 8
  %476 = getelementptr inbounds %struct.cdns3_request, %struct.cdns3_request* %475, i32 0, i32 1
  %477 = load i32, i32* %476, align 4
  %478 = load i32, i32* @TRB_SIZE, align 4
  %479 = mul nsw i32 %477, %478
  %480 = sext i32 %479 to i64
  %481 = add nsw i64 %474, %480
  %482 = call i32 @EP_TRADDR_TRADDR(i64 %481)
  %483 = load %struct.cdns3_device*, %struct.cdns3_device** %6, align 8
  %484 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %483, i32 0, i32 1
  %485 = load %struct.TYPE_9__*, %struct.TYPE_9__** %484, align 8
  %486 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %485, i32 0, i32 0
  %487 = call i32 @writel(i32 %482, i32* %486)
  %488 = load i32, i32* @EP_UPDATE_EP_TRBADDR, align 4
  %489 = xor i32 %488, -1
  %490 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %491 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %490, i32 0, i32 3
  %492 = load i32, i32* %491, align 8
  %493 = and i32 %492, %489
  store i32 %493, i32* %491, align 8
  br label %494

494:                                              ; preds = %471, %428
  %495 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %496 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %495, i32 0, i32 8
  %497 = load i32, i32* %496, align 4
  %498 = icmp ne i32 %497, 0
  br i1 %498, label %532, label %499

499:                                              ; preds = %494
  %500 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %501 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %500, i32 0, i32 3
  %502 = load i32, i32* %501, align 8
  %503 = load i32, i32* @EP_STALLED, align 4
  %504 = and i32 %502, %503
  %505 = icmp ne i32 %504, 0
  br i1 %505, label %532, label %506

506:                                              ; preds = %499
  %507 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %508 = call i32 @trace_cdns3_ring(%struct.cdns3_endpoint* %507)
  %509 = load i32, i32* @EP_STS_TRBERR, align 4
  %510 = load i32, i32* @EP_STS_DESCMIS, align 4
  %511 = or i32 %509, %510
  %512 = load %struct.cdns3_device*, %struct.cdns3_device** %6, align 8
  %513 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %512, i32 0, i32 1
  %514 = load %struct.TYPE_9__*, %struct.TYPE_9__** %513, align 8
  %515 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %514, i32 0, i32 2
  %516 = call i32 @writel(i32 %511, i32* %515)
  %517 = load i32, i32* @EP_CMD_DRDY, align 4
  %518 = load %struct.cdns3_device*, %struct.cdns3_device** %6, align 8
  %519 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %518, i32 0, i32 1
  %520 = load %struct.TYPE_9__*, %struct.TYPE_9__** %519, align 8
  %521 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %520, i32 0, i32 1
  %522 = call i32 @writel(i32 %517, i32* %521)
  %523 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %524 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %523, i32 0, i32 7
  %525 = load i32, i32* %524, align 8
  %526 = load %struct.cdns3_device*, %struct.cdns3_device** %6, align 8
  %527 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %526, i32 0, i32 1
  %528 = load %struct.TYPE_9__*, %struct.TYPE_9__** %527, align 8
  %529 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %528, i32 0, i32 0
  %530 = call i32 @readl(i32* %529)
  %531 = call i32 @trace_cdns3_doorbell_epx(i32 %525, i32 %530)
  br label %532

532:                                              ; preds = %506, %499, %494
  %533 = load %struct.cdns3_device*, %struct.cdns3_device** %6, align 8
  %534 = call i32 @__cdns3_gadget_wakeup(%struct.cdns3_device* %533)
  store i32 0, i32* %3, align 4
  br label %535

535:                                              ; preds = %532, %146, %52
  %536 = load i32, i32* %3, align 4
  ret i32 %536
}

declare dso_local %struct.cdns3_request* @to_cdns3_request(%struct.usb_request*) #1

declare dso_local i32 @cdns3_select_ep(%struct.cdns3_device*, i32) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @cdns3_get_dma_pos(%struct.cdns3_device*, %struct.cdns3_endpoint*) #1

declare dso_local i32 @TRB_TYPE(i32) #1

declare dso_local i32 @cdns3_wa1_update_guard(%struct.cdns3_endpoint*, %struct.cdns3_trb*) #1

declare dso_local i32 @TRB_BUFFER(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @TRB_BURST_LEN(i32) #1

declare dso_local i32 @TRB_LEN(i32) #1

declare dso_local i32 @TRB_TDL_SS_SIZE(i32) #1

declare dso_local i32 @TRB_TDL_HS_SIZE(i32) #1

declare dso_local i32 @cdns3_ep_inc_enq(%struct.cdns3_endpoint*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @cdns3_wa1_tray_restore_cycle_bit(%struct.cdns3_device*, %struct.cdns3_endpoint*) #1

declare dso_local i32 @trace_cdns3_prepare_trb(%struct.cdns3_endpoint*, %struct.cdns3_trb*) #1

declare dso_local i32 @cdns3_set_register_bit(i32*, i32) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @EP_TRADDR_TRADDR(i64) #1

declare dso_local i32 @trace_cdns3_ring(%struct.cdns3_endpoint*) #1

declare dso_local i32 @trace_cdns3_doorbell_epx(i32, i32) #1

declare dso_local i32 @__cdns3_gadget_wakeup(%struct.cdns3_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
