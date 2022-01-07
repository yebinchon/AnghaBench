; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_wa-xfer.c_wa_xfer_result_chew.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_wa-xfer.c_wa_xfer_result_chew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wahc = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.urb*, %struct.TYPE_4__* }
%struct.urb = type { i32* }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.wa_xfer = type { i32, i32, %struct.TYPE_6__*, i32, %struct.TYPE_5__*, i32, i64, i32, %struct.wa_seg** }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, %struct.wa_rpipe* }
%struct.wa_rpipe = type { i32 }
%struct.wa_seg = type { i64, i32, i64 }
%struct.wa_xfer_result = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [62 x i8] c"xfer %p ID 0x%08X#%u: bTransferStatus 0x%02x (seg status %u)\0A\00", align 1
@WA_SEG_ABORTED = common dso_local global i64 0, align 8
@WA_SEG_ERROR = common dso_local global i64 0, align 8
@WA_SEG_SUBMITTED = common dso_local global i64 0, align 8
@WA_SEG_PENDING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"xfer %p#%u: Bad segment state %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"DTI: xfer %p 0x%08X:#%u failed (0x%02x)\0A\00", align 1
@WA_XFER_STATUS_ABORTED = common dso_local global i32 0, align 4
@WA_SEG_DONE = common dso_local global i64 0, align 8
@WA_DTI_ISOC_PACKET_STATUS_PENDING = common dso_local global i32 0, align 4
@WA_SEG_DTI_PENDING = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@EDC_MAX_ERRORS = common dso_local global i32 0, align 4
@EDC_ERROR_TIMEFRAME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [59 x i8] c"DTI: URB max acceptable errors exceeded, resetting device\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"xfer %p#%u: can't submit DTI data phase: %d\0A\00", align 1
@WA_XFER_STATUS_HALTED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"Control EP stall.  Queue delayed work.\0A\00", align 1
@wusbd = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"xfer %p#%u: bad segment\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wahc*, %struct.wa_xfer*, %struct.wa_xfer_result*)* @wa_xfer_result_chew to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wa_xfer_result_chew(%struct.wahc* %0, %struct.wa_xfer* %1, %struct.wa_xfer_result* %2) #0 {
  %4 = alloca %struct.wahc*, align 8
  %5 = alloca %struct.wa_xfer*, align 8
  %6 = alloca %struct.wa_xfer_result*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.wa_seg*, align 8
  %12 = alloca %struct.wa_rpipe*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.urb*, align 8
  store %struct.wahc* %0, %struct.wahc** %4, align 8
  store %struct.wa_xfer* %1, %struct.wa_xfer** %5, align 8
  store %struct.wa_xfer_result* %2, %struct.wa_xfer_result** %6, align 8
  %18 = load %struct.wahc*, %struct.wahc** %4, align 8
  %19 = getelementptr inbounds %struct.wahc, %struct.wahc* %18, i32 0, i32 9
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store %struct.device* %21, %struct.device** %8, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %22 = load %struct.wa_xfer_result*, %struct.wa_xfer_result** %6, align 8
  %23 = getelementptr inbounds %struct.wa_xfer_result, %struct.wa_xfer_result* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @le32_to_cpu(i32 %24)
  store i32 %25, i32* %16, align 4
  %26 = load %struct.wahc*, %struct.wahc** %4, align 8
  %27 = getelementptr inbounds %struct.wahc, %struct.wahc* %26, i32 0, i32 8
  %28 = load %struct.urb*, %struct.urb** %27, align 8
  %29 = getelementptr inbounds %struct.urb, %struct.urb* %28, i64 0
  store %struct.urb* %29, %struct.urb** %17, align 8
  %30 = load %struct.wa_xfer*, %struct.wa_xfer** %5, align 8
  %31 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %30, i32 0, i32 1
  %32 = load i64, i64* %9, align 8
  %33 = call i32 @spin_lock_irqsave(i32* %31, i64 %32)
  %34 = load %struct.wa_xfer_result*, %struct.wa_xfer_result** %6, align 8
  %35 = getelementptr inbounds %struct.wa_xfer_result, %struct.wa_xfer_result* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 127
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.wa_xfer*, %struct.wa_xfer** %5, align 8
  %40 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp uge i32 %38, %41
  %43 = zext i1 %42 to i32
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %3
  br label %372

