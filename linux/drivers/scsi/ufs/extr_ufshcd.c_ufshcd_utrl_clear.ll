; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_utrl_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_utrl_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { i32 }

@UFSHCI_QUIRK_BROKEN_REQ_LIST_CLR = common dso_local global i32 0, align 4
@REG_UTP_TRANSFER_REQ_LIST_CLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ufs_hba*, i32)* @ufshcd_utrl_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufshcd_utrl_clear(%struct.ufs_hba* %0, i32 %1) #0 {
  %3 = alloca %struct.ufs_hba*, align 8
  %4 = alloca i32, align 4
  store %struct.ufs_hba* %0, %struct.ufs_hba** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %6 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @UFSHCI_QUIRK_BROKEN_REQ_LIST_CLR, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = shl i32 1, %13
  %15 = load i32, i32* @REG_UTP_TRANSFER_REQ_LIST_CLEAR, align 4
  %16 = call i32 @ufshcd_writel(%struct.ufs_hba* %12, i32 %14, i32 %15)
  br label %24

17:                                               ; preds = %2
  %18 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = shl i32 1, %19
  %21 = xor i32 %20, -1
  %22 = load i32, i32* @REG_UTP_TRANSFER_REQ_LIST_CLEAR, align 4
  %23 = call i32 @ufshcd_writel(%struct.ufs_hba* %18, i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %17, %11
  ret void
}

declare dso_local i32 @ufshcd_writel(%struct.ufs_hba*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
