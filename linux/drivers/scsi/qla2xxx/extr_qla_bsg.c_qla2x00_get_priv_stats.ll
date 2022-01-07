; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla2x00_get_priv_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla2x00_get_priv_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsg_job = type { i32, %struct.TYPE_16__, %struct.fc_bsg_reply*, %struct.fc_bsg_request* }
%struct.TYPE_16__ = type { i32, i32 }
%struct.fc_bsg_reply = type { i32, i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32* }
%struct.fc_bsg_request = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64* }
%struct.Scsi_Host = type { i32 }
%struct.TYPE_19__ = type { i32, %struct.qla_hw_data* }
%struct.qla_hw_data = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.scsi_qla_host = type { i32 }
%struct.link_statistics = type { i32 }

@QL_VND_GET_PRIV_STATS_EX = common dso_local global i64 0, align 8
@UNLOADING = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Failed to allocate memory for stats.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i32 0, align 4
@ql_dbg_user = common dso_local global i64 0, align 8
@ql_dbg_verbose = common dso_local global i64 0, align 8
@EXT_STATUS_MAILBOX = common dso_local global i32 0, align 4
@EXT_STATUS_OK = common dso_local global i32 0, align 4
@DID_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bsg_job*)* @qla2x00_get_priv_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla2x00_get_priv_stats(%struct.bsg_job* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bsg_job*, align 8
  %4 = alloca %struct.fc_bsg_request*, align 8
  %5 = alloca %struct.fc_bsg_reply*, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.qla_hw_data*, align 8
  %9 = alloca %struct.scsi_qla_host*, align 8
  %10 = alloca %struct.link_statistics*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  store %struct.bsg_job* %0, %struct.bsg_job** %3, align 8
  %15 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %16 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %15, i32 0, i32 3
  %17 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %16, align 8
  store %struct.fc_bsg_request* %17, %struct.fc_bsg_request** %4, align 8
  %18 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %19 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %18, i32 0, i32 2
  %20 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %19, align 8
  store %struct.fc_bsg_reply* %20, %struct.fc_bsg_reply** %5, align 8
  %21 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %22 = call %struct.Scsi_Host* @fc_bsg_to_shost(%struct.bsg_job* %21)
  store %struct.Scsi_Host* %22, %struct.Scsi_Host** %6, align 8
  %23 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %24 = call %struct.TYPE_19__* @shost_priv(%struct.Scsi_Host* %23)
  store %struct.TYPE_19__* %24, %struct.TYPE_19__** %7, align 8
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 1
  %27 = load %struct.qla_hw_data*, %struct.qla_hw_data** %26, align 8
  store %struct.qla_hw_data* %27, %struct.qla_hw_data** %8, align 8
  %28 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %29 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %28, i32 0, i32 0
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %29, align 8
  %31 = call %struct.scsi_qla_host* @pci_get_drvdata(%struct.TYPE_13__* %30)
  store %struct.scsi_qla_host* %31, %struct.scsi_qla_host** %9, align 8
  store %struct.link_statistics* null, %struct.link_statistics** %10, align 8
  %32 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %4, align 8
  %33 = getelementptr inbounds %struct.fc_bsg_request, %struct.fc_bsg_request* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  store i64* %36, i64** %13, align 8
  %37 = load i64*, i64** %13, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @QL_VND_GET_PRIV_STATS_EX, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %1
  %43 = load i64*, i64** %13, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 1
  %45 = load i64, i64* %44, align 8
  br label %47

46:                                               ; preds = %1
  br label %47

47:                                               ; preds = %46, %42
  %48 = phi i64 [ %45, %42 ], [ 0, %46 ]
  store i64 %48, i64* %14, align 8
  %49 = load i32, i32* @UNLOADING, align 4
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 0
  %52 = call i64 @test_bit(i32 %49, i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load i32, i32* @ENODEV, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %160

57:                                               ; preds = %47
  %58 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %59 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %58, i32 0, i32 0
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %59, align 8
  %61 = call i32 @pci_channel_offline(%struct.TYPE_13__* %60)
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load i32, i32* @ENODEV, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %160

67:                                               ; preds = %57
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %69 = call i64 @qla2x00_reset_active(%struct.TYPE_19__* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load i32, i32* @EBUSY, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %160

74:                                               ; preds = %67
  %75 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %76 = call i32 @IS_FWI2_CAPABLE(%struct.qla_hw_data* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %74
  %79 = load i32, i32* @EPERM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %2, align 4
  br label %160

81:                                               ; preds = %74
  %82 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %83 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %82, i32 0, i32 0
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  %86 = load i32, i32* @GFP_KERNEL, align 4
  %87 = call %struct.link_statistics* @dma_alloc_coherent(i32* %85, i32 4, i32* %11, i32 %86)
  store %struct.link_statistics* %87, %struct.link_statistics** %10, align 8
  %88 = load %struct.link_statistics*, %struct.link_statistics** %10, align 8
  %89 = icmp ne %struct.link_statistics* %88, null
  br i1 %89, label %96, label %90

90:                                               ; preds = %81
  %91 = load i32, i32* @ql_log_warn, align 4
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %93 = call i32 @ql_log(i32 %91, %struct.TYPE_19__* %92, i32 28898, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %94 = load i32, i32* @ENOMEM, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %2, align 4
  br label %160

96:                                               ; preds = %81
  %97 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %9, align 8
  %98 = load %struct.link_statistics*, %struct.link_statistics** %10, align 8
  %99 = load i32, i32* %11, align 4
  %100 = load i64, i64* %14, align 8
  %101 = call i32 @qla24xx_get_isp_stats(%struct.scsi_qla_host* %97, %struct.link_statistics* %98, i32 %99, i64 %100)
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* @QLA_SUCCESS, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %122

105:                                              ; preds = %96
  %106 = load i64, i64* @ql_dbg_user, align 8
  %107 = load i64, i64* @ql_dbg_verbose, align 8
  %108 = add nsw i64 %106, %107
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %110 = load %struct.link_statistics*, %struct.link_statistics** %10, align 8
  %111 = call i32 @ql_dump_buffer(i64 %108, %struct.TYPE_19__* %109, i32 28901, %struct.link_statistics* %110, i32 4)
  %112 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %113 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %117 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.link_statistics*, %struct.link_statistics** %10, align 8
  %121 = call i32 @sg_copy_from_buffer(i32 %115, i32 %119, %struct.link_statistics* %120, i32 4)
  br label %122

122:                                              ; preds = %105, %96
  %123 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %5, align 8
  %124 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %123, i32 0, i32 0
  store i32 4, i32* %124, align 8
  %125 = load i32, i32* %12, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %122
  %128 = load i32, i32* @EXT_STATUS_MAILBOX, align 4
  br label %131

129:                                              ; preds = %122
  %130 = load i32, i32* @EXT_STATUS_OK, align 4
  br label %131

131:                                              ; preds = %129, %127
  %132 = phi i32 [ %128, %127 ], [ %130, %129 ]
  %133 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %5, align 8
  %134 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  store i32 %132, i32* %138, align 4
  %139 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %140 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %139, i32 0, i32 0
  store i32 16, i32* %140, align 8
  %141 = load i32, i32* @DID_OK, align 4
  %142 = shl i32 %141, 16
  %143 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %5, align 8
  %144 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 4
  %145 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %146 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %5, align 8
  %147 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %5, align 8
  %150 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @bsg_job_done(%struct.bsg_job* %145, i32 %148, i32 %151)
  %153 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %154 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %153, i32 0, i32 0
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 0
  %157 = load %struct.link_statistics*, %struct.link_statistics** %10, align 8
  %158 = load i32, i32* %11, align 4
  %159 = call i32 @dma_free_coherent(i32* %156, i32 4, %struct.link_statistics* %157, i32 %158)
  store i32 0, i32* %2, align 4
  br label %160

160:                                              ; preds = %131, %90, %78, %71, %64, %54
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local %struct.Scsi_Host* @fc_bsg_to_shost(%struct.bsg_job*) #1

declare dso_local %struct.TYPE_19__* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local %struct.scsi_qla_host* @pci_get_drvdata(%struct.TYPE_13__*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pci_channel_offline(%struct.TYPE_13__*) #1

declare dso_local i64 @qla2x00_reset_active(%struct.TYPE_19__*) #1

declare dso_local i32 @IS_FWI2_CAPABLE(%struct.qla_hw_data*) #1

declare dso_local %struct.link_statistics* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_19__*, i32, i8*) #1

declare dso_local i32 @qla24xx_get_isp_stats(%struct.scsi_qla_host*, %struct.link_statistics*, i32, i64) #1

declare dso_local i32 @ql_dump_buffer(i64, %struct.TYPE_19__*, i32, %struct.link_statistics*, i32) #1

declare dso_local i32 @sg_copy_from_buffer(i32, i32, %struct.link_statistics*, i32) #1

declare dso_local i32 @bsg_job_done(%struct.bsg_job*, i32, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, %struct.link_statistics*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
