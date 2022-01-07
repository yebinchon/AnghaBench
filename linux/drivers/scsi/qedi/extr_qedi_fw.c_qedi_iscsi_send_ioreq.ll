; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw.c_qedi_iscsi_send_ioreq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw.c_qedi_iscsi_send_ioreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_task = type { i32, i64, %struct.scsi_cmnd*, %struct.qedi_cmd*, %struct.iscsi_conn* }
%struct.scsi_cmnd = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.qedi_cmd = type { i32, i32, i32, %struct.TYPE_8__, i64, i64 }
%struct.TYPE_8__ = type { i32, i64, i32 }
%struct.iscsi_conn = type { %struct.iscsi_session*, i32, %struct.qedi_conn* }
%struct.iscsi_session = type { i64, i64, i32, i32, i32 }
%struct.qedi_conn = type { i32, i32, i32, i64, %struct.iscsi_cls_conn*, %struct.qedi_endpoint* }
%struct.iscsi_cls_conn = type { %struct.iscsi_conn* }
%struct.qedi_endpoint = type { %struct.scsi_sgl_task_params* }
%struct.scsi_sgl_task_params = type { i32, i32, i32, i32, i64, i32, i64, i64, i64, %struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params*, %struct.TYPE_7__, i32, i32, i32, i8*, %struct.TYPE_6__, i32, i64, i32, i8*, i32, i32, i32, %struct.TYPE_10__, i32 }
%struct.TYPE_7__ = type { i8*, i8* }
%struct.TYPE_6__ = type { i8*, i8* }
%struct.TYPE_10__ = type { i8*, i8* }
%struct.Scsi_Host = type { i32 }
%struct.qedi_ctx = type { i64, i32, i32 }
%struct.iscsi_cmd_hdr = type { i32, i32, i32, i32, i64, i32, i64, i64, i64, %struct.iscsi_cmd_hdr*, %struct.iscsi_cmd_hdr*, %struct.TYPE_7__, i32, i32, i32, i8*, %struct.TYPE_6__, i32, i64, i32, i8*, i32, i32, i32, %struct.TYPE_10__, i32 }
%struct.iscsi_task_params = type { i32, i32, i32, i32, i64, i32, i64, i64, i64, %struct.iscsi_task_params*, %struct.iscsi_task_params*, %struct.TYPE_7__, i32, i32, i32, i8*, %struct.TYPE_6__, i32, i64, i32, i8*, i32, i32, i32, %struct.TYPE_10__, i32 }
%struct.iscsi_conn_params = type { i32, i32, i32, i32, i64, i32, i64, i64, i64, %struct.iscsi_conn_params*, %struct.iscsi_conn_params*, %struct.TYPE_7__, i32, i32, i32, i8*, %struct.TYPE_6__, i32, i64, i32, i8*, i32, i32, i32, %struct.TYPE_10__, i32 }
%struct.scsi_initiator_cmd_params = type { i32, i32, i32, i32, i64, i32, i64, i64, i64, %struct.scsi_initiator_cmd_params*, %struct.scsi_initiator_cmd_params*, %struct.TYPE_7__, i32, i32, i32, i8*, %struct.TYPE_6__, i32, i64, i32, i8*, i32, i32, i32, %struct.TYPE_10__, i32 }
%struct.e4_iscsi_task_context = type { i32, i32, i32, i32, i64, i32, i64, i64, i64, %struct.e4_iscsi_task_context*, %struct.e4_iscsi_task_context*, %struct.TYPE_7__, i32, i32, i32, i8*, %struct.TYPE_6__, i32, i64, i32, i8*, i32, i32, i32, %struct.TYPE_10__, i32 }
%struct.iscsi_scsi_req = type { i64*, i8*, i32, i32, i32 }
%struct.scsi_lun = type { i32 }