47:                                               ; preds = %3
  %48 = load %struct.wa_xfer*, %struct.wa_xfer** %5, align 8
  %49 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %48, i32 0, i32 8
  %50 = load %struct.wa_seg**, %struct.wa_seg*** %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.wa_seg*, %struct.wa_seg** %50, i64 %52
  %54 = load %struct.wa_seg*, %struct.wa_seg** %53, align 8
  store %struct.wa_seg* %54, %struct.wa_seg** %11, align 8
  %55 = load %struct.wa_xfer*, %struct.wa_xfer** %5, align 8
  %56 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %55, i32 0, i32 4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load %struct.wa_rpipe*, %struct.wa_rpipe** %58, align 8
  store %struct.wa_rpipe* %59, %struct.wa_rpipe** %12, align 8
  %60 = load %struct.wa_xfer_result*, %struct.wa_xfer_result** %6, align 8
  %61 = getelementptr inbounds %struct.wa_xfer_result, %struct.wa_xfer_result* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %14, align 4
  %63 = load %struct.device*, %struct.device** %8, align 8
  %64 = load %struct.wa_xfer*, %struct.wa_xfer** %5, align 8
  %65 = load %struct.wa_xfer*, %struct.wa_xfer** %5, align 8
  %66 = call i32 @wa_xfer_id(%struct.wa_xfer* %65)
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %14, align 4
  %69 = load %struct.wa_seg*, %struct.wa_seg** %11, align 8
  %70 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @dev_dbg(%struct.device* %63, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), %struct.wa_xfer* %64, i32 %66, i32 %67, i32 %68, i64 %71)
  %73 = load %struct.wa_seg*, %struct.wa_seg** %11, align 8
  %74 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @WA_SEG_ABORTED, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %84, label %78

78:                                               ; preds = %47
  %79 = load %struct.wa_seg*, %struct.wa_seg** %11, align 8
  %80 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @WA_SEG_ERROR, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %78, %47
  br label %404

85:                                               ; preds = %78
  %86 = load %struct.wa_seg*, %struct.wa_seg** %11, align 8
  %87 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @WA_SEG_SUBMITTED, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %85
  %92 = load i64, i64* @WA_SEG_PENDING, align 8
  %93 = load %struct.wa_seg*, %struct.wa_seg** %11, align 8
  %94 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  br label %95

95:                                               ; preds = %91, %85
  %96 = load %struct.wa_seg*, %struct.wa_seg** %11, align 8
  %97 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @WA_SEG_PENDING, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %116

101:                                              ; preds = %95
  %102 = call i64 (...) @printk_ratelimit()
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %101
  %105 = load %struct.device*, %struct.device** %8, align 8
  %106 = load %struct.wa_xfer*, %struct.wa_xfer** %5, align 8
  %107 = load i32, i32* %10, align 4
  %108 = load %struct.wa_seg*, %struct.wa_seg** %11, align 8
  %109 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %105, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), %struct.wa_xfer* %106, i32 %107, i64 %110)
  br label %112

112:                                              ; preds = %104, %101
  %113 = load i64, i64* @WA_SEG_PENDING, align 8
  %114 = load %struct.wa_seg*, %struct.wa_seg** %11, align 8
  %115 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %114, i32 0, i32 0
  store i64 %113, i64* %115, align 8
  br label %116

116:                                              ; preds = %112, %95
  %117 = load i32, i32* %14, align 4
  %118 = and i32 %117, 128
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %147

