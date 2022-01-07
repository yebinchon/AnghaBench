; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_drv_fcoe_fw_funcs.c_init_initiator_rw_fcoe_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_drv_fcoe_fw_funcs.c_init_initiator_rw_fcoe_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fcoe_task_params = type { i64, i32, i8*, i8*, i8*, i8*, %struct.e4_fcoe_task_context* }
%struct.e4_fcoe_task_context = type { %struct.mstorm_fcoe_task_st_ctx, %struct.e4_ustorm_fcoe_task_ag_ctx, %struct.tstorm_fcoe_task_st_ctx, %struct.ystorm_fcoe_task_st_ctx, %struct.TYPE_7__ }
%struct.mstorm_fcoe_task_st_ctx = type { i32, %struct.TYPE_12__, i8*, i32, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i8* }
%struct.TYPE_10__ = type { i8*, i8* }
%struct.e4_ustorm_fcoe_task_ag_ctx = type { i8* }
%struct.tstorm_fcoe_task_st_ctx = type { %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32, i8* }
%struct.TYPE_9__ = type { i8*, i8*, i8*, i8*, i8* }
%struct.ystorm_fcoe_task_st_ctx = type { i32, i32, %struct.TYPE_12__, i32, %struct.TYPE_8__, i8*, i8*, i8* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i8* }
%struct.scsi_sgl_task_params = type { i32, i32 }
%struct.regpair = type { i8*, i8* }

@FCOE_TASK_TYPE_WRITE_INITIATOR = common dso_local global i64 0, align 8
@FCOE_TASK_DEV_TYPE_TAPE = common dso_local global i64 0, align 8
@FCOE_TASK_DEV_TYPE_DISK = common dso_local global i64 0, align 8
@FCOE_TSTORM_FCOE_TASK_ST_CTX_READ_WRITE_EXP_FIRST_FRAME = common dso_local global i32 0, align 4
@FCOE_RX_ID = common dso_local global i32 0, align 4
@YSTORM_FCOE_TASK_ST_CTX_TX_SGL_MODE = common dso_local global i32 0, align 4
@SCSI_TX_SLOW_SGL = common dso_local global i32 0, align 4
@SCSI_FAST_SGL = common dso_local global i32 0, align 4
@MSTORM_FCOE_TASK_ST_CTX_TX_SGL_MODE = common dso_local global i32 0, align 4
@FCOE_TSTORM_FCOE_TASK_ST_CTX_READ_WRITE_RX_SGL_MODE = common dso_local global i32 0, align 4
@SEND_FCOE_CMD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_initiator_rw_fcoe_task(%struct.fcoe_task_params* %0, %struct.scsi_sgl_task_params* %1, i8* %2, i8* %3, i8* %4, i8** %5) #0 {
  %7 = alloca %struct.regpair, align 8
  %8 = alloca %struct.fcoe_task_params*, align 8
  %9 = alloca %struct.scsi_sgl_task_params*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca %struct.e4_fcoe_task_context*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.e4_ustorm_fcoe_task_ag_ctx*, align 8
  %15 = alloca %struct.ystorm_fcoe_task_st_ctx*, align 8
  %16 = alloca %struct.tstorm_fcoe_task_st_ctx*, align 8
  %17 = alloca %struct.mstorm_fcoe_task_st_ctx*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = bitcast %struct.regpair* %7 to { i8*, i8* }*
  %22 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %21, i32 0, i32 0
  store i8* %2, i8** %22, align 8
  %23 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %21, i32 0, i32 1
  store i8* %3, i8** %23, align 8
  store %struct.fcoe_task_params* %0, %struct.fcoe_task_params** %8, align 8
  store %struct.scsi_sgl_task_params* %1, %struct.scsi_sgl_task_params** %9, align 8
  store i8* %4, i8** %10, align 8
  store i8** %5, i8*** %11, align 8
  %24 = load %struct.fcoe_task_params*, %struct.fcoe_task_params** %8, align 8
  %25 = getelementptr inbounds %struct.fcoe_task_params, %struct.fcoe_task_params* %24, i32 0, i32 6
  %26 = load %struct.e4_fcoe_task_context*, %struct.e4_fcoe_task_context** %25, align 8
  store %struct.e4_fcoe_task_context* %26, %struct.e4_fcoe_task_context** %12, align 8
  %27 = load %struct.e4_fcoe_task_context*, %struct.e4_fcoe_task_context** %12, align 8
  %28 = getelementptr inbounds %struct.e4_fcoe_task_context, %struct.e4_fcoe_task_context* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %13, align 8
  %31 = load %struct.e4_fcoe_task_context*, %struct.e4_fcoe_task_context** %12, align 8
  %32 = call i32 @memset(%struct.e4_fcoe_task_context* %31, i32 0, i32 168)
  %33 = load i8*, i8** %13, align 8
  %34 = load %struct.e4_fcoe_task_context*, %struct.e4_fcoe_task_context** %12, align 8
  %35 = getelementptr inbounds %struct.e4_fcoe_task_context, %struct.e4_fcoe_task_context* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  store i8* %33, i8** %36, align 8
  %37 = load %struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params** %9, align 8
  %38 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params** %9, align 8
  %41 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @scsi_is_slow_sgl(i32 %39, i32 %42)
  store i32 %43, i32* %20, align 4
  %44 = load %struct.fcoe_task_params*, %struct.fcoe_task_params** %8, align 8
  %45 = getelementptr inbounds %struct.fcoe_task_params, %struct.fcoe_task_params* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @FCOE_TASK_TYPE_WRITE_INITIATOR, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %6
  %50 = load %struct.fcoe_task_params*, %struct.fcoe_task_params** %8, align 8
  %51 = getelementptr inbounds %struct.fcoe_task_params, %struct.fcoe_task_params* %50, i32 0, i32 5
  %52 = load i8*, i8** %51, align 8
  br label %57

