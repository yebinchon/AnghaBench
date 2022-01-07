; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_io.c_qedf_init_mp_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_io.c_qedf_init_mp_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedf_ioreq = type { %struct.TYPE_4__*, i8*, i32, %struct.scsi_sgl_task_params*, i32, %struct.qedf_rport*, %struct.qedf_mp_req }
%struct.TYPE_4__ = type { i32, i64, i32, i32, i8*, i8*, i32, %struct.fcoe_wqe*, %struct.scsi_sgl_task_params* }
%struct.scsi_sgl_task_params = type { i32, i64, i8*, %struct.TYPE_3__, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i8*, i8* }
%struct.qedf_rport = type { i32, i32, %struct.qedf_ctx* }
%struct.qedf_ctx = type { i32, i32 }
%struct.qedf_mp_req = type { i32, i32, i32, i32, %struct.fc_frame_header }
%struct.fc_frame_header = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.e4_fcoe_task_context = type { i32, i64, i8*, %struct.TYPE_3__, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fcoe_wqe = type { i32 }
%struct.fcoe_tx_mid_path_params = type { i32, i64, i8*, %struct.TYPE_3__, i32, i32, i32, i32, i32, i32, i32, i32 }

@QEDF_LOG_DISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Initializing MP task for cmd_type=%d\0A\00", align 1
@FCOE_TASK_TYPE_MIDPATH = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qedf_init_mp_task(%struct.qedf_ioreq* %0, %struct.e4_fcoe_task_context* %1, %struct.fcoe_wqe* %2) #0 {
  %4 = alloca %struct.qedf_ioreq*, align 8
  %5 = alloca %struct.e4_fcoe_task_context*, align 8
  %6 = alloca %struct.fcoe_wqe*, align 8
  %7 = alloca %struct.qedf_mp_req*, align 8
  %8 = alloca %struct.qedf_rport*, align 8
  %9 = alloca %struct.qedf_ctx*, align 8
  %10 = alloca %struct.fc_frame_header*, align 8
  %11 = alloca %struct.fcoe_tx_mid_path_params, align 8
  %12 = alloca %struct.scsi_sgl_task_params, align 8
  %13 = alloca %struct.scsi_sgl_task_params, align 8
  store %struct.qedf_ioreq* %0, %struct.qedf_ioreq** %4, align 8
  store %struct.e4_fcoe_task_context* %1, %struct.e4_fcoe_task_context** %5, align 8
  store %struct.fcoe_wqe* %2, %struct.fcoe_wqe** %6, align 8
  %14 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %15 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %14, i32 0, i32 6
  store %struct.qedf_mp_req* %15, %struct.qedf_mp_req** %7, align 8
  %16 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %17 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %16, i32 0, i32 5
  %18 = load %struct.qedf_rport*, %struct.qedf_rport** %17, align 8
  store %struct.qedf_rport* %18, %struct.qedf_rport** %8, align 8
  %19 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %20 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %19, i32 0, i32 5
  %21 = load %struct.qedf_rport*, %struct.qedf_rport** %20, align 8
  %22 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %21, i32 0, i32 2
  %23 = load %struct.qedf_ctx*, %struct.qedf_ctx** %22, align 8
  store %struct.qedf_ctx* %23, %struct.qedf_ctx** %9, align 8
  %24 = load %struct.qedf_ctx*, %struct.qedf_ctx** %9, align 8
  %25 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %24, i32 0, i32 1
  %26 = load i32, i32* @QEDF_LOG_DISC, align 4
  %27 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %28 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @QEDF_INFO(i32* %25, i32 %26, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.qedf_ctx*, %struct.qedf_ctx** %9, align 8
  %32 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  %35 = call i32 @memset(%struct.scsi_sgl_task_params* %12, i32 0, i32 72)
  %36 = call i32 @memset(%struct.scsi_sgl_task_params* %13, i32 0, i32 72)
  %37 = load %struct.e4_fcoe_task_context*, %struct.e4_fcoe_task_context** %5, align 8
  %38 = bitcast %struct.e4_fcoe_task_context* %37 to %struct.scsi_sgl_task_params*
  %39 = call i32 @memset(%struct.scsi_sgl_task_params* %38, i32 0, i32 72)
  %40 = bitcast %struct.fcoe_tx_mid_path_params* %11 to %struct.scsi_sgl_task_params*
  %41 = call i32 @memset(%struct.scsi_sgl_task_params* %40, i32 0, i32 72)
  %42 = load %struct.e4_fcoe_task_context*, %struct.e4_fcoe_task_context** %5, align 8
  %43 = bitcast %struct.e4_fcoe_task_context* %42 to %struct.scsi_sgl_task_params*
  %44 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %45 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %44, i32 0, i32 3
  store %struct.scsi_sgl_task_params* %43, %struct.scsi_sgl_task_params** %45, align 8
  %46 = load %struct.e4_fcoe_task_context*, %struct.e4_fcoe_task_context** %5, align 8
  %47 = bitcast %struct.e4_fcoe_task_context* %46 to %struct.scsi_sgl_task_params*
  %48 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %49 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 8
  store %struct.scsi_sgl_task_params* %47, %struct.scsi_sgl_task_params** %51, align 8
  %52 = load %struct.fcoe_wqe*, %struct.fcoe_wqe** %6, align 8
  %53 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %54 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 7
  store %struct.fcoe_wqe* %52, %struct.fcoe_wqe** %56, align 8
  %57 = load i32, i32* @FCOE_TASK_TYPE_MIDPATH, align 4
  %58 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %59 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 6
  store i32 %57, i32* %61, align 8
  %62 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %63 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %66 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 5
  store i8* %64, i8** %68, align 8
  %69 = load i8*, i8** @PAGE_SIZE, align 8
  %70 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %71 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 4
  store i8* %69, i8** %73, align 8
  %74 = load %struct.qedf_rport*, %struct.qedf_rport** %8, align 8
  %75 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %78 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 3
  store i32 %76, i32* %80, align 4
  %81 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %82 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %85 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %84, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  store i32 %83, i32* %87, align 8
  %88 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %89 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %88, i32 0, i32 0
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  store i64 0, i64* %91, align 8
  %92 = load %struct.qedf_rport*, %struct.qedf_rport** %8, align 8
  %93 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %96 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %95, i32 0, i32 0
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  store i32 %94, i32* %98, align 8
  %99 = load %struct.qedf_mp_req*, %struct.qedf_mp_req** %7, align 8
  %100 = getelementptr inbounds %struct.qedf_mp_req, %struct.qedf_mp_req* %99, i32 0, i32 4
  store %struct.fc_frame_header* %100, %struct.fc_frame_header** %10, align 8
  %101 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %102 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.fc_frame_header*, %struct.fc_frame_header** %10, align 8
  %105 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 4
  %106 = call i32 @htons(i32 65535)
  %107 = load %struct.fc_frame_header*, %struct.fc_frame_header** %10, align 8
  %108 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = load %struct.fc_frame_header*, %struct.fc_frame_header** %10, align 8
  %110 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %109, i32 0, i32 6
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds %struct.fcoe_tx_mid_path_params, %struct.fcoe_tx_mid_path_params* %11, i32 0, i32 11
  store i32 %111, i32* %112, align 4
  %113 = load %struct.fc_frame_header*, %struct.fc_frame_header** %10, align 8
  %114 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.fcoe_tx_mid_path_params, %struct.fcoe_tx_mid_path_params* %11, i32 0, i32 10
  store i32 %115, i32* %116, align 8
  %117 = load %struct.fc_frame_header*, %struct.fc_frame_header** %10, align 8
  %118 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = getelementptr inbounds %struct.fcoe_tx_mid_path_params, %struct.fcoe_tx_mid_path_params* %11, i32 0, i32 9
  store i32 %119, i32* %120, align 4
  %121 = load %struct.fc_frame_header*, %struct.fc_frame_header** %10, align 8
  %122 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds %struct.fcoe_tx_mid_path_params, %struct.fcoe_tx_mid_path_params* %11, i32 0, i32 8
  store i32 %123, i32* %124, align 8
  %125 = load %struct.fc_frame_header*, %struct.fc_frame_header** %10, align 8
  %126 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = getelementptr inbounds %struct.fcoe_tx_mid_path_params, %struct.fcoe_tx_mid_path_params* %11, i32 0, i32 7
  store i32 %127, i32* %128, align 4
  %129 = load %struct.fc_frame_header*, %struct.fc_frame_header** %10, align 8
  %130 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = getelementptr inbounds %struct.fcoe_tx_mid_path_params, %struct.fcoe_tx_mid_path_params* %11, i32 0, i32 6
  store i32 %131, i32* %132, align 8
  %133 = load %struct.fc_frame_header*, %struct.fc_frame_header** %10, align 8
  %134 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = getelementptr inbounds %struct.fcoe_tx_mid_path_params, %struct.fcoe_tx_mid_path_params* %11, i32 0, i32 5
  store i32 %135, i32* %136, align 4
  %137 = load %struct.qedf_mp_req*, %struct.qedf_mp_req** %7, align 8
  %138 = getelementptr inbounds %struct.qedf_mp_req, %struct.qedf_mp_req* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %12, i32 0, i32 4
  store i32 %139, i32* %140, align 8
  %141 = load %struct.qedf_mp_req*, %struct.qedf_mp_req** %7, align 8
  %142 = getelementptr inbounds %struct.qedf_mp_req, %struct.qedf_mp_req* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = call i8* @U64_LO(i32 %143)
  %145 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %12, i32 0, i32 3
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 1
  store i8* %144, i8** %146, align 8
  %147 = load %struct.qedf_mp_req*, %struct.qedf_mp_req** %7, align 8
  %148 = getelementptr inbounds %struct.qedf_mp_req, %struct.qedf_mp_req* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = call i8* @U64_HI(i32 %149)
  %151 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %12, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 0
  store i8* %150, i8** %152, align 8
  %153 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %12, i32 0, i32 0
  store i32 1, i32* %153, align 8
  %154 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %155 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %154, i32 0, i32 1
  %156 = load i8*, i8** %155, align 8
  %157 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %12, i32 0, i32 2
  store i8* %156, i8** %157, align 8
  %158 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %12, i32 0, i32 1
  store i64 0, i64* %158, align 8
  %159 = load %struct.qedf_mp_req*, %struct.qedf_mp_req** %7, align 8
  %160 = getelementptr inbounds %struct.qedf_mp_req, %struct.qedf_mp_req* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %13, i32 0, i32 4
  store i32 %161, i32* %162, align 8
  %163 = load %struct.qedf_mp_req*, %struct.qedf_mp_req** %7, align 8
  %164 = getelementptr inbounds %struct.qedf_mp_req, %struct.qedf_mp_req* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i8* @U64_LO(i32 %165)
  %167 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %13, i32 0, i32 3
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 1
  store i8* %166, i8** %168, align 8
  %169 = load %struct.qedf_mp_req*, %struct.qedf_mp_req** %7, align 8
  %170 = getelementptr inbounds %struct.qedf_mp_req, %struct.qedf_mp_req* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i8* @U64_HI(i32 %171)
  %173 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %13, i32 0, i32 3
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 0
  store i8* %172, i8** %174, align 8
  %175 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %13, i32 0, i32 0
  store i32 1, i32* %175, align 8
  %176 = load i8*, i8** @PAGE_SIZE, align 8
  %177 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %13, i32 0, i32 2
  store i8* %176, i8** %177, align 8
  %178 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %13, i32 0, i32 1
  store i64 0, i64* %178, align 8
  %179 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %180 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %179, i32 0, i32 0
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %180, align 8
  %182 = bitcast %struct.fcoe_tx_mid_path_params* %11 to %struct.scsi_sgl_task_params*
  %183 = call i32 @init_initiator_midpath_unsolicited_fcoe_task(%struct.TYPE_4__* %181, %struct.scsi_sgl_task_params* %182, %struct.scsi_sgl_task_params* %12, %struct.scsi_sgl_task_params* %13, i32 0)
  ret void
}

declare dso_local i32 @QEDF_INFO(i32*, i32, i8*, i32) #1

declare dso_local i32 @memset(%struct.scsi_sgl_task_params*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i8* @U64_LO(i32) #1

declare dso_local i8* @U64_HI(i32) #1

declare dso_local i32 @init_initiator_midpath_unsolicited_fcoe_task(%struct.TYPE_4__*, %struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