120:                                              ; preds = %116
  %121 = load i32, i32* %14, align 4
  %122 = call i32 @wa_xfer_status_to_errno(i32 %121)
  %123 = load %struct.wa_seg*, %struct.wa_seg** %11, align 8
  %124 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 8
  %125 = load %struct.device*, %struct.device** %8, align 8
  %126 = load %struct.wa_xfer*, %struct.wa_xfer** %5, align 8
  %127 = load %struct.wa_xfer*, %struct.wa_xfer** %5, align 8
  %128 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %127, i32 0, i32 7
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.wa_seg*, %struct.wa_seg** %11, align 8
  %131 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = load i32, i32* %14, align 4
  %134 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %125, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), %struct.wa_xfer* %126, i32 %129, i64 %132, i32 %133)
  %135 = load i32, i32* %14, align 4
  %136 = and i32 %135, 127
  %137 = load i32, i32* @WA_XFER_STATUS_ABORTED, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %120
  %140 = load i64, i64* @WA_SEG_ABORTED, align 8
  br label %143

141:                                              ; preds = %120
  %142 = load i64, i64* @WA_SEG_ERROR, align 8
  br label %143

143:                                              ; preds = %141, %139
  %144 = phi i64 [ %140, %139 ], [ %142, %141 ]
  %145 = load %struct.wa_seg*, %struct.wa_seg** %11, align 8
  %146 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %145, i32 0, i32 0
  store i64 %144, i64* %146, align 8
  br label %300

147:                                              ; preds = %116
  %148 = load i32, i32* %14, align 4
  %149 = and i32 %148, 64
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %147
  store i32 0, i32* %14, align 4
  br label %152

152:                                              ; preds = %151, %147
  %153 = load %struct.wa_xfer_result*, %struct.wa_xfer_result** %6, align 8
  %154 = getelementptr inbounds %struct.wa_xfer_result, %struct.wa_xfer_result* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = and i32 %155, 128
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %166

158:                                              ; preds = %152
  %159 = load %struct.wa_xfer*, %struct.wa_xfer** %5, align 8
  %160 = load %struct.wa_seg*, %struct.wa_seg** %11, align 8
  %161 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = add nsw i64 %162, 1
  %164 = load i64, i64* @WA_SEG_DONE, align 8
  %165 = call i32 @wa_complete_remaining_xfer_segs(%struct.wa_xfer* %159, i64 %163, i64 %164)
  br label %166

