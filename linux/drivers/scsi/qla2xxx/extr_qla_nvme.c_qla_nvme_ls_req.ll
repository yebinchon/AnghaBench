; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nvme.c_qla_nvme_ls_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nvme.c_qla_nvme_ls_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_fc_local_port = type { i32 }
%struct.nvme_fc_remote_port = type { %struct.qla_nvme_rport* }
%struct.qla_nvme_rport = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.scsi_qla_host*, i64 }
%struct.scsi_qla_host = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { %struct.TYPE_14__*, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.nvmefc_ls_req = type { i32, i32, i32, i32, i32, %struct.nvme_private* }
%struct.nvme_private = type { %struct.TYPE_17__*, %struct.nvmefc_ls_req*, i32 }
%struct.TYPE_17__ = type { i8*, i32*, i32, %struct.TYPE_13__, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.srb_iocb }
%struct.srb_iocb = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i64, i64, %struct.nvmefc_ls_req* }

@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@SRB_NVME_LS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"nvme_ls\00", align 1
@qla_nvme_sp_ls_done = common dso_local global i32 0, align 4
@qla_nvme_release_ls_cmd_kref = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"qla2x00_start_sp failed = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_fc_local_port*, %struct.nvme_fc_remote_port*, %struct.nvmefc_ls_req*)* @qla_nvme_ls_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla_nvme_ls_req(%struct.nvme_fc_local_port* %0, %struct.nvme_fc_remote_port* %1, %struct.nvmefc_ls_req* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvme_fc_local_port*, align 8
  %6 = alloca %struct.nvme_fc_remote_port*, align 8
  %7 = alloca %struct.nvmefc_ls_req*, align 8
  %8 = alloca %struct.qla_nvme_rport*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca %struct.srb_iocb*, align 8
  %11 = alloca %struct.nvme_private*, align 8
  %12 = alloca %struct.scsi_qla_host*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.qla_hw_data*, align 8
  %15 = alloca %struct.TYPE_17__*, align 8
  store %struct.nvme_fc_local_port* %0, %struct.nvme_fc_local_port** %5, align 8
  store %struct.nvme_fc_remote_port* %1, %struct.nvme_fc_remote_port** %6, align 8
  store %struct.nvmefc_ls_req* %2, %struct.nvmefc_ls_req** %7, align 8
  %16 = load %struct.nvme_fc_remote_port*, %struct.nvme_fc_remote_port** %6, align 8
  %17 = getelementptr inbounds %struct.nvme_fc_remote_port, %struct.nvme_fc_remote_port* %16, i32 0, i32 0
  %18 = load %struct.qla_nvme_rport*, %struct.qla_nvme_rport** %17, align 8
  store %struct.qla_nvme_rport* %18, %struct.qla_nvme_rport** %8, align 8
  %19 = load %struct.qla_nvme_rport*, %struct.qla_nvme_rport** %8, align 8
  %20 = getelementptr inbounds %struct.qla_nvme_rport, %struct.qla_nvme_rport* %19, i32 0, i32 0
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  store %struct.TYPE_18__* %21, %struct.TYPE_18__** %9, align 8
  %22 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %7, align 8
  %23 = getelementptr inbounds %struct.nvmefc_ls_req, %struct.nvmefc_ls_req* %22, i32 0, i32 5
  %24 = load %struct.nvme_private*, %struct.nvme_private** %23, align 8
  store %struct.nvme_private* %24, %struct.nvme_private** %11, align 8
  %25 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %25, i32* %13, align 4
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %27 = icmp ne %struct.TYPE_18__* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %3
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %30 = icmp ne %struct.TYPE_18__* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31, %3
  %37 = load i32, i32* %13, align 4
  store i32 %37, i32* %4, align 4
  br label %186

38:                                               ; preds = %31, %28
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 0
  %41 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %40, align 8
  store %struct.scsi_qla_host* %41, %struct.scsi_qla_host** %12, align 8
  %42 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %12, align 8
  %43 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %42, i32 0, i32 0
  %44 = load %struct.qla_hw_data*, %struct.qla_hw_data** %43, align 8
  store %struct.qla_hw_data* %44, %struct.qla_hw_data** %14, align 8
  %45 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %46 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %38
  %51 = load i32, i32* %13, align 4
  store i32 %51, i32* %4, align 4
  br label %186

52:                                               ; preds = %38
  %53 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %12, align 8
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %55 = load i32, i32* @GFP_ATOMIC, align 4
  %56 = call %struct.TYPE_17__* @qla2x00_get_sp(%struct.scsi_qla_host* %53, %struct.TYPE_18__* %54, i32 %55)
  store %struct.TYPE_17__* %56, %struct.TYPE_17__** %15, align 8
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %58 = icmp ne %struct.TYPE_17__* %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %52
  %60 = load i32, i32* %13, align 4
  store i32 %60, i32* %4, align 4
  br label %186