@MAX_ISCSI_TASK_TYPE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ISCSI_CMD_HDR_ATTR = common dso_local global i32 0, align 4
@ISCSI_ATTR_SIMPLE = common dso_local global i32 0, align 4
@TEST_UNIT_READY = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i64 0, align 8
@ISCSI_CMD_HDR_WRITE = common dso_local global i32 0, align 4
@ISCSI_TASK_TYPE_INITIATOR_WRITE = common dso_local global i32 0, align 4
@ISCSI_CMD_HDR_READ = common dso_local global i32 0, align 4
@ISCSI_TASK_TYPE_INITIATOR_READ = common dso_local global i32 0, align 4
@QEDI_LOG_IO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"%s: %s-SGL: sg_len=0x%x num_sges=0x%x first-sge-lo=0x%x first-sge-hi=0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Write \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Read \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Single\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"SLOW\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"FAST\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qedi_iscsi_send_ioreq(%struct.iscsi_task* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iscsi_task*, align 8
  %4 = alloca %struct.iscsi_conn*, align 8
  %5 = alloca %struct.iscsi_session*, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.qedi_ctx*, align 8
  %8 = alloca %struct.qedi_conn*, align 8
  %9 = alloca %struct.qedi_cmd*, align 8
  %10 = alloca %struct.scsi_cmnd*, align 8
  %11 = alloca %struct.iscsi_cmd_hdr, align 8
  %12 = alloca %struct.scsi_sgl_task_params, align 8
  %13 = alloca %struct.scsi_sgl_task_params, align 8
  %14 = alloca %struct.scsi_sgl_task_params*, align 8
  %15 = alloca %struct.scsi_sgl_task_params*, align 8
  %16 = alloca %struct.iscsi_task_params, align 8
  %17 = alloca %struct.iscsi_conn_params, align 8
  %18 = alloca %struct.scsi_initiator_cmd_params, align 8
  %19 = alloca %struct.e4_iscsi_task_context*, align 8
  %20 = alloca %struct.iscsi_cls_conn*, align 8
  %21 = alloca %struct.iscsi_scsi_req*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.qedi_endpoint*, align 8
  %24 = alloca [2 x i8*], align 16
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  store %struct.iscsi_task* %0, %struct.iscsi_task** %3, align 8
  %29 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %30 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %29, i32 0, i32 4
  %31 = load %struct.iscsi_conn*, %struct.iscsi_conn** %30, align 8
  store %struct.iscsi_conn* %31, %struct.iscsi_conn** %4, align 8
  %32 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %33 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %32, i32 0, i32 0
  %34 = load %struct.iscsi_session*, %struct.iscsi_session** %33, align 8
  store %struct.iscsi_session* %34, %struct.iscsi_session** %5, align 8
  %35 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %36 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = call %struct.Scsi_Host* @iscsi_session_to_shost(i32 %37)
  store %struct.Scsi_Host* %38, %struct.Scsi_Host** %6, align 8
  %39 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %40 = call %struct.qedi_ctx* @iscsi_host_priv(%struct.Scsi_Host* %39)
  store %struct.qedi_ctx* %40, %struct.qedi_ctx** %7, align 8
  %41 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %42 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %41, i32 0, i32 2
  %43 = load %struct.qedi_conn*, %struct.qedi_conn** %42, align 8
  store %struct.qedi_conn* %43, %struct.qedi_conn** %8, align 8
  %44 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %45 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %44, i32 0, i32 3
  %46 = load %struct.qedi_cmd*, %struct.qedi_cmd** %45, align 8
  store %struct.qedi_cmd* %46, %struct.qedi_cmd** %9, align 8
  %47 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %48 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %47, i32 0, i32 2
  %49 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %48, align 8
  store %struct.scsi_cmnd* %49, %struct.scsi_cmnd** %10, align 8
  store %struct.scsi_sgl_task_params* null, %struct.scsi_sgl_task_params** %14, align 8
  store %struct.scsi_sgl_task_params* null, %struct.scsi_sgl_task_params** %15, align 8
  %50 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %51 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to %struct.iscsi_scsi_req*
  store %struct.iscsi_scsi_req* %53, %struct.iscsi_scsi_req** %21, align 8
  %54 = load i32, i32* @MAX_ISCSI_TASK_TYPE, align 4
  store i32 %54, i32* %22, align 4
  store i32 0, i32* %25, align 4
  store i64 0, i64* %26, align 8
  store i32 0, i32* %28, align 4
  %55 = load %struct.qedi_conn*, %struct.qedi_conn** %8, align 8
  %56 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %55, i32 0, i32 5
  %57 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %56, align 8
  store %struct.qedi_endpoint* %57, %struct.qedi_endpoint** %23, align 8
  %58 = load %struct.qedi_conn*, %struct.qedi_conn** %8, align 8
  %59 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %58, i32 0, i32 4
  %60 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %59, align 8
  store %struct.iscsi_cls_conn* %60, %struct.iscsi_cls_conn** %20, align 8
  %61 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %20, align 8
  %62 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %61, i32 0, i32 0
  %63 = load %struct.iscsi_conn*, %struct.iscsi_conn** %62, align 8
  store %struct.iscsi_conn* %63, %struct.iscsi_conn** %4, align 8
  %64 = load %struct.qedi_cmd*, %struct.qedi_cmd** %9, align 8
  %65 = call i32 @qedi_iscsi_map_sg_list(%struct.qedi_cmd* %64)
  %66 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %67 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %66, i32 0, i32 1
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds [2 x i8*], [2 x i8*]* %24, i64 0, i64 0
  %72 = bitcast i8** %71 to %struct.scsi_lun*
  %73 = call i32 @int_to_scsilun(i32 %70, %struct.scsi_lun* %72)
  %74 = load %struct.qedi_ctx*, %struct.qedi_ctx** %7, align 8
  %75 = call i32 @qedi_get_task_idx(%struct.qedi_ctx* %74)
  store i32 %75, i32* %25, align 4
  %76 = load i32, i32* %25, align 4
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %78, label %81

