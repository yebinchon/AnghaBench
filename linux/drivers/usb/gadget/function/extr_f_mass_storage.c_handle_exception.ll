; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_handle_exception.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_handle_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsg_common = type { i64, i32, i32, i32, i32, i32, %struct.TYPE_2__*, %struct.fsg_lun**, %struct.fsg_dev*, %struct.fsg_buffhd*, %struct.fsg_buffhd*, %struct.fsg_buffhd* }
%struct.TYPE_2__ = type { i32, i32, i32, i64, i64 }
%struct.fsg_lun = type { i64, i64, i8*, i8*, i64 }
%struct.fsg_dev = type { i32 }
%struct.fsg_buffhd = type { i64, i32, i32 }

@SIGUSR1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Main thread exiting on signal\0A\00", align 1
@BUF_STATE_SENDING = common dso_local global i64 0, align 8
@BUF_STATE_RECEIVING = common dso_local global i64 0, align 8
@BUF_STATE_EMPTY = common dso_local global i64 0, align 8
@SS_NO_SENSE = common dso_local global i8* null, align 8
@IGNORE_BULK_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsg_common*)* @handle_exception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_exception(%struct.fsg_common* %0) #0 {
  %2 = alloca %struct.fsg_common*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.fsg_buffhd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fsg_lun*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fsg_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.fsg_common* %0, %struct.fsg_common** %2, align 8
  br label %10

10:                                               ; preds = %36, %1
  %11 = call i32 (...) @kernel_dequeue_signal()
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  br label %37

15:                                               ; preds = %10
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @SIGUSR1, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %36

