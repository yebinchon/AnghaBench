; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_io.c_qedf_init_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_io.c_qedf_init_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedf_rport = type { i32, i32, %struct.qedf_ctx* }
%struct.qedf_ctx = type { i32, i32, i32 }
%struct.fc_lport = type { i32 }
%struct.qedf_ioreq = type { i64, i64, i32, %struct.e4_fcoe_task_context*, %struct.e4_fcoe_task_context*, i32, %struct.scsi_cmnd*, i32, i8*, %struct.e4_fcoe_task_context*, %struct.io_bdt* }
%struct.scsi_cmnd = type { i64 }
%struct.io_bdt = type { i32, i32, i32 }
%struct.e4_fcoe_task_context = type { i32, i32, i32, i32, i32, %struct.TYPE_2__, i32, i32, i32, i32, i8*, i8*, %struct.fcoe_wqe*, %struct.e4_fcoe_task_context* }
%struct.TYPE_2__ = type { i8*, i8* }
%struct.fcoe_wqe = type { i32 }
%struct.regpair = type { i8*, i8* }
%struct.fcp_cmnd = type { i32 }

@QEDF_TASK_MGMT_CMD = common dso_local global i64 0, align 8
@FCOE_TASK_TYPE_READ_INITIATOR = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i64 0, align 8
@FCOE_TASK_TYPE_WRITE_INITIATOR = common dso_local global i32 0, align 4
@QEDF_IOREQ_SLOW_SGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qedf_rport*, %struct.fc_lport*, %struct.qedf_ioreq*, %struct.e4_fcoe_task_context*, %struct.fcoe_wqe*)* @qedf_init_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qedf_init_task(%struct.qedf_rport* %0, %struct.fc_lport* %1, %struct.qedf_ioreq* %2, %struct.e4_fcoe_task_context* %3, %struct.fcoe_wqe* %4) #0 {
  %6 = alloca %struct.qedf_rport*, align 8
  %7 = alloca %struct.fc_lport*, align 8
  %8 = alloca %struct.qedf_ioreq*, align 8
  %9 = alloca %struct.e4_fcoe_task_context*, align 8
  %10 = alloca %struct.fcoe_wqe*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.scsi_cmnd*, align 8
  %13 = alloca %struct.io_bdt*, align 8
  %14 = alloca [32 x i32], align 16
  %15 = alloca [8 x i8*], align 16
  %16 = alloca i32, align 4
  %17 = alloca %struct.qedf_ctx*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.regpair, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.qedf_rport* %0, %struct.qedf_rport** %6, align 8
  store %struct.fc_lport* %1, %struct.fc_lport** %7, align 8
  store %struct.qedf_ioreq* %2, %struct.qedf_ioreq** %8, align 8
  store %struct.e4_fcoe_task_context* %3, %struct.e4_fcoe_task_context** %9, align 8
  store %struct.fcoe_wqe* %4, %struct.fcoe_wqe** %10, align 8
  %24 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  %25 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %24, i32 0, i32 6
  %26 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %25, align 8
  store %struct.scsi_cmnd* %26, %struct.scsi_cmnd** %12, align 8
  %27 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  %28 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %27, i32 0, i32 10
  %29 = load %struct.io_bdt*, %struct.io_bdt** %28, align 8
  store %struct.io_bdt* %29, %struct.io_bdt** %13, align 8
  store i32 0, i32* %16, align 4
  %30 = load %struct.qedf_rport*, %struct.qedf_rport** %6, align 8
  %31 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %30, i32 0, i32 2
  %32 = load %struct.qedf_ctx*, %struct.qedf_ctx** %31, align 8
  store %struct.qedf_ctx* %32, %struct.qedf_ctx** %17, align 8
  %33 = call i32 (...) @smp_processor_id()
  %34 = load %struct.qedf_ctx*, %struct.qedf_ctx** %17, align 8
  %35 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = srem i32 %33, %36
  store i32 %37, i32* %18, align 4
  store i8* null, i8** %20, align 8
  store i8* null, i8** %21, align 8
  %38 = load %struct.e4_fcoe_task_context*, %struct.e4_fcoe_task_context** %9, align 8
  %39 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  %40 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %39, i32 0, i32 9
  store %struct.e4_fcoe_task_context* %38, %struct.e4_fcoe_task_context** %40, align 8
  %41 = load %struct.e4_fcoe_task_context*, %struct.e4_fcoe_task_context** %9, align 8
  %42 = call i32 @memset(%struct.e4_fcoe_task_context* %41, i32 0, i32 88)
  %43 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  %44 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %43, i32 0, i32 4
  %45 = load %struct.e4_fcoe_task_context*, %struct.e4_fcoe_task_context** %44, align 8
  %46 = call i32 @memset(%struct.e4_fcoe_task_context* %45, i32 0, i32 4)
  %47 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  %48 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %47, i32 0, i32 3
  %49 = load %struct.e4_fcoe_task_context*, %struct.e4_fcoe_task_context** %48, align 8
  %50 = call i32 @memset(%struct.e4_fcoe_task_context* %49, i32 0, i32 4)
  %51 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  %52 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @QEDF_TASK_MGMT_CMD, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %5
  %57 = load i32, i32* @FCOE_TASK_TYPE_READ_INITIATOR, align 4
  store i32 %57, i32* %11, align 4
  br label %75