53:                                               ; preds = %6
  %54 = load %struct.fcoe_task_params*, %struct.fcoe_task_params** %8, align 8
  %55 = getelementptr inbounds %struct.fcoe_task_params, %struct.fcoe_task_params* %54, i32 0, i32 4
  %56 = load i8*, i8** %55, align 8
  br label %57

57:                                               ; preds = %53, %49
  %58 = phi i8* [ %52, %49 ], [ %56, %53 ]
  store i8* %58, i8** %18, align 8
  %59 = load %struct.e4_fcoe_task_context*, %struct.e4_fcoe_task_context** %12, align 8
  %60 = getelementptr inbounds %struct.e4_fcoe_task_context, %struct.e4_fcoe_task_context* %59, i32 0, i32 3
  store %struct.ystorm_fcoe_task_st_ctx* %60, %struct.ystorm_fcoe_task_st_ctx** %15, align 8
  %61 = load i8*, i8** %18, align 8
  %62 = call i8* @cpu_to_le32(i8* %61)
  %63 = load %struct.ystorm_fcoe_task_st_ctx*, %struct.ystorm_fcoe_task_st_ctx** %15, align 8
  %64 = getelementptr inbounds %struct.ystorm_fcoe_task_st_ctx, %struct.ystorm_fcoe_task_st_ctx* %63, i32 0, i32 7
  store i8* %62, i8** %64, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = call i8* @cpu_to_le32(i8* %65)
  %67 = load %struct.ystorm_fcoe_task_st_ctx*, %struct.ystorm_fcoe_task_st_ctx** %15, align 8
  %68 = getelementptr inbounds %struct.ystorm_fcoe_task_st_ctx, %struct.ystorm_fcoe_task_st_ctx* %67, i32 0, i32 6
  store i8* %66, i8** %68, align 8
  %69 = load %struct.fcoe_task_params*, %struct.fcoe_task_params** %8, align 8
  %70 = getelementptr inbounds %struct.fcoe_task_params, %struct.fcoe_task_params* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to i8*
  %73 = load %struct.ystorm_fcoe_task_st_ctx*, %struct.ystorm_fcoe_task_st_ctx** %15, align 8
  %74 = getelementptr inbounds %struct.ystorm_fcoe_task_st_ctx, %struct.ystorm_fcoe_task_st_ctx* %73, i32 0, i32 5
  store i8* %72, i8** %74, align 8
  %75 = load %struct.ystorm_fcoe_task_st_ctx*, %struct.ystorm_fcoe_task_st_ctx** %15, align 8
  %76 = getelementptr inbounds %struct.ystorm_fcoe_task_st_ctx, %struct.ystorm_fcoe_task_st_ctx* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i8**, i8*** %11, align 8
  %79 = call i32 @memcpy(i32* %77, i8** %78, i32 4)
  %80 = load %struct.e4_fcoe_task_context*, %struct.e4_fcoe_task_context** %12, align 8
  %81 = getelementptr inbounds %struct.e4_fcoe_task_context, %struct.e4_fcoe_task_context* %80, i32 0, i32 2
  store %struct.tstorm_fcoe_task_st_ctx* %81, %struct.tstorm_fcoe_task_st_ctx** %16, align 8
  %82 = load %struct.fcoe_task_params*, %struct.fcoe_task_params** %8, align 8
  %83 = getelementptr inbounds %struct.fcoe_task_params, %struct.fcoe_task_params* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %86, label %88

