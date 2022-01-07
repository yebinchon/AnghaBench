; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_dif_dma_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_dif_dma_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { %struct.device* }
%struct.device = type { i32 }
%struct.sas_task = type { i32, %struct.sas_ssp_task, i64 }
%struct.sas_ssp_task = type { %struct.scsi_cmnd* }
%struct.scsi_cmnd = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@HISI_SAS_SGE_DIF_PAGE_CNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"task prep: n_elem_dif(%d) too large\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hisi_hba*, i32*, %struct.sas_task*)* @hisi_sas_dif_dma_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_sas_dif_dma_map(%struct.hisi_hba* %0, i32* %1, %struct.sas_task* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hisi_hba*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sas_task*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.sas_ssp_task*, align 8
  %10 = alloca %struct.scsi_cmnd*, align 8
  %11 = alloca i32, align 4
  store %struct.hisi_hba* %0, %struct.hisi_hba** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.sas_task* %2, %struct.sas_task** %7, align 8
  %12 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %13 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %12, i32 0, i32 0
  %14 = load %struct.device*, %struct.device** %13, align 8
  store %struct.device* %14, %struct.device** %8, align 8
  %15 = load %struct.sas_task*, %struct.sas_task** %7, align 8
  %16 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %59

19:                                               ; preds = %3
  %20 = load %struct.sas_task*, %struct.sas_task** %7, align 8
  %21 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %20, i32 0, i32 1
  store %struct.sas_ssp_task* %21, %struct.sas_ssp_task** %9, align 8
  %22 = load %struct.sas_ssp_task*, %struct.sas_ssp_task** %9, align 8
  %23 = getelementptr inbounds %struct.sas_ssp_task, %struct.sas_ssp_task* %22, i32 0, i32 0
  %24 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %23, align 8
  store %struct.scsi_cmnd* %24, %struct.scsi_cmnd** %10, align 8
  %25 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %26 = call i64 @scsi_prot_sg_count(%struct.scsi_cmnd* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %58

28:                                               ; preds = %19
  %29 = load %struct.device*, %struct.device** %8, align 8
  %30 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %31 = call i32 @scsi_prot_sglist(%struct.scsi_cmnd* %30)
  %32 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %33 = call i64 @scsi_prot_sg_count(%struct.scsi_cmnd* %32)
  %34 = load %struct.sas_task*, %struct.sas_task** %7, align 8
  %35 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @dma_map_sg(%struct.device* %29, i32 %31, i64 %33, i32 %36)
  %38 = load i32*, i32** %6, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %28
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %71

45:                                               ; preds = %28
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @HISI_SAS_SGE_DIF_PAGE_CNT, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load %struct.device*, %struct.device** %8, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @dev_err(%struct.device* %51, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %11, align 4
  br label %60

57:                                               ; preds = %45
  br label %58

58:                                               ; preds = %57, %19
  br label %59

59:                                               ; preds = %58, %3
  store i32 0, i32* %4, align 4
  br label %71

60:                                               ; preds = %50
  %61 = load %struct.device*, %struct.device** %8, align 8
  %62 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %63 = call i32 @scsi_prot_sglist(%struct.scsi_cmnd* %62)
  %64 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %65 = call i64 @scsi_prot_sg_count(%struct.scsi_cmnd* %64)
  %66 = load %struct.sas_task*, %struct.sas_task** %7, align 8
  %67 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @dma_unmap_sg(%struct.device* %61, i32 %63, i64 %65, i32 %68)
  %70 = load i32, i32* %11, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %60, %59, %42
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i64 @scsi_prot_sg_count(%struct.scsi_cmnd*) #1

declare dso_local i32 @dma_map_sg(%struct.device*, i32, i64, i32) #1

declare dso_local i32 @scsi_prot_sglist(%struct.scsi_cmnd*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @dma_unmap_sg(%struct.device*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
