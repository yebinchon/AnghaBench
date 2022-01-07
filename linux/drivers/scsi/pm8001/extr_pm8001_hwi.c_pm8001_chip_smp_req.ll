; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_chip_smp_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_chip_smp_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { i32, %struct.inbound_queue_table* }
%struct.inbound_queue_table = type { i32 }
%struct.pm8001_ccb_info = type { i32, %struct.sas_task* }
%struct.sas_task = type { %struct.TYPE_4__, %struct.domain_device* }
%struct.TYPE_4__ = type { %struct.scatterlist, %struct.scatterlist }
%struct.scatterlist = type { i32 }
%struct.domain_device = type { %struct.pm8001_device* }
%struct.pm8001_device = type { i32 }
%struct.smp_req = type { i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8*, i8*, i8* }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@OPC_INB_SMP_REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm8001_hba_info*, %struct.pm8001_ccb_info*)* @pm8001_chip_smp_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8001_chip_smp_req(%struct.pm8001_hba_info* %0, %struct.pm8001_ccb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pm8001_hba_info*, align 8
  %5 = alloca %struct.pm8001_ccb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sas_task*, align 8
  %9 = alloca %struct.domain_device*, align 8
  %10 = alloca %struct.pm8001_device*, align 8
  %11 = alloca %struct.scatterlist*, align 8
  %12 = alloca %struct.scatterlist*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.smp_req, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.inbound_queue_table*, align 8
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %4, align 8
  store %struct.pm8001_ccb_info* %1, %struct.pm8001_ccb_info** %5, align 8
  %18 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %5, align 8
  %19 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %18, i32 0, i32 1
  %20 = load %struct.sas_task*, %struct.sas_task** %19, align 8
  store %struct.sas_task* %20, %struct.sas_task** %8, align 8
  %21 = load %struct.sas_task*, %struct.sas_task** %8, align 8
  %22 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %21, i32 0, i32 1
  %23 = load %struct.domain_device*, %struct.domain_device** %22, align 8
  store %struct.domain_device* %23, %struct.domain_device** %9, align 8
  %24 = load %struct.domain_device*, %struct.domain_device** %9, align 8
  %25 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %24, i32 0, i32 0
  %26 = load %struct.pm8001_device*, %struct.pm8001_device** %25, align 8
  store %struct.pm8001_device* %26, %struct.pm8001_device** %10, align 8
  %27 = call i32 @memset(%struct.smp_req* %15, i32 0, i32 40)
  %28 = load %struct.sas_task*, %struct.sas_task** %8, align 8
  %29 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store %struct.scatterlist* %30, %struct.scatterlist** %11, align 8
  %31 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %32 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %35 = load i32, i32* @DMA_TO_DEVICE, align 4
  %36 = call i32 @dma_map_sg(i32 %33, %struct.scatterlist* %34, i32 1, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %2
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %153

42:                                               ; preds = %2
  %43 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %44 = call i32 @sg_dma_len(%struct.scatterlist* %43)
  store i32 %44, i32* %13, align 4
  %45 = load %struct.sas_task*, %struct.sas_task** %8, align 8
  %46 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  store %struct.scatterlist* %47, %struct.scatterlist** %12, align 8
  %48 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %49 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %52 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %53 = call i32 @dma_map_sg(i32 %50, %struct.scatterlist* %51, i32 1, i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %42
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %7, align 4
  br label %141

59:                                               ; preds = %42
  %60 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %61 = call i32 @sg_dma_len(%struct.scatterlist* %60)
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %13, align 4
  %63 = and i32 %62, 3
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %59
  %66 = load i32, i32* %14, align 4
  %67 = and i32 %66, 3
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %65, %59
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %7, align 4
  br label %130

72:                                               ; preds = %65
  %73 = load i32, i32* @OPC_INB_SMP_REQUEST, align 4
  store i32 %73, i32* %16, align 4
  %74 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %75 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %74, i32 0, i32 1
  %76 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %75, align 8
  %77 = getelementptr inbounds %struct.inbound_queue_table, %struct.inbound_queue_table* %76, i64 0
  store %struct.inbound_queue_table* %77, %struct.inbound_queue_table** %17, align 8
  %78 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %5, align 8
  %79 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i8* @cpu_to_le32(i32 %80)
  %82 = getelementptr inbounds %struct.smp_req, %struct.smp_req* %15, i32 0, i32 0
  store i8* %81, i8** %82, align 8
  %83 = load %struct.sas_task*, %struct.sas_task** %8, align 8
  %84 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = call i64 @sg_dma_address(%struct.scatterlist* %85)
  %87 = trunc i64 %86 to i32
  %88 = call i8* @cpu_to_le64(i32 %87)
  %89 = getelementptr inbounds %struct.smp_req, %struct.smp_req* %15, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 3
  store i8* %88, i8** %90, align 8
  %91 = load %struct.sas_task*, %struct.sas_task** %8, align 8
  %92 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = call i32 @sg_dma_len(%struct.scatterlist* %93)
  %95 = sub nsw i32 %94, 4
  %96 = call i8* @cpu_to_le32(i32 %95)
  %97 = getelementptr inbounds %struct.smp_req, %struct.smp_req* %15, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 2
  store i8* %96, i8** %98, align 8
  %99 = load %struct.sas_task*, %struct.sas_task** %8, align 8
  %100 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = call i64 @sg_dma_address(%struct.scatterlist* %101)
  %103 = trunc i64 %102 to i32
  %104 = call i8* @cpu_to_le64(i32 %103)
  %105 = getelementptr inbounds %struct.smp_req, %struct.smp_req* %15, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  store i8* %104, i8** %106, align 8
  %107 = load %struct.sas_task*, %struct.sas_task** %8, align 8
  %108 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  %110 = call i32 @sg_dma_len(%struct.scatterlist* %109)
  %111 = sub nsw i32 %110, 4
  %112 = call i8* @cpu_to_le32(i32 %111)
  %113 = getelementptr inbounds %struct.smp_req, %struct.smp_req* %15, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  store i8* %112, i8** %114, align 8
  %115 = load %struct.pm8001_device*, %struct.pm8001_device** %10, align 8
  %116 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %struct.smp_req, %struct.smp_req* %15, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 @build_smp_cmd(i32 %117, i8* %119, %struct.smp_req* %15)
  %121 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %122 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %17, align 8
  %123 = load i32, i32* %16, align 4
  %124 = bitcast %struct.smp_req* %15 to i32*
  %125 = call i32 @pm8001_mpi_build_cmd(%struct.pm8001_hba_info* %121, %struct.inbound_queue_table* %122, i32 %123, i32* %124, i32 0)
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* %7, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %72
  br label %130

129:                                              ; preds = %72
  store i32 0, i32* %3, align 4
  br label %153

130:                                              ; preds = %128, %69
  %131 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %132 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %5, align 8
  %135 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %134, i32 0, i32 1
  %136 = load %struct.sas_task*, %struct.sas_task** %135, align 8
  %137 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 1
  %139 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %140 = call i32 @dma_unmap_sg(i32 %133, %struct.scatterlist* %138, i32 1, i32 %139)
  br label %141

141:                                              ; preds = %130, %56
  %142 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %143 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %5, align 8
  %146 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %145, i32 0, i32 1
  %147 = load %struct.sas_task*, %struct.sas_task** %146, align 8
  %148 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = load i32, i32* @DMA_TO_DEVICE, align 4
  %151 = call i32 @dma_unmap_sg(i32 %144, %struct.scatterlist* %149, i32 1, i32 %150)
  %152 = load i32, i32* %7, align 4
  store i32 %152, i32* %3, align 4
  br label %153

153:                                              ; preds = %141, %129, %39
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local i32 @memset(%struct.smp_req*, i32, i32) #1

declare dso_local i32 @dma_map_sg(i32, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @sg_dma_len(%struct.scatterlist*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i64 @sg_dma_address(%struct.scatterlist*) #1

declare dso_local i32 @build_smp_cmd(i32, i8*, %struct.smp_req*) #1

declare dso_local i32 @pm8001_mpi_build_cmd(%struct.pm8001_hba_info*, %struct.inbound_queue_table*, i32, i32*, i32) #1

declare dso_local i32 @dma_unmap_sg(i32, %struct.scatterlist*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
