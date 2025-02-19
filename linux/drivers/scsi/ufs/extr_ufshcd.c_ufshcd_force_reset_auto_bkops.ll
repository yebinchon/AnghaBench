; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_force_reset_auto_bkops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_force_reset_auto_bkops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { i32, i32 }

@MASK_EE_URGENT_BKOPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ufs_hba*)* @ufshcd_force_reset_auto_bkops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufshcd_force_reset_auto_bkops(%struct.ufs_hba* %0) #0 {
  %2 = alloca %struct.ufs_hba*, align 8
  store %struct.ufs_hba* %0, %struct.ufs_hba** %2, align 8
  %3 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %4 = call i64 @ufshcd_keep_autobkops_enabled_except_suspend(%struct.ufs_hba* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %16

6:                                                ; preds = %1
  %7 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %8 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %7, i32 0, i32 0
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @MASK_EE_URGENT_BKOPS, align 4
  %10 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %11 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, %9
  store i32 %13, i32* %11, align 4
  %14 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %15 = call i32 @ufshcd_enable_auto_bkops(%struct.ufs_hba* %14)
  br label %27

16:                                               ; preds = %1
  %17 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %18 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %17, i32 0, i32 0
  store i32 1, i32* %18, align 4
  %19 = load i32, i32* @MASK_EE_URGENT_BKOPS, align 4
  %20 = xor i32 %19, -1
  %21 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %22 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %26 = call i32 @ufshcd_disable_auto_bkops(%struct.ufs_hba* %25)
  br label %27

27:                                               ; preds = %16, %6
  ret void
}

declare dso_local i64 @ufshcd_keep_autobkops_enabled_except_suspend(%struct.ufs_hba*) #1

declare dso_local i32 @ufshcd_enable_auto_bkops(%struct.ufs_hba*) #1

declare dso_local i32 @ufshcd_disable_auto_bkops(%struct.ufs_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