78:                                               ; preds = %1
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %2, align 4
  br label %442

81:                                               ; preds = %1
  %82 = load %struct.qedi_ctx*, %struct.qedi_ctx** %7, align 8
  %83 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %82, i32 0, i32 2
  %84 = load i32, i32* %25, align 4
  %85 = call i64 @qedi_get_task_mem(i32* %83, i32 %84)
  %86 = inttoptr i64 %85 to %struct.e4_iscsi_task_context*
  store %struct.e4_iscsi_task_context* %86, %struct.e4_iscsi_task_context** %19, align 8
  %87 = load %struct.e4_iscsi_task_context*, %struct.e4_iscsi_task_context** %19, align 8
  %88 = bitcast %struct.e4_iscsi_task_context* %87 to %struct.scsi_sgl_task_params*
  %89 = call i32 @memset(%struct.scsi_sgl_task_params* %88, i32 0, i32 200)
  %90 = load i32, i32* %25, align 4
  %91 = load %struct.qedi_cmd*, %struct.qedi_cmd** %9, align 8
  %92 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = bitcast %struct.iscsi_task_params* %16 to %struct.scsi_sgl_task_params*
  %94 = call i32 @memset(%struct.scsi_sgl_task_params* %93, i32 0, i32 200)
  %95 = bitcast %struct.iscsi_cmd_hdr* %11 to %struct.scsi_sgl_task_params*
  %96 = call i32 @memset(%struct.scsi_sgl_task_params* %95, i32 0, i32 200)
  %97 = call i32 @memset(%struct.scsi_sgl_task_params* %12, i32 0, i32 200)
  %98 = call i32 @memset(%struct.scsi_sgl_task_params* %13, i32 0, i32 200)
  %99 = bitcast %struct.iscsi_conn_params* %17 to %struct.scsi_sgl_task_params*
  %100 = call i32 @memset(%struct.scsi_sgl_task_params* %99, i32 0, i32 200)
  %101 = bitcast %struct.scsi_initiator_cmd_params* %18 to %struct.scsi_sgl_task_params*
  %102 = call i32 @memset(%struct.scsi_sgl_task_params* %101, i32 0, i32 200)
  %103 = call i64 (...) @smp_processor_id()
  %104 = load %struct.qedi_ctx*, %struct.qedi_ctx** %7, align 8
  %105 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = urem i64 %103, %106
  store i64 %107, i64* %27, align 8
  %108 = getelementptr inbounds %struct.iscsi_cmd_hdr, %struct.iscsi_cmd_hdr* %11, i32 0, i32 25
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @ISCSI_CMD_HDR_ATTR, align 4
  %111 = load i32, i32* @ISCSI_ATTR_SIMPLE, align 4
  %112 = call i32 @SET_FIELD(i32 %109, i32 %110, i32 %111)
  %113 = load %struct.iscsi_scsi_req*, %struct.iscsi_scsi_req** %21, align 8
  %114 = getelementptr inbounds %struct.iscsi_scsi_req, %struct.iscsi_scsi_req* %113, i32 0, i32 0
  %115 = load i64*, i64** %114, align 8
  %116 = getelementptr inbounds i64, i64* %115, i64 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @TEST_UNIT_READY, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %139

120:                                              ; preds = %81
  %121 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %122 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @DMA_TO_DEVICE, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %132

126:                                              ; preds = %120
  %127 = getelementptr inbounds %struct.iscsi_cmd_hdr, %struct.iscsi_cmd_hdr* %11, i32 0, i32 25
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @ISCSI_CMD_HDR_WRITE, align 4
  %130 = call i32 @SET_FIELD(i32 %128, i32 %129, i32 1)
  %131 = load i32, i32* @ISCSI_TASK_TYPE_INITIATOR_WRITE, align 4
  store i32 %131, i32* %22, align 4
  br label %138

