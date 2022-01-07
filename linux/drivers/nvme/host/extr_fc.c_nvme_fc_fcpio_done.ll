; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c_nvme_fc_fcpio_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c_nvme_fc_fcpio_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmefc_fcp_req = type { i32, i32, i32, i32 }
%struct.nvme_fc_fcp_op = type { i32, i32, %struct.TYPE_9__, %struct.TYPE_8__, %struct.nvmefc_fcp_req, %struct.nvme_fc_queue*, %struct.nvme_fc_ctrl*, %struct.request* }
%struct.TYPE_9__ = type { i32, i32, i32, %struct.nvme_completion }
%struct.nvme_completion = type { i64, %union.nvme_result, i32 }
%union.nvme_result = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.nvme_command }
%struct.nvme_command = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.nvme_fc_queue = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.nvme_fc_ctrl = type { i32, %struct.TYPE_11__, %struct.TYPE_7__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.request = type { i32 }

@NVME_SC_SUCCESS = common dso_local global i32 0, align 4
@FCPOP_STATE_COMPLETE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@FCPOP_STATE_ABORTED = common dso_local global i32 0, align 4
@NVME_SC_HOST_PATH_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"NVME-FC{%d}: io failed due to lldd error %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [70 x i8] c"NVME-FC{%d}: io failed due to bad transfer length: %d vs expected %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [106 x i8] c"NVME-FC{%d}: io failed due to bad NVMe_ERSP: iu len %d, xfr len %d vs %d, status code %d, cmdid %d vs %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"NVME-FC{%d}: io failed due to odd NVMe_xRSP iu len %d\0A\00", align 1
@FCOP_FLAGS_AEN = common dso_local global i32 0, align 4
@FCPOP_STATE_IDLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"transport detected io error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvmefc_fcp_req*)* @nvme_fc_fcpio_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_fc_fcpio_done(%struct.nvmefc_fcp_req* %0) #0 {
  %2 = alloca %struct.nvmefc_fcp_req*, align 8
  %3 = alloca %struct.nvme_fc_fcp_op*, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca %struct.nvmefc_fcp_req*, align 8
  %6 = alloca %struct.nvme_fc_ctrl*, align 8
  %7 = alloca %struct.nvme_fc_queue*, align 8
  %8 = alloca %struct.nvme_completion*, align 8
  %9 = alloca %struct.nvme_command*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %union.nvme_result, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nvmefc_fcp_req* %0, %struct.nvmefc_fcp_req** %2, align 8
  %14 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %2, align 8
  %15 = call %struct.nvme_fc_fcp_op* @fcp_req_to_fcp_op(%struct.nvmefc_fcp_req* %14)
  store %struct.nvme_fc_fcp_op* %15, %struct.nvme_fc_fcp_op** %3, align 8
  %16 = load %struct.nvme_fc_fcp_op*, %struct.nvme_fc_fcp_op** %3, align 8
  %17 = getelementptr inbounds %struct.nvme_fc_fcp_op, %struct.nvme_fc_fcp_op* %16, i32 0, i32 7
  %18 = load %struct.request*, %struct.request** %17, align 8
  store %struct.request* %18, %struct.request** %4, align 8
  %19 = load %struct.nvme_fc_fcp_op*, %struct.nvme_fc_fcp_op** %3, align 8
  %20 = getelementptr inbounds %struct.nvme_fc_fcp_op, %struct.nvme_fc_fcp_op* %19, i32 0, i32 4
  store %struct.nvmefc_fcp_req* %20, %struct.nvmefc_fcp_req** %5, align 8
  %21 = load %struct.nvme_fc_fcp_op*, %struct.nvme_fc_fcp_op** %3, align 8
  %22 = getelementptr inbounds %struct.nvme_fc_fcp_op, %struct.nvme_fc_fcp_op* %21, i32 0, i32 6
  %23 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %22, align 8
  store %struct.nvme_fc_ctrl* %23, %struct.nvme_fc_ctrl** %6, align 8
  %24 = load %struct.nvme_fc_fcp_op*, %struct.nvme_fc_fcp_op** %3, align 8
  %25 = getelementptr inbounds %struct.nvme_fc_fcp_op, %struct.nvme_fc_fcp_op* %24, i32 0, i32 5
  %26 = load %struct.nvme_fc_queue*, %struct.nvme_fc_queue** %25, align 8
  store %struct.nvme_fc_queue* %26, %struct.nvme_fc_queue** %7, align 8
  %27 = load %struct.nvme_fc_fcp_op*, %struct.nvme_fc_fcp_op** %3, align 8
  %28 = getelementptr inbounds %struct.nvme_fc_fcp_op, %struct.nvme_fc_fcp_op* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 3
  store %struct.nvme_completion* %29, %struct.nvme_completion** %8, align 8
  %30 = load %struct.nvme_fc_fcp_op*, %struct.nvme_fc_fcp_op** %3, align 8
  %31 = getelementptr inbounds %struct.nvme_fc_fcp_op, %struct.nvme_fc_fcp_op* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  store %struct.nvme_command* %32, %struct.nvme_command** %9, align 8
  %33 = load i32, i32* @NVME_SC_SUCCESS, align 4
  %34 = shl i32 %33, 1
  %35 = call i64 @cpu_to_le16(i32 %34)
  store i64 %35, i64* %10, align 8
  store i32 1, i32* %12, align 4
  %36 = load %struct.nvme_fc_fcp_op*, %struct.nvme_fc_fcp_op** %3, align 8
  %37 = getelementptr inbounds %struct.nvme_fc_fcp_op, %struct.nvme_fc_fcp_op* %36, i32 0, i32 1
  %38 = load i32, i32* @FCPOP_STATE_COMPLETE, align 4
  %39 = call i32 @atomic_xchg(i32* %37, i32 %38)
  store i32 %39, i32* %13, align 4
  %40 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %6, align 8
  %41 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %40, i32 0, i32 2
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.nvme_fc_fcp_op*, %struct.nvme_fc_fcp_op** %3, align 8
  %46 = getelementptr inbounds %struct.nvme_fc_fcp_op, %struct.nvme_fc_fcp_op* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %50 = call i32 @fc_dma_sync_single_for_cpu(i32 %44, i32 %48, i32 32, i32 %49)
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* @FCPOP_STATE_ABORTED, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %1
  %55 = load i32, i32* @NVME_SC_HOST_PATH_ERROR, align 4
  %56 = shl i32 %55, 1
  %57 = call i64 @cpu_to_le16(i32 %56)
  store i64 %57, i64* %10, align 8
  br label %79

58:                                               ; preds = %1
  %59 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %5, align 8
  %60 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %58
  %64 = load i32, i32* @NVME_SC_HOST_PATH_ERROR, align 4
  %65 = shl i32 %64, 1
  %66 = call i64 @cpu_to_le16(i32 %65)
  store i64 %66, i64* %10, align 8
  %67 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %6, align 8
  %68 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %6, align 8
  %72 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %5, align 8
  %75 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (i32, i8*, i32, i32, ...) @dev_info(i32 %70, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %76)
  br label %78

78:                                               ; preds = %63, %58
  br label %79

79:                                               ; preds = %78, %54
  %80 = load i64, i64* %10, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  br label %220

83:                                               ; preds = %79
  %84 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %5, align 8
  %85 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  switch i32 %86, label %204 [
    i32 0, label %87
    i32 128, label %87
    i32 4, label %119
  ]

87:                                               ; preds = %83, %83
  %88 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %5, align 8
  %89 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.nvme_fc_fcp_op*, %struct.nvme_fc_fcp_op** %3, align 8
  %92 = getelementptr inbounds %struct.nvme_fc_fcp_op, %struct.nvme_fc_fcp_op* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @be32_to_cpu(i32 %94)
  %96 = icmp ne i32 %90, %95
  br i1 %96, label %97, label %117

97:                                               ; preds = %87
  %98 = load i32, i32* @NVME_SC_HOST_PATH_ERROR, align 4
  %99 = shl i32 %98, 1
  %100 = call i64 @cpu_to_le16(i32 %99)
  store i64 %100, i64* %10, align 8
  %101 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %6, align 8
  %102 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %6, align 8
  %106 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %5, align 8
  %109 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.nvme_fc_fcp_op*, %struct.nvme_fc_fcp_op** %3, align 8
  %112 = getelementptr inbounds %struct.nvme_fc_fcp_op, %struct.nvme_fc_fcp_op* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @be32_to_cpu(i32 %114)
  %116 = call i32 (i32, i8*, i32, i32, ...) @dev_info(i32 %104, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 %107, i32 %110, i32 %115)
  br label %220

117:                                              ; preds = %87
  %118 = bitcast %union.nvme_result* %11 to i32*
  store i32 0, i32* %118, align 4
  br label %219

119:                                              ; preds = %83
  %120 = load %struct.nvme_fc_fcp_op*, %struct.nvme_fc_fcp_op** %3, align 8
  %121 = getelementptr inbounds %struct.nvme_fc_fcp_op, %struct.nvme_fc_fcp_op* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @be16_to_cpu(i32 %123)
  %125 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %5, align 8
  %126 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = sdiv i32 %127, 4
  %129 = icmp ne i32 %124, %128
  br i1 %129, label %155, label %130

130:                                              ; preds = %119
  %131 = load %struct.nvme_fc_fcp_op*, %struct.nvme_fc_fcp_op** %3, align 8
  %132 = getelementptr inbounds %struct.nvme_fc_fcp_op, %struct.nvme_fc_fcp_op* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @be32_to_cpu(i32 %134)
  %136 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %5, align 8
  %137 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %135, %138
  br i1 %139, label %155, label %140

140:                                              ; preds = %130
  %141 = load %struct.nvme_fc_fcp_op*, %struct.nvme_fc_fcp_op** %3, align 8
  %142 = getelementptr inbounds %struct.nvme_fc_fcp_op, %struct.nvme_fc_fcp_op* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %155, label %146

146:                                              ; preds = %140
  %147 = load %struct.nvme_command*, %struct.nvme_command** %9, align 8
  %148 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.nvme_completion*, %struct.nvme_completion** %8, align 8
  %152 = getelementptr inbounds %struct.nvme_completion, %struct.nvme_completion* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = icmp ne i32 %150, %153
  br label %155

155:                                              ; preds = %146, %140, %130, %119
  %156 = phi i1 [ true, %140 ], [ true, %130 ], [ true, %119 ], [ %154, %146 ]
  %157 = zext i1 %156 to i32
  %158 = call i32 @unlikely(i32 %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %196

160:                                              ; preds = %155
  %161 = load i32, i32* @NVME_SC_HOST_PATH_ERROR, align 4
  %162 = shl i32 %161, 1
  %163 = call i64 @cpu_to_le16(i32 %162)
  store i64 %163, i64* %10, align 8
  %164 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %6, align 8
  %165 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %6, align 8
  %169 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.nvme_fc_fcp_op*, %struct.nvme_fc_fcp_op** %3, align 8
  %172 = getelementptr inbounds %struct.nvme_fc_fcp_op, %struct.nvme_fc_fcp_op* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @be16_to_cpu(i32 %174)
  %176 = load %struct.nvme_fc_fcp_op*, %struct.nvme_fc_fcp_op** %3, align 8
  %177 = getelementptr inbounds %struct.nvme_fc_fcp_op, %struct.nvme_fc_fcp_op* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @be32_to_cpu(i32 %179)
  %181 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %5, align 8
  %182 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.nvme_fc_fcp_op*, %struct.nvme_fc_fcp_op** %3, align 8
  %185 = getelementptr inbounds %struct.nvme_fc_fcp_op, %struct.nvme_fc_fcp_op* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.nvme_command*, %struct.nvme_command** %9, align 8
  %189 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.nvme_completion*, %struct.nvme_completion** %8, align 8
  %193 = getelementptr inbounds %struct.nvme_completion, %struct.nvme_completion* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  %195 = call i32 (i32, i8*, i32, i32, ...) @dev_info(i32 %167, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.2, i64 0, i64 0), i32 %170, i32 %175, i32 %180, i32 %183, i32 %187, i32 %191, i32 %194)
  br label %220

196:                                              ; preds = %155
  %197 = load %struct.nvme_completion*, %struct.nvme_completion** %8, align 8
  %198 = getelementptr inbounds %struct.nvme_completion, %struct.nvme_completion* %197, i32 0, i32 1
  %199 = bitcast %union.nvme_result* %11 to i8*
  %200 = bitcast %union.nvme_result* %198 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %199, i8* align 8 %200, i64 4, i1 false)
  %201 = load %struct.nvme_completion*, %struct.nvme_completion** %8, align 8
  %202 = getelementptr inbounds %struct.nvme_completion, %struct.nvme_completion* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  store i64 %203, i64* %10, align 8
  br label %219

