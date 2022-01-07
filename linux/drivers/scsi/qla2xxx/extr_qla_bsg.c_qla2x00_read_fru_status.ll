; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla2x00_read_fru_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla2x00_read_fru_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsg_job = type { i32, %struct.TYPE_11__, %struct.TYPE_9__, %struct.fc_bsg_reply* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.fc_bsg_reply = type { i32, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64* }
%struct.Scsi_Host = type { i32 }
%struct.TYPE_14__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32 }
%struct.qla_status_reg = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32 }

@DMA_POOL_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EXT_STATUS_NO_MEMORY = common dso_local global i64 0, align 8
@EXT_STATUS_MAILBOX = common dso_local global i64 0, align 8
@DID_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bsg_job*)* @qla2x00_read_fru_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla2x00_read_fru_status(%struct.bsg_job* %0) #0 {
  %2 = alloca %struct.bsg_job*, align 8
  %3 = alloca %struct.fc_bsg_reply*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.qla_hw_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.qla_status_reg*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.bsg_job* %0, %struct.bsg_job** %2, align 8
  %13 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %14 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %13, i32 0, i32 3
  %15 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %14, align 8
  store %struct.fc_bsg_reply* %15, %struct.fc_bsg_reply** %3, align 8
  %16 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %17 = call %struct.Scsi_Host* @fc_bsg_to_shost(%struct.bsg_job* %16)
  store %struct.Scsi_Host* %17, %struct.Scsi_Host** %4, align 8
  %18 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %19 = call %struct.TYPE_14__* @shost_priv(%struct.Scsi_Host* %18)
  store %struct.TYPE_14__* %19, %struct.TYPE_14__** %5, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load %struct.qla_hw_data*, %struct.qla_hw_data** %21, align 8
  store %struct.qla_hw_data* %22, %struct.qla_hw_data** %6, align 8
  store i32 0, i32* %7, align 4
  %23 = load i32, i32* @DMA_POOL_SIZE, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %8, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %9, align 8
  %27 = bitcast i32* %26 to i8*
  %28 = bitcast i8* %27 to %struct.qla_status_reg*
  store %struct.qla_status_reg* %28, %struct.qla_status_reg** %10, align 8
  %29 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %30 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i32* @dma_pool_alloc(i32 %31, i32 %32, i32* %11)
  store i32* %33, i32** %12, align 8
  %34 = load i32*, i32** %12, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %44, label %36

36:                                               ; preds = %1
  %37 = load i64, i64* @EXT_STATUS_NO_MEMORY, align 8
  %38 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %3, align 8
  %39 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 0
  store i64 %37, i64* %43, align 8
  br label %109

44:                                               ; preds = %1
  %45 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %46 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %50 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.qla_status_reg*, %struct.qla_status_reg** %10, align 8
  %54 = call i32 @sg_copy_to_buffer(i32 %48, i32 %52, %struct.qla_status_reg* %53, i32 16)
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %56 = load i32, i32* %11, align 4
  %57 = load i32*, i32** %12, align 8
  %58 = load %struct.qla_status_reg*, %struct.qla_status_reg** %10, align 8
  %59 = getelementptr inbounds %struct.qla_status_reg, %struct.qla_status_reg* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.qla_status_reg*, %struct.qla_status_reg** %10, align 8
  %63 = getelementptr inbounds %struct.qla_status_reg, %struct.qla_status_reg* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.qla_status_reg*, %struct.qla_status_reg** %10, align 8
  %67 = getelementptr inbounds %struct.qla_status_reg, %struct.qla_status_reg* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @qla2x00_read_sfp(%struct.TYPE_14__* %55, i32 %56, i32* %57, i32 %61, i32 %65, i32 4, i32 %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32*, i32** %12, align 8
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.qla_status_reg*, %struct.qla_status_reg** %10, align 8
  %74 = getelementptr inbounds %struct.qla_status_reg, %struct.qla_status_reg* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %44
  %78 = load i64, i64* @EXT_STATUS_MAILBOX, align 8
  %79 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %3, align 8
  %80 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load i64*, i64** %82, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 0
  store i64 %78, i64* %84, align 8
  br label %102

85:                                               ; preds = %44
  %86 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %87 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %91 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.qla_status_reg*, %struct.qla_status_reg** %10, align 8
  %95 = call i32 @sg_copy_from_buffer(i32 %89, i32 %93, %struct.qla_status_reg* %94, i32 16)
  %96 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %3, align 8
  %97 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = load i64*, i64** %99, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 0
  store i64 0, i64* %101, align 8
  br label %102

102:                                              ; preds = %85, %77
  %103 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %104 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32*, i32** %12, align 8
  %107 = load i32, i32* %11, align 4
  %108 = call i32 @dma_pool_free(i32 %105, i32* %106, i32 %107)
  br label %109

109:                                              ; preds = %102, %36
  %110 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %111 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %110, i32 0, i32 0
  store i32 16, i32* %111, align 8
  %112 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %3, align 8
  %113 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %112, i32 0, i32 0
  store i32 16, i32* %113, align 8
  %114 = load i32, i32* @DID_OK, align 4
  %115 = shl i32 %114, 16
  %116 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %3, align 8
  %117 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  %118 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %119 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %3, align 8
  %120 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %3, align 8
  %123 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @bsg_job_done(%struct.bsg_job* %118, i32 %121, i32 %124)
  %126 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %126)
  ret i32 0
}

declare dso_local %struct.Scsi_Host* @fc_bsg_to_shost(%struct.bsg_job*) #1

declare dso_local %struct.TYPE_14__* @shost_priv(%struct.Scsi_Host*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32* @dma_pool_alloc(i32, i32, i32*) #1

declare dso_local i32 @sg_copy_to_buffer(i32, i32, %struct.qla_status_reg*, i32) #1

declare dso_local i32 @qla2x00_read_sfp(%struct.TYPE_14__*, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @sg_copy_from_buffer(i32, i32, %struct.qla_status_reg*, i32) #1

declare dso_local i32 @dma_pool_free(i32, i32*, i32) #1

declare dso_local i32 @bsg_job_done(%struct.bsg_job*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