58:                                               ; preds = %5
  %59 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %12, align 8
  %60 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @DMA_TO_DEVICE, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  %65 = load i32, i32* @FCOE_TASK_TYPE_WRITE_INITIATOR, align 4
  store i32 %65, i32* %11, align 4
  %66 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  %67 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %66, i32 0, i32 8
  %68 = load i8*, i8** %67, align 8
  store i8* %68, i8** %20, align 8
  br label %74

69:                                               ; preds = %58
  %70 = load i32, i32* @FCOE_TASK_TYPE_READ_INITIATOR, align 4
  store i32 %70, i32* %11, align 4
  %71 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  %72 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %71, i32 0, i32 8
  %73 = load i8*, i8** %72, align 8
  store i8* %73, i8** %21, align 8
  br label %74

74:                                               ; preds = %69, %64
  br label %75

75:                                               ; preds = %74, %56
  %76 = load %struct.e4_fcoe_task_context*, %struct.e4_fcoe_task_context** %9, align 8
  %77 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  %78 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %77, i32 0, i32 4
  %79 = load %struct.e4_fcoe_task_context*, %struct.e4_fcoe_task_context** %78, align 8
  %80 = getelementptr inbounds %struct.e4_fcoe_task_context, %struct.e4_fcoe_task_context* %79, i32 0, i32 13
  store %struct.e4_fcoe_task_context* %76, %struct.e4_fcoe_task_context** %80, align 8
  %81 = load %struct.fcoe_wqe*, %struct.fcoe_wqe** %10, align 8
  %82 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  %83 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %82, i32 0, i32 4
  %84 = load %struct.e4_fcoe_task_context*, %struct.e4_fcoe_task_context** %83, align 8
  %85 = getelementptr inbounds %struct.e4_fcoe_task_context, %struct.e4_fcoe_task_context* %84, i32 0, i32 12
  store %struct.fcoe_wqe* %81, %struct.fcoe_wqe** %85, align 8
  %86 = load i32, i32* %11, align 4
  %87 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  %88 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %87, i32 0, i32 4
  %89 = load %struct.e4_fcoe_task_context*, %struct.e4_fcoe_task_context** %88, align 8
  %90 = getelementptr inbounds %struct.e4_fcoe_task_context, %struct.e4_fcoe_task_context* %89, i32 0, i32 0
  store i32 %86, i32* %90, align 8
  %91 = load i8*, i8** %20, align 8
  %92 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  %93 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %92, i32 0, i32 4
  %94 = load %struct.e4_fcoe_task_context*, %struct.e4_fcoe_task_context** %93, align 8
  %95 = getelementptr inbounds %struct.e4_fcoe_task_context, %struct.e4_fcoe_task_context* %94, i32 0, i32 11
  store i8* %91, i8** %95, align 8
  %96 = load i8*, i8** %21, align 8
  %97 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  %98 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %97, i32 0, i32 4
  %99 = load %struct.e4_fcoe_task_context*, %struct.e4_fcoe_task_context** %98, align 8
  %100 = getelementptr inbounds %struct.e4_fcoe_task_context, %struct.e4_fcoe_task_context* %99, i32 0, i32 10
  store i8* %96, i8** %100, align 8
  %101 = load %struct.qedf_rport*, %struct.qedf_rport** %6, align 8
  %102 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  %105 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %104, i32 0, i32 4
  %106 = load %struct.e4_fcoe_task_context*, %struct.e4_fcoe_task_context** %105, align 8
  %107 = getelementptr inbounds %struct.e4_fcoe_task_context, %struct.e4_fcoe_task_context* %106, i32 0, i32 9
  store i32 %103, i32* %107, align 4
  %108 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  %109 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %108, i32 0, i32 7
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  %112 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %111, i32 0, i32 4
  %113 = load %struct.e4_fcoe_task_context*, %struct.e4_fcoe_task_context** %112, align 8
  %114 = getelementptr inbounds %struct.e4_fcoe_task_context, %struct.e4_fcoe_task_context* %113, i32 0, i32 8
  store i32 %110, i32* %114, align 8
  %115 = load i32, i32* %18, align 4
  %116 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  %117 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %116, i32 0, i32 4
  %118 = load %struct.e4_fcoe_task_context*, %struct.e4_fcoe_task_context** %117, align 8
  %119 = getelementptr inbounds %struct.e4_fcoe_task_context, %struct.e4_fcoe_task_context* %118, i32 0, i32 1
  store i32 %115, i32* %119, align 4
  %120 = load %struct.qedf_rport*, %struct.qedf_rport** %6, align 8
  %121 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  %124 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %123, i32 0, i32 4
  %125 = load %struct.e4_fcoe_task_context*, %struct.e4_fcoe_task_context** %124, align 8
  %126 = getelementptr inbounds %struct.e4_fcoe_task_context, %struct.e4_fcoe_task_context* %125, i32 0, i32 7
  store i32 %122, i32* %126, align 4
  %127 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  %128 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @QEDF_TASK_MGMT_CMD, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %132, label %190

