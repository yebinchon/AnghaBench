; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_io.c_qedf_post_io_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_io.c_qedf_post_io_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedf_rport = type { %struct.fcoe_wqe*, i32 }
%struct.fcoe_wqe = type { i32 }
%struct.qedf_ioreq = type { i64, i32, %struct.scsi_cmnd*, i32, i32, i64, i32, i32, i32 }
%struct.scsi_cmnd = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32 }
%struct.TYPE_3__ = type { i8* }
%struct.fc_lport = type { i32 }
%struct.qedf_ctx = type { i32, i32, i32, i32, i32 }
%struct.e4_fcoe_task_context = type { i32 }

@QEDF_IOREQ_FAST_SGE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i64 0, align 8
@FCOE_TASK_TYPE_READ_INITIATOR = common dso_local global i32 0, align 4
@QEDF_READ = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i64 0, align 8
@FCOE_TASK_TYPE_WRITE_INITIATOR = common dso_local global i32 0, align 4
@QEDF_WRITE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"BD list creation failed.\0A\00", align 1
@qedf_release_cmd = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@QEDF_RPORT_SESSION_READY = common dso_local global i32 0, align 4
@QEDF_RPORT_UPLOADING_CONNECTION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Session not offloaded yet.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"task_ctx is NULL, xid=%d.\0A\00", align 1
@QEDF_CMD_OUTSTANDING = common dso_local global i32 0, align 4
@qedf_io_tracing = common dso_local global i64 0, align 8
@QEDF_IO_TRACE_REQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qedf_post_io_req(%struct.qedf_rport* %0, %struct.qedf_ioreq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qedf_rport*, align 8
  %5 = alloca %struct.qedf_ioreq*, align 8
  %6 = alloca %struct.scsi_cmnd*, align 8
  %7 = alloca %struct.Scsi_Host*, align 8
  %8 = alloca %struct.fc_lport*, align 8
  %9 = alloca %struct.qedf_ctx*, align 8
  %10 = alloca %struct.e4_fcoe_task_context*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.fcoe_wqe*, align 8
  %14 = alloca i64, align 8
  store %struct.qedf_rport* %0, %struct.qedf_rport** %4, align 8
  store %struct.qedf_ioreq* %1, %struct.qedf_ioreq** %5, align 8
  %15 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %16 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %15, i32 0, i32 2
  %17 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %16, align 8
  store %struct.scsi_cmnd* %17, %struct.scsi_cmnd** %6, align 8
  %18 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %19 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load %struct.Scsi_Host*, %struct.Scsi_Host** %21, align 8
  store %struct.Scsi_Host* %22, %struct.Scsi_Host** %7, align 8
  %23 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %24 = call %struct.fc_lport* @shost_priv(%struct.Scsi_Host* %23)
  store %struct.fc_lport* %24, %struct.fc_lport** %8, align 8
  %25 = load %struct.fc_lport*, %struct.fc_lport** %8, align 8
  %26 = call %struct.qedf_ctx* @lport_priv(%struct.fc_lport* %25)
  store %struct.qedf_ctx* %26, %struct.qedf_ctx** %9, align 8
  store i32 0, i32* %12, align 4
  %27 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %28 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %27)
  %29 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %30 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %29, i32 0, i32 8
  store i32 %28, i32* %30, align 8
  %31 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %32 = bitcast %struct.qedf_ioreq* %31 to i8*
  %33 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %34 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i8* %32, i8** %35, align 8
  %36 = load i32, i32* @QEDF_IOREQ_FAST_SGE, align 4
  %37 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %38 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %37, i32 0, i32 7
  store i32 %36, i32* %38, align 4
  %39 = call i32 (...) @smp_processor_id()
  %40 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %41 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 8
  %42 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %43 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @DMA_FROM_DEVICE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %2
  %48 = load i32, i32* @FCOE_TASK_TYPE_READ_INITIATOR, align 4
  store i32 %48, i32* %12, align 4
  %49 = load i64, i64* @QEDF_READ, align 8
  %50 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %51 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %50, i32 0, i32 5
  store i64 %49, i64* %51, align 8
  %52 = load %struct.qedf_ctx*, %struct.qedf_ctx** %9, align 8
  %53 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  br label %79