132:                                              ; preds = %120
  %133 = getelementptr inbounds %struct.iscsi_cmd_hdr, %struct.iscsi_cmd_hdr* %11, i32 0, i32 25
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @ISCSI_CMD_HDR_READ, align 4
  %136 = call i32 @SET_FIELD(i32 %134, i32 %135, i32 1)
  %137 = load i32, i32* @ISCSI_TASK_TYPE_INITIATOR_READ, align 4
  store i32 %137, i32* %22, align 4
  br label %138

138:                                              ; preds = %132, %126
  br label %139

139:                                              ; preds = %138, %81
  %140 = getelementptr inbounds [2 x i8*], [2 x i8*]* %24, i64 0, i64 0
  %141 = load i8*, i8** %140, align 16
  %142 = call i8* @be32_to_cpu(i8* %141)
  %143 = getelementptr inbounds %struct.iscsi_cmd_hdr, %struct.iscsi_cmd_hdr* %11, i32 0, i32 24
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 1
  store i8* %142, i8** %144, align 8
  %145 = getelementptr inbounds [2 x i8*], [2 x i8*]* %24, i64 0, i64 1
  %146 = load i8*, i8** %145, align 8
  %147 = call i8* @be32_to_cpu(i8* %146)
  %148 = getelementptr inbounds %struct.iscsi_cmd_hdr, %struct.iscsi_cmd_hdr* %11, i32 0, i32 24
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  store i8* %147, i8** %149, align 8
  %150 = load %struct.qedi_ctx*, %struct.qedi_ctx** %7, align 8
  %151 = load i32, i32* %25, align 4
  %152 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %153 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.qedi_cmd*, %struct.qedi_cmd** %9, align 8
  %156 = call i32 @qedi_update_itt_map(%struct.qedi_ctx* %150, i32 %151, i32 %154, %struct.qedi_cmd* %155)
  %157 = load i32, i32* %25, align 4
  %158 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %159 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @get_itt(i32 %160)
  %162 = call i32 @qedi_set_itt(i32 %157, i32 %161)
  %163 = getelementptr inbounds %struct.iscsi_cmd_hdr, %struct.iscsi_cmd_hdr* %11, i32 0, i32 23
  store i32 %162, i32* %163, align 8
  %164 = load %struct.iscsi_scsi_req*, %struct.iscsi_scsi_req** %21, align 8
  %165 = getelementptr inbounds %struct.iscsi_scsi_req, %struct.iscsi_scsi_req* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @cpu_to_be32(i32 %166)
  %168 = getelementptr inbounds %struct.iscsi_cmd_hdr, %struct.iscsi_cmd_hdr* %11, i32 0, i32 22
  store i32 %167, i32* %168, align 4
  %169 = load %struct.iscsi_scsi_req*, %struct.iscsi_scsi_req** %21, align 8
  %170 = getelementptr inbounds %struct.iscsi_scsi_req, %struct.iscsi_scsi_req* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @ntoh24(i32 %171)
  %173 = getelementptr inbounds %struct.iscsi_cmd_hdr, %struct.iscsi_cmd_hdr* %11, i32 0, i32 21
  store i32 %172, i32* %173, align 8
  %174 = load %struct.iscsi_scsi_req*, %struct.iscsi_scsi_req** %21, align 8
  %175 = getelementptr inbounds %struct.iscsi_scsi_req, %struct.iscsi_scsi_req* %174, i32 0, i32 1
  %176 = load i8*, i8** %175, align 8
  %177 = call i8* @be32_to_cpu(i8* %176)
  %178 = getelementptr inbounds %struct.iscsi_cmd_hdr, %struct.iscsi_cmd_hdr* %11, i32 0, i32 20
  store i8* %177, i8** %178, align 8
  %179 = load %struct.iscsi_scsi_req*, %struct.iscsi_scsi_req** %21, align 8
  %180 = getelementptr inbounds %struct.iscsi_scsi_req, %struct.iscsi_scsi_req* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = getelementptr inbounds %struct.iscsi_cmd_hdr, %struct.iscsi_cmd_hdr* %11, i32 0, i32 19
  store i32 %181, i32* %182, align 8
  %183 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %184 = getelementptr inbounds %struct.iscsi_cmd_hdr, %struct.iscsi_cmd_hdr* %11, i32 0, i32 18
  %185 = load i64, i64* %184, align 8
  %186 = inttoptr i64 %185 to i8**
  %187 = call i32 @qedi_cpy_scsi_cdb(%struct.scsi_cmnd* %183, i8** %186)
  %188 = load i32, i32* %22, align 4
  %189 = load i32, i32* @ISCSI_TASK_TYPE_INITIATOR_WRITE, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %229