86:                                               ; preds = %57
  %87 = load i64, i64* @FCOE_TASK_DEV_TYPE_TAPE, align 8
  br label %90

88:                                               ; preds = %57
  %89 = load i64, i64* @FCOE_TASK_DEV_TYPE_DISK, align 8
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi i64 [ %87, %86 ], [ %89, %88 ]
  %92 = inttoptr i64 %91 to i8*
  %93 = load %struct.tstorm_fcoe_task_st_ctx*, %struct.tstorm_fcoe_task_st_ctx** %16, align 8
  %94 = getelementptr inbounds %struct.tstorm_fcoe_task_st_ctx, %struct.tstorm_fcoe_task_st_ctx* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 4
  store i8* %92, i8** %95, align 8
  %96 = load %struct.fcoe_task_params*, %struct.fcoe_task_params** %8, align 8
  %97 = getelementptr inbounds %struct.fcoe_task_params, %struct.fcoe_task_params* %96, i32 0, i32 2
  %98 = load i8*, i8** %97, align 8
  %99 = call i8* @cpu_to_le32(i8* %98)
  %100 = load %struct.tstorm_fcoe_task_st_ctx*, %struct.tstorm_fcoe_task_st_ctx** %16, align 8
  %101 = getelementptr inbounds %struct.tstorm_fcoe_task_st_ctx, %struct.tstorm_fcoe_task_st_ctx* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 3
  store i8* %99, i8** %102, align 8
  %103 = load %struct.fcoe_task_params*, %struct.fcoe_task_params** %8, align 8
  %104 = getelementptr inbounds %struct.fcoe_task_params, %struct.fcoe_task_params* %103, i32 0, i32 3
  %105 = load i8*, i8** %104, align 8
  %106 = call i8* @cpu_to_le32(i8* %105)
  store i8* %106, i8** %19, align 8
  %107 = load i8*, i8** %19, align 8
  %108 = load %struct.tstorm_fcoe_task_st_ctx*, %struct.tstorm_fcoe_task_st_ctx** %16, align 8
  %109 = getelementptr inbounds %struct.tstorm_fcoe_task_st_ctx, %struct.tstorm_fcoe_task_st_ctx* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 2
  store i8* %107, i8** %110, align 8
  %111 = load i8*, i8** %18, align 8
  %112 = call i8* @cpu_to_le32(i8* %111)
  %113 = load %struct.tstorm_fcoe_task_st_ctx*, %struct.tstorm_fcoe_task_st_ctx** %16, align 8
  %114 = getelementptr inbounds %struct.tstorm_fcoe_task_st_ctx, %struct.tstorm_fcoe_task_st_ctx* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 1
  store i8* %112, i8** %115, align 8
  %116 = load %struct.fcoe_task_params*, %struct.fcoe_task_params** %8, align 8
  %117 = getelementptr inbounds %struct.fcoe_task_params, %struct.fcoe_task_params* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = inttoptr i64 %118 to i8*
  %120 = load %struct.tstorm_fcoe_task_st_ctx*, %struct.tstorm_fcoe_task_st_ctx** %16, align 8
  %121 = getelementptr inbounds %struct.tstorm_fcoe_task_st_ctx, %struct.tstorm_fcoe_task_st_ctx* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  store i8* %119, i8** %122, align 8
  %123 = load %struct.tstorm_fcoe_task_st_ctx*, %struct.tstorm_fcoe_task_st_ctx** %16, align 8
  %124 = getelementptr inbounds %struct.tstorm_fcoe_task_st_ctx, %struct.tstorm_fcoe_task_st_ctx* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @FCOE_TSTORM_FCOE_TASK_ST_CTX_READ_WRITE_EXP_FIRST_FRAME, align 4
  %128 = call i32 @SET_FIELD(i32 %126, i32 %127, i32 1)
  %129 = load i32, i32* @FCOE_RX_ID, align 4
  %130 = call i8* @cpu_to_le16(i32 %129)
  %131 = load %struct.tstorm_fcoe_task_st_ctx*, %struct.tstorm_fcoe_task_st_ctx** %16, align 8
  %132 = getelementptr inbounds %struct.tstorm_fcoe_task_st_ctx, %struct.tstorm_fcoe_task_st_ctx* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 1
  store i8* %130, i8** %133, align 8
  %134 = load %struct.e4_fcoe_task_context*, %struct.e4_fcoe_task_context** %12, align 8
  %135 = getelementptr inbounds %struct.e4_fcoe_task_context, %struct.e4_fcoe_task_context* %134, i32 0, i32 1
  store %struct.e4_ustorm_fcoe_task_ag_ctx* %135, %struct.e4_ustorm_fcoe_task_ag_ctx** %14, align 8
  %136 = load %struct.fcoe_task_params*, %struct.fcoe_task_params** %8, align 8
  %137 = getelementptr inbounds %struct.fcoe_task_params, %struct.fcoe_task_params* %136, i32 0, i32 3
  %138 = load i8*, i8** %137, align 8
  %139 = call i8* @cpu_to_le32(i8* %138)
  %140 = load %struct.e4_ustorm_fcoe_task_ag_ctx*, %struct.e4_ustorm_fcoe_task_ag_ctx** %14, align 8
  %141 = getelementptr inbounds %struct.e4_ustorm_fcoe_task_ag_ctx, %struct.e4_ustorm_fcoe_task_ag_ctx* %140, i32 0, i32 0
  store i8* %139, i8** %141, align 8
  %142 = load %struct.e4_fcoe_task_context*, %struct.e4_fcoe_task_context** %12, align 8
  %143 = getelementptr inbounds %struct.e4_fcoe_task_context, %struct.e4_fcoe_task_context* %142, i32 0, i32 0
  store %struct.mstorm_fcoe_task_st_ctx* %143, %struct.mstorm_fcoe_task_st_ctx** %17, align 8
  %144 = getelementptr inbounds %struct.regpair, %struct.regpair* %7, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = call i8* @cpu_to_le32(i8* %145)
  store i8* %146, i8** %19, align 8
  %147 = load i8*, i8** %19, align 8
  %148 = load %struct.mstorm_fcoe_task_st_ctx*, %struct.mstorm_fcoe_task_st_ctx** %17, align 8
  %149 = getelementptr inbounds %struct.mstorm_fcoe_task_st_ctx, %struct.mstorm_fcoe_task_st_ctx* %148, i32 0, i32 4
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 1
  store i8* %147, i8** %150, align 8
  %151 = getelementptr inbounds %struct.regpair, %struct.regpair* %7, i32 0, i32 1
  %152 = load i8*, i8** %151, align 8
  %153 = call i8* @cpu_to_le32(i8* %152)
  store i8* %153, i8** %19, align 8
  %154 = load i8*, i8** %19, align 8
  %155 = load %struct.mstorm_fcoe_task_st_ctx*, %struct.mstorm_fcoe_task_st_ctx** %17, align 8
  %156 = getelementptr inbounds %struct.mstorm_fcoe_task_st_ctx, %struct.mstorm_fcoe_task_st_ctx* %155, i32 0, i32 4
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 0
  store i8* %154, i8** %157, align 8
  %158 = load %struct.fcoe_task_params*, %struct.fcoe_task_params** %8, align 8
  %159 = getelementptr inbounds %struct.fcoe_task_params, %struct.fcoe_task_params* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @FCOE_TASK_TYPE_WRITE_INITIATOR, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %205

