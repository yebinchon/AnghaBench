; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla2x00_bsg_sp_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla2x00_bsg_sp_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i32, %struct.TYPE_12__, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { %struct.bsg_job* }
%struct.bsg_job = type { %struct.TYPE_17__, %struct.TYPE_15__, %struct.fc_bsg_request* }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.fc_bsg_request = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_11__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.qla_mt_iocb_rqst_fx00 = type { i32 }

@SRB_FXIOCB_BCMD = common dso_local global i64 0, align 8
@SRB_FXDISC_REQ_DMA_VALID = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@SRB_FXDISC_RESP_DMA_VALID = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@SRB_CT_CMD = common dso_local global i64 0, align 8
@SRB_ELS_CMD_HST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qla2x00_bsg_sp_free(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca %struct.qla_hw_data*, align 8
  %4 = alloca %struct.bsg_job*, align 8
  %5 = alloca %struct.fc_bsg_request*, align 8
  %6 = alloca %struct.qla_mt_iocb_rqst_fx00*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  %7 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 3
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  store %struct.qla_hw_data* %11, %struct.qla_hw_data** %3, align 8
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load %struct.bsg_job*, %struct.bsg_job** %14, align 8
  store %struct.bsg_job* %15, %struct.bsg_job** %4, align 8
  %16 = load %struct.bsg_job*, %struct.bsg_job** %4, align 8
  %17 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %16, i32 0, i32 2
  %18 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %17, align 8
  store %struct.fc_bsg_request* %18, %struct.fc_bsg_request** %5, align 8
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SRB_FXIOCB_BCMD, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %76

24:                                               ; preds = %1
  %25 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %5, align 8
  %26 = getelementptr inbounds %struct.fc_bsg_request, %struct.fc_bsg_request* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = bitcast i32* %30 to %struct.qla_mt_iocb_rqst_fx00*
  store %struct.qla_mt_iocb_rqst_fx00* %31, %struct.qla_mt_iocb_rqst_fx00** %6, align 8
  %32 = load %struct.qla_mt_iocb_rqst_fx00*, %struct.qla_mt_iocb_rqst_fx00** %6, align 8
  %33 = getelementptr inbounds %struct.qla_mt_iocb_rqst_fx00, %struct.qla_mt_iocb_rqst_fx00* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @SRB_FXDISC_REQ_DMA_VALID, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %24
  %39 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %40 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %39, i32 0, i32 0
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load %struct.bsg_job*, %struct.bsg_job** %4, align 8
  %44 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.bsg_job*, %struct.bsg_job** %4, align 8
  %48 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @DMA_TO_DEVICE, align 4
  %52 = call i32 @dma_unmap_sg(i32* %42, i32 %46, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %38, %24
  %54 = load %struct.qla_mt_iocb_rqst_fx00*, %struct.qla_mt_iocb_rqst_fx00** %6, align 8
  %55 = getelementptr inbounds %struct.qla_mt_iocb_rqst_fx00, %struct.qla_mt_iocb_rqst_fx00* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @SRB_FXDISC_RESP_DMA_VALID, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %53
  %61 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %62 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %61, i32 0, i32 0
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 0
  %65 = load %struct.bsg_job*, %struct.bsg_job** %4, align 8
  %66 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.bsg_job*, %struct.bsg_job** %4, align 8
  %70 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %74 = call i32 @dma_unmap_sg(i32* %64, i32 %68, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %60, %53
  br label %105

76:                                               ; preds = %1
  %77 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %78 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %77, i32 0, i32 0
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = load %struct.bsg_job*, %struct.bsg_job** %4, align 8
  %82 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.bsg_job*, %struct.bsg_job** %4, align 8
  %86 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @DMA_TO_DEVICE, align 4
  %90 = call i32 @dma_unmap_sg(i32* %80, i32 %84, i32 %88, i32 %89)
  %91 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %92 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %91, i32 0, i32 0
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  %95 = load %struct.bsg_job*, %struct.bsg_job** %4, align 8
  %96 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.bsg_job*, %struct.bsg_job** %4, align 8
  %100 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %104 = call i32 @dma_unmap_sg(i32* %94, i32 %98, i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %76, %75
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @SRB_CT_CMD, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %123, label %111

111:                                              ; preds = %105
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @SRB_FXIOCB_BCMD, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %123, label %117

117:                                              ; preds = %111
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @SRB_ELS_CMD_HST, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %128

123:                                              ; preds = %117, %111, %105
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @kfree(i32 %126)
  br label %128

128:                                              ; preds = %123, %117
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %130 = call i32 @qla2x00_rel_sp(%struct.TYPE_18__* %129)
  ret void
}

declare dso_local i32 @dma_unmap_sg(i32*, i32, i32, i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @qla2x00_rel_sp(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
