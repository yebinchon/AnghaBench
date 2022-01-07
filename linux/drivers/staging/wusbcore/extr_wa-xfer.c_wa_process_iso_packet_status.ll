; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_wa-xfer.c_wa_process_iso_packet_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_wa-xfer.c_wa_process_iso_packet_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wahc = type { i32, i64, i32, i32, %struct.urb*, %struct.TYPE_10__*, i64, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_12__*)* }
%struct.TYPE_7__ = type { %struct.device }
%struct.device = type { i32 }
%struct.urb = type { i64, i32 }
%struct.wa_xfer_packet_status_hwaiso = type { i64, %struct.wa_xfer_packet_status_len_hwaiso*, i32 }
%struct.wa_xfer_packet_status_len_hwaiso = type { i32, i32 }
%struct.wa_xfer = type { i64, i32, %struct.TYPE_11__*, i64, %struct.TYPE_8__*, %struct.wa_seg** }
%struct.TYPE_11__ = type { %struct.usb_iso_packet_descriptor*, i32 }
%struct.usb_iso_packet_descriptor = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.wa_rpipe* }
%struct.wa_rpipe = type { i32 }
%struct.wa_seg = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"DTI: isoc packet status %d bytes at %p\0A\00", align 1
@WA_XFER_ISO_PACKET_STATUS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"DTI Error: isoc packet status--bad type 0x%02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"DTI Error: isoc packet status--unknown xfer 0x%08x\0A\00", align 1
@PacketStatus = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [72 x i8] c"DTI Error: isoc packet status--bad urb length (%d bytes vs %zu needed)\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"DTI Error: isoc packet status--bad length %u\0A\00", align 1
@WA_SEG_DTI_PENDING = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@WA_MAX_BUF_IN_URBS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [44 x i8] c"DTI Error: Could not submit buf in URB (%d)\00", align 1
@WA_SEG_DONE = common dso_local global i32 0, align 4
@WA_DTI_BUF_IN_DATA_PENDING = common dso_local global i32 0, align 4
@WA_DTI_TRANSFER_RESULT_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wahc*, %struct.urb*)* @wa_process_iso_packet_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wa_process_iso_packet_status(%struct.wahc* %0, %struct.urb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wahc*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.wa_xfer_packet_status_hwaiso*, align 8
  %8 = alloca %struct.wa_xfer_packet_status_len_hwaiso*, align 8
  %9 = alloca %struct.wa_xfer*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.wa_seg*, align 8
  %12 = alloca %struct.wa_rpipe*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca %struct.usb_iso_packet_descriptor*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.urb*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.usb_iso_packet_descriptor*, align 8
  store %struct.wahc* %0, %struct.wahc** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  %29 = load %struct.wahc*, %struct.wahc** %4, align 8
  %30 = getelementptr inbounds %struct.wahc, %struct.wahc* %29, i32 0, i32 7
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  store %struct.device* %32, %struct.device** %6, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %33 = load %struct.device*, %struct.device** %6, align 8
  %34 = load %struct.urb*, %struct.urb** %5, align 8
  %35 = getelementptr inbounds %struct.urb, %struct.urb* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.urb*, %struct.urb** %5, align 8
  %38 = getelementptr inbounds %struct.urb, %struct.urb* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @dev_dbg(%struct.device* %33, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %36, i32 %39)
  %41 = load %struct.wahc*, %struct.wahc** %4, align 8
  %42 = getelementptr inbounds %struct.wahc, %struct.wahc* %41, i32 0, i32 6
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to %struct.wa_xfer_packet_status_hwaiso*
  store %struct.wa_xfer_packet_status_hwaiso* %44, %struct.wa_xfer_packet_status_hwaiso** %7, align 8
  %45 = load %struct.wa_xfer_packet_status_hwaiso*, %struct.wa_xfer_packet_status_hwaiso** %7, align 8
  %46 = getelementptr inbounds %struct.wa_xfer_packet_status_hwaiso, %struct.wa_xfer_packet_status_hwaiso* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @WA_XFER_ISO_PACKET_STATUS, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %2
  %51 = load %struct.device*, %struct.device** %6, align 8
  %52 = load %struct.wa_xfer_packet_status_hwaiso*, %struct.wa_xfer_packet_status_hwaiso** %7, align 8
  %53 = getelementptr inbounds %struct.wa_xfer_packet_status_hwaiso, %struct.wa_xfer_packet_status_hwaiso* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %51, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  br label %381

57:                                               ; preds = %2
  %58 = load %struct.wahc*, %struct.wahc** %4, align 8
  %59 = load %struct.wahc*, %struct.wahc** %4, align 8
  %60 = getelementptr inbounds %struct.wahc, %struct.wahc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call %struct.wa_xfer* @wa_xfer_get_by_id(%struct.wahc* %58, i32 %61)
  store %struct.wa_xfer* %62, %struct.wa_xfer** %9, align 8
  %63 = load %struct.wa_xfer*, %struct.wa_xfer** %9, align 8
  %64 = icmp eq %struct.wa_xfer* %63, null
  br i1 %64, label %65, label %71

65:                                               ; preds = %57
  %66 = load %struct.device*, %struct.device** %6, align 8
  %67 = load %struct.wahc*, %struct.wahc** %4, align 8
  %68 = getelementptr inbounds %struct.wahc, %struct.wahc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %66, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  br label %381

71:                                               ; preds = %57
  %72 = load %struct.wa_xfer*, %struct.wa_xfer** %9, align 8
  %73 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %72, i32 0, i32 1
  %74 = load i64, i64* %10, align 8
  %75 = call i32 @spin_lock_irqsave(i32* %73, i64 %74)
  %76 = load %struct.wahc*, %struct.wahc** %4, align 8
  %77 = getelementptr inbounds %struct.wahc, %struct.wahc* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.wa_xfer*, %struct.wa_xfer** %9, align 8
  %80 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp uge i64 %78, %81
  %83 = zext i1 %82 to i32
  %84 = call i64 @unlikely(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %71
  br label %374

87:                                               ; preds = %71
  %88 = load %struct.wa_xfer*, %struct.wa_xfer** %9, align 8
  %89 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %88, i32 0, i32 5
  %90 = load %struct.wa_seg**, %struct.wa_seg*** %89, align 8
  %91 = load %struct.wahc*, %struct.wahc** %4, align 8
  %92 = getelementptr inbounds %struct.wahc, %struct.wahc* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.wa_seg*, %struct.wa_seg** %90, i64 %93
  %95 = load %struct.wa_seg*, %struct.wa_seg** %94, align 8
  store %struct.wa_seg* %95, %struct.wa_seg** %11, align 8
  %96 = load %struct.wa_xfer*, %struct.wa_xfer** %9, align 8
  %97 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %96, i32 0, i32 4
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load %struct.wa_rpipe*, %struct.wa_rpipe** %99, align 8
  store %struct.wa_rpipe* %100, %struct.wa_rpipe** %12, align 8
  %101 = load %struct.wa_xfer_packet_status_hwaiso*, %struct.wa_xfer_packet_status_hwaiso** %7, align 8
  %102 = load i32, i32* @PacketStatus, align 4
  %103 = load %struct.wa_seg*, %struct.wa_seg** %11, align 8
  %104 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i64 @struct_size(%struct.wa_xfer_packet_status_hwaiso* %101, i32 %102, i32 %105)
  store i64 %106, i64* %19, align 8
  %107 = load %struct.urb*, %struct.urb** %5, align 8
  %108 = getelementptr inbounds %struct.urb, %struct.urb* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* %19, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %120

112:                                              ; preds = %87
  %113 = load %struct.device*, %struct.device** %6, align 8
  %114 = load %struct.urb*, %struct.urb** %5, align 8
  %115 = getelementptr inbounds %struct.urb, %struct.urb* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = trunc i64 %116 to i32
  %118 = load i64, i64* %19, align 8
  %119 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %113, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.3, i64 0, i64 0), i32 %117, i64 %118)
  br label %374