132:                                              ; preds = %75
  %133 = load %struct.io_bdt*, %struct.io_bdt** %13, align 8
  %134 = getelementptr inbounds %struct.io_bdt, %struct.io_bdt* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* %16, align 4
  %136 = load %struct.io_bdt*, %struct.io_bdt** %13, align 8
  %137 = getelementptr inbounds %struct.io_bdt, %struct.io_bdt* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  %140 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %139, i32 0, i32 3
  %141 = load %struct.e4_fcoe_task_context*, %struct.e4_fcoe_task_context** %140, align 8
  %142 = getelementptr inbounds %struct.e4_fcoe_task_context, %struct.e4_fcoe_task_context* %141, i32 0, i32 6
  store i32 %138, i32* %142, align 8
  %143 = load %struct.io_bdt*, %struct.io_bdt** %13, align 8
  %144 = getelementptr inbounds %struct.io_bdt, %struct.io_bdt* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i8* @U64_LO(i32 %145)
  %147 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  %148 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %147, i32 0, i32 3
  %149 = load %struct.e4_fcoe_task_context*, %struct.e4_fcoe_task_context** %148, align 8
  %150 = getelementptr inbounds %struct.e4_fcoe_task_context, %struct.e4_fcoe_task_context* %149, i32 0, i32 5
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 1
  store i8* %146, i8** %151, align 8
  %152 = load %struct.io_bdt*, %struct.io_bdt** %13, align 8
  %153 = getelementptr inbounds %struct.io_bdt, %struct.io_bdt* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i8* @U64_HI(i32 %154)
  %156 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  %157 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %156, i32 0, i32 3
  %158 = load %struct.e4_fcoe_task_context*, %struct.e4_fcoe_task_context** %157, align 8
  %159 = getelementptr inbounds %struct.e4_fcoe_task_context, %struct.e4_fcoe_task_context* %158, i32 0, i32 5
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 0
  store i8* %155, i8** %160, align 8
  %161 = load i32, i32* %16, align 4
  %162 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  %163 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %162, i32 0, i32 3
  %164 = load %struct.e4_fcoe_task_context*, %struct.e4_fcoe_task_context** %163, align 8
  %165 = getelementptr inbounds %struct.e4_fcoe_task_context, %struct.e4_fcoe_task_context* %164, i32 0, i32 2
  store i32 %161, i32* %165, align 8
  %166 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  %167 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %166, i32 0, i32 6
  %168 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %167, align 8
  %169 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %168)
  %170 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  %171 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %170, i32 0, i32 3
  %172 = load %struct.e4_fcoe_task_context*, %struct.e4_fcoe_task_context** %171, align 8
  %173 = getelementptr inbounds %struct.e4_fcoe_task_context, %struct.e4_fcoe_task_context* %172, i32 0, i32 4
  store i32 %169, i32* %173, align 8
  %174 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  %175 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @QEDF_IOREQ_SLOW_SGE, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %184

179:                                              ; preds = %132
  %180 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  %181 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %180, i32 0, i32 3
  %182 = load %struct.e4_fcoe_task_context*, %struct.e4_fcoe_task_context** %181, align 8
  %183 = getelementptr inbounds %struct.e4_fcoe_task_context, %struct.e4_fcoe_task_context* %182, i32 0, i32 3
  store i32 1, i32* %183, align 4
  br label %189

184:                                              ; preds = %132
  %185 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  %186 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %185, i32 0, i32 3
  %187 = load %struct.e4_fcoe_task_context*, %struct.e4_fcoe_task_context** %186, align 8
  %188 = getelementptr inbounds %struct.e4_fcoe_task_context, %struct.e4_fcoe_task_context* %187, i32 0, i32 3
  store i32 0, i32* %188, align 4
  br label %189