166:                                              ; preds = %158, %152
  %167 = load %struct.wa_xfer*, %struct.wa_xfer** %5, align 8
  %168 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %167, i32 0, i32 2
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i64 @usb_pipeisoc(i32 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %191

174:                                              ; preds = %166
  %175 = load %struct.wa_xfer_result*, %struct.wa_xfer_result** %6, align 8
  %176 = getelementptr inbounds %struct.wa_xfer_result, %struct.wa_xfer_result* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @le32_to_cpu(i32 %177)
  %179 = icmp ugt i32 %178, 0
  br i1 %179, label %180, label %191

180:                                              ; preds = %174
  %181 = load %struct.wa_xfer*, %struct.wa_xfer** %5, align 8
  %182 = call i32 @wa_xfer_id(%struct.wa_xfer* %181)
  %183 = load %struct.wahc*, %struct.wahc** %4, align 8
  %184 = getelementptr inbounds %struct.wahc, %struct.wahc* %183, i32 0, i32 7
  store i32 %182, i32* %184, align 4
  %185 = load i32, i32* %10, align 4
  %186 = load %struct.wahc*, %struct.wahc** %4, align 8
  %187 = getelementptr inbounds %struct.wahc, %struct.wahc* %186, i32 0, i32 0
  store i32 %185, i32* %187, align 8
  %188 = load i32, i32* @WA_DTI_ISOC_PACKET_STATUS_PENDING, align 4
  %189 = load %struct.wahc*, %struct.wahc** %4, align 8
  %190 = getelementptr inbounds %struct.wahc, %struct.wahc* %189, i32 0, i32 6
  store i32 %188, i32* %190, align 8
  br label %246

191:                                              ; preds = %174, %166
  %192 = load %struct.wa_xfer*, %struct.wa_xfer** %5, align 8
  %193 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %192, i32 0, i32 6
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %235

196:                                              ; preds = %191
  %197 = load %struct.wa_xfer*, %struct.wa_xfer** %5, align 8
  %198 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %197, i32 0, i32 2
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = call i64 @usb_pipeisoc(i32 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %235, label %204

204:                                              ; preds = %196
  %205 = load i32, i32* %16, align 4
  %206 = icmp ugt i32 %205, 0
  br i1 %206, label %207, label %235

207:                                              ; preds = %204
  %208 = load i64, i64* @WA_SEG_DTI_PENDING, align 8
  %209 = load %struct.wa_seg*, %struct.wa_seg** %11, align 8
  %210 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %209, i32 0, i32 0
  store i64 %208, i64* %210, align 8
  %211 = load %struct.urb*, %struct.urb** %17, align 8
  %212 = load %struct.wa_xfer*, %struct.wa_xfer** %5, align 8
  %213 = load i32, i32* %10, align 4
  %214 = load i32, i32* %16, align 4
  %215 = call i32 @wa_populate_buf_in_urb(%struct.urb* %211, %struct.wa_xfer* %212, i32 %213, i32 %214)
  store i32 %215, i32* %7, align 4
  %216 = load i32, i32* %7, align 4
  %217 = icmp slt i32 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %207
  br label %294

219:                                              ; preds = %207
  %220 = load %struct.wahc*, %struct.wahc** %4, align 8
  %221 = getelementptr inbounds %struct.wahc, %struct.wahc* %220, i32 0, i32 5
  %222 = load i32, i32* %221, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %221, align 4
  %224 = load %struct.urb*, %struct.urb** %17, align 8
  %225 = load i32, i32* @GFP_ATOMIC, align 4
  %226 = call i32 @usb_submit_urb(%struct.urb* %224, i32 %225)
  store i32 %226, i32* %7, align 4
  %227 = load i32, i32* %7, align 4
  %228 = icmp slt i32 %227, 0
  br i1 %228, label %229, label %234

229:                                              ; preds = %219
  %230 = load %struct.wahc*, %struct.wahc** %4, align 8
  %231 = getelementptr inbounds %struct.wahc, %struct.wahc* %230, i32 0, i32 5
  %232 = load i32, i32* %231, align 4
  %233 = add nsw i32 %232, -1
  store i32 %233, i32* %231, align 4
  br label %263

234:                                              ; preds = %219
  br label %245

235:                                              ; preds = %204, %196, %191
  %236 = load i32, i32* %16, align 4
  %237 = load %struct.wa_seg*, %struct.wa_seg** %11, align 8
  %238 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %237, i32 0, i32 1
  store i32 %236, i32* %238, align 8
  %239 = load %struct.wa_rpipe*, %struct.wa_rpipe** %12, align 8
  %240 = call i32 @rpipe_avail_inc(%struct.wa_rpipe* %239)
  store i32 %240, i32* %15, align 4
  %241 = load %struct.wa_xfer*, %struct.wa_xfer** %5, align 8
  %242 = load %struct.wa_seg*, %struct.wa_seg** %11, align 8
  %243 = load i64, i64* @WA_SEG_DONE, align 8
  %244 = call i32 @__wa_xfer_mark_seg_as_done(%struct.wa_xfer* %241, %struct.wa_seg* %242, i64 %243)
  store i32 %244, i32* %13, align 4
  br label %245

245:                                              ; preds = %235, %234
  br label %246

246:                                              ; preds = %245, %180
  %247 = load %struct.wa_xfer*, %struct.wa_xfer** %5, align 8
  %248 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %247, i32 0, i32 1
  %249 = load i64, i64* %9, align 8
  %250 = call i32 @spin_unlock_irqrestore(i32* %248, i64 %249)
  %251 = load i32, i32* %13, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %256

253:                                              ; preds = %246
  %254 = load %struct.wa_xfer*, %struct.wa_xfer** %5, align 8
  %255 = call i32 @wa_xfer_completion(%struct.wa_xfer* %254)
  br label %256

256:                                              ; preds = %253, %246
  %257 = load i32, i32* %15, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %262

259:                                              ; preds = %256
  %260 = load %struct.wa_rpipe*, %struct.wa_rpipe** %12, align 8
  %261 = call i32 @wa_xfer_delayed_run(%struct.wa_rpipe* %260)
  br label %262

262:                                              ; preds = %259, %256
  br label %409

263:                                              ; preds = %229
  %264 = load %struct.wahc*, %struct.wahc** %4, align 8
  %265 = getelementptr inbounds %struct.wahc, %struct.wahc* %264, i32 0, i32 1
  %266 = load i32, i32* @EDC_MAX_ERRORS, align 4
  %267 = load i32, i32* @EDC_ERROR_TIMEFRAME, align 4
  %268 = call i64 @edc_inc(i32* %265, i32 %266, i32 %267)
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %275

270:                                              ; preds = %263
  %271 = load %struct.device*, %struct.device** %8, align 8
  %272 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %271, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0))
  %273 = load %struct.wahc*, %struct.wahc** %4, align 8
  %274 = call i32 @wa_reset_all(%struct.wahc* %273)
  br label %275