191:                                              ; preds = %139
  %192 = load %struct.qedi_cmd*, %struct.qedi_cmd** %9, align 8
  %193 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %192, i32 0, i32 3
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %12, i32 0, i32 17
  store i32 %195, i32* %196, align 8
  %197 = load %struct.qedi_cmd*, %struct.qedi_cmd** %9, align 8
  %198 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %197, i32 0, i32 3
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = inttoptr i64 %200 to i8*
  %202 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %12, i32 0, i32 16
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 1
  store i8* %201, i8** %203, align 8
  %204 = load %struct.qedi_cmd*, %struct.qedi_cmd** %9, align 8
  %205 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %204, i32 0, i32 3
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = trunc i64 %207 to i32
  %209 = ashr i32 %208, 32
  %210 = sext i32 %209 to i64
  %211 = inttoptr i64 %210 to i8*
  %212 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %12, i32 0, i32 16
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 0
  store i8* %211, i8** %213, align 8
  %214 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %215 = call i8* @scsi_bufflen(%struct.scsi_cmnd* %214)
  %216 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %12, i32 0, i32 15
  store i8* %215, i8** %216, align 8
  %217 = load %struct.qedi_cmd*, %struct.qedi_cmd** %9, align 8
  %218 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %217, i32 0, i32 3
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %12, i32 0, i32 0
  store i32 %220, i32* %221, align 8
  %222 = load %struct.qedi_cmd*, %struct.qedi_cmd** %9, align 8
  %223 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %222, i32 0, i32 4
  %224 = load i64, i64* %223, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %228

226:                                              ; preds = %191
  %227 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %12, i32 0, i32 1
  store i32 1, i32* %227, align 4
  br label %228

228:                                              ; preds = %226, %191
  br label %265

229:                                              ; preds = %139
  %230 = load i32, i32* %22, align 4
  %231 = load i32, i32* @ISCSI_TASK_TYPE_INITIATOR_READ, align 4
  %232 = icmp eq i32 %230, %231
  br i1 %232, label %233, label %264

233:                                              ; preds = %229
  %234 = load %struct.qedi_cmd*, %struct.qedi_cmd** %9, align 8
  %235 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %234, i32 0, i32 3
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 8
  %238 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %13, i32 0, i32 17
  store i32 %237, i32* %238, align 8
  %239 = load %struct.qedi_cmd*, %struct.qedi_cmd** %9, align 8
  %240 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %239, i32 0, i32 3
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i32 0, i32 1
  %242 = load i64, i64* %241, align 8
  %243 = inttoptr i64 %242 to i8*
  %244 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %13, i32 0, i32 16
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 1
  store i8* %243, i8** %245, align 8
  %246 = load %struct.qedi_cmd*, %struct.qedi_cmd** %9, align 8
  %247 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %246, i32 0, i32 3
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 1
  %249 = load i64, i64* %248, align 8
  %250 = trunc i64 %249 to i32
  %251 = ashr i32 %250, 32
  %252 = sext i32 %251 to i64
  %253 = inttoptr i64 %252 to i8*
  %254 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %13, i32 0, i32 16
  %255 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %254, i32 0, i32 0
  store i8* %253, i8** %255, align 8
  %256 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %257 = call i8* @scsi_bufflen(%struct.scsi_cmnd* %256)
  %258 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %13, i32 0, i32 15
  store i8* %257, i8** %258, align 8
  %259 = load %struct.qedi_cmd*, %struct.qedi_cmd** %9, align 8
  %260 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %259, i32 0, i32 3
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %13, i32 0, i32 0
  store i32 %262, i32* %263, align 8
  br label %264

264:                                              ; preds = %233, %229
  br label %265