19:                                               ; preds = %15
  %20 = load %struct.fsg_common*, %struct.fsg_common** %2, align 8
  %21 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %20, i32 0, i32 4
  %22 = call i32 @spin_lock_irq(i32* %21)
  %23 = load %struct.fsg_common*, %struct.fsg_common** %2, align 8
  %24 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp slt i64 %25, 131
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load %struct.fsg_common*, %struct.fsg_common** %2, align 8
  %29 = call i32 @DBG(%struct.fsg_common* %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %19
  %31 = load %struct.fsg_common*, %struct.fsg_common** %2, align 8
  %32 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %31, i32 0, i32 0
  store i64 131, i64* %32, align 8
  %33 = load %struct.fsg_common*, %struct.fsg_common** %2, align 8
  %34 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %33, i32 0, i32 4
  %35 = call i32 @spin_unlock_irq(i32* %34)
  br label %36

36:                                               ; preds = %30, %15
  br label %10

37:                                               ; preds = %14
  %38 = load %struct.fsg_common*, %struct.fsg_common** %2, align 8
  %39 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %38, i32 0, i32 6
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = call i64 @likely(%struct.TYPE_2__* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %127

43:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %95, %43
  %45 = load i32, i32* %3, align 4
  %46 = load %struct.fsg_common*, %struct.fsg_common** %2, align 8
  %47 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %98

50:                                               ; preds = %44
  %51 = load %struct.fsg_common*, %struct.fsg_common** %2, align 8
  %52 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %51, i32 0, i32 9
  %53 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %52, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %53, i64 %55
  store %struct.fsg_buffhd* %56, %struct.fsg_buffhd** %4, align 8
  %57 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %58 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @BUF_STATE_SENDING, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %50
  %63 = load %struct.fsg_common*, %struct.fsg_common** %2, align 8
  %64 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %63, i32 0, i32 6
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %69 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @usb_ep_dequeue(i32 %67, i32 %70)
  br label %72

72:                                               ; preds = %62, %50
  %73 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %74 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @BUF_STATE_RECEIVING, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %72
  %79 = load %struct.fsg_common*, %struct.fsg_common** %2, align 8
  %80 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %79, i32 0, i32 6
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %85 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @usb_ep_dequeue(i32 %83, i32 %86)
  br label %88

88:                                               ; preds = %78, %72
  %89 = load %struct.fsg_common*, %struct.fsg_common** %2, align 8
  %90 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %91 = call i64 @sleep_thread(%struct.fsg_common* %89, i32 0, %struct.fsg_buffhd* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  br label %276

94:                                               ; preds = %88
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %3, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %3, align 4
  br label %44

98:                                               ; preds = %44
  %99 = load %struct.fsg_common*, %struct.fsg_common** %2, align 8
  %100 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %99, i32 0, i32 6
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 4
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %98
  %106 = load %struct.fsg_common*, %struct.fsg_common** %2, align 8
  %107 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %106, i32 0, i32 6
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @usb_ep_fifo_flush(i32 %110)
  br label %112

112:                                              ; preds = %105, %98
  %113 = load %struct.fsg_common*, %struct.fsg_common** %2, align 8
  %114 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %113, i32 0, i32 6
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %112
  %120 = load %struct.fsg_common*, %struct.fsg_common** %2, align 8
  %121 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %120, i32 0, i32 6
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @usb_ep_fifo_flush(i32 %124)
  br label %126

126:                                              ; preds = %119, %112
  br label %127

127:                                              ; preds = %126, %37
  %128 = load %struct.fsg_common*, %struct.fsg_common** %2, align 8
  %129 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %128, i32 0, i32 4
  %130 = call i32 @spin_lock_irq(i32* %129)
  store i32 0, i32* %3, align 4
  br label %131

131:                                              ; preds = %147, %127
  %132 = load i32, i32* %3, align 4
  %133 = load %struct.fsg_common*, %struct.fsg_common** %2, align 8
  %134 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = icmp slt i32 %132, %135
  br i1 %136, label %137, label %150

137:                                              ; preds = %131
  %138 = load %struct.fsg_common*, %struct.fsg_common** %2, align 8
  %139 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %138, i32 0, i32 9
  %140 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %139, align 8
  %141 = load i32, i32* %3, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %140, i64 %142
  store %struct.fsg_buffhd* %143, %struct.fsg_buffhd** %4, align 8
  %144 = load i64, i64* @BUF_STATE_EMPTY, align 8
  %145 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %146 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %145, i32 0, i32 0
  store i64 %144, i64* %146, align 8
  br label %147

147:                                              ; preds = %137
  %148 = load i32, i32* %3, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %3, align 4
  br label %131

150:                                              ; preds = %131
  %151 = load %struct.fsg_common*, %struct.fsg_common** %2, align 8
  %152 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %151, i32 0, i32 9
  %153 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %152, align 8
  %154 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %153, i64 0
  %155 = load %struct.fsg_common*, %struct.fsg_common** %2, align 8
  %156 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %155, i32 0, i32 11
  store %struct.fsg_buffhd* %154, %struct.fsg_buffhd** %156, align 8
  %157 = load %struct.fsg_common*, %struct.fsg_common** %2, align 8
  %158 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %157, i32 0, i32 9
  %159 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %158, align 8
  %160 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %159, i64 0
  %161 = load %struct.fsg_common*, %struct.fsg_common** %2, align 8
  %162 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %161, i32 0, i32 10
  store %struct.fsg_buffhd* %160, %struct.fsg_buffhd** %162, align 8
  %163 = load %struct.fsg_common*, %struct.fsg_common** %2, align 8
  %164 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  store i32 %165, i32* %7, align 4
  %166 = load %struct.fsg_common*, %struct.fsg_common** %2, align 8
  %167 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %166, i32 0, i32 8
  %168 = load %struct.fsg_dev*, %struct.fsg_dev** %167, align 8
  store %struct.fsg_dev* %168, %struct.fsg_dev** %8, align 8
  %169 = load %struct.fsg_common*, %struct.fsg_common** %2, align 8
  %170 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = trunc i64 %171 to i32
  store i32 %172, i32* %5, align 4
  %173 = load %struct.fsg_common*, %struct.fsg_common** %2, align 8
  %174 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %173, i32 0, i32 0
  store i64 130, i64* %174, align 8
  %175 = load i32, i32* %5, align 4
  %176 = icmp ne i32 %175, 133
  br i1 %176, label %177, label %213

177:                                              ; preds = %150
  store i32 0, i32* %3, align 4
  br label %178

178:                                              ; preds = %209, %177
  %179 = load i32, i32* %3, align 4
  %180 = load %struct.fsg_common*, %struct.fsg_common** %2, align 8
  %181 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %180, i32 0, i32 7
  %182 = load %struct.fsg_lun**, %struct.fsg_lun*** %181, align 8
  %183 = call i32 @ARRAY_SIZE(%struct.fsg_lun** %182)
  %184 = icmp slt i32 %179, %183
  br i1 %184, label %185, label %212

185:                                              ; preds = %178
  %186 = load %struct.fsg_common*, %struct.fsg_common** %2, align 8
  %187 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %186, i32 0, i32 7
  %188 = load %struct.fsg_lun**, %struct.fsg_lun*** %187, align 8
  %189 = load i32, i32* %3, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.fsg_lun*, %struct.fsg_lun** %188, i64 %190
  %192 = load %struct.fsg_lun*, %struct.fsg_lun** %191, align 8
  store %struct.fsg_lun* %192, %struct.fsg_lun** %6, align 8
  %193 = load %struct.fsg_lun*, %struct.fsg_lun** %6, align 8
  %194 = icmp ne %struct.fsg_lun* %193, null
  br i1 %194, label %196, label %195

195:                                              ; preds = %185
  br label %209

196:                                              ; preds = %185
  %197 = load %struct.fsg_lun*, %struct.fsg_lun** %6, align 8
  %198 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %197, i32 0, i32 4
  store i64 0, i64* %198, align 8
  %199 = load i8*, i8** @SS_NO_SENSE, align 8
  %200 = load %struct.fsg_lun*, %struct.fsg_lun** %6, align 8
  %201 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %200, i32 0, i32 3
  store i8* %199, i8** %201, align 8
  %202 = load i8*, i8** @SS_NO_SENSE, align 8
  %203 = load %struct.fsg_lun*, %struct.fsg_lun** %6, align 8
  %204 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %203, i32 0, i32 2
  store i8* %202, i8** %204, align 8
  %205 = load %struct.fsg_lun*, %struct.fsg_lun** %6, align 8
  %206 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %205, i32 0, i32 1
  store i64 0, i64* %206, align 8
  %207 = load %struct.fsg_lun*, %struct.fsg_lun** %6, align 8
  %208 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %207, i32 0, i32 0
  store i64 0, i64* %208, align 8
  br label %209

209:                                              ; preds = %196, %195
  %210 = load i32, i32* %3, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %3, align 4
  br label %178

212:                                              ; preds = %178
  br label %213

213:                                              ; preds = %212, %150
  %214 = load %struct.fsg_common*, %struct.fsg_common** %2, align 8
  %215 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %214, i32 0, i32 4
  %216 = call i32 @spin_unlock_irq(i32* %215)
  %217 = load i32, i32* %5, align 4
  switch i32 %217, label %276 [
    i32 130, label %218
    i32 133, label %219
    i32 129, label %222
    i32 132, label %252
    i32 131, label %264
    i32 128, label %275
  ]

218:                                              ; preds = %213
  br label %276

219:                                              ; preds = %213
  %220 = load %struct.fsg_common*, %struct.fsg_common** %2, align 8
  %221 = call i32 @send_status(%struct.fsg_common* %220)
  br label %276

222:                                              ; preds = %213
  %223 = load %struct.fsg_common*, %struct.fsg_common** %2, align 8
  %224 = call i32 @fsg_is_set(%struct.fsg_common* %223)
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %227, label %226

226:                                              ; preds = %222
  br label %276

227:                                              ; preds = %222
  %228 = load i32, i32* @IGNORE_BULK_OUT, align 4
  %229 = load %struct.fsg_common*, %struct.fsg_common** %2, align 8
  %230 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %229, i32 0, i32 6
  %231 = load %struct.TYPE_2__*, %struct.TYPE_2__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %231, i32 0, i32 1
  %233 = call i32 @test_and_clear_bit(i32 %228, i32* %232)
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %242

235:                                              ; preds = %227
  %236 = load %struct.fsg_common*, %struct.fsg_common** %2, align 8
  %237 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %236, i32 0, i32 6
  %238 = load %struct.TYPE_2__*, %struct.TYPE_2__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = call i32 @usb_ep_clear_halt(i32 %240)
  br label %242

242:                                              ; preds = %235, %227
  %243 = load %struct.fsg_common*, %struct.fsg_common** %2, align 8
  %244 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %243, i32 0, i32 3
  %245 = load i32, i32* %244, align 8
  %246 = load i32, i32* %7, align 4
  %247 = icmp eq i32 %245, %246
  br i1 %247, label %248, label %251

248:                                              ; preds = %242
  %249 = load %struct.fsg_common*, %struct.fsg_common** %2, align 8
  %250 = call i32 @ep0_queue(%struct.fsg_common* %249)
  br label %251

251:                                              ; preds = %248, %242
  br label %276

252:                                              ; preds = %213
  %253 = load %struct.fsg_common*, %struct.fsg_common** %2, align 8
  %254 = load %struct.fsg_dev*, %struct.fsg_dev** %8, align 8
  %255 = call i32 @do_set_interface(%struct.fsg_common* %253, %struct.fsg_dev* %254)
  %256 = load %struct.fsg_dev*, %struct.fsg_dev** %8, align 8
  %257 = icmp ne %struct.fsg_dev* %256, null
  br i1 %257, label %258, label %263

258:                                              ; preds = %252
  %259 = load %struct.fsg_common*, %struct.fsg_common** %2, align 8
  %260 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %259, i32 0, i32 5
  %261 = load i32, i32* %260, align 8
  %262 = call i32 @usb_composite_setup_continue(i32 %261)
  br label %263

263:                                              ; preds = %258, %252
  br label %276

264:                                              ; preds = %213
  %265 = load %struct.fsg_common*, %struct.fsg_common** %2, align 8
  %266 = call i32 @do_set_interface(%struct.fsg_common* %265, %struct.fsg_dev* null)
  %267 = load %struct.fsg_common*, %struct.fsg_common** %2, align 8
  %268 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %267, i32 0, i32 4
  %269 = call i32 @spin_lock_irq(i32* %268)
  %270 = load %struct.fsg_common*, %struct.fsg_common** %2, align 8
  %271 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %270, i32 0, i32 0
  store i64 128, i64* %271, align 8
  %272 = load %struct.fsg_common*, %struct.fsg_common** %2, align 8
  %273 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %272, i32 0, i32 4
  %274 = call i32 @spin_unlock_irq(i32* %273)
  br label %276

275:                                              ; preds = %213
  br label %276

276:                                              ; preds = %93, %213, %275, %264, %263, %251, %226, %219, %218
  ret void
}

declare dso_local i32 @kernel_dequeue_signal(...) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @DBG(%struct.fsg_common*, i8*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i64 @likely(%struct.TYPE_2__*) #1

declare dso_local i32 @usb_ep_dequeue(i32, i32) #1

declare dso_local i64 @sleep_thread(%struct.fsg_common*, i32, %struct.fsg_buffhd*) #1

declare dso_local i32 @usb_ep_fifo_flush(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.fsg_lun**) #1

declare dso_local i32 @send_status(%struct.fsg_common*) #1

declare dso_local i32 @fsg_is_set(%struct.fsg_common*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @usb_ep_clear_halt(i32) #1

declare dso_local i32 @ep0_queue(%struct.fsg_common*) #1

declare dso_local i32 @do_set_interface(%struct.fsg_common*, %struct.fsg_dev*) #1

declare dso_local i32 @usb_composite_setup_continue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