120:                                              ; preds = %87
  %121 = load %struct.wa_xfer_packet_status_hwaiso*, %struct.wa_xfer_packet_status_hwaiso** %7, align 8
  %122 = getelementptr inbounds %struct.wa_xfer_packet_status_hwaiso, %struct.wa_xfer_packet_status_hwaiso* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @le16_to_cpu(i32 %123)
  %125 = sext i32 %124 to i64
  %126 = load i64, i64* %19, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %135

128:                                              ; preds = %120
  %129 = load %struct.device*, %struct.device** %6, align 8
  %130 = load %struct.wa_xfer_packet_status_hwaiso*, %struct.wa_xfer_packet_status_hwaiso** %7, align 8
  %131 = getelementptr inbounds %struct.wa_xfer_packet_status_hwaiso, %struct.wa_xfer_packet_status_hwaiso* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @le16_to_cpu(i32 %132)
  %134 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %129, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %133)
  br label %374

135:                                              ; preds = %120
  %136 = load %struct.wa_xfer_packet_status_hwaiso*, %struct.wa_xfer_packet_status_hwaiso** %7, align 8
  %137 = getelementptr inbounds %struct.wa_xfer_packet_status_hwaiso, %struct.wa_xfer_packet_status_hwaiso* %136, i32 0, i32 1
  %138 = load %struct.wa_xfer_packet_status_len_hwaiso*, %struct.wa_xfer_packet_status_len_hwaiso** %137, align 8
  store %struct.wa_xfer_packet_status_len_hwaiso* %138, %struct.wa_xfer_packet_status_len_hwaiso** %8, align 8
  %139 = load %struct.wahc*, %struct.wahc** %4, align 8
  %140 = getelementptr inbounds %struct.wahc, %struct.wahc* %139, i32 0, i32 5
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  %146 = load i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)** %145, align 8
  %147 = load %struct.wahc*, %struct.wahc** %4, align 8
  %148 = getelementptr inbounds %struct.wahc, %struct.wahc* %147, i32 0, i32 5
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 0
  %151 = call i32 %146(%struct.TYPE_12__* %150)
  %152 = load %struct.wa_xfer*, %struct.wa_xfer** %9, align 8
  %153 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %152, i32 0, i32 2
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 1
  store i32 %151, i32* %155, align 8
  store i32 0, i32* %16, align 4
  br label %156