265:                                              ; preds = %264, %228
  %266 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %267 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %266, i32 0, i32 0
  %268 = load %struct.iscsi_session*, %struct.iscsi_session** %267, align 8
  %269 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %268, i32 0, i32 3
  %270 = load i32, i32* %269, align 4
  %271 = getelementptr inbounds %struct.iscsi_conn_params, %struct.iscsi_conn_params* %17, i32 0, i32 14
  store i32 %270, i32* %271, align 8
  %272 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %273 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 8
  %275 = getelementptr inbounds %struct.iscsi_conn_params, %struct.iscsi_conn_params* %17, i32 0, i32 13
  store i32 %274, i32* %275, align 4
  %276 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %277 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %276, i32 0, i32 0
  %278 = load %struct.iscsi_session*, %struct.iscsi_session** %277, align 8
  %279 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 8
  %281 = getelementptr inbounds %struct.iscsi_conn_params, %struct.iscsi_conn_params* %17, i32 0, i32 12
  store i32 %280, i32* %281, align 8
  %282 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %283 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %282, i32 0, i32 0
  %284 = load %struct.iscsi_session*, %struct.iscsi_session** %283, align 8
  %285 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %284, i32 0, i32 1
  %286 = load i64, i64* %285, align 8
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %290

288:                                              ; preds = %265
  %289 = getelementptr inbounds %struct.iscsi_conn_params, %struct.iscsi_conn_params* %17, i32 0, i32 2
  store i32 1, i32* %289, align 8
  br label %290

290:                                              ; preds = %288, %265
  %291 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %292 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %291, i32 0, i32 0
  %293 = load %struct.iscsi_session*, %struct.iscsi_session** %292, align 8
  %294 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %293, i32 0, i32 0
  %295 = load i64, i64* %294, align 8
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %299

297:                                              ; preds = %290
  %298 = getelementptr inbounds %struct.iscsi_conn_params, %struct.iscsi_conn_params* %17, i32 0, i32 3
  store i32 1, i32* %298, align 4
  br label %299

299:                                              ; preds = %297, %290
  %300 = load %struct.qedi_cmd*, %struct.qedi_cmd** %9, align 8
  %301 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %300, i32 0, i32 5
  %302 = load i64, i64* %301, align 8
  %303 = inttoptr i64 %302 to i8*
  %304 = getelementptr inbounds %struct.scsi_initiator_cmd_params, %struct.scsi_initiator_cmd_params* %18, i32 0, i32 11
  %305 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %304, i32 0, i32 1
  store i8* %303, i8** %305, align 8
  %306 = load %struct.qedi_cmd*, %struct.qedi_cmd** %9, align 8
  %307 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %306, i32 0, i32 5
  %308 = load i64, i64* %307, align 8
  %309 = trunc i64 %308 to i32
  %310 = ashr i32 %309, 32
  %311 = sext i32 %310 to i64
  %312 = inttoptr i64 %311 to i8*
  %313 = getelementptr inbounds %struct.scsi_initiator_cmd_params, %struct.scsi_initiator_cmd_params* %18, i32 0, i32 11
  %314 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %313, i32 0, i32 0
  store i8* %312, i8** %314, align 8
  %315 = load %struct.e4_iscsi_task_context*, %struct.e4_iscsi_task_context** %19, align 8
  %316 = bitcast %struct.e4_iscsi_task_context* %315 to %struct.iscsi_task_params*
  %317 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %16, i32 0, i32 10
  store %struct.iscsi_task_params* %316, %struct.iscsi_task_params** %317, align 8
  %318 = load %struct.qedi_conn*, %struct.qedi_conn** %8, align 8
  %319 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %318, i32 0, i32 3
  %320 = load i64, i64* %319, align 8
  %321 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %16, i32 0, i32 4
  store i64 %320, i64* %321, align 8
  %322 = load i32, i32* %25, align 4
  %323 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %16, i32 0, i32 5
  store i32 %322, i32* %323, align 8
  %324 = load i64, i64* %27, align 8
  %325 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %16, i32 0, i32 6
  store i64 %324, i64* %325, align 8
  %326 = load i32, i32* %22, align 4
  %327 = load i32, i32* @ISCSI_TASK_TYPE_INITIATOR_WRITE, align 4
  %328 = icmp eq i32 %326, %327
  br i1 %328, label %329, label %334

329:                                              ; preds = %299
  %330 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %331 = call i8* @scsi_bufflen(%struct.scsi_cmnd* %330)
  %332 = ptrtoint i8* %331 to i64
  %333 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %16, i32 0, i32 7
  store i64 %332, i64* %333, align 8
  br label %344

334:                                              ; preds = %299
  %335 = load i32, i32* %22, align 4
  %336 = load i32, i32* @ISCSI_TASK_TYPE_INITIATOR_READ, align 4
  %337 = icmp eq i32 %335, %336
  br i1 %337, label %338, label %343

