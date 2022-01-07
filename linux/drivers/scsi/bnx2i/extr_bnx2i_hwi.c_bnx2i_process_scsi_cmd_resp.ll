; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bnx2i/extr_bnx2i_hwi.c_bnx2i_process_scsi_cmd_resp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bnx2i/extr_bnx2i_hwi.c_bnx2i_process_scsi_cmd_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_session = type { i32 }
%struct.bnx2i_conn = type { %struct.bnx2i_hba*, %struct.TYPE_6__* }
%struct.bnx2i_hba = type { i32 }
%struct.TYPE_6__ = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { i32, i32, i32, i32, i32, i32 }
%struct.cqe = type { i32 }
%struct.bnx2i_cmd_response = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_7__ = type { i64 }
%struct.bnx2i_cmd = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i64 }
%struct.iscsi_task = type { i64, %struct.bnx2i_cmd* }
%struct.iscsi_scsi_rsp = type { i64, i64, i8*, i32, i32, i8*, i8* }
%struct.iscsi_hdr = type { i32 }

@ISCSI_CMD_RESPONSE_INDEX = common dso_local global i32 0, align 4
@ISCSI_CMD_REQUEST_READ = common dso_local global i32 0, align 4
@rx_pdus = common dso_local global i32 0, align 4
@rx_bytes = common dso_local global i32 0, align 4
@tx_pdus = common dso_local global i32 0, align 4
@tx_bytes = common dso_local global i32 0, align 4
@ISCSI_OP_SCSI_DATA_IN = common dso_local global i64 0, align 8
@SAM_STAT_CHECK_CONDITION = common dso_local global i64 0, align 8
@BNX2I_RQ_WQE_SIZE = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"sense data len %d > RQ sz\0A\00", align 1
@ISCSI_DEF_MAX_RECV_SEG_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"sense data len %d > conn data\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2i_process_scsi_cmd_resp(%struct.iscsi_session* %0, %struct.bnx2i_conn* %1, %struct.cqe* %2) #0 {
  %4 = alloca %struct.iscsi_session*, align 8
  %5 = alloca %struct.bnx2i_conn*, align 8
  %6 = alloca %struct.cqe*, align 8
  %7 = alloca %struct.iscsi_conn*, align 8
  %8 = alloca %struct.bnx2i_hba*, align 8
  %9 = alloca %struct.bnx2i_cmd_response*, align 8
  %10 = alloca %struct.bnx2i_cmd*, align 8
  %11 = alloca %struct.iscsi_task*, align 8
  %12 = alloca %struct.iscsi_scsi_rsp*, align 8
  %13 = alloca i32, align 4
  store %struct.iscsi_session* %0, %struct.iscsi_session** %4, align 8
  store %struct.bnx2i_conn* %1, %struct.bnx2i_conn** %5, align 8
  store %struct.cqe* %2, %struct.cqe** %6, align 8
  %14 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %5, align 8
  %15 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %14, i32 0, i32 1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.iscsi_conn*, %struct.iscsi_conn** %17, align 8
  store %struct.iscsi_conn* %18, %struct.iscsi_conn** %7, align 8
  %19 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %5, align 8
  %20 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %19, i32 0, i32 0
  %21 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %20, align 8
  store %struct.bnx2i_hba* %21, %struct.bnx2i_hba** %8, align 8
  store i32 0, i32* %13, align 4
  %22 = load %struct.cqe*, %struct.cqe** %6, align 8
  %23 = bitcast %struct.cqe* %22 to %struct.bnx2i_cmd_response*
  store %struct.bnx2i_cmd_response* %23, %struct.bnx2i_cmd_response** %9, align 8
  %24 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %25 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %24, i32 0, i32 0
  %26 = call i32 @spin_lock_bh(i32* %25)
  %27 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %28 = load %struct.bnx2i_cmd_response*, %struct.bnx2i_cmd_response** %9, align 8
  %29 = getelementptr inbounds %struct.bnx2i_cmd_response, %struct.bnx2i_cmd_response* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @ISCSI_CMD_RESPONSE_INDEX, align 4
  %32 = and i32 %30, %31
  %33 = call %struct.iscsi_task* @iscsi_itt_to_task(%struct.iscsi_conn* %27, i32 %32)
  store %struct.iscsi_task* %33, %struct.iscsi_task** %11, align 8
  %34 = load %struct.iscsi_task*, %struct.iscsi_task** %11, align 8
  %35 = icmp ne %struct.iscsi_task* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %3
  br label %251

