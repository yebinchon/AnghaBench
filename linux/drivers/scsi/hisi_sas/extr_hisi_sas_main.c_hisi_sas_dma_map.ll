; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_dma_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_dma_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { %struct.device* }
%struct.device = type { i32 }
%struct.sas_task = type { i32, i32, %struct.TYPE_2__, i32, i32* }
%struct.TYPE_2__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@SAS_PROTOCOL_SMP = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@HISI_SAS_SGE_PAGE_CNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"task prep: n_elem(%d) > HISI_SAS_SGE_PAGE_CNT\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hisi_hba*, %struct.sas_task*, i32*, i32*)* @hisi_sas_dma_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_sas_dma_map(%struct.hisi_hba* %0, %struct.sas_task* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hisi_hba*, align 8
  %7 = alloca %struct.sas_task*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hisi_hba* %0, %struct.hisi_hba** %6, align 8
  store %struct.sas_task* %1, %struct.sas_task** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.hisi_hba*, %struct.hisi_hba** %6, align 8
  %14 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %13, i32 0, i32 0
  %15 = load %struct.device*, %struct.device** %14, align 8
  store %struct.device* %15, %struct.device** %10, align 8
  %16 = load %struct.sas_task*, %struct.sas_task** %7, align 8
  %17 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @sas_protocol_ata(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %4
  %22 = load %struct.sas_task*, %struct.sas_task** %7, align 8
  %23 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %8, align 8
  store i32 %24, i32* %25, align 4
  br label %86

26:                                               ; preds = %4
  %27 = load %struct.sas_task*, %struct.sas_task** %7, align 8
  %28 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %51

31:                                               ; preds = %26
  %32 = load %struct.device*, %struct.device** %10, align 8
  %33 = load %struct.sas_task*, %struct.sas_task** %7, align 8
  %34 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %33, i32 0, i32 4
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.sas_task*, %struct.sas_task** %7, align 8
  %37 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.sas_task*, %struct.sas_task** %7, align 8
  %40 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @dma_map_sg(%struct.device* %32, i32* %35, i32 %38, i32 %41)
  %43 = load i32*, i32** %8, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %31
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %11, align 4
  br label %107

50:                                               ; preds = %31
  br label %85

51:                                               ; preds = %26
  %52 = load %struct.sas_task*, %struct.sas_task** %7, align 8
  %53 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @SAS_PROTOCOL_SMP, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %84

58:                                               ; preds = %51
  %59 = load %struct.device*, %struct.device** %10, align 8
  %60 = load %struct.sas_task*, %struct.sas_task** %7, align 8
  %61 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* @DMA_TO_DEVICE, align 4
  %64 = call i32 @dma_map_sg(%struct.device* %59, i32* %62, i32 1, i32 %63)
  %65 = load i32*, i32** %9, align 8
  store i32 %64, i32* %65, align 4
  %66 = load i32*, i32** %9, align 8
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %58
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %11, align 4
  br label %107

72:                                               ; preds = %58
  %73 = load %struct.sas_task*, %struct.sas_task** %7, align 8
  %74 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = call i32 @sg_dma_len(i32* %75)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = and i32 %77, 3
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %72
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %11, align 4
  br label %99

83:                                               ; preds = %72
  br label %84

84:                                               ; preds = %83, %51
  br label %85

85:                                               ; preds = %84, %50
  br label %86

86:                                               ; preds = %85, %21
  %87 = load i32*, i32** %8, align 8
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @HISI_SAS_SGE_PAGE_CNT, align 4
  %90 = icmp sgt i32 %88, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %86
  %92 = load %struct.device*, %struct.device** %10, align 8
  %93 = load i32*, i32** %8, align 8
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @dev_err(%struct.device* %92, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %11, align 4
  br label %99

98:                                               ; preds = %86
  store i32 0, i32* %5, align 4
  br label %109

99:                                               ; preds = %91, %80
  %100 = load %struct.hisi_hba*, %struct.hisi_hba** %6, align 8
  %101 = load %struct.sas_task*, %struct.sas_task** %7, align 8
  %102 = load i32*, i32** %8, align 8
  %103 = load i32, i32* %102, align 4
  %104 = load i32*, i32** %9, align 8
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @hisi_sas_dma_unmap(%struct.hisi_hba* %100, %struct.sas_task* %101, i32 %103, i32 %105)
  br label %107

107:                                              ; preds = %99, %69, %47
  %108 = load i32, i32* %11, align 4
  store i32 %108, i32* %5, align 4
  br label %109

109:                                              ; preds = %107, %98
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local i64 @sas_protocol_ata(i32) #1

declare dso_local i32 @dma_map_sg(%struct.device*, i32*, i32, i32) #1

declare dso_local i32 @sg_dma_len(i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @hisi_sas_dma_unmap(%struct.hisi_hba*, %struct.sas_task*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
