; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_mem.c_lpfc_nvmet_mem_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_mem.c_lpfc_nvmet_mem_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"lpfc_nvmet_drb_pool\00", align 1
@LPFC_NVMET_DATA_BUF_SIZE = common dso_local global i32 0, align 4
@SGL_ALIGN_SZ = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"6024 Can't enable NVME Target - no memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_nvmet_mem_alloc(%struct.lpfc_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lpfc_hba*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  %4 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %5 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* @LPFC_NVMET_DATA_BUF_SIZE, align 4
  %9 = load i32, i32* @SGL_ALIGN_SZ, align 4
  %10 = call i32 @dma_pool_create(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32* %7, i32 %8, i32 %9, i32 0)
  %11 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %12 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %14 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %1
  %18 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %19 = load i32, i32* @KERN_ERR, align 4
  %20 = load i32, i32* @LOG_INIT, align 4
  %21 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %18, i32 %19, i32 %20, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %25

24:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %17
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @dma_pool_create(i8*, i32*, i32, i32, i32) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
