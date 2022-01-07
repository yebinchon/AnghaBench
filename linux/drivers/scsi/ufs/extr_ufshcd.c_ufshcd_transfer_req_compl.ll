; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_transfer_req_compl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_transfer_req_compl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { i32, i64 }

@UFSHCI_QUIRK_SKIP_RESET_INTR_AGGR = common dso_local global i32 0, align 4
@REG_UTP_TRANSFER_REQ_DOOR_BELL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ufs_hba*)* @ufshcd_transfer_req_compl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufshcd_transfer_req_compl(%struct.ufs_hba* %0) #0 {
  %2 = alloca %struct.ufs_hba*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.ufs_hba* %0, %struct.ufs_hba** %2, align 8
  %5 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %6 = call i64 @ufshcd_is_intr_aggr_allowed(%struct.ufs_hba* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %1
  %9 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %10 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @UFSHCI_QUIRK_SKIP_RESET_INTR_AGGR, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %8
  %16 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %17 = call i32 @ufshcd_reset_intr_aggr(%struct.ufs_hba* %16)
  br label %18

18:                                               ; preds = %15, %8, %1
  %19 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %20 = load i32, i32* @REG_UTP_TRANSFER_REQ_DOOR_BELL, align 4
  %21 = call i64 @ufshcd_readl(%struct.ufs_hba* %19, i32 %20)
  store i64 %21, i64* %4, align 8
  %22 = load i64, i64* %4, align 8
  %23 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %24 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = xor i64 %22, %25
  store i64 %26, i64* %3, align 8
  %27 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %28 = load i64, i64* %3, align 8
  %29 = call i32 @__ufshcd_transfer_req_compl(%struct.ufs_hba* %27, i64 %28)
  ret void
}

declare dso_local i64 @ufshcd_is_intr_aggr_allowed(%struct.ufs_hba*) #1

declare dso_local i32 @ufshcd_reset_intr_aggr(%struct.ufs_hba*) #1

declare dso_local i64 @ufshcd_readl(%struct.ufs_hba*, i32) #1

declare dso_local i32 @__ufshcd_transfer_req_compl(%struct.ufs_hba*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
