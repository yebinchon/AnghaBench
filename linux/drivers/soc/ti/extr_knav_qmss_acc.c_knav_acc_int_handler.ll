; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/ti/extr_knav_qmss_acc.c_knav_acc_int_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/ti/extr_knav_qmss_acc.c_knav_acc_int_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knav_acc_channel = type { i32, i64, i32**, i32, i32* }
%struct.knav_queue_inst = type { i32*, i32, i32, i32 }
%struct.knav_range_info = type { i32, i32, i32, i32, %struct.TYPE_2__*, %struct.knav_acc_channel*, %struct.knav_acc_info, %struct.knav_device* }
%struct.TYPE_2__ = type { i32 }
%struct.knav_acc_info = type { i32, %struct.knav_pdsp_info* }
%struct.knav_pdsp_info = type { i64 }
%struct.knav_device = type { i32, i32 }

@RANGE_MULTI_QUEUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"acc-irq: channel %d, list %d, virt %p, dma %pad\0A\00", align 1
@ACC_CHANNEL_INT_BASE = common dso_local global i32 0, align 4
@ACC_INTD_OFFSET_EOI = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@ACC_LIST_ENTRY_WORDS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"acc-irq: list %d, entry @%p, %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"acc-irq: list %d, entry @%p, %08x %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"acc-irq: list %d, entry @%p, %08x %08x %08x %08x\0A\00", align 1
@ACC_LIST_ENTRY_DESC_IDX = common dso_local global i64 0, align 8
@ACC_LIST_ENTRY_QUEUE_IDX = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"bad queue %d, expecting %d-%d\0A\00", align 1
@ACC_DESCS_MAX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"acc-irq: queue %d full, entry dropped\0A\00", align 1
@ACC_DESCS_MASK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [39 x i8] c"acc-irq: enqueue %08x at %d, queue %d\0A\00", align 1
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @knav_acc_int_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @knav_acc_int_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.knav_acc_channel*, align 8
  %7 = alloca %struct.knav_queue_inst*, align 8
  %8 = alloca %struct.knav_range_info*, align 8
  %9 = alloca %struct.knav_pdsp_info*, align 8
  %10 = alloca %struct.knav_acc_info*, align 8
  %11 = alloca %struct.knav_device*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store %struct.knav_queue_inst* null, %struct.knav_queue_inst** %7, align 8
  store i32 0, i32* %19, align 4
  %21 = load i8*, i8** %5, align 8
  %22 = bitcast i8* %21 to %struct.knav_range_info*
  store %struct.knav_range_info* %22, %struct.knav_range_info** %8, align 8
  %23 = load %struct.knav_range_info*, %struct.knav_range_info** %8, align 8
  %24 = getelementptr inbounds %struct.knav_range_info, %struct.knav_range_info* %23, i32 0, i32 6
  store %struct.knav_acc_info* %24, %struct.knav_acc_info** %10, align 8
  %25 = load %struct.knav_range_info*, %struct.knav_range_info** %8, align 8
  %26 = getelementptr inbounds %struct.knav_range_info, %struct.knav_range_info* %25, i32 0, i32 7
  %27 = load %struct.knav_device*, %struct.knav_device** %26, align 8
  store %struct.knav_device* %27, %struct.knav_device** %11, align 8
  %28 = load %struct.knav_range_info*, %struct.knav_range_info** %8, align 8
  %29 = getelementptr inbounds %struct.knav_range_info, %struct.knav_range_info* %28, i32 0, i32 6
  %30 = getelementptr inbounds %struct.knav_acc_info, %struct.knav_acc_info* %29, i32 0, i32 1
  %31 = load %struct.knav_pdsp_info*, %struct.knav_pdsp_info** %30, align 8
  store %struct.knav_pdsp_info* %31, %struct.knav_pdsp_info** %9, align 8
  %32 = load %struct.knav_range_info*, %struct.knav_range_info** %8, align 8
  %33 = getelementptr inbounds %struct.knav_range_info, %struct.knav_range_info* %32, i32 0, i32 5
  %34 = load %struct.knav_acc_channel*, %struct.knav_acc_channel** %33, align 8
  store %struct.knav_acc_channel* %34, %struct.knav_acc_channel** %6, align 8
  %35 = load %struct.knav_device*, %struct.knav_device** %11, align 8
  %36 = getelementptr inbounds %struct.knav_device, %struct.knav_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.knav_range_info*, %struct.knav_range_info** %8, align 8
  %39 = getelementptr inbounds %struct.knav_range_info, %struct.knav_range_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %37, %40
  store i32 %41, i32* %17, align 4
  %42 = load %struct.knav_range_info*, %struct.knav_range_info** %8, align 8
  %43 = getelementptr inbounds %struct.knav_range_info, %struct.knav_range_info* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @RANGE_MULTI_QUEUE, align 4
  %46 = and i32 %44, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %80