37:                                               ; preds = %3
  %38 = load %struct.iscsi_task*, %struct.iscsi_task** %11, align 8
  %39 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %38, i32 0, i32 1
  %40 = load %struct.bnx2i_cmd*, %struct.bnx2i_cmd** %39, align 8
  store %struct.bnx2i_cmd* %40, %struct.bnx2i_cmd** %10, align 8
  %41 = load %struct.bnx2i_cmd*, %struct.bnx2i_cmd** %10, align 8
  %42 = getelementptr inbounds %struct.bnx2i_cmd, %struct.bnx2i_cmd* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @ISCSI_CMD_REQUEST_READ, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %85

48:                                               ; preds = %37
  %49 = load %struct.bnx2i_cmd_response*, %struct.bnx2i_cmd_response** %9, align 8
  %50 = getelementptr inbounds %struct.bnx2i_cmd_response, %struct.bnx2i_cmd_response* %49, i32 0, i32 9
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %55 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %53
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %55, align 4
  %60 = load %struct.bnx2i_cmd*, %struct.bnx2i_cmd** %10, align 8
  %61 = getelementptr inbounds %struct.bnx2i_cmd, %struct.bnx2i_cmd* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %65 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %67, %63
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %65, align 4
  %70 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %8, align 8
  %71 = load i32, i32* @rx_pdus, align 4
  %72 = load %struct.bnx2i_cmd_response*, %struct.bnx2i_cmd_response** %9, align 8
  %73 = getelementptr inbounds %struct.bnx2i_cmd_response, %struct.bnx2i_cmd_response* %72, i32 0, i32 9
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @ADD_STATS_64(%struct.bnx2i_hba* %70, i32 %71, i64 %76)
  %78 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %8, align 8
  %79 = load i32, i32* @rx_bytes, align 4
  %80 = load %struct.bnx2i_cmd*, %struct.bnx2i_cmd** %10, align 8
  %81 = getelementptr inbounds %struct.bnx2i_cmd, %struct.bnx2i_cmd* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @ADD_STATS_64(%struct.bnx2i_hba* %78, i32 %79, i64 %83)
  br label %141

85:                                               ; preds = %37
  %86 = load %struct.bnx2i_cmd_response*, %struct.bnx2i_cmd_response** %9, align 8
  %87 = getelementptr inbounds %struct.bnx2i_cmd_response, %struct.bnx2i_cmd_response* %86, i32 0, i32 9
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %92 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %94, %90
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %92, align 4
  %97 = load %struct.bnx2i_cmd_response*, %struct.bnx2i_cmd_response** %9, align 8
  %98 = getelementptr inbounds %struct.bnx2i_cmd_response, %struct.bnx2i_cmd_response* %97, i32 0, i32 9
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %103 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %105, %101
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %103, align 4
  %108 = load %struct.bnx2i_cmd*, %struct.bnx2i_cmd** %10, align 8
  %109 = getelementptr inbounds %struct.bnx2i_cmd, %struct.bnx2i_cmd* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %113 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = sext i32 %114 to i64
  %116 = add nsw i64 %115, %111
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %113, align 4
  %118 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %8, align 8
  %119 = load i32, i32* @tx_pdus, align 4
  %120 = load %struct.bnx2i_cmd_response*, %struct.bnx2i_cmd_response** %9, align 8
  %121 = getelementptr inbounds %struct.bnx2i_cmd_response, %struct.bnx2i_cmd_response* %120, i32 0, i32 9
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @ADD_STATS_64(%struct.bnx2i_hba* %118, i32 %119, i64 %124)
  %126 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %8, align 8
  %127 = load i32, i32* @tx_bytes, align 4
  %128 = load %struct.bnx2i_cmd*, %struct.bnx2i_cmd** %10, align 8
  %129 = getelementptr inbounds %struct.bnx2i_cmd, %struct.bnx2i_cmd* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @ADD_STATS_64(%struct.bnx2i_hba* %126, i32 %127, i64 %131)
  %133 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %8, align 8
  %134 = load i32, i32* @rx_pdus, align 4
  %135 = load %struct.bnx2i_cmd_response*, %struct.bnx2i_cmd_response** %9, align 8
  %136 = getelementptr inbounds %struct.bnx2i_cmd_response, %struct.bnx2i_cmd_response* %135, i32 0, i32 9
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @ADD_STATS_64(%struct.bnx2i_hba* %133, i32 %134, i64 %139)
  br label %141

