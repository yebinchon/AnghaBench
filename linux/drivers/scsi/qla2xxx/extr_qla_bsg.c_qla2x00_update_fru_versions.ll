; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla2x00_update_fru_versions.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla2x00_update_fru_versions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsg_job = type { i32, %struct.TYPE_8__, %struct.fc_bsg_reply* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.fc_bsg_reply = type { i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64* }
%struct.Scsi_Host = type { i32 }
%struct.TYPE_12__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32 }
%struct.qla_image_version_list = type { i32, %struct.qla_image_version* }
%struct.qla_image_version = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }

@DMA_POOL_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EXT_STATUS_NO_MEMORY = common dso_local global i64 0, align 8
@EXT_STATUS_MAILBOX = common dso_local global i64 0, align 8
@DID_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bsg_job*)* @qla2x00_update_fru_versions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla2x00_update_fru_versions(%struct.bsg_job* %0) #0 {
  %2 = alloca %struct.bsg_job*, align 8
  %3 = alloca %struct.fc_bsg_reply*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.qla_hw_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.qla_image_version_list*, align 8
  %11 = alloca %struct.qla_image_version*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.bsg_job* %0, %struct.bsg_job** %2, align 8
  %15 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %16 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %15, i32 0, i32 2
  %17 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %16, align 8
  store %struct.fc_bsg_reply* %17, %struct.fc_bsg_reply** %3, align 8
  %18 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %19 = call %struct.Scsi_Host* @fc_bsg_to_shost(%struct.bsg_job* %18)
  store %struct.Scsi_Host* %19, %struct.Scsi_Host** %4, align 8
  %20 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %21 = call %struct.TYPE_12__* @shost_priv(%struct.Scsi_Host* %20)
  store %struct.TYPE_12__* %21, %struct.TYPE_12__** %5, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load %struct.qla_hw_data*, %struct.qla_hw_data** %23, align 8
  store %struct.qla_hw_data* %24, %struct.qla_hw_data** %6, align 8
  store i32 0, i32* %7, align 4
  %25 = load i32, i32* @DMA_POOL_SIZE, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %8, align 8
  %28 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %9, align 8
  %29 = bitcast i32* %28 to i8*
  %30 = bitcast i8* %29 to %struct.qla_image_version_list*
  store %struct.qla_image_version_list* %30, %struct.qla_image_version_list** %10, align 8
  %31 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %32 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i8* @dma_pool_alloc(i32 %33, i32 %34, i32* %13)
  store i8* %35, i8** %14, align 8
  %36 = load i8*, i8** %14, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %46, label %38

38:                                               ; preds = %1
  %39 = load i64, i64* @EXT_STATUS_NO_MEMORY, align 8
  %40 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %3, align 8
  %41 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 0
  store i64 %39, i64* %45, align 8
  br label %117

46:                                               ; preds = %1
  %47 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %48 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %52 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.qla_image_version_list*, %struct.qla_image_version_list** %10, align 8
  %56 = mul nuw i64 4, %26
  %57 = trunc i64 %56 to i32
  %58 = call i32 @sg_copy_to_buffer(i32 %50, i32 %54, %struct.qla_image_version_list* %55, i32 %57)
  %59 = load %struct.qla_image_version_list*, %struct.qla_image_version_list** %10, align 8
  %60 = getelementptr inbounds %struct.qla_image_version_list, %struct.qla_image_version_list* %59, i32 0, i32 1
  %61 = load %struct.qla_image_version*, %struct.qla_image_version** %60, align 8
  store %struct.qla_image_version* %61, %struct.qla_image_version** %11, align 8
  %62 = load %struct.qla_image_version_list*, %struct.qla_image_version_list** %10, align 8
  %63 = getelementptr inbounds %struct.qla_image_version_list, %struct.qla_image_version_list* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %12, align 4
  br label %65

65:                                               ; preds = %100, %46
  %66 = load i32, i32* %12, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %12, align 4
  %68 = icmp ne i32 %66, 0
  br i1 %68, label %69, label %103

69:                                               ; preds = %65
  %70 = load i8*, i8** %14, align 8
  %71 = load %struct.qla_image_version*, %struct.qla_image_version** %11, align 8
  %72 = getelementptr inbounds %struct.qla_image_version, %struct.qla_image_version* %71, i32 0, i32 1
  %73 = call i32 @memcpy(i8* %70, i32* %72, i32 4)
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %75 = load i32, i32* %13, align 4
  %76 = load i8*, i8** %14, align 8
  %77 = load %struct.qla_image_version*, %struct.qla_image_version** %11, align 8
  %78 = getelementptr inbounds %struct.qla_image_version, %struct.qla_image_version* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.qla_image_version*, %struct.qla_image_version** %11, align 8
  %82 = getelementptr inbounds %struct.qla_image_version, %struct.qla_image_version* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.qla_image_version*, %struct.qla_image_version** %11, align 8
  %86 = getelementptr inbounds %struct.qla_image_version, %struct.qla_image_version* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @qla2x00_write_sfp(%struct.TYPE_12__* %74, i32 %75, i8* %76, i32 %80, i32 %84, i32 4, i32 %88)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %69
  %93 = load i64, i64* @EXT_STATUS_MAILBOX, align 8
  %94 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %3, align 8
  %95 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i64*, i64** %97, align 8
  %99 = getelementptr inbounds i64, i64* %98, i64 0
  store i64 %93, i64* %99, align 8
  br label %110

100:                                              ; preds = %69
  %101 = load %struct.qla_image_version*, %struct.qla_image_version** %11, align 8
  %102 = getelementptr inbounds %struct.qla_image_version, %struct.qla_image_version* %101, i32 1
  store %struct.qla_image_version* %102, %struct.qla_image_version** %11, align 8
  br label %65

103:                                              ; preds = %65
  %104 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %3, align 8
  %105 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load i64*, i64** %107, align 8
  %109 = getelementptr inbounds i64, i64* %108, i64 0
  store i64 0, i64* %109, align 8
  br label %110

110:                                              ; preds = %103, %92
  %111 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %112 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i8*, i8** %14, align 8
  %115 = load i32, i32* %13, align 4
  %116 = call i32 @dma_pool_free(i32 %113, i8* %114, i32 %115)
  br label %117

117:                                              ; preds = %110, %38
  %118 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %119 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %118, i32 0, i32 0
  store i32 16, i32* %119, align 8
  %120 = load i32, i32* @DID_OK, align 4
  %121 = shl i32 %120, 16
  %122 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %3, align 8
  %123 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  %124 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %125 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %3, align 8
  %126 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %3, align 8
  %129 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @bsg_job_done(%struct.bsg_job* %124, i32 %127, i32 %130)
  %132 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %132)
  ret i32 0
}

declare dso_local %struct.Scsi_Host* @fc_bsg_to_shost(%struct.bsg_job*) #1

declare dso_local %struct.TYPE_12__* @shost_priv(%struct.Scsi_Host*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @dma_pool_alloc(i32, i32, i32*) #1

declare dso_local i32 @sg_copy_to_buffer(i32, i32, %struct.qla_image_version_list*, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @qla2x00_write_sfp(%struct.TYPE_12__*, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @dma_pool_free(i32, i8*, i32) #1

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