61:                                               ; preds = %52
  %62 = load i32, i32* @SRB_NVME_LS, align 4
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 7
  store i32 %62, i32* %64, align 4
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %66, align 8
  %67 = load i32, i32* @qla_nvme_sp_ls_done, align 4
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 6
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* @qla_nvme_release_ls_cmd_kref, align 4
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 5
  store i32 %70, i32* %72, align 4
  %73 = load %struct.nvme_private*, %struct.nvme_private** %11, align 8
  %74 = bitcast %struct.nvme_private* %73 to i8*
  %75 = bitcast i8* %74 to i32*
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 1
  store i32* %75, i32** %77, align 8
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %79 = load %struct.nvme_private*, %struct.nvme_private** %11, align 8
  %80 = getelementptr inbounds %struct.nvme_private, %struct.nvme_private* %79, i32 0, i32 0
  store %struct.TYPE_17__* %78, %struct.TYPE_17__** %80, align 8
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 4
  %83 = call i32 @kref_init(i32* %82)
  %84 = load %struct.nvme_private*, %struct.nvme_private** %11, align 8
  %85 = getelementptr inbounds %struct.nvme_private, %struct.nvme_private* %84, i32 0, i32 2
  %86 = call i32 @spin_lock_init(i32* %85)
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  store %struct.srb_iocb* %89, %struct.srb_iocb** %10, align 8
  %90 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %7, align 8
  %91 = load %struct.nvme_private*, %struct.nvme_private** %11, align 8
  %92 = getelementptr inbounds %struct.nvme_private, %struct.nvme_private* %91, i32 0, i32 1
  store %struct.nvmefc_ls_req* %90, %struct.nvmefc_ls_req** %92, align 8
  %93 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %7, align 8
  %94 = load %struct.srb_iocb*, %struct.srb_iocb** %10, align 8
  %95 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 7
  store %struct.nvmefc_ls_req* %93, %struct.nvmefc_ls_req** %97, align 8
  %98 = load %struct.srb_iocb*, %struct.srb_iocb** %10, align 8
  %99 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 6
  store i64 0, i64* %101, align 8
  %102 = load %struct.srb_iocb*, %struct.srb_iocb** %10, align 8
  %103 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 5
  store i64 0, i64* %105, align 8
  %106 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %7, align 8
  %107 = getelementptr inbounds %struct.nvmefc_ls_req, %struct.nvmefc_ls_req* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.srb_iocb*, %struct.srb_iocb** %10, align 8
  %110 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 4
  store i32 %108, i32* %112, align 8
  %113 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %7, align 8
  %114 = getelementptr inbounds %struct.nvmefc_ls_req, %struct.nvmefc_ls_req* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.srb_iocb*, %struct.srb_iocb** %10, align 8
  %117 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 3
  store i32 %115, i32* %119, align 4
  %120 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %7, align 8
  %121 = getelementptr inbounds %struct.nvmefc_ls_req, %struct.nvmefc_ls_req* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.srb_iocb*, %struct.srb_iocb** %10, align 8
  %124 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 2
  store i32 %122, i32* %126, align 8
  %127 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %7, align 8
  %128 = getelementptr inbounds %struct.nvmefc_ls_req, %struct.nvmefc_ls_req* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.srb_iocb*, %struct.srb_iocb** %10, align 8
  %131 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 1
  store i32 %129, i32* %133, align 4
  %134 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %135 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %134, i32 0, i32 0
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 0
  %138 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %7, align 8
  %139 = getelementptr inbounds %struct.nvmefc_ls_req, %struct.nvmefc_ls_req* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %7, align 8
  %142 = getelementptr inbounds %struct.nvmefc_ls_req, %struct.nvmefc_ls_req* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @DMA_TO_DEVICE, align 4
  %145 = call i32 @dma_map_single(i32* %137, i32 %140, i32 %143, i32 %144)
  %146 = load %struct.srb_iocb*, %struct.srb_iocb** %10, align 8
  %147 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 0
  store i32 %145, i32* %149, align 8
  %150 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %151 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %150, i32 0, i32 0
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 0
  %154 = load %struct.srb_iocb*, %struct.srb_iocb** %10, align 8
  %155 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %7, align 8
  %160 = getelementptr inbounds %struct.nvmefc_ls_req, %struct.nvmefc_ls_req* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @DMA_TO_DEVICE, align 4
  %163 = call i32 @dma_sync_single_for_device(i32* %153, i32 %158, i32 %161, i32 %162)
  %164 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %165 = call i32 @qla2x00_start_sp(%struct.TYPE_17__* %164)
  store i32 %165, i32* %13, align 4
  %166 = load i32, i32* %13, align 4
  %167 = load i32, i32* @QLA_SUCCESS, align 4
  %168 = icmp ne i32 %166, %167
  br i1 %168, label %169, label %184

169:                                              ; preds = %61
  %170 = load i32, i32* @ql_log_warn, align 4
  %171 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %12, align 8
  %172 = load i32, i32* %13, align 4
  %173 = call i32 @ql_log(i32 %170, %struct.scsi_qla_host* %171, i32 28686, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %172)
  %174 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 2
  %176 = call i32 @wake_up(i32* %175)
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 1
  store i32* null, i32** %178, align 8
  %179 = load %struct.nvme_private*, %struct.nvme_private** %11, align 8
  %180 = getelementptr inbounds %struct.nvme_private, %struct.nvme_private* %179, i32 0, i32 0
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %180, align 8
  %181 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %182 = call i32 @qla2x00_rel_sp(%struct.TYPE_17__* %181)
  %183 = load i32, i32* %13, align 4
  store i32 %183, i32* %4, align 4
  br label %186

184:                                              ; preds = %61
  %185 = load i32, i32* %13, align 4
  store i32 %185, i32* %4, align 4
  br label %186

186:                                              ; preds = %184, %169, %59, %50, %36
  %187 = load i32, i32* %4, align 4
  ret i32 %187
}

declare dso_local %struct.TYPE_17__* @qla2x00_get_sp(%struct.scsi_qla_host*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @dma_map_single(i32*, i32, i32, i32) #1

declare dso_local i32 @dma_sync_single_for_device(i32*, i32, i32, i32) #1

declare dso_local i32 @qla2x00_start_sp(%struct.TYPE_17__*) #1

declare dso_local i32 @ql_log(i32, %struct.scsi_qla_host*, i32, i8*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @qla2x00_rel_sp(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