275:                                              ; preds = %270, %263
  %276 = call i64 (...) @printk_ratelimit()
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %284

278:                                              ; preds = %275
  %279 = load %struct.device*, %struct.device** %8, align 8
  %280 = load %struct.wa_xfer*, %struct.wa_xfer** %5, align 8
  %281 = load i32, i32* %10, align 4
  %282 = load i32, i32* %7, align 4
  %283 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %279, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), %struct.wa_xfer* %280, i32 %281, i32 %282)
  br label %284

284:                                              ; preds = %278, %275
  %285 = load i32, i32* %7, align 4
  %286 = load %struct.wa_seg*, %struct.wa_seg** %11, align 8
  %287 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %286, i32 0, i32 1
  store i32 %285, i32* %287, align 8
  %288 = load %struct.urb*, %struct.urb** %17, align 8
  %289 = getelementptr inbounds %struct.urb, %struct.urb* %288, i32 0, i32 0
  %290 = load i32*, i32** %289, align 8
  %291 = call i32 @kfree(i32* %290)
  %292 = load %struct.urb*, %struct.urb** %17, align 8
  %293 = getelementptr inbounds %struct.urb, %struct.urb* %292, i32 0, i32 0
  store i32* null, i32** %293, align 8
  br label %294

294:                                              ; preds = %284, %218
  %295 = load %struct.wa_xfer*, %struct.wa_xfer** %5, align 8
  %296 = call i32 @__wa_xfer_abort(%struct.wa_xfer* %295)
  %297 = load i64, i64* @WA_SEG_ERROR, align 8
  %298 = load %struct.wa_seg*, %struct.wa_seg** %11, align 8
  %299 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %298, i32 0, i32 0
  store i64 %297, i64* %299, align 8
  br label %300