156:                                              ; preds = %214, %135
  %157 = load i32, i32* %16, align 4
  %158 = load %struct.wa_seg*, %struct.wa_seg** %11, align 8
  %159 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = icmp ult i32 %157, %160
  br i1 %161, label %162, label %217

162:                                              ; preds = %156
  %163 = load %struct.wa_xfer*, %struct.wa_xfer** %9, align 8
  %164 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %163, i32 0, i32 2
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 0
  %167 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %166, align 8
  store %struct.usb_iso_packet_descriptor* %167, %struct.usb_iso_packet_descriptor** %20, align 8
  %168 = load %struct.wa_seg*, %struct.wa_seg** %11, align 8
  %169 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %16, align 4
  %172 = add i32 %170, %171
  store i32 %172, i32* %21, align 4
  %173 = load %struct.wa_xfer_packet_status_len_hwaiso*, %struct.wa_xfer_packet_status_len_hwaiso** %8, align 8
  %174 = load i32, i32* %16, align 4
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds %struct.wa_xfer_packet_status_len_hwaiso, %struct.wa_xfer_packet_status_len_hwaiso* %173, i64 %175
  %177 = getelementptr inbounds %struct.wa_xfer_packet_status_len_hwaiso, %struct.wa_xfer_packet_status_len_hwaiso* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @le16_to_cpu(i32 %178)
  %180 = call i32 @wa_xfer_status_to_errno(i32 %179)
  %181 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %20, align 8
  %182 = load i32, i32* %21, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %181, i64 %183
  %185 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %184, i32 0, i32 1
  store i32 %180, i32* %185, align 4
  %186 = load %struct.wa_xfer_packet_status_len_hwaiso*, %struct.wa_xfer_packet_status_len_hwaiso** %8, align 8
  %187 = load i32, i32* %16, align 4
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds %struct.wa_xfer_packet_status_len_hwaiso, %struct.wa_xfer_packet_status_len_hwaiso* %186, i64 %188
  %190 = getelementptr inbounds %struct.wa_xfer_packet_status_len_hwaiso, %struct.wa_xfer_packet_status_len_hwaiso* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @le16_to_cpu(i32 %191)
  %193 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %20, align 8
  %194 = load i32, i32* %21, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %193, i64 %195
  %197 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %196, i32 0, i32 0
  store i32 %192, i32* %197, align 4
  %198 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %20, align 8
  %199 = load i32, i32* %21, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %198, i64 %200
  %202 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = icmp sgt i32 %203, 0
  br i1 %204, label %205, label %213

