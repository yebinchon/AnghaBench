; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vudc_tx.c_v_send_ret_submit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vudc_tx.c_v_send_ret_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vudc = type { %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.urbp = type { i64, %struct.urb* }
%struct.urb = type { i32, i32, %struct.TYPE_7__*, %struct.usbip_iso_packet_descriptor*, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.usbip_iso_packet_descriptor = type { i32, %struct.usbip_iso_packet_descriptor*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.usbip_header = type { i32, %struct.usbip_header*, %struct.TYPE_6__ }
%struct.kvec = type { i32, %struct.kvec*, %struct.TYPE_6__ }
%struct.msghdr = type { i32, %struct.msghdr*, %struct.TYPE_6__ }

@.str = private unnamed_addr constant [44 x i8] c"urb: actual_length %d transfer_buffer null\0A\00", align 1
@USB_ENDPOINT_XFER_ISOC = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@VUDC_EVENT_ERROR_MALLOC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"setup txdata seqnum: %d\0A\00", align 1
@VUDC_EVENT_ERROR_TCP = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vudc*, %struct.urbp*)* @v_send_ret_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v_send_ret_submit(%struct.vudc* %0, %struct.urbp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vudc*, align 8
  %5 = alloca %struct.urbp*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca %struct.usbip_header, align 8
  %8 = alloca %struct.usbip_iso_packet_descriptor*, align 8
  %9 = alloca %struct.kvec*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.msghdr, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.vudc* %0, %struct.vudc** %4, align 8
  store %struct.urbp* %1, %struct.urbp** %5, align 8
  %16 = load %struct.urbp*, %struct.urbp** %5, align 8
  %17 = getelementptr inbounds %struct.urbp, %struct.urbp* %16, i32 0, i32 1
  %18 = load %struct.urb*, %struct.urb** %17, align 8
  store %struct.urb* %18, %struct.urb** %6, align 8
  store %struct.usbip_iso_packet_descriptor* null, %struct.usbip_iso_packet_descriptor** %8, align 8
  store %struct.kvec* null, %struct.kvec** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i64 0, i64* %12, align 8
  %19 = bitcast %struct.usbip_header* %7 to %struct.usbip_iso_packet_descriptor*
  %20 = call i32 @memset(%struct.usbip_iso_packet_descriptor* %19, i32 0, i32 24)
  %21 = bitcast %struct.msghdr* %13 to %struct.usbip_iso_packet_descriptor*
  %22 = call i32 @memset(%struct.usbip_iso_packet_descriptor* %21, i32 0, i32 24)
  %23 = load %struct.urb*, %struct.urb** %6, align 8
  %24 = getelementptr inbounds %struct.urb, %struct.urb* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %2
  %28 = load %struct.urb*, %struct.urb** %6, align 8
  %29 = getelementptr inbounds %struct.urb, %struct.urb* %28, i32 0, i32 3
  %30 = load %struct.usbip_iso_packet_descriptor*, %struct.usbip_iso_packet_descriptor** %29, align 8
  %31 = icmp ne %struct.usbip_iso_packet_descriptor* %30, null
  br i1 %31, label %40, label %32

32:                                               ; preds = %27
  %33 = load %struct.vudc*, %struct.vudc** %4, align 8
  %34 = getelementptr inbounds %struct.vudc, %struct.vudc* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load %struct.urb*, %struct.urb** %6, align 8
  %37 = getelementptr inbounds %struct.urb, %struct.urb* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @dev_err(i32* %35, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %38)
  store i32 -1, i32* %3, align 4
  br label %298

40:                                               ; preds = %27, %2
  %41 = load %struct.urbp*, %struct.urbp** %5, align 8
  %42 = getelementptr inbounds %struct.urbp, %struct.urbp* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @USB_ENDPOINT_XFER_ISOC, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load %struct.urb*, %struct.urb** %6, align 8
  %48 = getelementptr inbounds %struct.urb, %struct.urb* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 2, %49
  store i32 %50, i32* %10, align 4
  br label %52

51:                                               ; preds = %40
  store i32 2, i32* %10, align 4
  br label %52

52:                                               ; preds = %51, %46
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call %struct.usbip_iso_packet_descriptor* @kcalloc(i32 %53, i32 24, i32 %54)
  %56 = bitcast %struct.usbip_iso_packet_descriptor* %55 to %struct.kvec*
  store %struct.kvec* %56, %struct.kvec** %9, align 8
  %57 = load %struct.kvec*, %struct.kvec** %9, align 8
  %58 = icmp ne %struct.kvec* %57, null
  br i1 %58, label %66, label %59

59:                                               ; preds = %52
  %60 = load %struct.vudc*, %struct.vudc** %4, align 8
  %61 = getelementptr inbounds %struct.vudc, %struct.vudc* %60, i32 0, i32 0
  %62 = load i32, i32* @VUDC_EVENT_ERROR_MALLOC, align 4
  %63 = call i32 @usbip_event_add(%struct.TYPE_8__* %61, i32 %62)
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %11, align 4
  br label %283

66:                                               ; preds = %52
  store i32 0, i32* %10, align 4
  %67 = bitcast %struct.usbip_header* %7 to %struct.usbip_iso_packet_descriptor*
  %68 = load %struct.urbp*, %struct.urbp** %5, align 8
  %69 = call i32 @setup_ret_submit_pdu(%struct.usbip_iso_packet_descriptor* %67, %struct.urbp* %68)
  %70 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %7, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @usbip_dbg_stub_tx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = bitcast %struct.usbip_header* %7 to %struct.usbip_iso_packet_descriptor*
  %75 = call i32 @usbip_header_correct_endian(%struct.usbip_iso_packet_descriptor* %74, i32 1)
  %76 = bitcast %struct.usbip_header* %7 to %struct.kvec*
  %77 = load %struct.kvec*, %struct.kvec** %9, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.kvec, %struct.kvec* %77, i64 %79
  %81 = getelementptr inbounds %struct.kvec, %struct.kvec* %80, i32 0, i32 1
  store %struct.kvec* %76, %struct.kvec** %81, align 8
  %82 = load %struct.kvec*, %struct.kvec** %9, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.kvec, %struct.kvec* %82, i64 %84
  %86 = getelementptr inbounds %struct.kvec, %struct.kvec* %85, i32 0, i32 0
  store i32 24, i32* %86, align 8
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %10, align 4
  %89 = load i64, i64* %12, align 8
  %90 = add i64 %89, 24
  store i64 %90, i64* %12, align 8
  %91 = load %struct.urbp*, %struct.urbp** %5, align 8
  %92 = getelementptr inbounds %struct.urbp, %struct.urbp* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @USB_ENDPOINT_XFER_ISOC, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %133

96:                                               ; preds = %66
  %97 = load %struct.urb*, %struct.urb** %6, align 8
  %98 = getelementptr inbounds %struct.urb, %struct.urb* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = call i64 @usb_pipein(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %133

102:                                              ; preds = %96
  %103 = load %struct.urb*, %struct.urb** %6, align 8
  %104 = getelementptr inbounds %struct.urb, %struct.urb* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %133

107:                                              ; preds = %102
  %108 = load %struct.urb*, %struct.urb** %6, align 8
  %109 = getelementptr inbounds %struct.urb, %struct.urb* %108, i32 0, i32 3
  %110 = load %struct.usbip_iso_packet_descriptor*, %struct.usbip_iso_packet_descriptor** %109, align 8
  %111 = bitcast %struct.usbip_iso_packet_descriptor* %110 to %struct.kvec*
  %112 = load %struct.kvec*, %struct.kvec** %9, align 8
  %113 = load i32, i32* %10, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.kvec, %struct.kvec* %112, i64 %114
  %116 = getelementptr inbounds %struct.kvec, %struct.kvec* %115, i32 0, i32 1
  store %struct.kvec* %111, %struct.kvec** %116, align 8
  %117 = load %struct.urb*, %struct.urb** %6, align 8
  %118 = getelementptr inbounds %struct.urb, %struct.urb* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.kvec*, %struct.kvec** %9, align 8
  %121 = load i32, i32* %10, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.kvec, %struct.kvec* %120, i64 %122
  %124 = getelementptr inbounds %struct.kvec, %struct.kvec* %123, i32 0, i32 0
  store i32 %119, i32* %124, align 8
  %125 = load i32, i32* %10, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %10, align 4
  %127 = load %struct.urb*, %struct.urb** %6, align 8
  %128 = getelementptr inbounds %struct.urb, %struct.urb* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = sext i32 %129 to i64
  %131 = load i64, i64* %12, align 8
  %132 = add i64 %131, %130
  store i64 %132, i64* %12, align 8
  br label %218

133:                                              ; preds = %102, %96, %66
  %134 = load %struct.urbp*, %struct.urbp** %5, align 8
  %135 = getelementptr inbounds %struct.urbp, %struct.urbp* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @USB_ENDPOINT_XFER_ISOC, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %217

139:                                              ; preds = %133
  %140 = load %struct.urb*, %struct.urb** %6, align 8
  %141 = getelementptr inbounds %struct.urb, %struct.urb* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = call i64 @usb_pipein(i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %217

145:                                              ; preds = %139
  store i32 0, i32* %14, align 4
  br label %146

146:                                              ; preds = %198, %145
  %147 = load i32, i32* %14, align 4
  %148 = load %struct.urb*, %struct.urb** %6, align 8
  %149 = getelementptr inbounds %struct.urb, %struct.urb* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = icmp slt i32 %147, %150
  br i1 %151, label %152, label %201

152:                                              ; preds = %146
  %153 = load %struct.urb*, %struct.urb** %6, align 8
  %154 = getelementptr inbounds %struct.urb, %struct.urb* %153, i32 0, i32 3
  %155 = load %struct.usbip_iso_packet_descriptor*, %struct.usbip_iso_packet_descriptor** %154, align 8
  %156 = load %struct.urb*, %struct.urb** %6, align 8
  %157 = getelementptr inbounds %struct.urb, %struct.urb* %156, i32 0, i32 2
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %157, align 8
  %159 = load i32, i32* %14, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.usbip_iso_packet_descriptor, %struct.usbip_iso_packet_descriptor* %155, i64 %164
  %166 = bitcast %struct.usbip_iso_packet_descriptor* %165 to %struct.kvec*
  %167 = load %struct.kvec*, %struct.kvec** %9, align 8
  %168 = load i32, i32* %10, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.kvec, %struct.kvec* %167, i64 %169
  %171 = getelementptr inbounds %struct.kvec, %struct.kvec* %170, i32 0, i32 1
  store %struct.kvec* %166, %struct.kvec** %171, align 8
  %172 = load %struct.urb*, %struct.urb** %6, align 8
  %173 = getelementptr inbounds %struct.urb, %struct.urb* %172, i32 0, i32 2
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %173, align 8
  %175 = load i32, i32* %14, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.kvec*, %struct.kvec** %9, align 8
  %181 = load i32, i32* %10, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.kvec, %struct.kvec* %180, i64 %182
  %184 = getelementptr inbounds %struct.kvec, %struct.kvec* %183, i32 0, i32 0
  store i32 %179, i32* %184, align 8
  %185 = load i32, i32* %10, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %10, align 4
  %187 = load %struct.urb*, %struct.urb** %6, align 8
  %188 = getelementptr inbounds %struct.urb, %struct.urb* %187, i32 0, i32 2
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %188, align 8
  %190 = load i32, i32* %14, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = sext i32 %194 to i64
  %196 = load i64, i64* %12, align 8
  %197 = add i64 %196, %195
  store i64 %197, i64* %12, align 8
  br label %198

198:                                              ; preds = %152
  %199 = load i32, i32* %14, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %14, align 4
  br label %146

201:                                              ; preds = %146
  %202 = load i64, i64* %12, align 8
  %203 = load %struct.urb*, %struct.urb** %6, align 8
  %204 = getelementptr inbounds %struct.urb, %struct.urb* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = sext i32 %205 to i64
  %207 = add i64 24, %206
  %208 = icmp ne i64 %202, %207
  br i1 %208, label %209, label %216

209:                                              ; preds = %201
  %210 = load %struct.vudc*, %struct.vudc** %4, align 8
  %211 = getelementptr inbounds %struct.vudc, %struct.vudc* %210, i32 0, i32 0
  %212 = load i32, i32* @VUDC_EVENT_ERROR_TCP, align 4
  %213 = call i32 @usbip_event_add(%struct.TYPE_8__* %211, i32 %212)
  %214 = load i32, i32* @EPIPE, align 4
  %215 = sub nsw i32 0, %214
  store i32 %215, i32* %11, align 4
  br label %283

216:                                              ; preds = %201
  br label %217

217:                                              ; preds = %216, %139, %133
  br label %218

218:                                              ; preds = %217, %107
  %219 = load %struct.urbp*, %struct.urbp** %5, align 8
  %220 = getelementptr inbounds %struct.urbp, %struct.urbp* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @USB_ENDPOINT_XFER_ISOC, align 8
  %223 = icmp eq i64 %221, %222
  br i1 %223, label %224, label %256

224:                                              ; preds = %218
  store i32 0, i32* %15, align 4
  %225 = load %struct.urb*, %struct.urb** %6, align 8
  %226 = call %struct.usbip_iso_packet_descriptor* @usbip_alloc_iso_desc_pdu(%struct.urb* %225, i32* %15)
  store %struct.usbip_iso_packet_descriptor* %226, %struct.usbip_iso_packet_descriptor** %8, align 8
  %227 = load %struct.usbip_iso_packet_descriptor*, %struct.usbip_iso_packet_descriptor** %8, align 8
  %228 = icmp ne %struct.usbip_iso_packet_descriptor* %227, null
  br i1 %228, label %236, label %229

229:                                              ; preds = %224
  %230 = load %struct.vudc*, %struct.vudc** %4, align 8
  %231 = getelementptr inbounds %struct.vudc, %struct.vudc* %230, i32 0, i32 0
  %232 = load i32, i32* @VUDC_EVENT_ERROR_MALLOC, align 4
  %233 = call i32 @usbip_event_add(%struct.TYPE_8__* %231, i32 %232)
  %234 = load i32, i32* @ENOMEM, align 4
  %235 = sub nsw i32 0, %234
  store i32 %235, i32* %11, align 4
  br label %283

236:                                              ; preds = %224
  %237 = load %struct.usbip_iso_packet_descriptor*, %struct.usbip_iso_packet_descriptor** %8, align 8
  %238 = bitcast %struct.usbip_iso_packet_descriptor* %237 to %struct.kvec*
  %239 = load %struct.kvec*, %struct.kvec** %9, align 8
  %240 = load i32, i32* %10, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.kvec, %struct.kvec* %239, i64 %241
  %243 = getelementptr inbounds %struct.kvec, %struct.kvec* %242, i32 0, i32 1
  store %struct.kvec* %238, %struct.kvec** %243, align 8
  %244 = load i32, i32* %15, align 4
  %245 = load %struct.kvec*, %struct.kvec** %9, align 8
  %246 = load i32, i32* %10, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.kvec, %struct.kvec* %245, i64 %247
  %249 = getelementptr inbounds %struct.kvec, %struct.kvec* %248, i32 0, i32 0
  store i32 %244, i32* %249, align 8
  %250 = load i32, i32* %15, align 4
  %251 = sext i32 %250 to i64
  %252 = load i64, i64* %12, align 8
  %253 = add i64 %252, %251
  store i64 %253, i64* %12, align 8
  %254 = load i32, i32* %10, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %10, align 4
  br label %256

256:                                              ; preds = %236, %218
  %257 = load %struct.vudc*, %struct.vudc** %4, align 8
  %258 = getelementptr inbounds %struct.vudc, %struct.vudc* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = bitcast %struct.msghdr* %13 to %struct.usbip_iso_packet_descriptor*
  %262 = load %struct.kvec*, %struct.kvec** %9, align 8
  %263 = bitcast %struct.kvec* %262 to %struct.usbip_iso_packet_descriptor*
  %264 = load i32, i32* %10, align 4
  %265 = load i64, i64* %12, align 8
  %266 = call i32 @kernel_sendmsg(i32 %260, %struct.usbip_iso_packet_descriptor* %261, %struct.usbip_iso_packet_descriptor* %263, i32 %264, i64 %265)
  store i32 %266, i32* %11, align 4
  %267 = load i32, i32* %11, align 4
  %268 = sext i32 %267 to i64
  %269 = load i64, i64* %12, align 8
  %270 = icmp ne i64 %268, %269
  br i1 %270, label %271, label %282

271:                                              ; preds = %256
  %272 = load %struct.vudc*, %struct.vudc** %4, align 8
  %273 = getelementptr inbounds %struct.vudc, %struct.vudc* %272, i32 0, i32 0
  %274 = load i32, i32* @VUDC_EVENT_ERROR_TCP, align 4
  %275 = call i32 @usbip_event_add(%struct.TYPE_8__* %273, i32 %274)
  %276 = load i32, i32* %11, align 4
  %277 = icmp sge i32 %276, 0
  br i1 %277, label %278, label %281

278:                                              ; preds = %271
  %279 = load i32, i32* @EPIPE, align 4
  %280 = sub nsw i32 0, %279
  store i32 %280, i32* %11, align 4
  br label %281

281:                                              ; preds = %278, %271
  br label %283

282:                                              ; preds = %256
  br label %283

283:                                              ; preds = %282, %281, %229, %209, %59
  %284 = load %struct.kvec*, %struct.kvec** %9, align 8
  %285 = bitcast %struct.kvec* %284 to %struct.usbip_iso_packet_descriptor*
  %286 = call i32 @kfree(%struct.usbip_iso_packet_descriptor* %285)
  %287 = load %struct.usbip_iso_packet_descriptor*, %struct.usbip_iso_packet_descriptor** %8, align 8
  %288 = call i32 @kfree(%struct.usbip_iso_packet_descriptor* %287)
  %289 = load %struct.urbp*, %struct.urbp** %5, align 8
  %290 = call i32 @free_urbp_and_urb(%struct.urbp* %289)
  %291 = load i32, i32* %11, align 4
  %292 = icmp slt i32 %291, 0
  br i1 %292, label %293, label %295

293:                                              ; preds = %283
  %294 = load i32, i32* %11, align 4
  store i32 %294, i32* %3, align 4
  br label %298

295:                                              ; preds = %283
  %296 = load i64, i64* %12, align 8
  %297 = trunc i64 %296 to i32
  store i32 %297, i32* %3, align 4
  br label %298

298:                                              ; preds = %295, %293, %32
  %299 = load i32, i32* %3, align 4
  ret i32 %299
}

declare dso_local i32 @memset(%struct.usbip_iso_packet_descriptor*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local %struct.usbip_iso_packet_descriptor* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @usbip_event_add(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @setup_ret_submit_pdu(%struct.usbip_iso_packet_descriptor*, %struct.urbp*) #1

declare dso_local i32 @usbip_dbg_stub_tx(i8*, i32) #1

declare dso_local i32 @usbip_header_correct_endian(%struct.usbip_iso_packet_descriptor*, i32) #1

declare dso_local i64 @usb_pipein(i32) #1

declare dso_local %struct.usbip_iso_packet_descriptor* @usbip_alloc_iso_desc_pdu(%struct.urb*, i32*) #1

declare dso_local i32 @kernel_sendmsg(i32, %struct.usbip_iso_packet_descriptor*, %struct.usbip_iso_packet_descriptor*, i32, i64) #1

declare dso_local i32 @kfree(%struct.usbip_iso_packet_descriptor*) #1

declare dso_local i32 @free_urbp_and_urb(%struct.urbp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