163:                                              ; preds = %90
  %164 = load %struct.ystorm_fcoe_task_st_ctx*, %struct.ystorm_fcoe_task_st_ctx** %15, align 8
  %165 = getelementptr inbounds %struct.ystorm_fcoe_task_st_ctx, %struct.ystorm_fcoe_task_st_ctx* %164, i32 0, i32 0
  store i32 1, i32* %165, align 8
  %166 = load %struct.ystorm_fcoe_task_st_ctx*, %struct.ystorm_fcoe_task_st_ctx** %15, align 8
  %167 = getelementptr inbounds %struct.ystorm_fcoe_task_st_ctx, %struct.ystorm_fcoe_task_st_ctx* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @YSTORM_FCOE_TASK_ST_CTX_TX_SGL_MODE, align 4
  %170 = load i32, i32* %20, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %163
  %173 = load i32, i32* @SCSI_TX_SLOW_SGL, align 4
  br label %176

174:                                              ; preds = %163
  %175 = load i32, i32* @SCSI_FAST_SGL, align 4
  br label %176

176:                                              ; preds = %174, %172
  %177 = phi i32 [ %173, %172 ], [ %175, %174 ]
  %178 = call i32 @SET_FIELD(i32 %168, i32 %169, i32 %177)
  %179 = load %struct.ystorm_fcoe_task_st_ctx*, %struct.ystorm_fcoe_task_st_ctx** %15, align 8
  %180 = getelementptr inbounds %struct.ystorm_fcoe_task_st_ctx, %struct.ystorm_fcoe_task_st_ctx* %179, i32 0, i32 2
  %181 = load %struct.ystorm_fcoe_task_st_ctx*, %struct.ystorm_fcoe_task_st_ctx** %15, align 8
  %182 = getelementptr inbounds %struct.ystorm_fcoe_task_st_ctx, %struct.ystorm_fcoe_task_st_ctx* %181, i32 0, i32 1
  %183 = load %struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params** %9, align 8
  %184 = call i32 @init_scsi_sgl_context(%struct.TYPE_12__* %180, i32* %182, %struct.scsi_sgl_task_params* %183)
  %185 = load %struct.mstorm_fcoe_task_st_ctx*, %struct.mstorm_fcoe_task_st_ctx** %17, align 8
  %186 = getelementptr inbounds %struct.mstorm_fcoe_task_st_ctx, %struct.mstorm_fcoe_task_st_ctx* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @MSTORM_FCOE_TASK_ST_CTX_TX_SGL_MODE, align 4
  %189 = load i32, i32* %20, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %176
  %192 = load i32, i32* @SCSI_TX_SLOW_SGL, align 4
  br label %195

