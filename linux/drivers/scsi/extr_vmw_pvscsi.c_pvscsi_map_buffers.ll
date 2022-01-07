; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_vmw_pvscsi.c_pvscsi_map_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_vmw_pvscsi.c_pvscsi_map_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvscsi_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pvscsi_ctx = type { i8*, i8*, %struct.scatterlist* }
%struct.scatterlist = type { i32 }
%struct.scsi_cmnd = type { i32 }
%struct.PVSCSIRingReqDesc = type { i32, i8*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"vmw_pvscsi: Failed to map cmd sglist for DMA.\0A\00", align 1
@PVSCSI_FLAG_CMD_WITH_SG_LIST = common dso_local global i32 0, align 4
@SGL_SIZE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"vmw_pvscsi: Failed to map ctx sglist for DMA.\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"vmw_pvscsi: Failed to map direct data buffer for DMA.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvscsi_adapter*, %struct.pvscsi_ctx*, %struct.scsi_cmnd*, %struct.PVSCSIRingReqDesc*)* @pvscsi_map_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvscsi_map_buffers(%struct.pvscsi_adapter* %0, %struct.pvscsi_ctx* %1, %struct.scsi_cmnd* %2, %struct.PVSCSIRingReqDesc* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pvscsi_adapter*, align 8
  %7 = alloca %struct.pvscsi_ctx*, align 8
  %8 = alloca %struct.scsi_cmnd*, align 8
  %9 = alloca %struct.PVSCSIRingReqDesc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.scatterlist*, align 8
  %13 = alloca i32, align 4
  store %struct.pvscsi_adapter* %0, %struct.pvscsi_adapter** %6, align 8
  store %struct.pvscsi_ctx* %1, %struct.pvscsi_ctx** %7, align 8
  store %struct.scsi_cmnd* %2, %struct.scsi_cmnd** %8, align 8
  store %struct.PVSCSIRingReqDesc* %3, %struct.PVSCSIRingReqDesc** %9, align 8
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %15 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %14)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = load %struct.PVSCSIRingReqDesc*, %struct.PVSCSIRingReqDesc** %9, align 8
  %18 = getelementptr inbounds %struct.PVSCSIRingReqDesc, %struct.PVSCSIRingReqDesc* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.PVSCSIRingReqDesc*, %struct.PVSCSIRingReqDesc** %9, align 8
  %20 = getelementptr inbounds %struct.PVSCSIRingReqDesc, %struct.PVSCSIRingReqDesc* %19, i32 0, i32 1
  store i8* null, i8** %20, align 8
  %21 = load i32, i32* %11, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %136