205:                                              ; preds = %162
  %206 = load i32, i32* %15, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %210, label %208

208:                                              ; preds = %205
  %209 = load i32, i32* %16, align 4
  store i32 %209, i32* %17, align 4
  br label %210

210:                                              ; preds = %208, %205
  %211 = load i32, i32* %15, align 4
  %212 = add i32 %211, 1
  store i32 %212, i32* %15, align 4
  br label %213

213:                                              ; preds = %210, %162
  br label %214

214:                                              ; preds = %213
  %215 = load i32, i32* %16, align 4
  %216 = add i32 %215, 1
  store i32 %216, i32* %16, align 4
  br label %156

217:                                              ; preds = %156
  %218 = load %struct.wa_xfer*, %struct.wa_xfer** %9, align 8
  %219 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %218, i32 0, i32 3
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %336

222:                                              ; preds = %217
  %223 = load i32, i32* %15, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %336

225:                                              ; preds = %222
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %226 = load i32, i32* @WA_SEG_DTI_PENDING, align 4
  %227 = load %struct.wa_seg*, %struct.wa_seg** %11, align 8
  %228 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %227, i32 0, i32 3
  store i32 %226, i32* %228, align 4
  %229 = load i32, i32* %17, align 4
  %230 = load %struct.wa_seg*, %struct.wa_seg** %11, align 8
  %231 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %230, i32 0, i32 2
  store i32 %229, i32* %231, align 4
  br label %232

232:                                              ; preds = %314, %225
  %233 = load %struct.wahc*, %struct.wahc** %4, align 8
  %234 = getelementptr inbounds %struct.wahc, %struct.wahc* %233, i32 0, i32 4
  %235 = load %struct.urb*, %struct.urb** %234, align 8
  %236 = load i32, i32* %24, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.urb, %struct.urb* %235, i64 %237
  store %struct.urb* %238, %struct.urb** %25, align 8
  %239 = load %struct.wahc*, %struct.wahc** %4, align 8
  %240 = load %struct.urb*, %struct.urb** %25, align 8
  %241 = load %struct.wa_xfer*, %struct.wa_xfer** %9, align 8
  %242 = load %struct.wa_seg*, %struct.wa_seg** %11, align 8
  %243 = call i32 @__wa_populate_buf_in_urb_isoc(%struct.wahc* %239, %struct.urb* %240, %struct.wa_xfer* %241, %struct.wa_seg* %242)
  store i32 %243, i32* %27, align 4
  %244 = load i32, i32* %27, align 4
  %245 = load %struct.wa_seg*, %struct.wa_seg** %11, align 8
  %246 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 4
  %248 = add i32 %247, %244
  store i32 %248, i32* %246, align 4
  %249 = load i32, i32* %27, align 4
  %250 = load i32, i32* %23, align 4
  %251 = add nsw i32 %250, %249
  store i32 %251, i32* %23, align 4
  %252 = load %struct.wahc*, %struct.wahc** %4, align 8
  %253 = getelementptr inbounds %struct.wahc, %struct.wahc* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %253, align 4
  %256 = load %struct.urb*, %struct.urb** %25, align 8
  %257 = load i32, i32* @GFP_ATOMIC, align 4
  %258 = call i32 @usb_submit_urb(%struct.urb* %256, i32 %257)
  store i32 %258, i32* %22, align 4
  %259 = load %struct.wa_seg*, %struct.wa_seg** %11, align 8
  %260 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.wa_seg*, %struct.wa_seg** %11, align 8
  %263 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 4
  %265 = add i32 %261, %264
  store i32 %265, i32* %26, align 4
  %266 = load %struct.wa_xfer*, %struct.wa_xfer** %9, align 8
  %267 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %266, i32 0, i32 2
  %268 = load %struct.TYPE_11__*, %struct.TYPE_11__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %268, i32 0, i32 0
  %270 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %269, align 8
  %271 = load i32, i32* %26, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %270, i64 %272
  store %struct.usb_iso_packet_descriptor* %273, %struct.usb_iso_packet_descriptor** %28, align 8
  br label %274