48:                                               ; preds = %2
  store i32 0, i32* %19, align 4
  br label %49

49:                                               ; preds = %68, %48
  %50 = load i32, i32* %19, align 4
  %51 = load %struct.knav_range_info*, %struct.knav_range_info** %8, align 8
  %52 = getelementptr inbounds %struct.knav_range_info, %struct.knav_range_info* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %71

55:                                               ; preds = %49
  %56 = load %struct.knav_range_info*, %struct.knav_range_info** %8, align 8
  %57 = getelementptr inbounds %struct.knav_range_info, %struct.knav_range_info* %56, i32 0, i32 4
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* %19, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %55
  br label %71

67:                                               ; preds = %55
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %19, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %19, align 4
  br label %49

71:                                               ; preds = %66, %49
  %72 = load %struct.knav_device*, %struct.knav_device** %11, align 8
  %73 = load %struct.knav_range_info*, %struct.knav_range_info** %8, align 8
  %74 = load i32, i32* %19, align 4
  %75 = call %struct.knav_queue_inst* @knav_range_offset_to_inst(%struct.knav_device* %72, %struct.knav_range_info* %73, i32 %74)
  store %struct.knav_queue_inst* %75, %struct.knav_queue_inst** %7, align 8
  %76 = load i32, i32* %19, align 4
  %77 = load %struct.knav_acc_channel*, %struct.knav_acc_channel** %6, align 8
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds %struct.knav_acc_channel, %struct.knav_acc_channel* %77, i64 %78
  store %struct.knav_acc_channel* %79, %struct.knav_acc_channel** %6, align 8
  br label %80