193:                                              ; preds = %176
  %194 = load i32, i32* @SCSI_FAST_SGL, align 4
  br label %195

195:                                              ; preds = %193, %191
  %196 = phi i32 [ %192, %191 ], [ %194, %193 ]
  %197 = call i32 @SET_FIELD(i32 %187, i32 %188, i32 %196)
  %198 = load %struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params** %9, align 8
  %199 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = call i8* @cpu_to_le16(i32 %200)
  %202 = load %struct.mstorm_fcoe_task_st_ctx*, %struct.mstorm_fcoe_task_st_ctx** %17, align 8
  %203 = getelementptr inbounds %struct.mstorm_fcoe_task_st_ctx, %struct.mstorm_fcoe_task_st_ctx* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 0
  store i8* %201, i8** %204, align 8
  br label %230

205:                                              ; preds = %90
  %206 = load %struct.tstorm_fcoe_task_st_ctx*, %struct.tstorm_fcoe_task_st_ctx** %16, align 8
  %207 = getelementptr inbounds %struct.tstorm_fcoe_task_st_ctx, %struct.tstorm_fcoe_task_st_ctx* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @FCOE_TSTORM_FCOE_TASK_ST_CTX_READ_WRITE_RX_SGL_MODE, align 4
  %211 = load i32, i32* %20, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %205
  %214 = load i32, i32* @SCSI_TX_SLOW_SGL, align 4
  br label %217