300:                                              ; preds = %294, %143
  %301 = load %struct.wa_xfer*, %struct.wa_xfer** %5, align 8
  %302 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %301, i32 0, i32 5
  %303 = load i32, i32* %302, align 8
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %302, align 8
  %305 = load %struct.wa_rpipe*, %struct.wa_rpipe** %12, align 8
  %306 = call i32 @rpipe_avail_inc(%struct.wa_rpipe* %305)
  store i32 %306, i32* %15, align 4
  %307 = load %struct.wa_xfer*, %struct.wa_xfer** %5, align 8
  %308 = load %struct.wa_seg*, %struct.wa_seg** %11, align 8
  %309 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %308, i32 0, i32 2
  %310 = load i64, i64* %309, align 8
  %311 = add nsw i64 %310, 1
  %312 = load %struct.wa_seg*, %struct.wa_seg** %11, align 8
  %313 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %312, i32 0, i32 0
  %314 = load i64, i64* %313, align 8
  %315 = call i32 @wa_complete_remaining_xfer_segs(%struct.wa_xfer* %307, i64 %311, i64 %314)
  %316 = load %struct.wa_xfer*, %struct.wa_xfer** %5, align 8
  %317 = call i32 @__wa_xfer_is_done(%struct.wa_xfer* %316)
  store i32 %317, i32* %13, align 4
  %318 = load i32, i32* %14, align 4
  %319 = and i32 %318, 63
  %320 = load i32, i32* @WA_XFER_STATUS_HALTED, align 4
  %321 = icmp eq i32 %319, %320
  br i1 %321, label %322, label %354

322:                                              ; preds = %300
  %323 = load %struct.wa_xfer*, %struct.wa_xfer** %5, align 8
  %324 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %323, i32 0, i32 4
  %325 = load %struct.TYPE_5__*, %struct.TYPE_5__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %325, i32 0, i32 0
  %327 = call i64 @usb_endpoint_xfer_control(i32* %326)
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %329, label %354

329:                                              ; preds = %322
  %330 = load i32, i32* %13, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %354

332:                                              ; preds = %329
  %333 = load %struct.device*, %struct.device** %8, align 8
  %334 = call i32 @dev_info(%struct.device* %333, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  %335 = load %struct.wahc*, %struct.wahc** %4, align 8
  %336 = getelementptr inbounds %struct.wahc, %struct.wahc* %335, i32 0, i32 3
  %337 = call i32 @spin_lock(i32* %336)
  %338 = load %struct.wa_xfer*, %struct.wa_xfer** %5, align 8
  %339 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %338, i32 0, i32 3
  %340 = load %struct.wahc*, %struct.wahc** %4, align 8
  %341 = getelementptr inbounds %struct.wahc, %struct.wahc* %340, i32 0, i32 4
  %342 = call i32 @list_move_tail(i32* %339, i32* %341)
  %343 = load %struct.wahc*, %struct.wahc** %4, align 8
  %344 = getelementptr inbounds %struct.wahc, %struct.wahc* %343, i32 0, i32 3
  %345 = call i32 @spin_unlock(i32* %344)
  %346 = load %struct.wa_xfer*, %struct.wa_xfer** %5, align 8
  %347 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %346, i32 0, i32 1
  %348 = load i64, i64* %9, align 8
  %349 = call i32 @spin_unlock_irqrestore(i32* %347, i64 %348)
  %350 = load i32, i32* @wusbd, align 4
  %351 = load %struct.wahc*, %struct.wahc** %4, align 8
  %352 = getelementptr inbounds %struct.wahc, %struct.wahc* %351, i32 0, i32 2
  %353 = call i32 @queue_work(i32 %350, i32* %352)
  br label %371

354:                                              ; preds = %329, %322, %300
  %355 = load %struct.wa_xfer*, %struct.wa_xfer** %5, align 8
  %356 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %355, i32 0, i32 1
  %357 = load i64, i64* %9, align 8
  %358 = call i32 @spin_unlock_irqrestore(i32* %356, i64 %357)
  %359 = load i32, i32* %13, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %364

361:                                              ; preds = %354
  %362 = load %struct.wa_xfer*, %struct.wa_xfer** %5, align 8
  %363 = call i32 @wa_xfer_completion(%struct.wa_xfer* %362)
  br label %364

364:                                              ; preds = %361, %354
  %365 = load i32, i32* %15, align 4
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %370

367:                                              ; preds = %364
  %368 = load %struct.wa_rpipe*, %struct.wa_rpipe** %12, align 8
  %369 = call i32 @wa_xfer_delayed_run(%struct.wa_rpipe* %368)
  br label %370

370:                                              ; preds = %367, %364
  br label %371

371:                                              ; preds = %370, %332
  br label %409

372:                                              ; preds = %46
  %373 = load %struct.wa_xfer*, %struct.wa_xfer** %5, align 8
  %374 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %373, i32 0, i32 1
  %375 = load i64, i64* %9, align 8
  %376 = call i32 @spin_unlock_irqrestore(i32* %374, i64 %375)
  %377 = load %struct.wahc*, %struct.wahc** %4, align 8
  %378 = load %struct.wa_xfer*, %struct.wa_xfer** %5, align 8
  %379 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %378, i32 0, i32 2
  %380 = load %struct.TYPE_6__*, %struct.TYPE_6__** %379, align 8
  %381 = load i32, i32* @ENOENT, align 4
  %382 = sub nsw i32 0, %381
  %383 = call i32 @wa_urb_dequeue(%struct.wahc* %377, %struct.TYPE_6__* %380, i32 %382)
  %384 = call i64 (...) @printk_ratelimit()
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %386, label %391

386:                                              ; preds = %372
  %387 = load %struct.device*, %struct.device** %8, align 8
  %388 = load %struct.wa_xfer*, %struct.wa_xfer** %5, align 8
  %389 = load i32, i32* %10, align 4
  %390 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %387, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), %struct.wa_xfer* %388, i32 %389)
  br label %391