80:                                               ; preds = %71, %2
  %81 = load %struct.knav_acc_channel*, %struct.knav_acc_channel** %6, align 8
  %82 = getelementptr inbounds %struct.knav_acc_channel, %struct.knav_acc_channel* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %18, align 4
  %84 = load %struct.knav_acc_channel*, %struct.knav_acc_channel** %6, align 8
  %85 = getelementptr inbounds %struct.knav_acc_channel, %struct.knav_acc_channel* %84, i32 0, i32 4
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.knav_acc_channel*, %struct.knav_acc_channel** %6, align 8
  %88 = getelementptr inbounds %struct.knav_acc_channel, %struct.knav_acc_channel* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds i32, i32* %86, i64 %89
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %20, align 4
  %92 = load %struct.knav_acc_channel*, %struct.knav_acc_channel** %6, align 8
  %93 = getelementptr inbounds %struct.knav_acc_channel, %struct.knav_acc_channel* %92, i32 0, i32 2
  %94 = load i32**, i32*** %93, align 8
  %95 = load %struct.knav_acc_channel*, %struct.knav_acc_channel** %6, align 8
  %96 = getelementptr inbounds %struct.knav_acc_channel, %struct.knav_acc_channel* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds i32*, i32** %94, i64 %97
  %99 = load i32*, i32** %98, align 8
  store i32* %99, i32** %13, align 8
  %100 = load %struct.knav_device*, %struct.knav_device** %11, align 8
  %101 = getelementptr inbounds %struct.knav_device, %struct.knav_device* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %18, align 4
  %104 = load %struct.knav_acc_channel*, %struct.knav_acc_channel** %6, align 8
  %105 = getelementptr inbounds %struct.knav_acc_channel, %struct.knav_acc_channel* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i32*, i32** %13, align 8
  %108 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %102, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %103, i64 %106, i32* %107, i32* %20)
  %109 = load %struct.knav_acc_channel*, %struct.knav_acc_channel** %6, align 8
  %110 = getelementptr inbounds %struct.knav_acc_channel, %struct.knav_acc_channel* %109, i32 0, i32 3
  %111 = call i64 @atomic_read(i32* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %137

113:                                              ; preds = %80
  %114 = load %struct.knav_acc_channel*, %struct.knav_acc_channel** %6, align 8
  %115 = getelementptr inbounds %struct.knav_acc_channel, %struct.knav_acc_channel* %114, i32 0, i32 3
  %116 = call i32 @atomic_dec(i32* %115)
  %117 = load %struct.knav_range_info*, %struct.knav_range_info** %8, align 8
  %118 = load %struct.knav_acc_channel*, %struct.knav_acc_channel** %6, align 8
  %119 = call i32 @__knav_acc_notify(%struct.knav_range_info* %117, %struct.knav_acc_channel* %118)
  %120 = load %struct.knav_pdsp_info*, %struct.knav_pdsp_info** %9, align 8
  %121 = getelementptr inbounds %struct.knav_pdsp_info, %struct.knav_pdsp_info* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i32, i32* %18, align 4
  %124 = call i64 @ACC_INTD_OFFSET_COUNT(i32 %123)
  %125 = add nsw i64 %122, %124
  %126 = call i32 @writel_relaxed(i32 1, i64 %125)
  %127 = load i32, i32* @ACC_CHANNEL_INT_BASE, align 4
  %128 = load i32, i32* %18, align 4
  %129 = add nsw i32 %127, %128
  %130 = load %struct.knav_pdsp_info*, %struct.knav_pdsp_info** %9, align 8
  %131 = getelementptr inbounds %struct.knav_pdsp_info, %struct.knav_pdsp_info* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @ACC_INTD_OFFSET_EOI, align 8
  %134 = add nsw i64 %132, %133
  %135 = call i32 @writel_relaxed(i32 %129, i64 %134)
  %136 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %136, i32* %3, align 4
  br label %369

137:                                              ; preds = %80
  %138 = load %struct.knav_pdsp_info*, %struct.knav_pdsp_info** %9, align 8
  %139 = getelementptr inbounds %struct.knav_pdsp_info, %struct.knav_pdsp_info* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i32, i32* %18, align 4
  %142 = call i64 @ACC_INTD_OFFSET_COUNT(i32 %141)
  %143 = add nsw i64 %140, %142
  %144 = call i32 @readl_relaxed(i64 %143)
  store i32 %144, i32* %16, align 4
  %145 = load i32, i32* %16, align 4
  %146 = icmp ne i32 %145, 0
  %147 = xor i1 %146, true
  %148 = zext i1 %147 to i32
  %149 = call i32 @WARN_ON(i32 %148)
  %150 = load %struct.knav_device*, %struct.knav_device** %11, align 8
  %151 = getelementptr inbounds %struct.knav_device, %struct.knav_device* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %20, align 4
  %154 = load %struct.knav_acc_info*, %struct.knav_acc_info** %10, align 8
  %155 = getelementptr inbounds %struct.knav_acc_info, %struct.knav_acc_info* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %158 = call i32 @dma_sync_single_for_cpu(i32 %152, i32 %153, i32 %156, i32 %157)
  %159 = load i32*, i32** %13, align 8
  store i32* %159, i32** %12, align 8
  br label %160

160:                                              ; preds = %325, %137
  %161 = load i32*, i32** %12, align 8
  %162 = load i32*, i32** %13, align 8
  %163 = load %struct.knav_acc_info*, %struct.knav_acc_info** %10, align 8
  %164 = getelementptr inbounds %struct.knav_acc_info, %struct.knav_acc_info* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = sext i32 %165 to i64
  %167 = udiv i64 %166, 4
  %168 = getelementptr inbounds i32, i32* %162, i64 %167
  %169 = icmp ult i32* %161, %168
  br i1 %169, label %170, label %330

170:                                              ; preds = %160
  %171 = load i32, i32* @ACC_LIST_ENTRY_WORDS, align 4
  %172 = icmp eq i32 %171, 1
  br i1 %172, label %173, label %186

173:                                              ; preds = %170
  %174 = load %struct.knav_device*, %struct.knav_device** %11, align 8
  %175 = getelementptr inbounds %struct.knav_device, %struct.knav_device* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.knav_acc_channel*, %struct.knav_acc_channel** %6, align 8
  %178 = getelementptr inbounds %struct.knav_acc_channel, %struct.knav_acc_channel* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = trunc i64 %179 to i32
  %181 = load i32*, i32** %12, align 8
  %182 = load i32*, i32** %12, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 0
  %184 = load i32, i32* %183, align 4
  %185 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %176, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %180, i32* %181, i32 %184)
  br label %232

