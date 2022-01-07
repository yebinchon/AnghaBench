; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/extr_ntb_transport.c_ntb_transport_create_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/extr_ntb_transport.c_ntb_transport_create_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_transport_qp = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_4__*, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.device = type { i32 }
%struct.ntb_queue_handlers = type { i32, i32, i32 }
%struct.ntb_dev = type { i32, %struct.ntb_transport_ctx*, %struct.pci_dev* }
%struct.ntb_transport_ctx = type { i32, %struct.ntb_transport_qp* }
%struct.pci_dev = type { i32 }
%struct.ntb_queue_entry = type { i32, %struct.ntb_transport_qp* }

@DMA_MEMCPY = common dso_local global i32 0, align 4
@use_dma = common dso_local global i64 0, align 8
@ntb_dma_filter_fn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Unable to allocate TX DMA channel\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Unable to allocate RX DMA channel\0A\00", align 1
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Using %s memcpy for TX\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"DMA\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"CPU\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Using %s memcpy for RX\0A\00", align 1
@NTB_QP_DEF_NUM_ENTRIES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"NTB Transport QP %d created\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ntb_transport_qp* @ntb_transport_create_queue(i8* %0, %struct.device* %1, %struct.ntb_queue_handlers* %2) #0 {
  %4 = alloca %struct.ntb_transport_qp*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.ntb_queue_handlers*, align 8
  %8 = alloca %struct.ntb_dev*, align 8
  %9 = alloca %struct.pci_dev*, align 8
  %10 = alloca %struct.ntb_transport_ctx*, align 8
  %11 = alloca %struct.ntb_queue_entry*, align 8
  %12 = alloca %struct.ntb_transport_qp*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store %struct.ntb_queue_handlers* %2, %struct.ntb_queue_handlers** %7, align 8
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = getelementptr inbounds %struct.device, %struct.device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.ntb_dev* @dev_ntb(i32 %20)
  store %struct.ntb_dev* %21, %struct.ntb_dev** %8, align 8
  %22 = load %struct.ntb_dev*, %struct.ntb_dev** %8, align 8
  %23 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %22, i32 0, i32 2
  %24 = load %struct.pci_dev*, %struct.pci_dev** %23, align 8
  store %struct.pci_dev* %24, %struct.pci_dev** %9, align 8
  %25 = load %struct.ntb_dev*, %struct.ntb_dev** %8, align 8
  %26 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %25, i32 0, i32 1
  %27 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %26, align 8
  store %struct.ntb_transport_ctx* %27, %struct.ntb_transport_ctx** %10, align 8
  %28 = load %struct.ntb_dev*, %struct.ntb_dev** %8, align 8
  %29 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %28, i32 0, i32 0
  %30 = call i32 @dev_to_node(i32* %29)
  store i32 %30, i32* %16, align 4
  %31 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %10, align 8
  %32 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @ffs(i32 %33)
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %3
  br label %330