215:                                              ; preds = %205
  %216 = load i32, i32* @SCSI_FAST_SGL, align 4
  br label %217

217:                                              ; preds = %215, %213
  %218 = phi i32 [ %214, %213 ], [ %216, %215 ]
  %219 = call i32 @SET_FIELD(i32 %209, i32 %210, i32 %218)
  %220 = load i8*, i8** %18, align 8
  %221 = call i8* @cpu_to_le32(i8* %220)
  %222 = load %struct.mstorm_fcoe_task_st_ctx*, %struct.mstorm_fcoe_task_st_ctx** %17, align 8
  %223 = getelementptr inbounds %struct.mstorm_fcoe_task_st_ctx, %struct.mstorm_fcoe_task_st_ctx* %222, i32 0, i32 2
  store i8* %221, i8** %223, align 8
  %224 = load %struct.mstorm_fcoe_task_st_ctx*, %struct.mstorm_fcoe_task_st_ctx** %17, align 8
  %225 = getelementptr inbounds %struct.mstorm_fcoe_task_st_ctx, %struct.mstorm_fcoe_task_st_ctx* %224, i32 0, i32 1
  %226 = load %struct.mstorm_fcoe_task_st_ctx*, %struct.mstorm_fcoe_task_st_ctx** %17, align 8
  %227 = getelementptr inbounds %struct.mstorm_fcoe_task_st_ctx, %struct.mstorm_fcoe_task_st_ctx* %226, i32 0, i32 0
  %228 = load %struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params** %9, align 8
  %229 = call i32 @init_scsi_sgl_context(%struct.TYPE_12__* %225, i32* %227, %struct.scsi_sgl_task_params* %228)
  br label %230

230:                                              ; preds = %217, %195
  %231 = load %struct.fcoe_task_params*, %struct.fcoe_task_params** %8, align 8
  %232 = load i32, i32* @SEND_FCOE_CMD, align 4
  %233 = call i32 @init_common_sqe(%struct.fcoe_task_params* %231, i32 %232)
  ret i32 0
}

declare dso_local i32 @memset(%struct.e4_fcoe_task_context*, i32, i32) #1

declare dso_local i32 @scsi_is_slow_sgl(i32, i32) #1

declare dso_local i8* @cpu_to_le32(i8*) #1

declare dso_local i32 @memcpy(i32*, i8**, i32) #1

declare dso_local i32 @SET_FIELD(i32, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @init_scsi_sgl_context(%struct.TYPE_12__*, i32*, %struct.scsi_sgl_task_params*) #1

declare dso_local i32 @init_common_sqe(%struct.fcoe_task_params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