391:                                              ; preds = %386, %372
  %392 = load %struct.wahc*, %struct.wahc** %4, align 8
  %393 = getelementptr inbounds %struct.wahc, %struct.wahc* %392, i32 0, i32 1
  %394 = load i32, i32* @EDC_MAX_ERRORS, align 4
  %395 = load i32, i32* @EDC_ERROR_TIMEFRAME, align 4
  %396 = call i64 @edc_inc(i32* %393, i32 %394, i32 %395)
  %397 = icmp ne i64 %396, 0
  br i1 %397, label %398, label %403

398:                                              ; preds = %391
  %399 = load %struct.device*, %struct.device** %8, align 8
  %400 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %399, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0))
  %401 = load %struct.wahc*, %struct.wahc** %4, align 8
  %402 = call i32 @wa_reset_all(%struct.wahc* %401)
  br label %403

403:                                              ; preds = %398, %391
  br label %409

404:                                              ; preds = %84
  %405 = load %struct.wa_xfer*, %struct.wa_xfer** %5, align 8
  %406 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %405, i32 0, i32 1
  %407 = load i64, i64* %9, align 8
  %408 = call i32 @spin_unlock_irqrestore(i32* %406, i64 %407)
  br label %409

409:                                              ; preds = %404, %403, %371, %262
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, %struct.wa_xfer*, i32, i32, i32, i64) #1

declare dso_local i32 @wa_xfer_id(%struct.wa_xfer*) #1

declare dso_local i64 @printk_ratelimit(...) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @wa_xfer_status_to_errno(i32) #1

declare dso_local i32 @wa_complete_remaining_xfer_segs(%struct.wa_xfer*, i64, i64) #1

declare dso_local i64 @usb_pipeisoc(i32) #1

declare dso_local i32 @wa_populate_buf_in_urb(%struct.urb*, %struct.wa_xfer*, i32, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @rpipe_avail_inc(%struct.wa_rpipe*) #1

declare dso_local i32 @__wa_xfer_mark_seg_as_done(%struct.wa_xfer*, %struct.wa_seg*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wa_xfer_completion(%struct.wa_xfer*) #1

declare dso_local i32 @wa_xfer_delayed_run(%struct.wa_rpipe*) #1

declare dso_local i64 @edc_inc(i32*, i32, i32) #1

declare dso_local i32 @wa_reset_all(%struct.wahc*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @__wa_xfer_abort(%struct.wa_xfer*) #1

declare dso_local i32 @__wa_xfer_is_done(%struct.wa_xfer*) #1

declare dso_local i64 @usb_endpoint_xfer_control(i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @wa_urb_dequeue(%struct.wahc*, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