38:                                               ; preds = %3
  %39 = load i32, i32* %14, align 4
  %40 = add i32 %39, -1
  store i32 %40, i32* %14, align 4
  %41 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %10, align 8
  %42 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %41, i32 0, i32 1
  %43 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %42, align 8
  %44 = load i32, i32* %14, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %43, i64 %45
  store %struct.ntb_transport_qp* %46, %struct.ntb_transport_qp** %12, align 8
  %47 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %12, align 8
  %48 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %47, i32 0, i32 10
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @BIT_ULL(i32 %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = xor i32 %51, -1
  %53 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %10, align 8
  %54 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = and i32 %55, %52
  store i32 %56, i32* %54, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %12, align 8
  %59 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %58, i32 0, i32 16
  store i8* %57, i8** %59, align 8
  %60 = load %struct.ntb_queue_handlers*, %struct.ntb_queue_handlers** %7, align 8
  %61 = getelementptr inbounds %struct.ntb_queue_handlers, %struct.ntb_queue_handlers* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %12, align 8
  %64 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %63, i32 0, i32 15
  store i32 %62, i32* %64, align 4
  %65 = load %struct.ntb_queue_handlers*, %struct.ntb_queue_handlers** %7, align 8
  %66 = getelementptr inbounds %struct.ntb_queue_handlers, %struct.ntb_queue_handlers* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %12, align 8
  %69 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %68, i32 0, i32 14
  store i32 %67, i32* %69, align 8
  %70 = load %struct.ntb_queue_handlers*, %struct.ntb_queue_handlers** %7, align 8
  %71 = getelementptr inbounds %struct.ntb_queue_handlers, %struct.ntb_queue_handlers* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %12, align 8
  %74 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %73, i32 0, i32 13
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* %15, align 4
  %76 = call i32 @dma_cap_zero(i32 %75)
  %77 = load i32, i32* @DMA_MEMCPY, align 4
  %78 = load i32, i32* %15, align 4
  %79 = call i32 @dma_cap_set(i32 %77, i32 %78)
  %80 = load i64, i64* @use_dma, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %119

82:                                               ; preds = %38
  %83 = load i32, i32* %15, align 4
  %84 = load i32, i32* @ntb_dma_filter_fn, align 4
  %85 = load i32, i32* %16, align 4
  %86 = sext i32 %85 to i64
  %87 = inttoptr i64 %86 to i8*
  %88 = call i8* @dma_request_channel(i32 %83, i32 %84, i8* %87)
  %89 = bitcast i8* %88 to %struct.TYPE_4__*
  %90 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %12, align 8
  %91 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %90, i32 0, i32 3
  store %struct.TYPE_4__* %89, %struct.TYPE_4__** %91, align 8
  %92 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %12, align 8
  %93 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %92, i32 0, i32 3
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = icmp ne %struct.TYPE_4__* %94, null
  br i1 %95, label %100, label %96

96:                                               ; preds = %82
  %97 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %98 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %97, i32 0, i32 0
  %99 = call i32 (i32*, i8*, ...) @dev_info(i32* %98, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %100

100:                                              ; preds = %96, %82
  %101 = load i32, i32* %15, align 4
  %102 = load i32, i32* @ntb_dma_filter_fn, align 4
  %103 = load i32, i32* %16, align 4
  %104 = sext i32 %103 to i64
  %105 = inttoptr i64 %104 to i8*
  %106 = call i8* @dma_request_channel(i32 %101, i32 %102, i8* %105)
  %107 = bitcast i8* %106 to %struct.TYPE_4__*
  %108 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %12, align 8
  %109 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %108, i32 0, i32 2
  store %struct.TYPE_4__* %107, %struct.TYPE_4__** %109, align 8
  %110 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %12, align 8
  %111 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %110, i32 0, i32 2
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = icmp ne %struct.TYPE_4__* %112, null
  br i1 %113, label %118, label %114

114:                                              ; preds = %100
  %115 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %116 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %115, i32 0, i32 0
  %117 = call i32 (i32*, i8*, ...) @dev_info(i32* %116, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %118

118:                                              ; preds = %114, %100
  br label %124

119:                                              ; preds = %38
  %120 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %12, align 8
  %121 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %120, i32 0, i32 3
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %121, align 8
  %122 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %12, align 8
  %123 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %122, i32 0, i32 2
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %123, align 8
  br label %124

124:                                              ; preds = %119, %118
  %125 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %12, align 8
  %126 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %125, i32 0, i32 5
  store i64 0, i64* %126, align 8
  %127 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %12, align 8
  %128 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %127, i32 0, i32 3
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = icmp ne %struct.TYPE_4__* %129, null
  br i1 %130, label %131, label %165

131:                                              ; preds = %124
  %132 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %12, align 8
  %133 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %132, i32 0, i32 3
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %12, align 8
  %140 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %139, i32 0, i32 12
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %12, align 8
  %143 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %146 = call i64 @dma_map_resource(i32 %138, i32 %141, i32 %144, i32 %145, i32 0)
  %147 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %12, align 8
  %148 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %147, i32 0, i32 5
  store i64 %146, i64* %148, align 8
  %149 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %12, align 8
  %150 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %149, i32 0, i32 3
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %12, align 8
  %157 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %156, i32 0, i32 5
  %158 = load i64, i64* %157, align 8
  %159 = call i64 @dma_mapping_error(i32 %155, i64 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %131
  %162 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %12, align 8
  %163 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %162, i32 0, i32 5
  store i64 0, i64* %163, align 8
  br label %270

164:                                              ; preds = %131
  br label %165

165:                                              ; preds = %164, %124
  %166 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %167 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %166, i32 0, i32 0
  %168 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %12, align 8
  %169 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %168, i32 0, i32 3
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %169, align 8
  %171 = icmp ne %struct.TYPE_4__* %170, null
  %172 = zext i1 %171 to i64
  %173 = select i1 %171, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %174 = call i32 @dev_dbg(i32* %167, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %173)
  %175 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %176 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %175, i32 0, i32 0
  %177 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %12, align 8
  %178 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %177, i32 0, i32 2
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %178, align 8
  %180 = icmp ne %struct.TYPE_4__* %179, null
  %181 = zext i1 %180 to i64
  %182 = select i1 %180, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %183 = call i32 @dev_dbg(i32* %176, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8* %182)
  store i32 0, i32* %17, align 4
  br label %184

184:                                              ; preds = %206, %165
  %185 = load i32, i32* %17, align 4
  %186 = load i32, i32* @NTB_QP_DEF_NUM_ENTRIES, align 4
  %187 = icmp slt i32 %185, %186
  br i1 %187, label %188, label %209

188:                                              ; preds = %184
  %189 = load i32, i32* @GFP_KERNEL, align 4
  %190 = load i32, i32* %16, align 4
  %191 = call %struct.ntb_queue_entry* @kzalloc_node(i32 16, i32 %189, i32 %190)
  store %struct.ntb_queue_entry* %191, %struct.ntb_queue_entry** %11, align 8
  %192 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %11, align 8
  %193 = icmp ne %struct.ntb_queue_entry* %192, null
  br i1 %193, label %195, label %194

194:                                              ; preds = %188
  br label %270

195:                                              ; preds = %188
  %196 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %12, align 8
  %197 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %11, align 8
  %198 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %197, i32 0, i32 1
  store %struct.ntb_transport_qp* %196, %struct.ntb_transport_qp** %198, align 8
  %199 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %12, align 8
  %200 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %199, i32 0, i32 7
  %201 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %11, align 8
  %202 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %201, i32 0, i32 0
  %203 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %12, align 8
  %204 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %203, i32 0, i32 6
  %205 = call i32 @ntb_list_add(i32* %200, i32* %202, i32* %204)
  br label %206

206:                                              ; preds = %195
  %207 = load i32, i32* %17, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %17, align 4
  br label %184

209:                                              ; preds = %184
  %210 = load i32, i32* @NTB_QP_DEF_NUM_ENTRIES, align 4
  %211 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %12, align 8
  %212 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %211, i32 0, i32 0
  store i32 %210, i32* %212, align 8
  store i32 0, i32* %17, align 4
  br label %213

213:                                              ; preds = %237, %209
  %214 = load i32, i32* %17, align 4
  %215 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %12, align 8
  %216 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = icmp slt i32 %214, %217
  br i1 %218, label %219, label %240

219:                                              ; preds = %213
  %220 = load i32, i32* @GFP_KERNEL, align 4
  %221 = load i32, i32* %16, align 4
  %222 = call %struct.ntb_queue_entry* @kzalloc_node(i32 16, i32 %220, i32 %221)
  store %struct.ntb_queue_entry* %222, %struct.ntb_queue_entry** %11, align 8
  %223 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %11, align 8
  %224 = icmp ne %struct.ntb_queue_entry* %223, null
  br i1 %224, label %226, label %225

225:                                              ; preds = %219
  br label %258

226:                                              ; preds = %219
  %227 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %12, align 8
  %228 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %11, align 8
  %229 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %228, i32 0, i32 1
  store %struct.ntb_transport_qp* %227, %struct.ntb_transport_qp** %229, align 8
  %230 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %12, align 8
  %231 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %230, i32 0, i32 9
  %232 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %11, align 8
  %233 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %232, i32 0, i32 0
  %234 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %12, align 8
  %235 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %234, i32 0, i32 8
  %236 = call i32 @ntb_list_add(i32* %231, i32* %233, i32* %235)
  br label %237

237:                                              ; preds = %226
  %238 = load i32, i32* %17, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %17, align 4
  br label %213

240:                                              ; preds = %213
  %241 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %12, align 8
  %242 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %241, i32 0, i32 11
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* %13, align 4
  %245 = call i32 @ntb_db_clear(i32 %243, i32 %244)
  %246 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %12, align 8
  %247 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %246, i32 0, i32 11
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* %13, align 4
  %250 = call i32 @ntb_db_clear_mask(i32 %248, i32 %249)
  %251 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %252 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %251, i32 0, i32 0
  %253 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %12, align 8
  %254 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %253, i32 0, i32 10
  %255 = load i32, i32* %254, align 8
  %256 = call i32 (i32*, i8*, ...) @dev_info(i32* %252, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %255)
  %257 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %12, align 8
  store %struct.ntb_transport_qp* %257, %struct.ntb_transport_qp** %4, align 8
  br label %331

258:                                              ; preds = %225
  br label %259

259:                                              ; preds = %266, %258
  %260 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %12, align 8
  %261 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %260, i32 0, i32 9
  %262 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %12, align 8
  %263 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %262, i32 0, i32 8
  %264 = call %struct.ntb_queue_entry* @ntb_list_rm(i32* %261, i32* %263)
  store %struct.ntb_queue_entry* %264, %struct.ntb_queue_entry** %11, align 8
  %265 = icmp ne %struct.ntb_queue_entry* %264, null
  br i1 %265, label %266, label %269

266:                                              ; preds = %259
  %267 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %11, align 8
  %268 = call i32 @kfree(%struct.ntb_queue_entry* %267)
  br label %259

269:                                              ; preds = %259
  br label %270

270:                                              ; preds = %269, %194, %161
  %271 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %12, align 8
  %272 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %271, i32 0, i32 0
  store i32 0, i32* %272, align 8
  br label %273

273:                                              ; preds = %280, %270
  %274 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %12, align 8
  %275 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %274, i32 0, i32 7
  %276 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %12, align 8
  %277 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %276, i32 0, i32 6
  %278 = call %struct.ntb_queue_entry* @ntb_list_rm(i32* %275, i32* %277)
  store %struct.ntb_queue_entry* %278, %struct.ntb_queue_entry** %11, align 8
  %279 = icmp ne %struct.ntb_queue_entry* %278, null
  br i1 %279, label %280, label %283

280:                                              ; preds = %273
  %281 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %11, align 8
  %282 = call i32 @kfree(%struct.ntb_queue_entry* %281)
  br label %273

283:                                              ; preds = %273
  %284 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %12, align 8
  %285 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %284, i32 0, i32 5
  %286 = load i64, i64* %285, align 8
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %304

288:                                              ; preds = %283
  %289 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %12, align 8
  %290 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %289, i32 0, i32 3
  %291 = load %struct.TYPE_4__*, %struct.TYPE_4__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %291, i32 0, i32 0
  %293 = load %struct.TYPE_3__*, %struct.TYPE_3__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 4
  %296 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %12, align 8
  %297 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %296, i32 0, i32 5
  %298 = load i64, i64* %297, align 8
  %299 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %12, align 8
  %300 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %299, i32 0, i32 4
  %301 = load i32, i32* %300, align 8
  %302 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %303 = call i32 @dma_unmap_resource(i32 %295, i64 %298, i32 %301, i32 %302, i32 0)
  br label %304

304:                                              ; preds = %288, %283
  %305 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %12, align 8
  %306 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %305, i32 0, i32 3
  %307 = load %struct.TYPE_4__*, %struct.TYPE_4__** %306, align 8
  %308 = icmp ne %struct.TYPE_4__* %307, null
  br i1 %308, label %309, label %314

309:                                              ; preds = %304
  %310 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %12, align 8
  %311 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %310, i32 0, i32 3
  %312 = load %struct.TYPE_4__*, %struct.TYPE_4__** %311, align 8
  %313 = call i32 @dma_release_channel(%struct.TYPE_4__* %312)
  br label %314

314:                                              ; preds = %309, %304
  %315 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %12, align 8
  %316 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %315, i32 0, i32 2
  %317 = load %struct.TYPE_4__*, %struct.TYPE_4__** %316, align 8
  %318 = icmp ne %struct.TYPE_4__* %317, null
  br i1 %318, label %319, label %324

319:                                              ; preds = %314
  %320 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %12, align 8
  %321 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %320, i32 0, i32 2
  %322 = load %struct.TYPE_4__*, %struct.TYPE_4__** %321, align 8
  %323 = call i32 @dma_release_channel(%struct.TYPE_4__* %322)
  br label %324

324:                                              ; preds = %319, %314
  %325 = load i32, i32* %13, align 4
  %326 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %10, align 8
  %327 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 8
  %329 = or i32 %328, %325
  store i32 %329, i32* %327, align 8
  br label %330

330:                                              ; preds = %324, %37
  store %struct.ntb_transport_qp* null, %struct.ntb_transport_qp** %4, align 8
  br label %331

331:                                              ; preds = %330, %240
  %332 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %4, align 8
  ret %struct.ntb_transport_qp* %332
}

declare dso_local %struct.ntb_dev* @dev_ntb(i32) #1

declare dso_local i32 @dev_to_node(i32*) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @dma_cap_zero(i32) #1

declare dso_local i32 @dma_cap_set(i32, i32) #1

declare dso_local i8* @dma_request_channel(i32, i32, i8*) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i64 @dma_map_resource(i32, i32, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i8*) #1

declare dso_local %struct.ntb_queue_entry* @kzalloc_node(i32, i32, i32) #1

declare dso_local i32 @ntb_list_add(i32*, i32*, i32*) #1

declare dso_local i32 @ntb_db_clear(i32, i32) #1

declare dso_local i32 @ntb_db_clear_mask(i32, i32) #1

declare dso_local %struct.ntb_queue_entry* @ntb_list_rm(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.ntb_queue_entry*) #1

declare dso_local i32 @dma_unmap_resource(i32, i64, i32, i32, i32) #1

declare dso_local i32 @dma_release_channel(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
