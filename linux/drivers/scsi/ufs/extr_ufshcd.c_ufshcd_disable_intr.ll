; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_disable_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_disable_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { i64 }

@REG_INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@UFSHCI_VERSION_10 = common dso_local global i64 0, align 8
@INTERRUPT_MASK_RW_VER_10 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ufs_hba*, i32)* @ufshcd_disable_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufshcd_disable_intr(%struct.ufs_hba* %0, i32 %1) #0 {
  %3 = alloca %struct.ufs_hba*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ufs_hba* %0, %struct.ufs_hba** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %8 = load i32, i32* @REG_INTERRUPT_ENABLE, align 4
  %9 = call i32 @ufshcd_readl(%struct.ufs_hba* %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %11 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @UFSHCI_VERSION_10, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %32

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @INTERRUPT_MASK_RW_VER_10, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @INTERRUPT_MASK_RW_VER_10, align 4
  %21 = and i32 %19, %20
  %22 = xor i32 %21, -1
  %23 = and i32 %18, %22
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %4, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @INTERRUPT_MASK_RW_VER_10, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  %31 = or i32 %24, %30
  store i32 %31, i32* %5, align 4
  br label %37

32:                                               ; preds = %2
  %33 = load i32, i32* %4, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %5, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %32, %15
  %38 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @REG_INTERRUPT_ENABLE, align 4
  %41 = call i32 @ufshcd_writel(%struct.ufs_hba* %38, i32 %39, i32 %40)
  ret void
}

declare dso_local i32 @ufshcd_readl(%struct.ufs_hba*, i32) #1

declare dso_local i32 @ufshcd_writel(%struct.ufs_hba*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
