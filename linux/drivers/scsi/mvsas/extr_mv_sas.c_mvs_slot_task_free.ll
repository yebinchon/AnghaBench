; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_sas.c_mvs_slot_task_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_sas.c_mvs_slot_task_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvs_info = type { i32, i32 }
%struct.sas_task = type { i32, i32*, %struct.TYPE_2__, i32, i32* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.mvs_slot_info = type { i32, i32, i32*, i32*, i32, i32*, i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvs_info*, %struct.sas_task*, %struct.mvs_slot_info*, i32)* @mvs_slot_task_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvs_slot_task_free(%struct.mvs_info* %0, %struct.sas_task* %1, %struct.mvs_slot_info* %2, i32 %3) #0 {
  %5 = alloca %struct.mvs_info*, align 8
  %6 = alloca %struct.sas_task*, align 8
  %7 = alloca %struct.mvs_slot_info*, align 8
  %8 = alloca i32, align 4
  store %struct.mvs_info* %0, %struct.mvs_info** %5, align 8
  store %struct.sas_task* %1, %struct.sas_task** %6, align 8
  store %struct.mvs_slot_info* %2, %struct.mvs_slot_info** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.mvs_slot_info*, %struct.mvs_slot_info** %7, align 8
  %10 = icmp ne %struct.mvs_slot_info* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %4
  br label %100

12:                                               ; preds = %4
  %13 = load %struct.mvs_slot_info*, %struct.mvs_slot_info** %7, align 8
  %14 = getelementptr inbounds %struct.mvs_slot_info, %struct.mvs_slot_info* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  br label %100

18:                                               ; preds = %12
  %19 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %20 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @sas_protocol_ata(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %44, label %24

24:                                               ; preds = %18
  %25 = load %struct.mvs_slot_info*, %struct.mvs_slot_info** %7, align 8
  %26 = getelementptr inbounds %struct.mvs_slot_info, %struct.mvs_slot_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %24
  %30 = load %struct.mvs_info*, %struct.mvs_info** %5, align 8
  %31 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %34 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %33, i32 0, i32 4
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.mvs_slot_info*, %struct.mvs_slot_info** %7, align 8
  %37 = getelementptr inbounds %struct.mvs_slot_info, %struct.mvs_slot_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %40 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @dma_unmap_sg(i32 %32, i32* %35, i32 %38, i32 %41)
  br label %43

43:                                               ; preds = %29, %24
  br label %44

44:                                               ; preds = %43, %18
  %45 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %46 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  switch i32 %47, label %66 [
    i32 130, label %48
    i32 131, label %65
    i32 128, label %65
    i32 129, label %65
  ]

48:                                               ; preds = %44
  %49 = load %struct.mvs_info*, %struct.mvs_info** %5, align 8
  %50 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %53 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %56 = call i32 @dma_unmap_sg(i32 %51, i32* %54, i32 1, i32 %55)
  %57 = load %struct.mvs_info*, %struct.mvs_info** %5, align 8
  %58 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %61 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* @DMA_TO_DEVICE, align 4
  %64 = call i32 @dma_unmap_sg(i32 %59, i32* %62, i32 1, i32 %63)
  br label %67

65:                                               ; preds = %44, %44, %44
  br label %66

66:                                               ; preds = %44, %65
  br label %67

67:                                               ; preds = %66, %48
  %68 = load %struct.mvs_slot_info*, %struct.mvs_slot_info** %7, align 8
  %69 = getelementptr inbounds %struct.mvs_slot_info, %struct.mvs_slot_info* %68, i32 0, i32 5
  %70 = load i32*, i32** %69, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %85

72:                                               ; preds = %67
  %73 = load %struct.mvs_info*, %struct.mvs_info** %5, align 8
  %74 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.mvs_slot_info*, %struct.mvs_slot_info** %7, align 8
  %77 = getelementptr inbounds %struct.mvs_slot_info, %struct.mvs_slot_info* %76, i32 0, i32 5
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.mvs_slot_info*, %struct.mvs_slot_info** %7, align 8
  %80 = getelementptr inbounds %struct.mvs_slot_info, %struct.mvs_slot_info* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @dma_pool_free(i32 %75, i32* %78, i32 %81)
  %83 = load %struct.mvs_slot_info*, %struct.mvs_slot_info** %7, align 8
  %84 = getelementptr inbounds %struct.mvs_slot_info, %struct.mvs_slot_info* %83, i32 0, i32 5
  store i32* null, i32** %84, align 8
  br label %85

85:                                               ; preds = %72, %67
  %86 = load %struct.mvs_slot_info*, %struct.mvs_slot_info** %7, align 8
  %87 = getelementptr inbounds %struct.mvs_slot_info, %struct.mvs_slot_info* %86, i32 0, i32 4
  %88 = call i32 @list_del_init(i32* %87)
  %89 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %90 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %89, i32 0, i32 1
  store i32* null, i32** %90, align 8
  %91 = load %struct.mvs_slot_info*, %struct.mvs_slot_info** %7, align 8
  %92 = getelementptr inbounds %struct.mvs_slot_info, %struct.mvs_slot_info* %91, i32 0, i32 3
  store i32* null, i32** %92, align 8
  %93 = load %struct.mvs_slot_info*, %struct.mvs_slot_info** %7, align 8
  %94 = getelementptr inbounds %struct.mvs_slot_info, %struct.mvs_slot_info* %93, i32 0, i32 2
  store i32* null, i32** %94, align 8
  %95 = load %struct.mvs_slot_info*, %struct.mvs_slot_info** %7, align 8
  %96 = getelementptr inbounds %struct.mvs_slot_info, %struct.mvs_slot_info* %95, i32 0, i32 1
  store i32 -1, i32* %96, align 4
  %97 = load %struct.mvs_info*, %struct.mvs_info** %5, align 8
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @mvs_slot_free(%struct.mvs_info* %97, i32 %98)
  br label %100

100:                                              ; preds = %85, %17, %11
  ret void
}

declare dso_local i32 @sas_protocol_ata(i32) #1

declare dso_local i32 @dma_unmap_sg(i32, i32*, i32, i32) #1

declare dso_local i32 @dma_pool_free(i32, i32*, i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @mvs_slot_free(%struct.mvs_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