204:                                              ; preds = %83
  %205 = load i32, i32* @NVME_SC_HOST_PATH_ERROR, align 4
  %206 = shl i32 %205, 1
  %207 = call i64 @cpu_to_le16(i32 %206)
  store i64 %207, i64* %10, align 8
  %208 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %6, align 8
  %209 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %6, align 8
  %213 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %5, align 8
  %216 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = call i32 (i32, i8*, i32, i32, ...) @dev_info(i32 %211, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i32 %214, i32 %217)
  br label %220

219:                                              ; preds = %196, %117
  store i32 0, i32* %12, align 4
  br label %220

220:                                              ; preds = %219, %204, %160, %97, %82
  %221 = load %struct.nvme_fc_fcp_op*, %struct.nvme_fc_fcp_op** %3, align 8
  %222 = getelementptr inbounds %struct.nvme_fc_fcp_op, %struct.nvme_fc_fcp_op* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* @FCOP_FLAGS_AEN, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %247

227:                                              ; preds = %220
  %228 = load %struct.nvme_fc_queue*, %struct.nvme_fc_queue** %7, align 8
  %229 = getelementptr inbounds %struct.nvme_fc_queue, %struct.nvme_fc_queue* %228, i32 0, i32 0
  %230 = load %struct.TYPE_12__*, %struct.TYPE_12__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %230, i32 0, i32 0
  %232 = load i64, i64* %10, align 8
  %233 = call i32 @nvme_complete_async_event(i32* %231, i64 %232, %union.nvme_result* %11)
  %234 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %6, align 8
  %235 = load %struct.nvme_fc_fcp_op*, %struct.nvme_fc_fcp_op** %3, align 8
  %236 = load i32, i32* %13, align 4
  %237 = call i32 @__nvme_fc_fcpop_chk_teardowns(%struct.nvme_fc_ctrl* %234, %struct.nvme_fc_fcp_op* %235, i32 %236)
  %238 = load %struct.nvme_fc_fcp_op*, %struct.nvme_fc_fcp_op** %3, align 8
  %239 = getelementptr inbounds %struct.nvme_fc_fcp_op, %struct.nvme_fc_fcp_op* %238, i32 0, i32 1
  %240 = load i32, i32* @FCPOP_STATE_IDLE, align 4
  %241 = call i32 @atomic_set(i32* %239, i32 %240)
  %242 = load i32, i32* @FCOP_FLAGS_AEN, align 4
  %243 = load %struct.nvme_fc_fcp_op*, %struct.nvme_fc_fcp_op** %3, align 8
  %244 = getelementptr inbounds %struct.nvme_fc_fcp_op, %struct.nvme_fc_fcp_op* %243, i32 0, i32 0
  store i32 %242, i32* %244, align 8
  %245 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %6, align 8
  %246 = call i32 @nvme_fc_ctrl_put(%struct.nvme_fc_ctrl* %245)
  br label %257

