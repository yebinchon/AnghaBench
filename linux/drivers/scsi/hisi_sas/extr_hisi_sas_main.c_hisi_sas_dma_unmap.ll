; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_dma_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_dma_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { %struct.device* }
%struct.device = type { i32 }
%struct.sas_task = type { i32, i32, %struct.TYPE_2__, i32, i32* }
%struct.TYPE_2__ = type { i32 }

@SAS_PROTOCOL_SMP = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hisi_hba*, %struct.sas_task*, i32, i32)* @hisi_sas_dma_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hisi_sas_dma_unmap(%struct.hisi_hba* %0, %struct.sas_task* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.hisi_hba*, align 8
  %6 = alloca %struct.sas_task*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.device*, align 8
  store %struct.hisi_hba* %0, %struct.hisi_hba** %5, align 8
  store %struct.sas_task* %1, %struct.sas_task** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %11 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %10, i32 0, i32 0
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %9, align 8
  %13 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %14 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @sas_protocol_ata(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %59, label %18

18:                                               ; preds = %4
  %19 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %20 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %18
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %23
  %27 = load %struct.device*, %struct.device** %9, align 8
  %28 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %29 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %28, i32 0, i32 4
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %32 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %35 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dma_unmap_sg(%struct.device* %27, i32* %30, i32 %33, i32 %36)
  br label %38

38:                                               ; preds = %26, %23
  br label %58

39:                                               ; preds = %18
  %40 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %41 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @SAS_PROTOCOL_SMP, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %39
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %46
  %50 = load %struct.device*, %struct.device** %9, align 8
  %51 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %52 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* @DMA_TO_DEVICE, align 4
  %55 = call i32 @dma_unmap_sg(%struct.device* %50, i32* %53, i32 1, i32 %54)
  br label %56

56:                                               ; preds = %49, %46
  br label %57

57:                                               ; preds = %56, %39
  br label %58

58:                                               ; preds = %57, %38
  br label %59

59:                                               ; preds = %58, %4
  ret void
}

declare dso_local i32 @sas_protocol_ata(i32) #1

declare dso_local i32 @dma_unmap_sg(%struct.device*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