141:                                              ; preds = %85, %48
  %142 = load %struct.bnx2i_cmd*, %struct.bnx2i_cmd** %10, align 8
  %143 = call i32 @bnx2i_iscsi_unmap_sg_list(%struct.bnx2i_cmd* %142)
  %144 = load %struct.iscsi_task*, %struct.iscsi_task** %11, align 8
  %145 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = inttoptr i64 %146 to %struct.iscsi_scsi_rsp*
  store %struct.iscsi_scsi_rsp* %147, %struct.iscsi_scsi_rsp** %12, align 8
  %148 = load %struct.cqe*, %struct.cqe** %6, align 8
  %149 = bitcast %struct.cqe* %148 to %struct.bnx2i_cmd_response*
  store %struct.bnx2i_cmd_response* %149, %struct.bnx2i_cmd_response** %9, align 8
  %150 = load %struct.bnx2i_cmd_response*, %struct.bnx2i_cmd_response** %9, align 8
  %151 = getelementptr inbounds %struct.bnx2i_cmd_response, %struct.bnx2i_cmd_response* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.iscsi_scsi_rsp*, %struct.iscsi_scsi_rsp** %12, align 8
  %154 = getelementptr inbounds %struct.iscsi_scsi_rsp, %struct.iscsi_scsi_rsp* %153, i32 0, i32 0
  store i64 %152, i64* %154, align 8
  %155 = load %struct.bnx2i_cmd_response*, %struct.bnx2i_cmd_response** %9, align 8
  %156 = getelementptr inbounds %struct.bnx2i_cmd_response, %struct.bnx2i_cmd_response* %155, i32 0, i32 8
  %157 = load i32, i32* %156, align 4
  %158 = call i8* @cpu_to_be32(i32 %157)
  %159 = load %struct.iscsi_scsi_rsp*, %struct.iscsi_scsi_rsp** %12, align 8
  %160 = getelementptr inbounds %struct.iscsi_scsi_rsp, %struct.iscsi_scsi_rsp* %159, i32 0, i32 6
  store i8* %158, i8** %160, align 8
  %161 = load %struct.bnx2i_cmd_response*, %struct.bnx2i_cmd_response** %9, align 8
  %162 = getelementptr inbounds %struct.bnx2i_cmd_response, %struct.bnx2i_cmd_response* %161, i32 0, i32 7
  %163 = load i32, i32* %162, align 8
  %164 = call i8* @cpu_to_be32(i32 %163)
  %165 = load %struct.iscsi_scsi_rsp*, %struct.iscsi_scsi_rsp** %12, align 8
  %166 = getelementptr inbounds %struct.iscsi_scsi_rsp, %struct.iscsi_scsi_rsp* %165, i32 0, i32 5
  store i8* %164, i8** %166, align 8
  %167 = load %struct.bnx2i_cmd_response*, %struct.bnx2i_cmd_response** %9, align 8
  %168 = getelementptr inbounds %struct.bnx2i_cmd_response, %struct.bnx2i_cmd_response* %167, i32 0, i32 6
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.iscsi_scsi_rsp*, %struct.iscsi_scsi_rsp** %12, align 8
  %171 = getelementptr inbounds %struct.iscsi_scsi_rsp, %struct.iscsi_scsi_rsp* %170, i32 0, i32 4
  store i32 %169, i32* %171, align 4
  %172 = load %struct.bnx2i_cmd_response*, %struct.bnx2i_cmd_response** %9, align 8
  %173 = getelementptr inbounds %struct.bnx2i_cmd_response, %struct.bnx2i_cmd_response* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.iscsi_scsi_rsp*, %struct.iscsi_scsi_rsp** %12, align 8
  %176 = getelementptr inbounds %struct.iscsi_scsi_rsp, %struct.iscsi_scsi_rsp* %175, i32 0, i32 1
  store i64 %174, i64* %176, align 8
  %177 = load %struct.bnx2i_cmd_response*, %struct.bnx2i_cmd_response** %9, align 8
  %178 = getelementptr inbounds %struct.bnx2i_cmd_response, %struct.bnx2i_cmd_response* %177, i32 0, i32 5
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.iscsi_scsi_rsp*, %struct.iscsi_scsi_rsp** %12, align 8
  %181 = getelementptr inbounds %struct.iscsi_scsi_rsp, %struct.iscsi_scsi_rsp* %180, i32 0, i32 3
  store i32 %179, i32* %181, align 8
  %182 = load %struct.bnx2i_cmd_response*, %struct.bnx2i_cmd_response** %9, align 8
  %183 = getelementptr inbounds %struct.bnx2i_cmd_response, %struct.bnx2i_cmd_response* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 4
  %185 = call i8* @cpu_to_be32(i32 %184)
  %186 = load %struct.iscsi_scsi_rsp*, %struct.iscsi_scsi_rsp** %12, align 8
  %187 = getelementptr inbounds %struct.iscsi_scsi_rsp, %struct.iscsi_scsi_rsp* %186, i32 0, i32 2
  store i8* %185, i8** %187, align 8
  %188 = load %struct.bnx2i_cmd_response*, %struct.bnx2i_cmd_response** %9, align 8
  %189 = getelementptr inbounds %struct.bnx2i_cmd_response, %struct.bnx2i_cmd_response* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @ISCSI_OP_SCSI_DATA_IN, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %194

