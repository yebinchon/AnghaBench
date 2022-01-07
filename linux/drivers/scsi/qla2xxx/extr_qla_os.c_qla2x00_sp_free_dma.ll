; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_sp_free_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_sp_free_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_11__, %struct.TYPE_8__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.ct6_dsd*, %struct.crc_context* }
%struct.ct6_dsd = type { i64, i32, i32, %struct.crc_context* }
%struct.crc_context = type { i32 }
%struct.TYPE_8__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.scsi_cmnd = type { i32 }

@SRB_DMA_VALID = common dso_local global i32 0, align 4
@SRB_CRC_PROT_DMA_VALID = common dso_local global i32 0, align 4
@SRB_CRC_CTX_DSD_VALID = common dso_local global i32 0, align 4
@SRB_CRC_CTX_DMA_VALID = common dso_local global i32 0, align 4
@SRB_FCP_CMND_DMA_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qla2x00_sp_free_dma(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.qla_hw_data*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.crc_context*, align 8
  %6 = alloca %struct.ct6_dsd*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 2
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  store %struct.qla_hw_data* %11, %struct.qla_hw_data** %3, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %13 = call %struct.scsi_cmnd* @GET_CMD_SP(%struct.TYPE_12__* %12)
  store %struct.scsi_cmnd* %13, %struct.scsi_cmnd** %4, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @SRB_DMA_VALID, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %1
  %21 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %22 = call i32 @scsi_dma_unmap(%struct.scsi_cmnd* %21)
  %23 = load i32, i32* @SRB_DMA_VALID, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 8
  br label %29

29:                                               ; preds = %20, %1
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @SRB_CRC_PROT_DMA_VALID, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %29
  %37 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %38 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %37, i32 0, i32 6
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %42 = call i32 @scsi_prot_sglist(%struct.scsi_cmnd* %41)
  %43 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %44 = call i32 @scsi_prot_sg_count(%struct.scsi_cmnd* %43)
  %45 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %46 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dma_unmap_sg(i32* %40, i32 %42, i32 %44, i32 %47)
  %49 = load i32, i32* @SRB_CRC_PROT_DMA_VALID, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 8
  br label %55

55:                                               ; preds = %36, %29
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @SRB_CRC_CTX_DSD_VALID, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %55
  %63 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  %68 = load %struct.crc_context*, %struct.crc_context** %67, align 8
  %69 = call i32 @qla2x00_clean_dsd_pool(%struct.qla_hw_data* %63, %struct.crc_context* %68)
  %70 = load i32, i32* @SRB_CRC_CTX_DSD_VALID, align 4
  %71 = xor i32 %70, -1
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = and i32 %74, %71
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %62, %55
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @SRB_CRC_CTX_DMA_VALID, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %103

83:                                               ; preds = %76
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  %88 = load %struct.crc_context*, %struct.crc_context** %87, align 8
  store %struct.crc_context* %88, %struct.crc_context** %5, align 8
  %89 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %90 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.crc_context*, %struct.crc_context** %5, align 8
  %93 = load %struct.crc_context*, %struct.crc_context** %5, align 8
  %94 = getelementptr inbounds %struct.crc_context, %struct.crc_context* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @dma_pool_free(i32 %91, %struct.crc_context* %92, i32 %95)
  %97 = load i32, i32* @SRB_CRC_CTX_DMA_VALID, align 4
  %98 = xor i32 %97, -1
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = and i32 %101, %98
  store i32 %102, i32* %100, align 8
  br label %103

103:                                              ; preds = %83, %76
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @SRB_FCP_CMND_DMA_VALID, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %154

110:                                              ; preds = %103
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = load %struct.ct6_dsd*, %struct.ct6_dsd** %114, align 8
  store %struct.ct6_dsd* %115, %struct.ct6_dsd** %6, align 8
  %116 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %117 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.ct6_dsd*, %struct.ct6_dsd** %6, align 8
  %120 = getelementptr inbounds %struct.ct6_dsd, %struct.ct6_dsd* %119, i32 0, i32 3
  %121 = load %struct.crc_context*, %struct.crc_context** %120, align 8
  %122 = load %struct.ct6_dsd*, %struct.ct6_dsd** %6, align 8
  %123 = getelementptr inbounds %struct.ct6_dsd, %struct.ct6_dsd* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @dma_pool_free(i32 %118, %struct.crc_context* %121, i32 %124)
  %126 = load %struct.ct6_dsd*, %struct.ct6_dsd** %6, align 8
  %127 = getelementptr inbounds %struct.ct6_dsd, %struct.ct6_dsd* %126, i32 0, i32 1
  %128 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %129 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %128, i32 0, i32 3
  %130 = call i32 @list_splice(i32* %127, i32* %129)
  %131 = load %struct.ct6_dsd*, %struct.ct6_dsd** %6, align 8
  %132 = getelementptr inbounds %struct.ct6_dsd, %struct.ct6_dsd* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %135 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = sext i32 %136 to i64
  %138 = sub nsw i64 %137, %133
  %139 = trunc i64 %138 to i32
  store i32 %139, i32* %135, align 8
  %140 = load %struct.ct6_dsd*, %struct.ct6_dsd** %6, align 8
  %141 = getelementptr inbounds %struct.ct6_dsd, %struct.ct6_dsd* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %144 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = sext i32 %145 to i64
  %147 = add nsw i64 %146, %142
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %144, align 4
  %149 = load %struct.ct6_dsd*, %struct.ct6_dsd** %6, align 8
  %150 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %151 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @mempool_free(%struct.ct6_dsd* %149, i32 %152)
  br label %154

154:                                              ; preds = %110, %103
  ret void
}

declare dso_local %struct.scsi_cmnd* @GET_CMD_SP(%struct.TYPE_12__*) #1

declare dso_local i32 @scsi_dma_unmap(%struct.scsi_cmnd*) #1

declare dso_local i32 @dma_unmap_sg(i32*, i32, i32, i32) #1

declare dso_local i32 @scsi_prot_sglist(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_prot_sg_count(%struct.scsi_cmnd*) #1

declare dso_local i32 @qla2x00_clean_dsd_pool(%struct.qla_hw_data*, %struct.crc_context*) #1

declare dso_local i32 @dma_pool_free(i32, %struct.crc_context*, i32) #1

declare dso_local i32 @list_splice(i32*, i32*) #1

declare dso_local i32 @mempool_free(%struct.ct6_dsd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
