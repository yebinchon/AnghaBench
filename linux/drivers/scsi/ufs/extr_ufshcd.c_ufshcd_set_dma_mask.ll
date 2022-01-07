; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_set_dma_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_set_dma_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { i32, i32 }

@MASK_64_ADDRESSING_SUPPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ufs_hba*)* @ufshcd_set_dma_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufshcd_set_dma_mask(%struct.ufs_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ufs_hba*, align 8
  store %struct.ufs_hba* %0, %struct.ufs_hba** %3, align 8
  %4 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %5 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @MASK_64_ADDRESSING_SUPPORT, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %12 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @DMA_BIT_MASK(i32 64)
  %15 = call i32 @dma_set_mask_and_coherent(i32 %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %25

18:                                               ; preds = %10
  br label %19

19:                                               ; preds = %18, %1
  %20 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %21 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @DMA_BIT_MASK(i32 32)
  %24 = call i32 @dma_set_mask_and_coherent(i32 %22, i32 %23)
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %19, %17
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @dma_set_mask_and_coherent(i32, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