189:                                              ; preds = %184, %179
  br label %190

190:                                              ; preds = %189, %75
  %191 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  %192 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %191, i32 0, i32 5
  %193 = load i32, i32* %192, align 8
  %194 = call i8* @U64_LO(i32 %193)
  %195 = getelementptr inbounds %struct.regpair, %struct.regpair* %19, i32 0, i32 1
  store i8* %194, i8** %195, align 8
  %196 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  %197 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %196, i32 0, i32 5
  %198 = load i32, i32* %197, align 8
  %199 = call i8* @U64_HI(i32 %198)
  %200 = getelementptr inbounds %struct.regpair, %struct.regpair* %19, i32 0, i32 0
  store i8* %199, i8** %200, align 8
  %201 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  %202 = getelementptr inbounds [8 x i8*], [8 x i8*]* %15, i64 0, i64 0
  %203 = bitcast i8** %202 to %struct.fcp_cmnd*
  %204 = call i32 @qedf_build_fcp_cmnd(%struct.qedf_ioreq* %201, %struct.fcp_cmnd* %203)
  store i32 0, i32* %23, align 4
  store i32 0, i32* %22, align 4
  br label %205

205:                                              ; preds = %218, %190
  %206 = load i32, i32* %22, align 4
  %207 = load i32, i32* %23, align 4
  %208 = icmp slt i32 %206, %207
  br i1 %208, label %209, label %221

209:                                              ; preds = %205
  %210 = load i32, i32* %22, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [8 x i8*], [8 x i8*]* %15, i64 0, i64 %211
  %213 = load i8*, i8** %212, align 8
  %214 = call i8* @cpu_to_be32(i8* %213)
  %215 = load i32, i32* %22, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds [8 x i8*], [8 x i8*]* %15, i64 0, i64 %216
  store i8* %214, i8** %217, align 8
  br label %218

218:                                              ; preds = %209
  %219 = load i32, i32* %22, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %22, align 4
  br label %205

221:                                              ; preds = %205
  %222 = getelementptr inbounds [32 x i32], [32 x i32]* %14, i64 0, i64 0
  %223 = getelementptr inbounds [8 x i8*], [8 x i8*]* %15, i64 0, i64 0
  %224 = call i32 @memcpy(i32* %222, i8** %223, i32 4)
  %225 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  %226 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %225, i32 0, i32 4
  %227 = load %struct.e4_fcoe_task_context*, %struct.e4_fcoe_task_context** %226, align 8
  %228 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  %229 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %228, i32 0, i32 3
  %230 = load %struct.e4_fcoe_task_context*, %struct.e4_fcoe_task_context** %229, align 8
  %231 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  %232 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 8
  %234 = getelementptr inbounds [32 x i32], [32 x i32]* %14, i64 0, i64 0
  %235 = bitcast %struct.regpair* %19 to { i8*, i8* }*
  %236 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %235, i32 0, i32 0
  %237 = load i8*, i8** %236, align 8
  %238 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %235, i32 0, i32 1
  %239 = load i8*, i8** %238, align 8
  %240 = call i32 @init_initiator_rw_fcoe_task(%struct.e4_fcoe_task_context* %227, %struct.e4_fcoe_task_context* %230, i8* %237, i8* %239, i32 %233, i32* %234)
  %241 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  %242 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %241, i32 0, i32 1
  %243 = load i64, i64* %242, align 8
  %244 = load i64, i64* @QEDF_IOREQ_SLOW_SGE, align 8
  %245 = icmp eq i64 %243, %244
  br i1 %245, label %246, label %251

246:                                              ; preds = %221
  %247 = load %struct.qedf_ctx*, %struct.qedf_ctx** %17, align 8
  %248 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %248, align 4
  br label %256

251:                                              ; preds = %221
  %252 = load %struct.qedf_ctx*, %struct.qedf_ctx** %17, align 8
  %253 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %253, align 4
  br label %256

256:                                              ; preds = %251, %246
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @memset(%struct.e4_fcoe_task_context*, i32, i32) #1

declare dso_local i8* @U64_LO(i32) #1

declare dso_local i8* @U64_HI(i32) #1

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @qedf_build_fcp_cmnd(%struct.qedf_ioreq*, %struct.fcp_cmnd*) #1

declare dso_local i8* @cpu_to_be32(i8*) #1

declare dso_local i32 @memcpy(i32*, i8**, i32) #1

declare dso_local i32 @init_initiator_rw_fcoe_task(%struct.e4_fcoe_task_context*, %struct.e4_fcoe_task_context*, i8*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
