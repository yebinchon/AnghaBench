; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_clock_scaling_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_clock_scaling_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@DOORBELL_CLR_TOUT_US = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ufs_hba*)* @ufshcd_clock_scaling_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufshcd_clock_scaling_prepare(%struct.ufs_hba* %0) #0 {
  %2 = alloca %struct.ufs_hba*, align 8
  %3 = alloca i32, align 4
  store %struct.ufs_hba* %0, %struct.ufs_hba** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %5 = call i32 @ufshcd_scsi_block_requests(%struct.ufs_hba* %4)
  %6 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %7 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %6, i32 0, i32 0
  %8 = call i32 @down_write(i32* %7)
  %9 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %10 = call i64 @ufshcd_wait_for_doorbell_clr(%struct.ufs_hba* %9, i32 1000000)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load i32, i32* @EBUSY, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  %15 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %16 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %15, i32 0, i32 0
  %17 = call i32 @up_write(i32* %16)
  %18 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %19 = call i32 @ufshcd_scsi_unblock_requests(%struct.ufs_hba* %18)
  br label %20

20:                                               ; preds = %12, %1
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local i32 @ufshcd_scsi_block_requests(%struct.ufs_hba*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i64 @ufshcd_wait_for_doorbell_clr(%struct.ufs_hba*, i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @ufshcd_scsi_unblock_requests(%struct.ufs_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