193:                                              ; preds = %141
  br label %242

194:                                              ; preds = %141
  %195 = load %struct.bnx2i_cmd_response*, %struct.bnx2i_cmd_response** %9, align 8
  %196 = getelementptr inbounds %struct.bnx2i_cmd_response, %struct.bnx2i_cmd_response* %195, i32 0, i32 2
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @SAM_STAT_CHECK_CONDITION, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %241

200:                                              ; preds = %194
  %201 = load %struct.bnx2i_cmd_response*, %struct.bnx2i_cmd_response** %9, align 8
  %202 = getelementptr inbounds %struct.bnx2i_cmd_response, %struct.bnx2i_cmd_response* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 8
  store i32 %203, i32* %13, align 4
  %204 = load i32, i32* %13, align 4
  %205 = icmp slt i32 %204, 2
  br i1 %205, label %206, label %207

206:                                              ; preds = %200
  br label %242

207:                                              ; preds = %200
  %208 = load i32, i32* %13, align 4
  %209 = load i32, i32* @BNX2I_RQ_WQE_SIZE, align 4
  %210 = icmp sgt i32 %208, %209
  br i1 %210, label %211, label %217

211:                                              ; preds = %207
  %212 = load i32, i32* @KERN_ERR, align 4
  %213 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %214 = load i32, i32* %13, align 4
  %215 = call i32 @iscsi_conn_printk(i32 %212, %struct.iscsi_conn* %213, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %214)
  %216 = load i32, i32* @BNX2I_RQ_WQE_SIZE, align 4
  store i32 %216, i32* %13, align 4
  br label %228

217:                                              ; preds = %207
  %218 = load i32, i32* %13, align 4
  %219 = load i32, i32* @ISCSI_DEF_MAX_RECV_SEG_LEN, align 4
  %220 = icmp sgt i32 %218, %219
  br i1 %220, label %221, label %227

221:                                              ; preds = %217
  %222 = load i32, i32* @KERN_ERR, align 4
  %223 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %224 = load i32, i32* %13, align 4
  %225 = call i32 @iscsi_conn_printk(i32 %222, %struct.iscsi_conn* %223, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %224)
  %226 = load i32, i32* @ISCSI_DEF_MAX_RECV_SEG_LEN, align 4
  store i32 %226, i32* %13, align 4
  br label %227

227:                                              ; preds = %221, %217
  br label %228

228:                                              ; preds = %227, %211
  %229 = load %struct.bnx2i_cmd*, %struct.bnx2i_cmd** %10, align 8
  %230 = getelementptr inbounds %struct.bnx2i_cmd, %struct.bnx2i_cmd* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %233 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* %13, align 4
  %236 = call i32 @bnx2i_get_rq_buf(i32 %231, i32 %234, i32 %235)
  %237 = load %struct.bnx2i_cmd*, %struct.bnx2i_cmd** %10, align 8
  %238 = getelementptr inbounds %struct.bnx2i_cmd, %struct.bnx2i_cmd* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = call i32 @bnx2i_put_rq_buf(i32 %239, i32 1)
  br label %241

241:                                              ; preds = %228, %194
  br label %242

242:                                              ; preds = %241, %206, %193
  %243 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %244 = load %struct.iscsi_scsi_rsp*, %struct.iscsi_scsi_rsp** %12, align 8
  %245 = bitcast %struct.iscsi_scsi_rsp* %244 to %struct.iscsi_hdr*
  %246 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %247 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* %13, align 4
  %250 = call i32 @__iscsi_complete_pdu(%struct.iscsi_conn* %243, %struct.iscsi_hdr* %245, i32 %248, i32 %249)
  br label %251

251:                                              ; preds = %242, %36
  %252 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %253 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %252, i32 0, i32 0
  %254 = call i32 @spin_unlock_bh(i32* %253)
  ret i32 0
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.iscsi_task* @iscsi_itt_to_task(%struct.iscsi_conn*, i32) #1

declare dso_local i32 @ADD_STATS_64(%struct.bnx2i_hba*, i32, i64) #1

declare dso_local i32 @bnx2i_iscsi_unmap_sg_list(%struct.bnx2i_cmd*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @iscsi_conn_printk(i32, %struct.iscsi_conn*, i8*, i32) #1

declare dso_local i32 @bnx2i_get_rq_buf(i32, i32, i32) #1

declare dso_local i32 @bnx2i_put_rq_buf(i32, i32) #1

declare dso_local i32 @__iscsi_complete_pdu(%struct.iscsi_conn*, %struct.iscsi_hdr*, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
