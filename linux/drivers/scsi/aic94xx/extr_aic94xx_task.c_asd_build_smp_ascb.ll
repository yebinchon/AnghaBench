; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_task.c_asd_build_smp_ascb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_task.c_asd_build_smp_ascb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ascb = type { i32, %struct.scb*, %struct.asd_ha_struct* }
%struct.scb = type { %struct.TYPE_12__, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { i8*, i8*, %struct.TYPE_10__, %struct.TYPE_9__, i32 }
%struct.TYPE_10__ = type { i8*, i8* }
%struct.TYPE_9__ = type { i8*, i8* }
%struct.TYPE_8__ = type { i32 }
%struct.asd_ha_struct = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.sas_task = type { %struct.TYPE_11__, %struct.domain_device* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.domain_device = type { i64, i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@INITIATE_SMP_TASK = common dso_local global i32 0, align 4
@asd_task_tasklet_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asd_ascb*, %struct.sas_task*, i32)* @asd_build_smp_ascb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asd_build_smp_ascb(%struct.asd_ascb* %0, %struct.sas_task* %1, i32 %2) #0 {
  %4 = alloca %struct.asd_ascb*, align 8
  %5 = alloca %struct.sas_task*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.asd_ha_struct*, align 8
  %8 = alloca %struct.domain_device*, align 8
  %9 = alloca %struct.scb*, align 8
  store %struct.asd_ascb* %0, %struct.asd_ascb** %4, align 8
  store %struct.sas_task* %1, %struct.sas_task** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.asd_ascb*, %struct.asd_ascb** %4, align 8
  %11 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %10, i32 0, i32 2
  %12 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %11, align 8
  store %struct.asd_ha_struct* %12, %struct.asd_ha_struct** %7, align 8
  %13 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %14 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %13, i32 0, i32 1
  %15 = load %struct.domain_device*, %struct.domain_device** %14, align 8
  store %struct.domain_device* %15, %struct.domain_device** %8, align 8
  %16 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %7, align 8
  %17 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %21 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %23 = load i32, i32* @DMA_TO_DEVICE, align 4
  %24 = call i32 @dma_map_sg(i32* %19, i32* %22, i32 1, i32 %23)
  %25 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %7, align 8
  %26 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %25, i32 0, i32 0
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %30 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %33 = call i32 @dma_map_sg(i32* %28, i32* %31, i32 1, i32 %32)
  %34 = load %struct.asd_ascb*, %struct.asd_ascb** %4, align 8
  %35 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %34, i32 0, i32 1
  %36 = load %struct.scb*, %struct.scb** %35, align 8
  store %struct.scb* %36, %struct.scb** %9, align 8
  %37 = load i32, i32* @INITIATE_SMP_TASK, align 4
  %38 = load %struct.scb*, %struct.scb** %9, align 8
  %39 = getelementptr inbounds %struct.scb, %struct.scb* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 8
  %41 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %42 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.scb*, %struct.scb** %9, align 8
  %45 = getelementptr inbounds %struct.scb, %struct.scb* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 4
  store i32 %43, i32* %46, align 8
  %47 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %48 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  %50 = call i64 @sg_dma_address(i32* %49)
  %51 = trunc i64 %50 to i32
  %52 = call i8* @cpu_to_le64(i32 %51)
  %53 = load %struct.scb*, %struct.scb** %9, align 8
  %54 = getelementptr inbounds %struct.scb, %struct.scb* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  store i8* %52, i8** %56, align 8
  %57 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %58 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 1
  %60 = call i64 @sg_dma_len(i32* %59)
  %61 = sub nsw i64 %60, 4
  %62 = call i8* @cpu_to_le32(i64 %61)
  %63 = load %struct.scb*, %struct.scb** %9, align 8
  %64 = getelementptr inbounds %struct.scb, %struct.scb* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  store i8* %62, i8** %66, align 8
  %67 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %68 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = call i64 @sg_dma_address(i32* %69)
  %71 = trunc i64 %70 to i32
  %72 = call i8* @cpu_to_le64(i32 %71)
  %73 = load %struct.scb*, %struct.scb** %9, align 8
  %74 = getelementptr inbounds %struct.scb, %struct.scb* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  store i8* %72, i8** %76, align 8
  %77 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %78 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = call i64 @sg_dma_len(i32* %79)
  %81 = sub nsw i64 %80, 4
  %82 = call i8* @cpu_to_le32(i64 %81)
  %83 = load %struct.scb*, %struct.scb** %9, align 8
  %84 = getelementptr inbounds %struct.scb, %struct.scb* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  store i8* %82, i8** %86, align 8
  %87 = call i8* @cpu_to_le16(i32 65535)
  %88 = load %struct.scb*, %struct.scb** %9, align 8
  %89 = getelementptr inbounds %struct.scb, %struct.scb* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 1
  store i8* %87, i8** %90, align 8
  %91 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %92 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = trunc i64 %93 to i32
  %95 = call i8* @cpu_to_le16(i32 %94)
  %96 = load %struct.scb*, %struct.scb** %9, align 8
  %97 = getelementptr inbounds %struct.scb, %struct.scb* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  store i8* %95, i8** %98, align 8
  %99 = load i32, i32* @asd_task_tasklet_complete, align 4
  %100 = load %struct.asd_ascb*, %struct.asd_ascb** %4, align 8
  %101 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  ret i32 0
}

declare dso_local i32 @dma_map_sg(i32*, i32*, i32, i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i64 @sg_dma_address(i32*) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i64 @sg_dma_len(i32*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