186:                                              ; preds = %170
  %187 = load i32, i32* @ACC_LIST_ENTRY_WORDS, align 4
  %188 = icmp eq i32 %187, 2
  br i1 %188, label %189, label %205

189:                                              ; preds = %186
  %190 = load %struct.knav_device*, %struct.knav_device** %11, align 8
  %191 = getelementptr inbounds %struct.knav_device, %struct.knav_device* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.knav_acc_channel*, %struct.knav_acc_channel** %6, align 8
  %194 = getelementptr inbounds %struct.knav_acc_channel, %struct.knav_acc_channel* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = trunc i64 %195 to i32
  %197 = load i32*, i32** %12, align 8
  %198 = load i32*, i32** %12, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 0
  %200 = load i32, i32* %199, align 4
  %201 = load i32*, i32** %12, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 1
  %203 = load i32, i32* %202, align 4
  %204 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %192, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %196, i32* %197, i32 %200, i32 %203)
  br label %231

205:                                              ; preds = %186
  %206 = load i32, i32* @ACC_LIST_ENTRY_WORDS, align 4
  %207 = icmp eq i32 %206, 4
  br i1 %207, label %208, label %230

208:                                              ; preds = %205
  %209 = load %struct.knav_device*, %struct.knav_device** %11, align 8
  %210 = getelementptr inbounds %struct.knav_device, %struct.knav_device* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.knav_acc_channel*, %struct.knav_acc_channel** %6, align 8
  %213 = getelementptr inbounds %struct.knav_acc_channel, %struct.knav_acc_channel* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = trunc i64 %214 to i32
  %216 = load i32*, i32** %12, align 8
  %217 = load i32*, i32** %12, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 0
  %219 = load i32, i32* %218, align 4
  %220 = load i32*, i32** %12, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 1
  %222 = load i32, i32* %221, align 4
  %223 = load i32*, i32** %12, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 2
  %225 = load i32, i32* %224, align 4
  %226 = load i32*, i32** %12, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 3
  %228 = load i32, i32* %227, align 4
  %229 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %211, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %215, i32* %216, i32 %219, i32 %222, i32 %225, i32 %228)
  br label %230

230:                                              ; preds = %208, %205
  br label %231

231:                                              ; preds = %230, %189
  br label %232

232:                                              ; preds = %231, %173
  %233 = load i32*, i32** %12, align 8
  %234 = load i64, i64* @ACC_LIST_ENTRY_DESC_IDX, align 8
  %235 = getelementptr inbounds i32, i32* %233, i64 %234
  %236 = load i32, i32* %235, align 4
  store i32 %236, i32* %14, align 4
  %237 = load i32, i32* %14, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %240, label %239

239:                                              ; preds = %232
  br label %330

240:                                              ; preds = %232
  %241 = load %struct.knav_range_info*, %struct.knav_range_info** %8, align 8
  %242 = getelementptr inbounds %struct.knav_range_info, %struct.knav_range_info* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @RANGE_MULTI_QUEUE, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %284

247:                                              ; preds = %240
  %248 = load i32*, i32** %12, align 8
  %249 = load i64, i64* @ACC_LIST_ENTRY_QUEUE_IDX, align 8
  %250 = getelementptr inbounds i32, i32* %248, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = ashr i32 %251, 16
  store i32 %252, i32* %19, align 4
  %253 = load i32, i32* %19, align 4
  %254 = load i32, i32* %17, align 4
  %255 = icmp slt i32 %253, %254
  br i1 %255, label %264, label %256