338:                                              ; preds = %334
  %339 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %340 = call i8* @scsi_bufflen(%struct.scsi_cmnd* %339)
  %341 = ptrtoint i8* %340 to i64
  %342 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %16, i32 0, i32 8
  store i64 %341, i64* %342, align 8
  br label %343

343:                                              ; preds = %338, %334
  br label %344

344:                                              ; preds = %343, %329
  %345 = load %struct.qedi_conn*, %struct.qedi_conn** %8, align 8
  %346 = call i64 @qedi_get_wqe_idx(%struct.qedi_conn* %345)
  store i64 %346, i64* %26, align 8
  %347 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %23, align 8
  %348 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %347, i32 0, i32 0
  %349 = load %struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params** %348, align 8
  %350 = load i64, i64* %26, align 8
  %351 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %349, i64 %350
  %352 = bitcast %struct.scsi_sgl_task_params* %351 to %struct.iscsi_task_params*
  %353 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %16, i32 0, i32 9
  store %struct.iscsi_task_params* %352, %struct.iscsi_task_params** %353, align 8
  %354 = load %struct.qedi_ctx*, %struct.qedi_ctx** %7, align 8
  %355 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %354, i32 0, i32 1
  %356 = load i32, i32* @QEDI_LOG_IO, align 4
  %357 = load i32, i32* %22, align 4
  %358 = load i32, i32* @ISCSI_TASK_TYPE_INITIATOR_WRITE, align 4
  %359 = icmp eq i32 %357, %358
  %360 = zext i1 %359 to i64
  %361 = select i1 %359, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %362 = load %struct.qedi_cmd*, %struct.qedi_cmd** %9, align 8
  %363 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %362, i32 0, i32 3
  %364 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 8
  %366 = icmp eq i32 %365, 1
  br i1 %366, label %367, label %368

367:                                              ; preds = %344
  br label %375

368:                                              ; preds = %344
  %369 = load %struct.qedi_cmd*, %struct.qedi_cmd** %9, align 8
  %370 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %369, i32 0, i32 4
  %371 = load i64, i64* %370, align 8
  %372 = icmp ne i64 %371, 0
  %373 = zext i1 %372 to i64
  %374 = select i1 %372, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)
  br label %375

375:                                              ; preds = %368, %367
  %376 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), %367 ], [ %374, %368 ]
  %377 = load %struct.qedi_cmd*, %struct.qedi_cmd** %9, align 8
  %378 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %377, i32 0, i32 3
  %379 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 8
  %381 = sext i32 %380 to i64
  %382 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %383 = call i8* @scsi_bufflen(%struct.scsi_cmnd* %382)
  %384 = load %struct.qedi_cmd*, %struct.qedi_cmd** %9, align 8
  %385 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %384, i32 0, i32 3
  %386 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %385, i32 0, i32 1
  %387 = load i64, i64* %386, align 8
  %388 = inttoptr i64 %387 to i8*
  %389 = load %struct.qedi_cmd*, %struct.qedi_cmd** %9, align 8
  %390 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %389, i32 0, i32 3
  %391 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %390, i32 0, i32 1
  %392 = load i64, i64* %391, align 8
  %393 = trunc i64 %392 to i32
  %394 = ashr i32 %393, 32
  %395 = sext i32 %394 to i64
  %396 = inttoptr i64 %395 to i8*
  %397 = call i32 @QEDI_INFO(i32* %355, i32 %356, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i8* %361, i8* %376, i64 %381, i8* %383, i8* %388, i8* %396)
  %398 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %16, i32 0, i32 9
  %399 = load %struct.iscsi_task_params*, %struct.iscsi_task_params** %398, align 8
  %400 = bitcast %struct.iscsi_task_params* %399 to %struct.scsi_sgl_task_params*
  %401 = call i32 @memset(%struct.scsi_sgl_task_params* %400, i32 0, i32 4)
  %402 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %16, i32 0, i32 7
  %403 = load i64, i64* %402, align 8
  %404 = icmp ne i64 %403, 0
  br i1 %404, label %405, label %406

405:                                              ; preds = %375
  store %struct.scsi_sgl_task_params* %12, %struct.scsi_sgl_task_params** %15, align 8
  br label %406

406:                                              ; preds = %405, %375
  %407 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %16, i32 0, i32 8
  %408 = load i64, i64* %407, align 8
  %409 = icmp ne i64 %408, 0
  br i1 %409, label %410, label %411