247:                                              ; preds = %220
  %248 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %6, align 8
  %249 = load %struct.nvme_fc_fcp_op*, %struct.nvme_fc_fcp_op** %3, align 8
  %250 = load i32, i32* %13, align 4
  %251 = call i32 @__nvme_fc_fcpop_chk_teardowns(%struct.nvme_fc_ctrl* %248, %struct.nvme_fc_fcp_op* %249, i32 %250)
  %252 = load %struct.request*, %struct.request** %4, align 8
  %253 = load i64, i64* %10, align 8
  %254 = getelementptr inbounds %union.nvme_result, %union.nvme_result* %11, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = call i32 @nvme_end_request(%struct.request* %252, i64 %253, i32 %255)
  br label %257

257:                                              ; preds = %247, %227
  %258 = load i32, i32* %12, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %263

260:                                              ; preds = %257
  %261 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %6, align 8
  %262 = call i32 @nvme_fc_error_recovery(%struct.nvme_fc_ctrl* %261, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %263

263:                                              ; preds = %260, %257
  ret void
}

declare dso_local %struct.nvme_fc_fcp_op* @fcp_req_to_fcp_op(%struct.nvmefc_fcp_req*) #1

declare dso_local i64 @cpu_to_le16(i32) #1

declare dso_local i32 @atomic_xchg(i32*, i32) #1

declare dso_local i32 @fc_dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @nvme_complete_async_event(i32*, i64, %union.nvme_result*) #1

declare dso_local i32 @__nvme_fc_fcpop_chk_teardowns(%struct.nvme_fc_ctrl*, %struct.nvme_fc_fcp_op*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @nvme_fc_ctrl_put(%struct.nvme_fc_ctrl*) #1

declare dso_local i32 @nvme_end_request(%struct.request*, i64, i32) #1

declare dso_local i32 @nvme_fc_error_recovery(%struct.nvme_fc_ctrl*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
