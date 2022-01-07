; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_drv_fcoe_fw_funcs.c_init_initiator_midpath_unsolicited_fcoe_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_drv_fcoe_fw_funcs.c_init_initiator_midpath_unsolicited_fcoe_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fcoe_task_params = type { %struct.TYPE_14__*, i32, i64, i32, i32, i32, %struct.e4_fcoe_task_context* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.e4_fcoe_task_context = type { %struct.e4_ustorm_fcoe_task_ag_ctx, %struct.tstorm_fcoe_task_st_ctx, %struct.mstorm_fcoe_task_st_ctx, %struct.ystorm_fcoe_task_st_ctx, %struct.TYPE_8__ }
%struct.e4_ustorm_fcoe_task_ag_ctx = type { i8* }
%struct.tstorm_fcoe_task_st_ctx = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i8*, i8* }
%struct.mstorm_fcoe_task_st_ctx = type { i8*, i32, i32, i32 }
%struct.ystorm_fcoe_task_st_ctx = type { i32, %struct.TYPE_10__, i8*, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.fcoe_tx_mid_path_params = type { i32 }
%struct.scsi_sgl_task_params = type { i32, i32 }

@YSTORM_FCOE_TASK_ST_CTX_TX_SGL_MODE = common dso_local global i32 0, align 4
@SCSI_FAST_SGL = common dso_local global i32 0, align 4
@MSTORM_FCOE_TASK_ST_CTX_MP_INCLUDE_FC_HEADER = common dso_local global i32 0, align 4
@FCOE_TSTORM_FCOE_TASK_ST_CTX_READ_WRITE_EXP_FIRST_FRAME = common dso_local global i32 0, align 4
@FCOE_RX_ID = common dso_local global i32 0, align 4
@SEND_FCOE_MIDPATH = common dso_local global i32 0, align 4
@FCOE_WQE_NUM_SGES = common dso_local global i32 0, align 4
@FCOE_WQE_SGL_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_initiator_midpath_unsolicited_fcoe_task(%struct.fcoe_task_params* %0, %struct.fcoe_tx_mid_path_params* %1, %struct.scsi_sgl_task_params* %2, %struct.scsi_sgl_task_params* %3, i32 %4) #0 {
  %6 = alloca %struct.fcoe_task_params*, align 8
  %7 = alloca %struct.fcoe_tx_mid_path_params*, align 8
  %8 = alloca %struct.scsi_sgl_task_params*, align 8
  %9 = alloca %struct.scsi_sgl_task_params*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.e4_fcoe_task_context*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.e4_ustorm_fcoe_task_ag_ctx*, align 8
  %14 = alloca %struct.ystorm_fcoe_task_st_ctx*, align 8
  %15 = alloca %struct.tstorm_fcoe_task_st_ctx*, align 8
  %16 = alloca %struct.mstorm_fcoe_task_st_ctx*, align 8
  %17 = alloca i8*, align 8
  store %struct.fcoe_task_params* %0, %struct.fcoe_task_params** %6, align 8
  store %struct.fcoe_tx_mid_path_params* %1, %struct.fcoe_tx_mid_path_params** %7, align 8
  store %struct.scsi_sgl_task_params* %2, %struct.scsi_sgl_task_params** %8, align 8
  store %struct.scsi_sgl_task_params* %3, %struct.scsi_sgl_task_params** %9, align 8
  store i32 %4, i32* %10, align 4
  %18 = load %struct.fcoe_task_params*, %struct.fcoe_task_params** %6, align 8
  %19 = getelementptr inbounds %struct.fcoe_task_params, %struct.fcoe_task_params* %18, i32 0, i32 6
  %20 = load %struct.e4_fcoe_task_context*, %struct.e4_fcoe_task_context** %19, align 8
  store %struct.e4_fcoe_task_context* %20, %struct.e4_fcoe_task_context** %11, align 8
  %21 = load %struct.e4_fcoe_task_context*, %struct.e4_fcoe_task_context** %11, align 8
  %22 = getelementptr inbounds %struct.e4_fcoe_task_context, %struct.e4_fcoe_task_context* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %12, align 4
  %25 = load %struct.e4_fcoe_task_context*, %struct.e4_fcoe_task_context** %11, align 8
  %26 = call i32 @memset(%struct.e4_fcoe_task_context* %25, i32 0, i32 104)
  %27 = load i32, i32* %12, align 4
  %28 = load %struct.e4_fcoe_task_context*, %struct.e4_fcoe_task_context** %11, align 8
  %29 = getelementptr inbounds %struct.e4_fcoe_task_context, %struct.e4_fcoe_task_context* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 8
  %31 = load %struct.e4_fcoe_task_context*, %struct.e4_fcoe_task_context** %11, align 8
  %32 = getelementptr inbounds %struct.e4_fcoe_task_context, %struct.e4_fcoe_task_context* %31, i32 0, i32 3
  store %struct.ystorm_fcoe_task_st_ctx* %32, %struct.ystorm_fcoe_task_st_ctx** %14, align 8
  %33 = load %struct.ystorm_fcoe_task_st_ctx*, %struct.ystorm_fcoe_task_st_ctx** %14, align 8
  %34 = getelementptr inbounds %struct.ystorm_fcoe_task_st_ctx, %struct.ystorm_fcoe_task_st_ctx* %33, i32 0, i32 5
  %35 = load %struct.ystorm_fcoe_task_st_ctx*, %struct.ystorm_fcoe_task_st_ctx** %14, align 8
  %36 = getelementptr inbounds %struct.ystorm_fcoe_task_st_ctx, %struct.ystorm_fcoe_task_st_ctx* %35, i32 0, i32 4
  %37 = load %struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params** %8, align 8
  %38 = call i32 @init_scsi_sgl_context(i32* %34, i32* %36, %struct.scsi_sgl_task_params* %37)
  %39 = load %struct.ystorm_fcoe_task_st_ctx*, %struct.ystorm_fcoe_task_st_ctx** %14, align 8
  %40 = getelementptr inbounds %struct.ystorm_fcoe_task_st_ctx, %struct.ystorm_fcoe_task_st_ctx* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @YSTORM_FCOE_TASK_ST_CTX_TX_SGL_MODE, align 4
  %43 = load i32, i32* @SCSI_FAST_SGL, align 4
  %44 = call i32 @SET_FIELD(i32 %41, i32 %42, i32 %43)
  %45 = load %struct.fcoe_task_params*, %struct.fcoe_task_params** %6, align 8
  %46 = getelementptr inbounds %struct.fcoe_task_params, %struct.fcoe_task_params* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 8
  %48 = call i8* @cpu_to_le32(i32 %47)
  %49 = load %struct.ystorm_fcoe_task_st_ctx*, %struct.ystorm_fcoe_task_st_ctx** %14, align 8
  %50 = getelementptr inbounds %struct.ystorm_fcoe_task_st_ctx, %struct.ystorm_fcoe_task_st_ctx* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  %51 = load %struct.fcoe_task_params*, %struct.fcoe_task_params** %6, align 8
  %52 = getelementptr inbounds %struct.fcoe_task_params, %struct.fcoe_task_params* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = load %struct.ystorm_fcoe_task_st_ctx*, %struct.ystorm_fcoe_task_st_ctx** %14, align 8
  %56 = getelementptr inbounds %struct.ystorm_fcoe_task_st_ctx, %struct.ystorm_fcoe_task_st_ctx* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.ystorm_fcoe_task_st_ctx*, %struct.ystorm_fcoe_task_st_ctx** %14, align 8
  %58 = getelementptr inbounds %struct.ystorm_fcoe_task_st_ctx, %struct.ystorm_fcoe_task_st_ctx* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load %struct.fcoe_tx_mid_path_params*, %struct.fcoe_tx_mid_path_params** %7, align 8
  %62 = call i32 @memcpy(i32* %60, %struct.fcoe_tx_mid_path_params* %61, i32 4)
  %63 = load %struct.e4_fcoe_task_context*, %struct.e4_fcoe_task_context** %11, align 8
  %64 = getelementptr inbounds %struct.e4_fcoe_task_context, %struct.e4_fcoe_task_context* %63, i32 0, i32 2
  store %struct.mstorm_fcoe_task_st_ctx* %64, %struct.mstorm_fcoe_task_st_ctx** %16, align 8
  %65 = load %struct.mstorm_fcoe_task_st_ctx*, %struct.mstorm_fcoe_task_st_ctx** %16, align 8
  %66 = getelementptr inbounds %struct.mstorm_fcoe_task_st_ctx, %struct.mstorm_fcoe_task_st_ctx* %65, i32 0, i32 3
  %67 = load %struct.mstorm_fcoe_task_st_ctx*, %struct.mstorm_fcoe_task_st_ctx** %16, align 8
  %68 = getelementptr inbounds %struct.mstorm_fcoe_task_st_ctx, %struct.mstorm_fcoe_task_st_ctx* %67, i32 0, i32 2
  %69 = load %struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params** %9, align 8
  %70 = call i32 @init_scsi_sgl_context(i32* %66, i32* %68, %struct.scsi_sgl_task_params* %69)
  %71 = load %struct.mstorm_fcoe_task_st_ctx*, %struct.mstorm_fcoe_task_st_ctx** %16, align 8
  %72 = getelementptr inbounds %struct.mstorm_fcoe_task_st_ctx, %struct.mstorm_fcoe_task_st_ctx* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @MSTORM_FCOE_TASK_ST_CTX_MP_INCLUDE_FC_HEADER, align 4
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @SET_FIELD(i32 %73, i32 %74, i32 %75)
  %77 = load %struct.fcoe_task_params*, %struct.fcoe_task_params** %6, align 8
  %78 = getelementptr inbounds %struct.fcoe_task_params, %struct.fcoe_task_params* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = call i8* @cpu_to_le32(i32 %79)
  %81 = load %struct.mstorm_fcoe_task_st_ctx*, %struct.mstorm_fcoe_task_st_ctx** %16, align 8
  %82 = getelementptr inbounds %struct.mstorm_fcoe_task_st_ctx, %struct.mstorm_fcoe_task_st_ctx* %81, i32 0, i32 0
  store i8* %80, i8** %82, align 8
  %83 = load %struct.e4_fcoe_task_context*, %struct.e4_fcoe_task_context** %11, align 8
  %84 = getelementptr inbounds %struct.e4_fcoe_task_context, %struct.e4_fcoe_task_context* %83, i32 0, i32 1
  store %struct.tstorm_fcoe_task_st_ctx* %84, %struct.tstorm_fcoe_task_st_ctx** %15, align 8
  %85 = load %struct.fcoe_task_params*, %struct.fcoe_task_params** %6, align 8
  %86 = getelementptr inbounds %struct.fcoe_task_params, %struct.fcoe_task_params* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = call i8* @cpu_to_le32(i32 %87)
  %89 = load %struct.tstorm_fcoe_task_st_ctx*, %struct.tstorm_fcoe_task_st_ctx** %15, align 8
  %90 = getelementptr inbounds %struct.tstorm_fcoe_task_st_ctx, %struct.tstorm_fcoe_task_st_ctx* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 2
  store i8* %88, i8** %91, align 8
  %92 = load %struct.fcoe_task_params*, %struct.fcoe_task_params** %6, align 8
  %93 = getelementptr inbounds %struct.fcoe_task_params, %struct.fcoe_task_params* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i8* @cpu_to_le32(i32 %94)
  store i8* %95, i8** %17, align 8
  %96 = load i8*, i8** %17, align 8
  %97 = load %struct.tstorm_fcoe_task_st_ctx*, %struct.tstorm_fcoe_task_st_ctx** %15, align 8
  %98 = getelementptr inbounds %struct.tstorm_fcoe_task_st_ctx, %struct.tstorm_fcoe_task_st_ctx* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 1
  store i8* %96, i8** %99, align 8
  %100 = load %struct.fcoe_task_params*, %struct.fcoe_task_params** %6, align 8
  %101 = getelementptr inbounds %struct.fcoe_task_params, %struct.fcoe_task_params* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = trunc i64 %102 to i32
  %104 = load %struct.tstorm_fcoe_task_st_ctx*, %struct.tstorm_fcoe_task_st_ctx** %15, align 8
  %105 = getelementptr inbounds %struct.tstorm_fcoe_task_st_ctx, %struct.tstorm_fcoe_task_st_ctx* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  store i32 %103, i32* %106, align 8
  %107 = load %struct.tstorm_fcoe_task_st_ctx*, %struct.tstorm_fcoe_task_st_ctx** %15, align 8
  %108 = getelementptr inbounds %struct.tstorm_fcoe_task_st_ctx, %struct.tstorm_fcoe_task_st_ctx* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @FCOE_TSTORM_FCOE_TASK_ST_CTX_READ_WRITE_EXP_FIRST_FRAME, align 4
  %112 = call i32 @SET_FIELD(i32 %110, i32 %111, i32 1)
  %113 = load i32, i32* @FCOE_RX_ID, align 4
  %114 = call i32 @cpu_to_le16(i32 %113)
  %115 = load %struct.tstorm_fcoe_task_st_ctx*, %struct.tstorm_fcoe_task_st_ctx** %15, align 8
  %116 = getelementptr inbounds %struct.tstorm_fcoe_task_st_ctx, %struct.tstorm_fcoe_task_st_ctx* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  store i32 %114, i32* %117, align 8
  %118 = load %struct.e4_fcoe_task_context*, %struct.e4_fcoe_task_context** %11, align 8
  %119 = getelementptr inbounds %struct.e4_fcoe_task_context, %struct.e4_fcoe_task_context* %118, i32 0, i32 0
  store %struct.e4_ustorm_fcoe_task_ag_ctx* %119, %struct.e4_ustorm_fcoe_task_ag_ctx** %13, align 8
  %120 = load %struct.fcoe_task_params*, %struct.fcoe_task_params** %6, align 8
  %121 = getelementptr inbounds %struct.fcoe_task_params, %struct.fcoe_task_params* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = call i8* @cpu_to_le32(i32 %122)
  %124 = load %struct.e4_ustorm_fcoe_task_ag_ctx*, %struct.e4_ustorm_fcoe_task_ag_ctx** %13, align 8
  %125 = getelementptr inbounds %struct.e4_ustorm_fcoe_task_ag_ctx, %struct.e4_ustorm_fcoe_task_ag_ctx* %124, i32 0, i32 0
  store i8* %123, i8** %125, align 8
  %126 = load %struct.fcoe_task_params*, %struct.fcoe_task_params** %6, align 8
  %127 = load i32, i32* @SEND_FCOE_MIDPATH, align 4
  %128 = call i32 @init_common_sqe(%struct.fcoe_task_params* %126, i32 %127)
  %129 = load %struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params** %8, align 8
  %130 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.fcoe_task_params*, %struct.fcoe_task_params** %6, align 8
  %133 = getelementptr inbounds %struct.fcoe_task_params, %struct.fcoe_task_params* %132, i32 0, i32 0
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 0
  store i32 %131, i32* %136, align 4
  %137 = load %struct.fcoe_task_params*, %struct.fcoe_task_params** %6, align 8
  %138 = getelementptr inbounds %struct.fcoe_task_params, %struct.fcoe_task_params* %137, i32 0, i32 0
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @FCOE_WQE_NUM_SGES, align 4
  %143 = load %struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params** %8, align 8
  %144 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @SET_FIELD(i32 %141, i32 %142, i32 %145)
  %147 = load %struct.fcoe_task_params*, %struct.fcoe_task_params** %6, align 8
  %148 = getelementptr inbounds %struct.fcoe_task_params, %struct.fcoe_task_params* %147, i32 0, i32 0
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @FCOE_WQE_SGL_MODE, align 4
  %153 = load i32, i32* @SCSI_FAST_SGL, align 4
  %154 = call i32 @SET_FIELD(i32 %151, i32 %152, i32 %153)
  ret i32 0
}

declare dso_local i32 @memset(%struct.e4_fcoe_task_context*, i32, i32) #1

declare dso_local i32 @init_scsi_sgl_context(i32*, i32*, %struct.scsi_sgl_task_params*) #1

declare dso_local i32 @SET_FIELD(i32, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.fcoe_tx_mid_path_params*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @init_common_sqe(%struct.fcoe_task_params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
