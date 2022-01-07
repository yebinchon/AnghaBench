; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_issue_mbox_ext_handle_job.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_issue_mbox_ext_handle_job.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsg_job = type { %struct.TYPE_17__, i32*, %struct.fc_bsg_reply* }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.fc_bsg_reply = type { i64, i32 }
%struct.lpfc_hba = type { %struct.TYPE_18__, i32 }
%struct.TYPE_18__ = type { i32, i32, i32, %struct.lpfc_dmabuf* }
%struct.lpfc_dmabuf = type { i64 }
%struct.TYPE_19__ = type { %struct.TYPE_11__, %struct.bsg_job_data* }
%struct.TYPE_11__ = type { i32 }
%struct.bsg_job_data = type { %struct.TYPE_13__, %struct.bsg_job* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.lpfc_sli_config_mbox = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i32 }

@lpfc_mbox_hdr_emb = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_LIBDFC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [86 x i8] c"2937 SLI_CONFIG ext-buffer mailbox command (x%x/x%x) complete bsg job done, bsize:%d\0A\00", align 1
@dma_ebuf = common dso_local global i32 0, align 4
@sta_pos_addr = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [70 x i8] c"2938 SLI_CONFIG ext-buffer mailbox command (x%x/x%x) failure, rc:x%x\0A\00", align 1
@LPFC_BSG_MBOX_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bsg_job* (%struct.lpfc_hba*, %struct.TYPE_19__*)* @lpfc_bsg_issue_mbox_ext_handle_job to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bsg_job* @lpfc_bsg_issue_mbox_ext_handle_job(%struct.lpfc_hba* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.bsg_job_data*, align 8
  %6 = alloca %struct.bsg_job*, align 8
  %7 = alloca %struct.fc_bsg_reply*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.lpfc_dmabuf*, align 8
  %14 = alloca %struct.lpfc_sli_config_mbox*, align 8
  %15 = alloca i32*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %4, align 8
  store i32 0, i32* %12, align 4
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 1
  %18 = load %struct.bsg_job_data*, %struct.bsg_job_data** %17, align 8
  store %struct.bsg_job_data* %18, %struct.bsg_job_data** %5, align 8
  %19 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %20 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %19, i32 0, i32 1
  %21 = load i64, i64* %10, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.bsg_job_data*, %struct.bsg_job_data** %5, align 8
  %24 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %23, i32 0, i32 1
  %25 = load %struct.bsg_job*, %struct.bsg_job** %24, align 8
  store %struct.bsg_job* %25, %struct.bsg_job** %6, align 8
  %26 = load %struct.bsg_job*, %struct.bsg_job** %6, align 8
  %27 = icmp ne %struct.bsg_job* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %2
  %29 = load %struct.bsg_job*, %struct.bsg_job** %6, align 8
  %30 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %29, i32 0, i32 2
  %31 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %30, align 8
  store %struct.fc_bsg_reply* %31, %struct.fc_bsg_reply** %7, align 8
  %32 = load %struct.bsg_job*, %struct.bsg_job** %6, align 8
  %33 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %32, i32 0, i32 1
  store i32* null, i32** %33, align 8
  br label %34

34:                                               ; preds = %28, %2
  %35 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %36 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %35, i32 0, i32 1
  %37 = load i64, i64* %10, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  store i32* %41, i32** %8, align 8
  %42 = load %struct.bsg_job_data*, %struct.bsg_job_data** %5, align 8
  %43 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i32*
  store i32* %47, i32** %9, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = call i32 @memcpy(i32* %48, i32* %49, i32 4)
  %51 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %52 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 3
  %54 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %53, align 8
  store %struct.lpfc_dmabuf* %54, %struct.lpfc_dmabuf** %13, align 8
  %55 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %56 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to %struct.lpfc_sli_config_mbox*
  store %struct.lpfc_sli_config_mbox* %58, %struct.lpfc_sli_config_mbox** %14, align 8
  %59 = load i32, i32* @lpfc_mbox_hdr_emb, align 4
  %60 = load %struct.lpfc_sli_config_mbox*, %struct.lpfc_sli_config_mbox** %14, align 8
  %61 = getelementptr inbounds %struct.lpfc_sli_config_mbox, %struct.lpfc_sli_config_mbox* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 1
  %64 = call i32 @bsg_bf_get(i32 %59, i32* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %84, label %66

66:                                               ; preds = %34
  %67 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %68 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to i32*
  store i32* %70, i32** %15, align 8
  %71 = load i32*, i32** %15, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 4
  %73 = load i32*, i32** %15, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 4
  %75 = load %struct.lpfc_sli_config_mbox*, %struct.lpfc_sli_config_mbox** %14, align 8
  %76 = getelementptr inbounds %struct.lpfc_sli_config_mbox, %struct.lpfc_sli_config_mbox* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i64 0
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @lpfc_sli_pcimem_bcopy(i32* %72, i32* %74, i32 %82)
  br label %84

84:                                               ; preds = %66, %34
  %85 = load %struct.bsg_job*, %struct.bsg_job** %6, align 8
  %86 = icmp ne %struct.bsg_job* %85, null
  br i1 %86, label %87, label %136

87:                                               ; preds = %84
  %88 = load %struct.bsg_job*, %struct.bsg_job** %6, align 8
  %89 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  store i32 %91, i32* %11, align 4
  %92 = load %struct.bsg_job*, %struct.bsg_job** %6, align 8
  %93 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.bsg_job*, %struct.bsg_job** %6, align 8
  %97 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** %9, align 8
  %101 = load i32, i32* %11, align 4
  %102 = call i32 @sg_copy_from_buffer(i32 %95, i32 %99, i32* %100, i32 %101)
  %103 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %7, align 8
  %104 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 8
  %105 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %7, align 8
  %106 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %105, i32 0, i32 0
  store i64 0, i64* %106, align 8
  %107 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %108 = load i32, i32* @KERN_INFO, align 4
  %109 = load i32, i32* @LOG_LIBDFC, align 4
  %110 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %111 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %115 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %11, align 4
  %119 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %107, i32 %108, i32 %109, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0), i32 %113, i32 %117, i32 %118)
  %120 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %121 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %122 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %126 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @dma_ebuf, align 4
  %130 = load i32, i32* @sta_pos_addr, align 4
  %131 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %132 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 3
  %134 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %133, align 8
  %135 = call i32 @lpfc_idiag_mbxacc_dump_bsg_mbox(%struct.lpfc_hba* %120, i32 %124, i32 %128, i32 %129, i32 %130, %struct.lpfc_dmabuf* %134, i32 0)
  br label %150

