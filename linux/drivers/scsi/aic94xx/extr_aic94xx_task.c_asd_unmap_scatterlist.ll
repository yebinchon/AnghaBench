; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_task.c_asd_unmap_scatterlist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_task.c_asd_unmap_scatterlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ascb = type { i32, %struct.asd_ha_struct*, %struct.TYPE_7__*, %struct.sas_task* }
%struct.asd_ha_struct = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.sas_task = type { i64, i64, i64, i32, i32 }

@DMA_NONE = common dso_local global i64 0, align 8
@SAS_PROTOCOL_STP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asd_ascb*)* @asd_unmap_scatterlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asd_unmap_scatterlist(%struct.asd_ascb* %0) #0 {
  %2 = alloca %struct.asd_ascb*, align 8
  %3 = alloca %struct.asd_ha_struct*, align 8
  %4 = alloca %struct.sas_task*, align 8
  %5 = alloca i32, align 4
  store %struct.asd_ascb* %0, %struct.asd_ascb** %2, align 8
  %6 = load %struct.asd_ascb*, %struct.asd_ascb** %2, align 8
  %7 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %6, i32 0, i32 1
  %8 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %7, align 8
  store %struct.asd_ha_struct* %8, %struct.asd_ha_struct** %3, align 8
  %9 = load %struct.asd_ascb*, %struct.asd_ascb** %2, align 8
  %10 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %9, i32 0, i32 3
  %11 = load %struct.sas_task*, %struct.sas_task** %10, align 8
  store %struct.sas_task* %11, %struct.sas_task** %4, align 8
  %12 = load %struct.sas_task*, %struct.sas_task** %4, align 8
  %13 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @DMA_NONE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %74

18:                                               ; preds = %1
  %19 = load %struct.sas_task*, %struct.sas_task** %4, align 8
  %20 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %48

23:                                               ; preds = %18
  %24 = load %struct.asd_ascb*, %struct.asd_ascb** %2, align 8
  %25 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %24, i32 0, i32 2
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @le64_to_cpu(i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load %struct.asd_ascb*, %struct.asd_ascb** %2, align 8
  %35 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %34, i32 0, i32 1
  %36 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %35, align 8
  %37 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %36, i32 0, i32 0
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.sas_task*, %struct.sas_task** %4, align 8
  %42 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.sas_task*, %struct.sas_task** %4, align 8
  %45 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @dma_unmap_single(i32* %39, i32 %40, i32 %43, i64 %46)
  br label %74

48:                                               ; preds = %18
  %49 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %50 = load %struct.asd_ascb*, %struct.asd_ascb** %2, align 8
  %51 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @asd_free_coherent(%struct.asd_ha_struct* %49, i32 %52)
  %54 = load %struct.sas_task*, %struct.sas_task** %4, align 8
  %55 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @SAS_PROTOCOL_STP, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %74

59:                                               ; preds = %48
  %60 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %61 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %60, i32 0, i32 0
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load %struct.sas_task*, %struct.sas_task** %4, align 8
  %65 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.sas_task*, %struct.sas_task** %4, align 8
  %68 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.sas_task*, %struct.sas_task** %4, align 8
  %71 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @dma_unmap_sg(i32* %63, i32 %66, i64 %69, i64 %72)
  br label %74

74:                                               ; preds = %17, %23, %59, %48
  ret void
}

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i64) #1

declare dso_local i32 @asd_free_coherent(%struct.asd_ha_struct*, i32) #1

declare dso_local i32 @dma_unmap_sg(i32*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
