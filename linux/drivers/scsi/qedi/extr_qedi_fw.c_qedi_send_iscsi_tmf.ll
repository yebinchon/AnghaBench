; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw.c_qedi_send_iscsi_tmf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw.c_qedi_send_iscsi_tmf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedi_conn = type { i32, i32, i32, i64, %struct.qedi_endpoint*, %struct.TYPE_3__*, %struct.qedi_ctx* }
%struct.qedi_endpoint = type { %struct.iscsi_tmf_request_hdr* }
%struct.iscsi_tmf_request_hdr = type { i32, i64, i32, %struct.iscsi_tmf_request_hdr*, i64, i64, i64, %struct.iscsi_tmf_request_hdr*, i8*, i32, i32, i8*, %struct.TYPE_4__, i8*, i8* }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.TYPE_3__ = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { i32 }
%struct.qedi_ctx = type { i32, i32 }
%struct.iscsi_task = type { i64, i32, i32, i64 }
%struct.iscsi_task_params = type { i32, i64, i32, %struct.iscsi_task_params*, i64, i64, i64, %struct.iscsi_task_params*, i8*, i32, i32, i8*, %struct.TYPE_4__, i8*, i8* }
%struct.e4_iscsi_task_context = type { i32, i64, i32, %struct.e4_iscsi_task_context*, i64, i64, i64, %struct.e4_iscsi_task_context*, i8*, i32, i32, i8*, %struct.TYPE_4__, i8*, i8* }
%struct.iscsi_tm = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.qedi_cmd = type { i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ISCSI_FLAG_TM_FUNC_MASK = common dso_local global i32 0, align 4
@ISCSI_TM_FUNC_ABORT_TASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Could not get reference task\0A\00", align 1
@ISCSI_RESERVED_TAG = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedi_conn*, %struct.iscsi_task*)* @qedi_send_iscsi_tmf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedi_send_iscsi_tmf(%struct.qedi_conn* %0, %struct.iscsi_task* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qedi_conn*, align 8
  %5 = alloca %struct.iscsi_task*, align 8
  %6 = alloca %struct.iscsi_tmf_request_hdr, align 8
  %7 = alloca %struct.iscsi_task_params, align 8
  %8 = alloca %struct.qedi_ctx*, align 8
  %9 = alloca %struct.e4_iscsi_task_context*, align 8
  %10 = alloca %struct.iscsi_conn*, align 8
  %11 = alloca %struct.iscsi_task*, align 8
  %12 = alloca %struct.iscsi_tm*, align 8
  %13 = alloca %struct.qedi_cmd*, align 8
  %14 = alloca %struct.qedi_cmd*, align 8
  %15 = alloca %struct.qedi_endpoint*, align 8
  %16 = alloca [2 x i32], align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.qedi_conn* %0, %struct.qedi_conn** %4, align 8
  store %struct.iscsi_task* %1, %struct.iscsi_task** %5, align 8
  %20 = load %struct.qedi_conn*, %struct.qedi_conn** %4, align 8
  %21 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %20, i32 0, i32 6
  %22 = load %struct.qedi_ctx*, %struct.qedi_ctx** %21, align 8
  store %struct.qedi_ctx* %22, %struct.qedi_ctx** %8, align 8
  %23 = load %struct.qedi_conn*, %struct.qedi_conn** %4, align 8
  %24 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %23, i32 0, i32 5
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load %struct.iscsi_conn*, %struct.iscsi_conn** %26, align 8
  store %struct.iscsi_conn* %27, %struct.iscsi_conn** %10, align 8
  store i32 0, i32* %17, align 4
  store i64 0, i64* %18, align 8
  store i32 0, i32* %19, align 4
  %28 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %29 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.iscsi_tm*
  store %struct.iscsi_tm* %31, %struct.iscsi_tm** %12, align 8
  %32 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %33 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.qedi_cmd*
  store %struct.qedi_cmd* %35, %struct.qedi_cmd** %13, align 8
  %36 = load %struct.qedi_conn*, %struct.qedi_conn** %4, align 8
  %37 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %36, i32 0, i32 4
  %38 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %37, align 8
  store %struct.qedi_endpoint* %38, %struct.qedi_endpoint** %15, align 8
  %39 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %15, align 8
  %40 = icmp ne %struct.qedi_endpoint* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %2
  %42 = load i32, i32* @ENODEV, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %210

44:                                               ; preds = %2
  %45 = load %struct.qedi_ctx*, %struct.qedi_ctx** %8, align 8
  %46 = call i32 @qedi_get_task_idx(%struct.qedi_ctx* %45)
  store i32 %46, i32* %17, align 4
  %47 = load i32, i32* %17, align 4
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %210

52:                                               ; preds = %44
  %53 = load %struct.qedi_ctx*, %struct.qedi_ctx** %8, align 8
  %54 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %53, i32 0, i32 1
  %55 = load i32, i32* %17, align 4
  %56 = call i64 @qedi_get_task_mem(i32* %54, i32 %55)
  %57 = inttoptr i64 %56 to %struct.e4_iscsi_task_context*
  store %struct.e4_iscsi_task_context* %57, %struct.e4_iscsi_task_context** %9, align 8
  %58 = load %struct.e4_iscsi_task_context*, %struct.e4_iscsi_task_context** %9, align 8
  %59 = bitcast %struct.e4_iscsi_task_context* %58 to %struct.iscsi_tmf_request_hdr*
  %60 = call i32 @memset(%struct.iscsi_tmf_request_hdr* %59, i32 0, i32 120)
  %61 = load i32, i32* %17, align 4
  %62 = load %struct.qedi_cmd*, %struct.qedi_cmd** %13, align 8
  %63 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = bitcast %struct.iscsi_task_params* %7 to %struct.iscsi_tmf_request_hdr*
  %65 = call i32 @memset(%struct.iscsi_tmf_request_hdr* %64, i32 0, i32 120)
  %66 = call i32 @memset(%struct.iscsi_tmf_request_hdr* %6, i32 0, i32 120)
  %67 = load %struct.qedi_ctx*, %struct.qedi_ctx** %8, align 8
  %68 = load i32, i32* %17, align 4
  %69 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %70 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.qedi_cmd*, %struct.qedi_cmd** %13, align 8
  %73 = call i32 @qedi_update_itt_map(%struct.qedi_ctx* %67, i32 %68, i32 %71, %struct.qedi_cmd* %72)
  %74 = load i32, i32* %17, align 4
  %75 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %76 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @get_itt(i32 %77)
  %79 = call i8* @qedi_set_itt(i32 %74, i32 %78)
  %80 = getelementptr inbounds %struct.iscsi_tmf_request_hdr, %struct.iscsi_tmf_request_hdr* %6, i32 0, i32 14
  store i8* %79, i8** %80, align 8
  %81 = load %struct.iscsi_tm*, %struct.iscsi_tm** %12, align 8
  %82 = getelementptr inbounds %struct.iscsi_tm, %struct.iscsi_tm* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 4
  %84 = call i8* @be32_to_cpu(i32 %83)
  %85 = getelementptr inbounds %struct.iscsi_tmf_request_hdr, %struct.iscsi_tmf_request_hdr* %6, i32 0, i32 13
  store i8* %84, i8** %85, align 8
  %86 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %87 = load %struct.iscsi_tm*, %struct.iscsi_tm** %12, align 8
  %88 = getelementptr inbounds %struct.iscsi_tm, %struct.iscsi_tm* %87, i32 0, i32 5
  %89 = call i32 @memcpy(i32* %86, i32* %88, i32 4)
  %90 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = call i8* @be32_to_cpu(i32 %91)
  %93 = getelementptr inbounds %struct.iscsi_tmf_request_hdr, %struct.iscsi_tmf_request_hdr* %6, i32 0, i32 12
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  store i8* %92, i8** %94, align 8
  %95 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = call i8* @be32_to_cpu(i32 %96)
  %98 = getelementptr inbounds %struct.iscsi_tmf_request_hdr, %struct.iscsi_tmf_request_hdr* %6, i32 0, i32 12
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  store i8* %97, i8** %99, align 8
  %100 = load %struct.iscsi_tm*, %struct.iscsi_tm** %12, align 8
  %101 = getelementptr inbounds %struct.iscsi_tm, %struct.iscsi_tm* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @ISCSI_FLAG_TM_FUNC_MASK, align 4
  %104 = and i32 %102, %103
  %105 = load i32, i32* @ISCSI_TM_FUNC_ABORT_TASK, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %138

107:                                              ; preds = %52
  %108 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %109 = load %struct.iscsi_tm*, %struct.iscsi_tm** %12, align 8
  %110 = getelementptr inbounds %struct.iscsi_tm, %struct.iscsi_tm* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = call %struct.iscsi_task* @iscsi_itt_to_task(%struct.iscsi_conn* %108, i32 %111)
  store %struct.iscsi_task* %112, %struct.iscsi_task** %11, align 8
  %113 = load %struct.iscsi_task*, %struct.iscsi_task** %11, align 8
  %114 = icmp ne %struct.iscsi_task* %113, null
  br i1 %114, label %115, label %120

115:                                              ; preds = %107
  %116 = load %struct.iscsi_task*, %struct.iscsi_task** %11, align 8
  %117 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %115, %107
  %121 = load %struct.qedi_ctx*, %struct.qedi_ctx** %8, align 8
  %122 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %121, i32 0, i32 0
  %123 = call i32 @QEDI_ERR(i32* %122, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %210

124:                                              ; preds = %115
  %125 = load %struct.iscsi_task*, %struct.iscsi_task** %11, align 8
  %126 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = inttoptr i64 %127 to %struct.qedi_cmd*
  store %struct.qedi_cmd* %128, %struct.qedi_cmd** %14, align 8
  %129 = load %struct.qedi_cmd*, %struct.qedi_cmd** %14, align 8
  %130 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.iscsi_tm*, %struct.iscsi_tm** %12, align 8
  %133 = getelementptr inbounds %struct.iscsi_tm, %struct.iscsi_tm* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @get_itt(i32 %134)
  %136 = call i8* @qedi_set_itt(i32 %131, i32 %135)
  %137 = getelementptr inbounds %struct.iscsi_tmf_request_hdr, %struct.iscsi_tmf_request_hdr* %6, i32 0, i32 11
  store i8* %136, i8** %137, align 8
  br label %141

138:                                              ; preds = %52
  %139 = load i8*, i8** @ISCSI_RESERVED_TAG, align 8
  %140 = getelementptr inbounds %struct.iscsi_tmf_request_hdr, %struct.iscsi_tmf_request_hdr* %6, i32 0, i32 11
  store i8* %139, i8** %140, align 8
  br label %141

141:                                              ; preds = %138, %124
  %142 = load %struct.iscsi_tm*, %struct.iscsi_tm** %12, align 8
  %143 = getelementptr inbounds %struct.iscsi_tm, %struct.iscsi_tm* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = getelementptr inbounds %struct.iscsi_tmf_request_hdr, %struct.iscsi_tmf_request_hdr* %6, i32 0, i32 10
  store i32 %144, i32* %145, align 4
  %146 = load %struct.iscsi_tm*, %struct.iscsi_tm** %12, align 8
  %147 = getelementptr inbounds %struct.iscsi_tm, %struct.iscsi_tm* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = getelementptr inbounds %struct.iscsi_tmf_request_hdr, %struct.iscsi_tmf_request_hdr* %6, i32 0, i32 0
  store i32 %148, i32* %149, align 8
  %150 = load %struct.iscsi_tm*, %struct.iscsi_tm** %12, align 8
  %151 = getelementptr inbounds %struct.iscsi_tm, %struct.iscsi_tm* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @ntoh24(i32 %152)
  %154 = getelementptr inbounds %struct.iscsi_tmf_request_hdr, %struct.iscsi_tmf_request_hdr* %6, i32 0, i32 9
  store i32 %153, i32* %154, align 8
  %155 = load %struct.iscsi_tm*, %struct.iscsi_tm** %12, align 8
  %156 = getelementptr inbounds %struct.iscsi_tm, %struct.iscsi_tm* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i8* @be32_to_cpu(i32 %157)
  %159 = getelementptr inbounds %struct.iscsi_tmf_request_hdr, %struct.iscsi_tmf_request_hdr* %6, i32 0, i32 8
  store i8* %158, i8** %159, align 8
  %160 = load %struct.e4_iscsi_task_context*, %struct.e4_iscsi_task_context** %9, align 8
  %161 = bitcast %struct.e4_iscsi_task_context* %160 to %struct.iscsi_task_params*
  %162 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %7, i32 0, i32 7
  store %struct.iscsi_task_params* %161, %struct.iscsi_task_params** %162, align 8
  %163 = load %struct.qedi_conn*, %struct.qedi_conn** %4, align 8
  %164 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %163, i32 0, i32 3
  %165 = load i64, i64* %164, align 8
  %166 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %7, i32 0, i32 1
  store i64 %165, i64* %166, align 8
  %167 = load i32, i32* %17, align 4
  %168 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %7, i32 0, i32 2
  store i32 %167, i32* %168, align 8
  %169 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %7, i32 0, i32 6
  store i64 0, i64* %169, align 8
  %170 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %7, i32 0, i32 5
  store i64 0, i64* %170, align 8
  %171 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %7, i32 0, i32 4
  store i64 0, i64* %171, align 8
  %172 = load %struct.qedi_conn*, %struct.qedi_conn** %4, align 8
  %173 = call i64 @qedi_get_wqe_idx(%struct.qedi_conn* %172)
  store i64 %173, i64* %18, align 8
  %174 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %15, align 8
  %175 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %174, i32 0, i32 0
  %176 = load %struct.iscsi_tmf_request_hdr*, %struct.iscsi_tmf_request_hdr** %175, align 8
  %177 = load i64, i64* %18, align 8
  %178 = getelementptr inbounds %struct.iscsi_tmf_request_hdr, %struct.iscsi_tmf_request_hdr* %176, i64 %177
  %179 = bitcast %struct.iscsi_tmf_request_hdr* %178 to %struct.iscsi_task_params*
  %180 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %7, i32 0, i32 3
  store %struct.iscsi_task_params* %179, %struct.iscsi_task_params** %180, align 8
  %181 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %7, i32 0, i32 3
  %182 = load %struct.iscsi_task_params*, %struct.iscsi_task_params** %181, align 8
  %183 = bitcast %struct.iscsi_task_params* %182 to %struct.iscsi_tmf_request_hdr*
  %184 = call i32 @memset(%struct.iscsi_tmf_request_hdr* %183, i32 0, i32 4)
  %185 = bitcast %struct.iscsi_task_params* %7 to %struct.iscsi_tmf_request_hdr*
  %186 = call i32 @init_initiator_tmf_request_task(%struct.iscsi_tmf_request_hdr* %185, %struct.iscsi_tmf_request_hdr* %6)
  store i32 %186, i32* %19, align 4
  %187 = load i32, i32* %19, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %141
  store i32 -1, i32* %3, align 4
  br label %210

190:                                              ; preds = %141
  %191 = load %struct.qedi_conn*, %struct.qedi_conn** %4, align 8
  %192 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %191, i32 0, i32 0
  %193 = call i32 @spin_lock(i32* %192)
  %194 = load %struct.qedi_cmd*, %struct.qedi_cmd** %13, align 8
  %195 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %194, i32 0, i32 2
  %196 = load %struct.qedi_conn*, %struct.qedi_conn** %4, align 8
  %197 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %196, i32 0, i32 2
  %198 = call i32 @list_add_tail(i32* %195, i32* %197)
  %199 = load %struct.qedi_cmd*, %struct.qedi_cmd** %13, align 8
  %200 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %199, i32 0, i32 1
  store i32 1, i32* %200, align 4
  %201 = load %struct.qedi_conn*, %struct.qedi_conn** %4, align 8
  %202 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %202, align 4
  %205 = load %struct.qedi_conn*, %struct.qedi_conn** %4, align 8
  %206 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %205, i32 0, i32 0
  %207 = call i32 @spin_unlock(i32* %206)
  %208 = load %struct.qedi_conn*, %struct.qedi_conn** %4, align 8
  %209 = call i32 @qedi_ring_doorbell(%struct.qedi_conn* %208)
  store i32 0, i32* %3, align 4
  br label %210

210:                                              ; preds = %190, %189, %120, %49, %41
  %211 = load i32, i32* %3, align 4
  ret i32 %211
}

declare dso_local i32 @qedi_get_task_idx(%struct.qedi_ctx*) #1

declare dso_local i64 @qedi_get_task_mem(i32*, i32) #1

declare dso_local i32 @memset(%struct.iscsi_tmf_request_hdr*, i32, i32) #1

declare dso_local i32 @qedi_update_itt_map(%struct.qedi_ctx*, i32, i32, %struct.qedi_cmd*) #1

declare dso_local i8* @qedi_set_itt(i32, i32) #1

declare dso_local i32 @get_itt(i32) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local %struct.iscsi_task* @iscsi_itt_to_task(%struct.iscsi_conn*, i32) #1

declare dso_local i32 @QEDI_ERR(i32*, i8*) #1

declare dso_local i32 @ntoh24(i32) #1

declare dso_local i64 @qedi_get_wqe_idx(%struct.qedi_conn*) #1

declare dso_local i32 @init_initiator_tmf_request_task(%struct.iscsi_tmf_request_hdr*, %struct.iscsi_tmf_request_hdr*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @qedi_ring_doorbell(%struct.qedi_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