274:                                              ; preds = %289, %232
  %275 = load %struct.wa_seg*, %struct.wa_seg** %11, align 8
  %276 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.wa_seg*, %struct.wa_seg** %11, align 8
  %279 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = icmp ult i32 %277, %280
  br i1 %281, label %282, label %287

282:                                              ; preds = %274
  %283 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %28, align 8
  %284 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = icmp eq i32 %285, 0
  br label %287

287:                                              ; preds = %282, %274
  %288 = phi i1 [ false, %274 ], [ %286, %282 ]
  br i1 %288, label %289, label %296

289:                                              ; preds = %287
  %290 = load %struct.wa_seg*, %struct.wa_seg** %11, align 8
  %291 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %290, i32 0, i32 2
  %292 = load i32, i32* %291, align 4
  %293 = add i32 %292, 1
  store i32 %293, i32* %291, align 4
  %294 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %28, align 8
  %295 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %294, i32 1
  store %struct.usb_iso_packet_descriptor* %295, %struct.usb_iso_packet_descriptor** %28, align 8
  br label %274

296:                                              ; preds = %287
  %297 = load i32, i32* %24, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %24, align 4
  br label %299

299:                                              ; preds = %296
  %300 = load i32, i32* %22, align 4
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %302, label %314

302:                                              ; preds = %299
  %303 = load i32, i32* %24, align 4
  %304 = load i32, i32* @WA_MAX_BUF_IN_URBS, align 4
  %305 = icmp slt i32 %303, %304
  br i1 %305, label %306, label %314

306:                                              ; preds = %302
  %307 = load %struct.wa_seg*, %struct.wa_seg** %11, align 8
  %308 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %307, i32 0, i32 2
  %309 = load i32, i32* %308, align 4
  %310 = load %struct.wa_seg*, %struct.wa_seg** %11, align 8
  %311 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 4
  %313 = icmp ult i32 %309, %312
  br label %314

314:                                              ; preds = %306, %302, %299
  %315 = phi i1 [ false, %302 ], [ false, %299 ], [ %313, %306 ]
  br i1 %315, label %232, label %316

316:                                              ; preds = %314
  %317 = load i32, i32* %22, align 4
  %318 = icmp slt i32 %317, 0
  br i1 %318, label %319, label %329

319:                                              ; preds = %316
  %320 = load %struct.wahc*, %struct.wahc** %4, align 8
  %321 = getelementptr inbounds %struct.wahc, %struct.wahc* %320, i32 0, i32 3
  %322 = load i32, i32* %321, align 4
  %323 = add nsw i32 %322, -1
  store i32 %323, i32* %321, align 4
  %324 = load %struct.device*, %struct.device** %6, align 8
  %325 = load i32, i32* %22, align 4
  %326 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %324, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %325)
  %327 = load %struct.wahc*, %struct.wahc** %4, align 8
  %328 = call i32 @wa_reset_all(%struct.wahc* %327)
  br label %335

329:                                              ; preds = %316
  %330 = load i32, i32* %15, align 4
  %331 = load i32, i32* %23, align 4
  %332 = icmp ugt i32 %330, %331
  br i1 %332, label %333, label %334

333:                                              ; preds = %329
  store i32 1, i32* %14, align 4
  br label %334

334:                                              ; preds = %333, %329
  br label %335

335:                                              ; preds = %334, %319
  br label %343

336:                                              ; preds = %222, %217
  %337 = load %struct.wa_rpipe*, %struct.wa_rpipe** %12, align 8
  %338 = call i32 @rpipe_avail_inc(%struct.wa_rpipe* %337)
  store i32 %338, i32* %18, align 4
  %339 = load %struct.wa_xfer*, %struct.wa_xfer** %9, align 8
  %340 = load %struct.wa_seg*, %struct.wa_seg** %11, align 8
  %341 = load i32, i32* @WA_SEG_DONE, align 4
  %342 = call i32 @__wa_xfer_mark_seg_as_done(%struct.wa_xfer* %339, %struct.wa_seg* %340, i32 %341)
  store i32 %342, i32* %13, align 4
  br label %343