256:                                              ; preds = %247
  %257 = load i32, i32* %19, align 4
  %258 = load i32, i32* %17, align 4
  %259 = load %struct.knav_range_info*, %struct.knav_range_info** %8, align 8
  %260 = getelementptr inbounds %struct.knav_range_info, %struct.knav_range_info* %259, i32 0, i32 3
  %261 = load i32, i32* %260, align 4
  %262 = add nsw i32 %258, %261
  %263 = icmp sge i32 %257, %262
  br i1 %263, label %264, label %276

264:                                              ; preds = %256, %247
  %265 = load %struct.knav_device*, %struct.knav_device** %11, align 8
  %266 = getelementptr inbounds %struct.knav_device, %struct.knav_device* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* %19, align 4
  %269 = load i32, i32* %17, align 4
  %270 = load i32, i32* %17, align 4
  %271 = load %struct.knav_range_info*, %struct.knav_range_info** %8, align 8
  %272 = getelementptr inbounds %struct.knav_range_info, %struct.knav_range_info* %271, i32 0, i32 3
  %273 = load i32, i32* %272, align 4
  %274 = add nsw i32 %270, %273
  %275 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %267, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %268, i32 %269, i32 %274)
  br label %330

276:                                              ; preds = %256
  %277 = load i32, i32* %17, align 4
  %278 = load i32, i32* %19, align 4
  %279 = sub nsw i32 %278, %277
  store i32 %279, i32* %19, align 4
  %280 = load %struct.knav_device*, %struct.knav_device** %11, align 8
  %281 = load %struct.knav_range_info*, %struct.knav_range_info** %8, align 8
  %282 = load i32, i32* %19, align 4
  %283 = call %struct.knav_queue_inst* @knav_range_offset_to_inst(%struct.knav_device* %280, %struct.knav_range_info* %281, i32 %282)
  store %struct.knav_queue_inst* %283, %struct.knav_queue_inst** %7, align 8
  br label %284

284:                                              ; preds = %276, %240
  %285 = load %struct.knav_queue_inst*, %struct.knav_queue_inst** %7, align 8
  %286 = getelementptr inbounds %struct.knav_queue_inst, %struct.knav_queue_inst* %285, i32 0, i32 3
  %287 = call i32 @atomic_inc_return(i32* %286)
  %288 = load i32, i32* @ACC_DESCS_MAX, align 4
  %289 = icmp sge i32 %287, %288
  br i1 %289, label %290, label %301

290:                                              ; preds = %284
  %291 = load %struct.knav_queue_inst*, %struct.knav_queue_inst** %7, align 8
  %292 = getelementptr inbounds %struct.knav_queue_inst, %struct.knav_queue_inst* %291, i32 0, i32 3
  %293 = call i32 @atomic_dec(i32* %292)
  %294 = load %struct.knav_device*, %struct.knav_device** %11, align 8
  %295 = getelementptr inbounds %struct.knav_device, %struct.knav_device* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = load i32, i32* %19, align 4
  %298 = load i32, i32* %17, align 4
  %299 = add nsw i32 %297, %298
  %300 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %296, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %299)
  br label %325

301:                                              ; preds = %284
  %302 = load %struct.knav_queue_inst*, %struct.knav_queue_inst** %7, align 8
  %303 = getelementptr inbounds %struct.knav_queue_inst, %struct.knav_queue_inst* %302, i32 0, i32 2
  %304 = call i32 @atomic_inc_return(i32* %303)
  %305 = load i32, i32* @ACC_DESCS_MASK, align 4
  %306 = and i32 %304, %305
  store i32 %306, i32* %15, align 4
  %307 = load i32, i32* %14, align 4
  %308 = load %struct.knav_queue_inst*, %struct.knav_queue_inst** %7, align 8
  %309 = getelementptr inbounds %struct.knav_queue_inst, %struct.knav_queue_inst* %308, i32 0, i32 0
  %310 = load i32*, i32** %309, align 8
  %311 = load i32, i32* %15, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i32, i32* %310, i64 %312
  store i32 %307, i32* %313, align 4
  %314 = load %struct.knav_queue_inst*, %struct.knav_queue_inst** %7, align 8
  %315 = getelementptr inbounds %struct.knav_queue_inst, %struct.knav_queue_inst* %314, i32 0, i32 1
  store i32 1, i32* %315, align 8
  %316 = load %struct.knav_device*, %struct.knav_device** %11, align 8
  %317 = getelementptr inbounds %struct.knav_device, %struct.knav_device* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = load i32, i32* %14, align 4
  %320 = load i32, i32* %15, align 4
  %321 = load i32, i32* %19, align 4
  %322 = load i32, i32* %17, align 4
  %323 = add nsw i32 %321, %322
  %324 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %318, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %319, i32 %320, i32 %323)
  br label %325