410:                                              ; preds = %406
  store %struct.scsi_sgl_task_params* %13, %struct.scsi_sgl_task_params** %14, align 8
  br label %411

411:                                              ; preds = %410, %406
  %412 = bitcast %struct.iscsi_task_params* %16 to %struct.scsi_sgl_task_params*
  %413 = bitcast %struct.iscsi_conn_params* %17 to %struct.scsi_sgl_task_params*
  %414 = bitcast %struct.scsi_initiator_cmd_params* %18 to %struct.scsi_sgl_task_params*
  %415 = bitcast %struct.iscsi_cmd_hdr* %11 to %struct.scsi_sgl_task_params*
  %416 = load %struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params** %15, align 8
  %417 = load %struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params** %14, align 8
  %418 = call i32 @init_initiator_rw_iscsi_task(%struct.scsi_sgl_task_params* %412, %struct.scsi_sgl_task_params* %413, %struct.scsi_sgl_task_params* %414, %struct.scsi_sgl_task_params* %415, %struct.scsi_sgl_task_params* %416, %struct.scsi_sgl_task_params* %417, i32* null)
  store i32 %418, i32* %28, align 4
  %419 = load i32, i32* %28, align 4
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %421, label %422

421:                                              ; preds = %411
  store i32 -1, i32* %2, align 4
  br label %442

422:                                              ; preds = %411
  %423 = load %struct.qedi_conn*, %struct.qedi_conn** %8, align 8
  %424 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %423, i32 0, i32 0
  %425 = call i32 @spin_lock(i32* %424)
  %426 = load %struct.qedi_cmd*, %struct.qedi_cmd** %9, align 8
  %427 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %426, i32 0, i32 2
  %428 = load %struct.qedi_conn*, %struct.qedi_conn** %8, align 8
  %429 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %428, i32 0, i32 2
  %430 = call i32 @list_add_tail(i32* %427, i32* %429)
  %431 = load %struct.qedi_cmd*, %struct.qedi_cmd** %9, align 8
  %432 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %431, i32 0, i32 1
  store i32 1, i32* %432, align 4
  %433 = load %struct.qedi_conn*, %struct.qedi_conn** %8, align 8
  %434 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %433, i32 0, i32 1
  %435 = load i32, i32* %434, align 4
  %436 = add nsw i32 %435, 1
  store i32 %436, i32* %434, align 4
  %437 = load %struct.qedi_conn*, %struct.qedi_conn** %8, align 8
  %438 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %437, i32 0, i32 0
  %439 = call i32 @spin_unlock(i32* %438)
  %440 = load %struct.qedi_conn*, %struct.qedi_conn** %8, align 8
  %441 = call i32 @qedi_ring_doorbell(%struct.qedi_conn* %440)
  store i32 0, i32* %2, align 4
  br label %442

442:                                              ; preds = %422, %421, %78
  %443 = load i32, i32* %2, align 4
  ret i32 %443
}

declare dso_local %struct.Scsi_Host* @iscsi_session_to_shost(i32) #1

declare dso_local %struct.qedi_ctx* @iscsi_host_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @qedi_iscsi_map_sg_list(%struct.qedi_cmd*) #1

declare dso_local i32 @int_to_scsilun(i32, %struct.scsi_lun*) #1

declare dso_local i32 @qedi_get_task_idx(%struct.qedi_ctx*) #1

declare dso_local i64 @qedi_get_task_mem(i32*, i32) #1

declare dso_local i32 @memset(%struct.scsi_sgl_task_params*, i32, i32) #1

declare dso_local i64 @smp_processor_id(...) #1

declare dso_local i32 @SET_FIELD(i32, i32, i32) #1

declare dso_local i8* @be32_to_cpu(i8*) #1

declare dso_local i32 @qedi_update_itt_map(%struct.qedi_ctx*, i32, i32, %struct.qedi_cmd*) #1

declare dso_local i32 @qedi_set_itt(i32, i32) #1

declare dso_local i32 @get_itt(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @ntoh24(i32) #1

declare dso_local i32 @qedi_cpy_scsi_cdb(%struct.scsi_cmnd*, i8**) #1

declare dso_local i8* @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i64 @qedi_get_wqe_idx(%struct.qedi_conn*) #1

declare dso_local i32 @QEDI_INFO(i32*, i32, i8*, i8*, i8*, i64, i8*, i8*, i8*) #1

declare dso_local i32 @init_initiator_rw_iscsi_task(%struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params*, i32*) #1

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