24:                                               ; preds = %4
  %25 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %26 = call %struct.scatterlist* @scsi_sglist(%struct.scsi_cmnd* %25)
  store %struct.scatterlist* %26, %struct.scatterlist** %12, align 8
  %27 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %28 = call i32 @scsi_sg_count(%struct.scsi_cmnd* %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %101

31:                                               ; preds = %24
  %32 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %33 = call i32 @scsi_dma_map(%struct.scsi_cmnd* %32)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = load i32, i32* @KERN_ERR, align 4
  %40 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %41 = call i32 @scmd_printk(i32 %39, %struct.scsi_cmnd* %40, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %136

44:                                               ; preds = %31
  %45 = load i32, i32* %13, align 4
  %46 = icmp sgt i32 %45, 1
  br i1 %46, label %47, label %94

47:                                               ; preds = %44
  %48 = load %struct.pvscsi_ctx*, %struct.pvscsi_ctx** %7, align 8
  %49 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @pvscsi_create_sg(%struct.pvscsi_ctx* %48, %struct.scatterlist* %49, i32 %50)
  %52 = load i32, i32* @PVSCSI_FLAG_CMD_WITH_SG_LIST, align 4
  %53 = load %struct.PVSCSIRingReqDesc*, %struct.PVSCSIRingReqDesc** %9, align 8
  %54 = getelementptr inbounds %struct.PVSCSIRingReqDesc, %struct.PVSCSIRingReqDesc* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  %57 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %6, align 8
  %58 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load %struct.pvscsi_ctx*, %struct.pvscsi_ctx** %7, align 8
  %62 = getelementptr inbounds %struct.pvscsi_ctx, %struct.pvscsi_ctx* %61, i32 0, i32 2
  %63 = load %struct.scatterlist*, %struct.scatterlist** %62, align 8
  %64 = load i32, i32* @SGL_SIZE, align 4
  %65 = load i32, i32* @DMA_TO_DEVICE, align 4
  %66 = call i8* @dma_map_single(i32* %60, %struct.scatterlist* %63, i32 %64, i32 %65)
  %67 = load %struct.pvscsi_ctx*, %struct.pvscsi_ctx** %7, align 8
  %68 = getelementptr inbounds %struct.pvscsi_ctx, %struct.pvscsi_ctx* %67, i32 0, i32 1
  store i8* %66, i8** %68, align 8
  %69 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %6, align 8
  %70 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load %struct.pvscsi_ctx*, %struct.pvscsi_ctx** %7, align 8
  %74 = getelementptr inbounds %struct.pvscsi_ctx, %struct.pvscsi_ctx* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = call i64 @dma_mapping_error(i32* %72, i8* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %47
  %79 = load i32, i32* @KERN_ERR, align 4
  %80 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %81 = call i32 @scmd_printk(i32 %79, %struct.scsi_cmnd* %80, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %82 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %83 = call i32 @scsi_dma_unmap(%struct.scsi_cmnd* %82)
  %84 = load %struct.pvscsi_ctx*, %struct.pvscsi_ctx** %7, align 8
  %85 = getelementptr inbounds %struct.pvscsi_ctx, %struct.pvscsi_ctx* %84, i32 0, i32 1
  store i8* null, i8** %85, align 8
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %5, align 4
  br label %136

88:                                               ; preds = %47
  %89 = load %struct.pvscsi_ctx*, %struct.pvscsi_ctx** %7, align 8
  %90 = getelementptr inbounds %struct.pvscsi_ctx, %struct.pvscsi_ctx* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = load %struct.PVSCSIRingReqDesc*, %struct.PVSCSIRingReqDesc** %9, align 8
  %93 = getelementptr inbounds %struct.PVSCSIRingReqDesc, %struct.PVSCSIRingReqDesc* %92, i32 0, i32 1
  store i8* %91, i8** %93, align 8
  br label %99

94:                                               ; preds = %44
  %95 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %96 = call i8* @sg_dma_address(%struct.scatterlist* %95)
  %97 = load %struct.PVSCSIRingReqDesc*, %struct.PVSCSIRingReqDesc** %9, align 8
  %98 = getelementptr inbounds %struct.PVSCSIRingReqDesc, %struct.PVSCSIRingReqDesc* %97, i32 0, i32 1
  store i8* %96, i8** %98, align 8
  br label %99

99:                                               ; preds = %94, %88
  br label %100

100:                                              ; preds = %99
  br label %135

101:                                              ; preds = %24
  %102 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %6, align 8
  %103 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %102, i32 0, i32 0
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %107 = load i32, i32* %11, align 4
  %108 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %109 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i8* @dma_map_single(i32* %105, %struct.scatterlist* %106, i32 %107, i32 %110)
  %112 = load %struct.pvscsi_ctx*, %struct.pvscsi_ctx** %7, align 8
  %113 = getelementptr inbounds %struct.pvscsi_ctx, %struct.pvscsi_ctx* %112, i32 0, i32 0
  store i8* %111, i8** %113, align 8
  %114 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %6, align 8
  %115 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %114, i32 0, i32 0
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load %struct.pvscsi_ctx*, %struct.pvscsi_ctx** %7, align 8
  %119 = getelementptr inbounds %struct.pvscsi_ctx, %struct.pvscsi_ctx* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = call i64 @dma_mapping_error(i32* %117, i8* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %101
  %124 = load i32, i32* @KERN_ERR, align 4
  %125 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %126 = call i32 @scmd_printk(i32 %124, %struct.scsi_cmnd* %125, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  %127 = load i32, i32* @ENOMEM, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %5, align 4
  br label %136

129:                                              ; preds = %101
  %130 = load %struct.pvscsi_ctx*, %struct.pvscsi_ctx** %7, align 8
  %131 = getelementptr inbounds %struct.pvscsi_ctx, %struct.pvscsi_ctx* %130, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = load %struct.PVSCSIRingReqDesc*, %struct.PVSCSIRingReqDesc** %9, align 8
  %134 = getelementptr inbounds %struct.PVSCSIRingReqDesc, %struct.PVSCSIRingReqDesc* %133, i32 0, i32 1
  store i8* %132, i8** %134, align 8
  br label %135

135:                                              ; preds = %129, %100
  store i32 0, i32* %5, align 4
  br label %136

136:                                              ; preds = %135, %123, %78, %38, %23
  %137 = load i32, i32* %5, align 4
  ret i32 %137
}

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local %struct.scatterlist* @scsi_sglist(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_sg_count(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_dma_map(%struct.scsi_cmnd*) #1

declare dso_local i32 @scmd_printk(i32, %struct.scsi_cmnd*, i8*) #1

declare dso_local i32 @pvscsi_create_sg(%struct.pvscsi_ctx*, %struct.scatterlist*, i32) #1

declare dso_local i8* @dma_map_single(i32*, %struct.scatterlist*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i8*) #1

declare dso_local i32 @scsi_dma_unmap(%struct.scsi_cmnd*) #1

declare dso_local i8* @sg_dma_address(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