136:                                              ; preds = %84
  %137 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %138 = load i32, i32* @KERN_ERR, align 4
  %139 = load i32, i32* @LOG_LIBDFC, align 4
  %140 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %141 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %145 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %12, align 4
  %149 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %137, i32 %138, i32 %139, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 %143, i32 %147, i32 %148)
  br label %150

150:                                              ; preds = %136, %87
  %151 = load i32, i32* @LPFC_BSG_MBOX_DONE, align 4
  %152 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %153 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 0
  store i32 %151, i32* %154, align 8
  %155 = load %struct.bsg_job_data*, %struct.bsg_job_data** %5, align 8
  %156 = call i32 @kfree(%struct.bsg_job_data* %155)
  %157 = load %struct.bsg_job*, %struct.bsg_job** %6, align 8
  ret %struct.bsg_job* %157
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @bsg_bf_get(i32, i32*) #1

declare dso_local i32 @lpfc_sli_pcimem_bcopy(i32*, i32*, i32) #1

declare dso_local i32 @sg_copy_from_buffer(i32, i32, i32*, i32) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @lpfc_idiag_mbxacc_dump_bsg_mbox(%struct.lpfc_hba*, i32, i32, i32, i32, %struct.lpfc_dmabuf*, i32) #1

declare dso_local i32 @kfree(%struct.bsg_job_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