56:                                               ; preds = %2
  %57 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %58 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @DMA_TO_DEVICE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %56
  %63 = load i32, i32* @FCOE_TASK_TYPE_WRITE_INITIATOR, align 4
  store i32 %63, i32* %12, align 4
  %64 = load i64, i64* @QEDF_WRITE, align 8
  %65 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %66 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %65, i32 0, i32 5
  store i64 %64, i64* %66, align 8
  %67 = load %struct.qedf_ctx*, %struct.qedf_ctx** %9, align 8
  %68 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  br label %78

71:                                               ; preds = %56
  %72 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %73 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %72, i32 0, i32 5
  store i64 0, i64* %73, align 8
  %74 = load %struct.qedf_ctx*, %struct.qedf_ctx** %9, align 8
  %75 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %71, %62
  br label %79

79:                                               ; preds = %78, %47
  %80 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %81 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %11, align 8
  %83 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %84 = call i64 @qedf_build_bd_list_from_sg(%struct.qedf_ioreq* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %98

86:                                               ; preds = %79
  %87 = load %struct.qedf_ctx*, %struct.qedf_ctx** %9, align 8
  %88 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %87, i32 0, i32 0
  %89 = call i32 @QEDF_ERR(i32* %88, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %90 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %91 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %90, i32 0, i32 2
  store %struct.scsi_cmnd* null, %struct.scsi_cmnd** %91, align 8
  %92 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %93 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %92, i32 0, i32 4
  %94 = load i32, i32* @qedf_release_cmd, align 4
  %95 = call i32 @kref_put(i32* %93, i32 %94)
  %96 = load i32, i32* @EAGAIN, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %3, align 4
  br label %185

98:                                               ; preds = %79
  %99 = load i32, i32* @QEDF_RPORT_SESSION_READY, align 4
  %100 = load %struct.qedf_rport*, %struct.qedf_rport** %4, align 8
  %101 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %100, i32 0, i32 1
  %102 = call i64 @test_bit(i32 %99, i32* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %98
  %105 = load i32, i32* @QEDF_RPORT_UPLOADING_CONNECTION, align 4
  %106 = load %struct.qedf_rport*, %struct.qedf_rport** %4, align 8
  %107 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %106, i32 0, i32 1
  %108 = call i64 @test_bit(i32 %105, i32* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %122

110:                                              ; preds = %104, %98
  %111 = load %struct.qedf_ctx*, %struct.qedf_ctx** %9, align 8
  %112 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %111, i32 0, i32 0
  %113 = call i32 @QEDF_ERR(i32* %112, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %114 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %115 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %114, i32 0, i32 2
  store %struct.scsi_cmnd* null, %struct.scsi_cmnd** %115, align 8
  %116 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %117 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %116, i32 0, i32 4
  %118 = load i32, i32* @qedf_release_cmd, align 4
  %119 = call i32 @kref_put(i32* %117, i32 %118)
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %3, align 4
  br label %185

122:                                              ; preds = %104
  %123 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %124 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %123, i32 0, i32 1
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = trunc i64 %127 to i32
  %129 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %130 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 8
  %131 = load %struct.qedf_rport*, %struct.qedf_rport** %4, align 8
  %132 = call i64 @qedf_get_sqe_idx(%struct.qedf_rport* %131)
  store i64 %132, i64* %14, align 8
  %133 = load %struct.qedf_rport*, %struct.qedf_rport** %4, align 8
  %134 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %133, i32 0, i32 0
  %135 = load %struct.fcoe_wqe*, %struct.fcoe_wqe** %134, align 8
  %136 = load i64, i64* %14, align 8
  %137 = getelementptr inbounds %struct.fcoe_wqe, %struct.fcoe_wqe* %135, i64 %136
  store %struct.fcoe_wqe* %137, %struct.fcoe_wqe** %13, align 8
  %138 = load %struct.fcoe_wqe*, %struct.fcoe_wqe** %13, align 8
  %139 = call i32 @memset(%struct.fcoe_wqe* %138, i32 0, i32 4)
  %140 = load %struct.qedf_ctx*, %struct.qedf_ctx** %9, align 8
  %141 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %140, i32 0, i32 1
  %142 = load i64, i64* %11, align 8
  %143 = call %struct.e4_fcoe_task_context* @qedf_get_task_mem(i32* %141, i64 %142)
  store %struct.e4_fcoe_task_context* %143, %struct.e4_fcoe_task_context** %10, align 8
  %144 = load %struct.e4_fcoe_task_context*, %struct.e4_fcoe_task_context** %10, align 8
  %145 = icmp ne %struct.e4_fcoe_task_context* %144, null
  br i1 %145, label %159, label %146

146:                                              ; preds = %122
  %147 = load %struct.qedf_ctx*, %struct.qedf_ctx** %9, align 8
  %148 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %147, i32 0, i32 0
  %149 = load i64, i64* %11, align 8
  %150 = call i32 @QEDF_WARN(i32* %148, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %149)
  %151 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %152 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %151, i32 0, i32 2
  store %struct.scsi_cmnd* null, %struct.scsi_cmnd** %152, align 8
  %153 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %154 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %153, i32 0, i32 4
  %155 = load i32, i32* @qedf_release_cmd, align 4
  %156 = call i32 @kref_put(i32* %154, i32 %155)
  %157 = load i32, i32* @EINVAL, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %3, align 4
  br label %185

159:                                              ; preds = %122
  %160 = load %struct.qedf_rport*, %struct.qedf_rport** %4, align 8
  %161 = load %struct.fc_lport*, %struct.fc_lport** %8, align 8
  %162 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %163 = load %struct.e4_fcoe_task_context*, %struct.e4_fcoe_task_context** %10, align 8
  %164 = load %struct.fcoe_wqe*, %struct.fcoe_wqe** %13, align 8
  %165 = call i32 @qedf_init_task(%struct.qedf_rport* %160, %struct.fc_lport* %161, %struct.qedf_ioreq* %162, %struct.e4_fcoe_task_context* %163, %struct.fcoe_wqe* %164)
  %166 = load %struct.qedf_rport*, %struct.qedf_rport** %4, align 8
  %167 = call i32 @qedf_ring_doorbell(%struct.qedf_rport* %166)
  %168 = load i32, i32* @QEDF_CMD_OUTSTANDING, align 4
  %169 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %170 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %169, i32 0, i32 3
  %171 = call i32 @set_bit(i32 %168, i32* %170)
  %172 = load i64, i64* @qedf_io_tracing, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %184

174:                                              ; preds = %159
  %175 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %176 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %175, i32 0, i32 2
  %177 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %176, align 8
  %178 = icmp ne %struct.scsi_cmnd* %177, null
  br i1 %178, label %179, label %184

179:                                              ; preds = %174
  %180 = load %struct.qedf_rport*, %struct.qedf_rport** %4, align 8
  %181 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %182 = load i32, i32* @QEDF_IO_TRACE_REQ, align 4
  %183 = call i32 @qedf_trace_io(%struct.qedf_rport* %180, %struct.qedf_ioreq* %181, i32 %182)
  br label %184

184:                                              ; preds = %179, %174, %159
  store i32 0, i32* %3, align 4
  br label %185

185:                                              ; preds = %184, %146, %110, %86
  %186 = load i32, i32* %3, align 4
  ret i32 %186
}

declare dso_local %struct.fc_lport* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local %struct.qedf_ctx* @lport_priv(%struct.fc_lport*) #1

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i64 @qedf_build_bd_list_from_sg(%struct.qedf_ioreq*) #1

declare dso_local i32 @QEDF_ERR(i32*, i8*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @qedf_get_sqe_idx(%struct.qedf_rport*) #1

declare dso_local i32 @memset(%struct.fcoe_wqe*, i32, i32) #1

declare dso_local %struct.e4_fcoe_task_context* @qedf_get_task_mem(i32*, i64) #1

declare dso_local i32 @QEDF_WARN(i32*, i8*, i64) #1

declare dso_local i32 @qedf_init_task(%struct.qedf_rport*, %struct.fc_lport*, %struct.qedf_ioreq*, %struct.e4_fcoe_task_context*, %struct.fcoe_wqe*) #1

declare dso_local i32 @qedf_ring_doorbell(%struct.qedf_rport*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @qedf_trace_io(%struct.qedf_rport*, %struct.qedf_ioreq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
