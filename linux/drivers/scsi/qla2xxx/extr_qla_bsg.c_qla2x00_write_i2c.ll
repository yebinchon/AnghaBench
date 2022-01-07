; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla2x00_write_i2c.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla2x00_write_i2c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsg_job = type { i32, %struct.TYPE_7__, %struct.fc_bsg_reply* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.fc_bsg_reply = type { i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64* }
%struct.Scsi_Host = type { i32 }
%struct.TYPE_10__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32 }
%struct.qla_i2c_access = type { i32, i32, i32, i32, i32 }

@DMA_POOL_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EXT_STATUS_NO_MEMORY = common dso_local global i64 0, align 8
@EXT_STATUS_MAILBOX = common dso_local global i64 0, align 8
@DID_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bsg_job*)* @qla2x00_write_i2c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla2x00_write_i2c(%struct.bsg_job* %0) #0 {
  %2 = alloca %struct.bsg_job*, align 8
  %3 = alloca %struct.fc_bsg_reply*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.qla_hw_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.qla_i2c_access*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.bsg_job* %0, %struct.bsg_job** %2, align 8
  %13 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %14 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %13, i32 0, i32 2
  %15 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %14, align 8
  store %struct.fc_bsg_reply* %15, %struct.fc_bsg_reply** %3, align 8
  %16 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %17 = call %struct.Scsi_Host* @fc_bsg_to_shost(%struct.bsg_job* %16)
  store %struct.Scsi_Host* %17, %struct.Scsi_Host** %4, align 8
  %18 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %19 = call %struct.TYPE_10__* @shost_priv(%struct.Scsi_Host* %18)
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %5, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
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
  %28 = bitcast i8* %27 to %struct.qla_i2c_access*
  store %struct.qla_i2c_access* %28, %struct.qla_i2c_access** %10, align 8
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
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 0
  store i64 %37, i64* %43, align 8
  br label %103

44:                                               ; preds = %1
  %45 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %46 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %50 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.qla_i2c_access*, %struct.qla_i2c_access** %10, align 8
  %54 = call i32 @sg_copy_to_buffer(i32 %48, i32 %52, %struct.qla_i2c_access* %53, i32 20)
  %55 = load i32*, i32** %12, align 8
  %56 = load %struct.qla_i2c_access*, %struct.qla_i2c_access** %10, align 8
  %57 = getelementptr inbounds %struct.qla_i2c_access, %struct.qla_i2c_access* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.qla_i2c_access*, %struct.qla_i2c_access** %10, align 8
  %60 = getelementptr inbounds %struct.qla_i2c_access, %struct.qla_i2c_access* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @memcpy(i32* %55, i32 %58, i32 %61)
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %64 = load i32, i32* %11, align 4
  %65 = load i32*, i32** %12, align 8
  %66 = load %struct.qla_i2c_access*, %struct.qla_i2c_access** %10, align 8
  %67 = getelementptr inbounds %struct.qla_i2c_access, %struct.qla_i2c_access* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.qla_i2c_access*, %struct.qla_i2c_access** %10, align 8
  %70 = getelementptr inbounds %struct.qla_i2c_access, %struct.qla_i2c_access* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.qla_i2c_access*, %struct.qla_i2c_access** %10, align 8
  %73 = getelementptr inbounds %struct.qla_i2c_access, %struct.qla_i2c_access* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.qla_i2c_access*, %struct.qla_i2c_access** %10, align 8
  %76 = getelementptr inbounds %struct.qla_i2c_access, %struct.qla_i2c_access* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @qla2x00_write_sfp(%struct.TYPE_10__* %63, i32 %64, i32* %65, i32 %68, i32 %71, i32 %74, i32 %77)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %44
  %82 = load i64, i64* @EXT_STATUS_MAILBOX, align 8
  %83 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %3, align 8
  %84 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i64*, i64** %86, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 0
  store i64 %82, i64* %88, align 8
  br label %96

89:                                               ; preds = %44
  %90 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %3, align 8
  %91 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i64*, i64** %93, align 8
  %95 = getelementptr inbounds i64, i64* %94, i64 0
  store i64 0, i64* %95, align 8
  br label %96

96:                                               ; preds = %89, %81
  %97 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %98 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** %12, align 8
  %101 = load i32, i32* %11, align 4
  %102 = call i32 @dma_pool_free(i32 %99, i32* %100, i32 %101)
  br label %103

103:                                              ; preds = %96, %36
  %104 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %105 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %104, i32 0, i32 0
  store i32 16, i32* %105, align 8
  %106 = load i32, i32* @DID_OK, align 4
  %107 = shl i32 %106, 16
  %108 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %3, align 8
  %109 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  %110 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %111 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %3, align 8
  %112 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %3, align 8
  %115 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @bsg_job_done(%struct.bsg_job* %110, i32 %113, i32 %116)
  %118 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %118)
  ret i32 0
}

declare dso_local %struct.Scsi_Host* @fc_bsg_to_shost(%struct.bsg_job*) #1

declare dso_local %struct.TYPE_10__* @shost_priv(%struct.Scsi_Host*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32* @dma_pool_alloc(i32, i32, i32*) #1

declare dso_local i32 @sg_copy_to_buffer(i32, i32, %struct.qla_i2c_access*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @qla2x00_write_sfp(%struct.TYPE_10__*, i32, i32*, i32, i32, i32, i32) #1

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