325:                                              ; preds = %301, %290
  %326 = load i32, i32* @ACC_LIST_ENTRY_WORDS, align 4
  %327 = load i32*, i32** %12, align 8
  %328 = sext i32 %326 to i64
  %329 = getelementptr inbounds i32, i32* %327, i64 %328
  store i32* %329, i32** %12, align 8
  br label %160

330:                                              ; preds = %264, %239, %160
  %331 = load %struct.knav_range_info*, %struct.knav_range_info** %8, align 8
  %332 = load %struct.knav_acc_channel*, %struct.knav_acc_channel** %6, align 8
  %333 = call i32 @__knav_acc_notify(%struct.knav_range_info* %331, %struct.knav_acc_channel* %332)
  %334 = load i32*, i32** %13, align 8
  %335 = load %struct.knav_acc_info*, %struct.knav_acc_info** %10, align 8
  %336 = getelementptr inbounds %struct.knav_acc_info, %struct.knav_acc_info* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 8
  %338 = call i32 @memset(i32* %334, i32 0, i32 %337)
  %339 = load %struct.knav_device*, %struct.knav_device** %11, align 8
  %340 = getelementptr inbounds %struct.knav_device, %struct.knav_device* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 4
  %342 = load i32, i32* %20, align 4
  %343 = load %struct.knav_acc_info*, %struct.knav_acc_info** %10, align 8
  %344 = getelementptr inbounds %struct.knav_acc_info, %struct.knav_acc_info* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = load i32, i32* @DMA_TO_DEVICE, align 4
  %347 = call i32 @dma_sync_single_for_device(i32 %341, i32 %342, i32 %345, i32 %346)
  %348 = load %struct.knav_acc_channel*, %struct.knav_acc_channel** %6, align 8
  %349 = getelementptr inbounds %struct.knav_acc_channel, %struct.knav_acc_channel* %348, i32 0, i32 1
  %350 = load i64, i64* %349, align 8
  %351 = xor i64 %350, 1
  store i64 %351, i64* %349, align 8
  %352 = load %struct.knav_pdsp_info*, %struct.knav_pdsp_info** %9, align 8
  %353 = getelementptr inbounds %struct.knav_pdsp_info, %struct.knav_pdsp_info* %352, i32 0, i32 0
  %354 = load i64, i64* %353, align 8
  %355 = load i32, i32* %18, align 4
  %356 = call i64 @ACC_INTD_OFFSET_COUNT(i32 %355)
  %357 = add nsw i64 %354, %356
  %358 = call i32 @writel_relaxed(i32 1, i64 %357)
  %359 = load i32, i32* @ACC_CHANNEL_INT_BASE, align 4
  %360 = load i32, i32* %18, align 4
  %361 = add nsw i32 %359, %360
  %362 = load %struct.knav_pdsp_info*, %struct.knav_pdsp_info** %9, align 8
  %363 = getelementptr inbounds %struct.knav_pdsp_info, %struct.knav_pdsp_info* %362, i32 0, i32 0
  %364 = load i64, i64* %363, align 8
  %365 = load i64, i64* @ACC_INTD_OFFSET_EOI, align 8
  %366 = add nsw i64 %364, %365
  %367 = call i32 @writel_relaxed(i32 %361, i64 %366)
  %368 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %368, i32* %3, align 4
  br label %369

369:                                              ; preds = %330, %113
  %370 = load i32, i32* %3, align 4
  ret i32 %370
}

declare dso_local %struct.knav_queue_inst* @knav_range_offset_to_inst(%struct.knav_device*, %struct.knav_range_info*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @__knav_acc_notify(%struct.knav_range_info*, %struct.knav_acc_channel*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i64 @ACC_INTD_OFFSET_COUNT(i32) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @dma_sync_single_for_device(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