343:                                              ; preds = %336, %335
  %344 = load %struct.wa_xfer*, %struct.wa_xfer** %9, align 8
  %345 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %344, i32 0, i32 1
  %346 = load i64, i64* %10, align 8
  %347 = call i32 @spin_unlock_irqrestore(i32* %345, i64 %346)
  %348 = load i32, i32* %14, align 4
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %354

350:                                              ; preds = %343
  %351 = load i32, i32* @WA_DTI_BUF_IN_DATA_PENDING, align 4
  %352 = load %struct.wahc*, %struct.wahc** %4, align 8
  %353 = getelementptr inbounds %struct.wahc, %struct.wahc* %352, i32 0, i32 2
  store i32 %351, i32* %353, align 8
  br label %358

354:                                              ; preds = %343
  %355 = load i32, i32* @WA_DTI_TRANSFER_RESULT_PENDING, align 4
  %356 = load %struct.wahc*, %struct.wahc** %4, align 8
  %357 = getelementptr inbounds %struct.wahc, %struct.wahc* %356, i32 0, i32 2
  store i32 %355, i32* %357, align 8
  br label %358

358:                                              ; preds = %354, %350
  %359 = load i32, i32* %13, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %364

361:                                              ; preds = %358
  %362 = load %struct.wa_xfer*, %struct.wa_xfer** %9, align 8
  %363 = call i32 @wa_xfer_completion(%struct.wa_xfer* %362)
  br label %364

364:                                              ; preds = %361, %358
  %365 = load i32, i32* %18, align 4
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %370

367:                                              ; preds = %364
  %368 = load %struct.wa_rpipe*, %struct.wa_rpipe** %12, align 8
  %369 = call i32 @wa_xfer_delayed_run(%struct.wa_rpipe* %368)
  br label %370

370:                                              ; preds = %367, %364
  %371 = load %struct.wa_xfer*, %struct.wa_xfer** %9, align 8
  %372 = call i32 @wa_xfer_put(%struct.wa_xfer* %371)
  %373 = load i32, i32* %14, align 4
  store i32 %373, i32* %3, align 4
  br label %383

374:                                              ; preds = %128, %112, %86
  %375 = load %struct.wa_xfer*, %struct.wa_xfer** %9, align 8
  %376 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %375, i32 0, i32 1
  %377 = load i64, i64* %10, align 8
  %378 = call i32 @spin_unlock_irqrestore(i32* %376, i64 %377)
  %379 = load %struct.wa_xfer*, %struct.wa_xfer** %9, align 8
  %380 = call i32 @wa_xfer_put(%struct.wa_xfer* %379)
  br label %381

381:                                              ; preds = %374, %65, %50
  %382 = load i32, i32* %14, align 4
  store i32 %382, i32* %3, align 4
  br label %383

383:                                              ; preds = %381, %370
  %384 = load i32, i32* %3, align 4
  ret i32 %384
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i64, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local %struct.wa_xfer* @wa_xfer_get_by_id(%struct.wahc*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @struct_size(%struct.wa_xfer_packet_status_hwaiso*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @wa_xfer_status_to_errno(i32) #1

declare dso_local i32 @__wa_populate_buf_in_urb_isoc(%struct.wahc*, %struct.urb*, %struct.wa_xfer*, %struct.wa_seg*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @wa_reset_all(%struct.wahc*) #1

declare dso_local i32 @rpipe_avail_inc(%struct.wa_rpipe*) #1

declare dso_local i32 @__wa_xfer_mark_seg_as_done(%struct.wa_xfer*, %struct.wa_seg*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wa_xfer_completion(%struct.wa_xfer*) #1

declare dso_local i32 @wa_xfer_delayed_run(%struct.wa_rpipe*) #1

declare dso_local i32 @wa_xfer_put(%struct.wa_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
