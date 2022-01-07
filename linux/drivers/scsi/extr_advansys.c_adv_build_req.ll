; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_adv_build_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_adv_build_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asc_board = type { i32, i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.scsi_cmnd*, i32*, %struct.TYPE_14__, i64 }
%struct.TYPE_14__ = type { i64, i32, i8*, i64, i32*, i64, i32, i8*, i32, i32, i32, i32, i64, i64, i64 }
%struct.scsi_cmnd = type { i32, i32*, %struct.TYPE_12__*, i32*, i8*, i32, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { %struct.TYPE_15__*, i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_11__ = type { i64 }

@.str = private unnamed_addr constant [19 x i8] c"no free adv_req_t\0A\00", align 1
@adv_build_noreq = common dso_local global i32 0, align 4
@ASC_BUSY = common dso_local global i32 0, align 4
@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to map sense buffer\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"failed to map SG list\0A\00", align 1
@ADV_MAX_SG_LIST = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"use_sg %d > ADV_MAX_SG_LIST %d\0A\00", align 1
@DID_ERROR = common dso_local global i32 0, align 4
@ASC_ERROR = common dso_local global i32 0, align 4
@ADV_SUCCESS = common dso_local global i32 0, align 4
@xfer_elem = common dso_local global i32 0, align 4
@xfer_cnt = common dso_local global i32 0, align 4
@ASC_NOERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asc_board*, %struct.scsi_cmnd*, %struct.TYPE_13__**)* @adv_build_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv_build_req(%struct.asc_board* %0, %struct.scsi_cmnd* %1, %struct.TYPE_13__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.asc_board*, align 8
  %6 = alloca %struct.scsi_cmnd*, align 8
  %7 = alloca %struct.TYPE_13__**, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.asc_board* %0, %struct.asc_board** %5, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %6, align 8
  store %struct.TYPE_13__** %2, %struct.TYPE_13__*** %7, align 8
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %16 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %15, i32 0, i32 6
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %8, align 8
  %20 = load %struct.asc_board*, %struct.asc_board** %5, align 8
  %21 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %20, i32 0, i32 2
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %23 = load i64, i64* %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i64 %23
  store %struct.TYPE_13__* %24, %struct.TYPE_13__** %9, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %26, align 8
  %28 = icmp ne %struct.scsi_cmnd* %27, null
  br i1 %28, label %29, label %45

29:                                               ; preds = %3
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %31, align 8
  %33 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %34 = icmp ne %struct.scsi_cmnd* %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %29
  %36 = call i32 @ASC_DBG(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %38 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %37, i32 0, i32 2
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %40, align 8
  %42 = load i32, i32* @adv_build_noreq, align 4
  %43 = call i32 @ASC_STATS(%struct.TYPE_15__* %41, i32 %42)
  %44 = load i32, i32* @ASC_BUSY, align 4
  store i32 %44, i32* %4, align 4
  br label %274

45:                                               ; preds = %29, %3
  %46 = load %struct.asc_board*, %struct.asc_board** %5, align 8
  %47 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %8, align 8
  %50 = mul i64 %49, 128
  %51 = add i64 %48, %50
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 3
  store i64 %51, i64* %53, align 8
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 2
  store %struct.TYPE_14__* %55, %struct.TYPE_14__** %10, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 12
  store i64 0, i64* %57, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 13
  store i64 0, i64* %59, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 14
  store i64 0, i64* %61, align 8
  %62 = load i64, i64* %8, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  %65 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  store %struct.scsi_cmnd* %65, %struct.scsi_cmnd** %67, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %69 = bitcast %struct.TYPE_13__* %68 to i8*
  %70 = bitcast i8* %69 to i32*
  %71 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %72 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %71, i32 0, i32 3
  store i32* %70, i32** %72, align 8
  %73 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %74 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 8
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 11
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %82 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %85 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp slt i32 %86, 12
  br i1 %87, label %88, label %92

88:                                               ; preds = %45
  %89 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %90 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  br label %93

92:                                               ; preds = %45
  br label %93

93:                                               ; preds = %92, %88
  %94 = phi i32 [ %91, %88 ], [ 12, %92 ]
  %95 = call i32 @memcpy(i32 %80, i32* %83, i32 %94)
  %96 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %97 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp sgt i32 %98, 12
  br i1 %99, label %100, label %114

100:                                              ; preds = %93
  %101 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %102 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = sub nsw i32 %103, 12
  store i32 %104, i32* %14, align 4
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 10
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %109 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 12
  %112 = load i32, i32* %14, align 4
  %113 = call i32 @memcpy(i32 %107, i32* %111, i32 %112)
  br label %114

114:                                              ; preds = %100, %93
  %115 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %116 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %115, i32 0, i32 2
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 9
  store i32 %119, i32* %121, align 4
  %122 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %123 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %122, i32 0, i32 2
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 8
  store i32 %126, i32* %128, align 8
  %129 = load %struct.asc_board*, %struct.asc_board** %5, align 8
  %130 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %133 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %136 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %137 = call i32 @dma_map_single(i32 %131, i32 %134, i32 %135, i32 %136)
  store i32 %137, i32* %13, align 4
  %138 = load %struct.asc_board*, %struct.asc_board** %5, align 8
  %139 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* %13, align 4
  %142 = call i64 @dma_mapping_error(i32 %140, i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %154

144:                                              ; preds = %114
  %145 = call i32 @ASC_DBG(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %146 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %147 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %146, i32 0, i32 2
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %149, align 8
  %151 = load i32, i32* @adv_build_noreq, align 4
  %152 = call i32 @ASC_STATS(%struct.TYPE_15__* %150, i32 %151)
  %153 = load i32, i32* @ASC_BUSY, align 4
  store i32 %153, i32* %4, align 4
  br label %274

154:                                              ; preds = %114
  %155 = load i32, i32* %13, align 4
  %156 = call i8* @cpu_to_le32(i32 %155)
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 7
  store i8* %156, i8** %158, align 8
  %159 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 6
  store i32 %159, i32* %161, align 8
  %162 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %163 = call i32 @scsi_dma_map(%struct.scsi_cmnd* %162)
  store i32 %163, i32* %12, align 4
  %164 = load i32, i32* %12, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %176

166:                                              ; preds = %154
  %167 = call i32 @ASC_DBG(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %168 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %169 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %168, i32 0, i32 2
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %171, align 8
  %173 = load i32, i32* @adv_build_noreq, align 4
  %174 = call i32 @ASC_STATS(%struct.TYPE_15__* %172, i32 %173)
  %175 = load i32, i32* @ASC_BUSY, align 4
  store i32 %175, i32* %4, align 4
  br label %274

176:                                              ; preds = %154
  %177 = load i32, i32* %12, align 4
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %190

179:                                              ; preds = %176
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 1
  store i32* null, i32** %181, align 8
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i32 0, i32 2
  store i8* null, i8** %183, align 8
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 5
  store i64 0, i64* %185, align 8
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 4
  store i32* null, i32** %187, align 8
  %188 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i32 0, i32 3
  store i64 0, i64* %189, align 8
  br label %253

190:                                              ; preds = %176
  %191 = load i32, i32* %12, align 4
  %192 = load i32, i32* @ADV_MAX_SG_LIST, align 4
  %193 = icmp sgt i32 %191, %192
  br i1 %193, label %194, label %217

194:                                              ; preds = %190
  %195 = load i32, i32* @KERN_ERR, align 4
  %196 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %197 = load i32, i32* %12, align 4
  %198 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %199 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %198, i32 0, i32 2
  %200 = load %struct.TYPE_12__*, %struct.TYPE_12__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 0
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @scmd_printk(i32 %195, %struct.scsi_cmnd* %196, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %197, i32 %204)
  %206 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %207 = call i32 @scsi_dma_unmap(%struct.scsi_cmnd* %206)
  %208 = load i32, i32* @DID_ERROR, align 4
  %209 = call i8* @HOST_BYTE(i32 %208)
  %210 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %211 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %210, i32 0, i32 4
  store i8* %209, i8** %211, align 8
  %212 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 0
  store %struct.scsi_cmnd* null, %struct.scsi_cmnd** %213, align 8
  %214 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %215 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %214, i32 0, i32 3
  store i32* null, i32** %215, align 8
  %216 = load i32, i32* @ASC_ERROR, align 4
  store i32 %216, i32* %4, align 4
  br label %274

217:                                              ; preds = %190
  %218 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %219 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %218)
  %220 = call i8* @cpu_to_le32(i32 %219)
  %221 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i32 0, i32 2
  store i8* %220, i8** %222, align 8
  %223 = load %struct.asc_board*, %struct.asc_board** %5, align 8
  %224 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %225 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %226 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %227 = load i32, i32* %12, align 4
  %228 = call i32 @adv_get_sglist(%struct.asc_board* %223, %struct.TYPE_13__* %224, %struct.TYPE_14__* %225, %struct.scsi_cmnd* %226, i32 %227)
  store i32 %228, i32* %11, align 4
  %229 = load i32, i32* %11, align 4
  %230 = load i32, i32* @ADV_SUCCESS, align 4
  %231 = icmp ne i32 %229, %230
  br i1 %231, label %232, label %244

232:                                              ; preds = %217
  %233 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %234 = call i32 @scsi_dma_unmap(%struct.scsi_cmnd* %233)
  %235 = load i32, i32* @DID_ERROR, align 4
  %236 = call i8* @HOST_BYTE(i32 %235)
  %237 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %238 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %237, i32 0, i32 4
  store i8* %236, i8** %238, align 8
  %239 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %239, i32 0, i32 0
  store %struct.scsi_cmnd* null, %struct.scsi_cmnd** %240, align 8
  %241 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %242 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %241, i32 0, i32 3
  store i32* null, i32** %242, align 8
  %243 = load i32, i32* %11, align 4
  store i32 %243, i32* %4, align 4
  br label %274

244:                                              ; preds = %217
  %245 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %246 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %245, i32 0, i32 2
  %247 = load %struct.TYPE_12__*, %struct.TYPE_12__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %247, i32 0, i32 0
  %249 = load %struct.TYPE_15__*, %struct.TYPE_15__** %248, align 8
  %250 = load i32, i32* @xfer_elem, align 4
  %251 = load i32, i32* %12, align 4
  %252 = call i32 @ASC_STATS_ADD(%struct.TYPE_15__* %249, i32 %250, i32 %251)
  br label %253

253:                                              ; preds = %244, %179
  br label %254

254:                                              ; preds = %253
  %255 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %256 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %255, i32 0, i32 2
  %257 = load %struct.TYPE_12__*, %struct.TYPE_12__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %257, i32 0, i32 0
  %259 = load %struct.TYPE_15__*, %struct.TYPE_15__** %258, align 8
  %260 = load i32, i32* @xfer_cnt, align 4
  %261 = call i32 @ASC_STATS(%struct.TYPE_15__* %259, i32 %260)
  %262 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %263 = call i32 @ASC_DBG_PRT_ADV_SCSI_REQ_Q(i32 2, %struct.TYPE_14__* %262)
  %264 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %265 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %264, i32 0, i32 1
  %266 = load i32*, i32** %265, align 8
  %267 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %268 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = call i32 @ASC_DBG_PRT_CDB(i32 1, i32* %266, i32 %269)
  %271 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %272 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %7, align 8
  store %struct.TYPE_13__* %271, %struct.TYPE_13__** %272, align 8
  %273 = load i32, i32* @ASC_NOERROR, align 4
  store i32 %273, i32* %4, align 4
  br label %274

274:                                              ; preds = %254, %232, %194, %166, %144, %35
  %275 = load i32, i32* %4, align 4
  ret i32 %275
}

declare dso_local i32 @ASC_DBG(i32, i8*) #1

declare dso_local i32 @ASC_STATS(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @dma_map_single(i32, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @scsi_dma_map(%struct.scsi_cmnd*) #1

declare dso_local i32 @scmd_printk(i32, %struct.scsi_cmnd*, i8*, i32, i32) #1

declare dso_local i32 @scsi_dma_unmap(%struct.scsi_cmnd*) #1

declare dso_local i8* @HOST_BYTE(i32) #1

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @adv_get_sglist(%struct.asc_board*, %struct.TYPE_13__*, %struct.TYPE_14__*, %struct.scsi_cmnd*, i32) #1

declare dso_local i32 @ASC_STATS_ADD(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @ASC_DBG_PRT_ADV_SCSI_REQ_Q(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @ASC_DBG_PRT_CDB(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
