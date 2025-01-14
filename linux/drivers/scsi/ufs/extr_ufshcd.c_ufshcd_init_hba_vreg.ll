; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_init_hba_vreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_init_hba_vreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { i32, %struct.ufs_vreg_info }
%struct.ufs_vreg_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ufs_hba*)* @ufshcd_init_hba_vreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufshcd_init_hba_vreg(%struct.ufs_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ufs_hba*, align 8
  %4 = alloca %struct.ufs_vreg_info*, align 8
  store %struct.ufs_hba* %0, %struct.ufs_hba** %3, align 8
  %5 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %6 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %5, i32 0, i32 1
  store %struct.ufs_vreg_info* %6, %struct.ufs_vreg_info** %4, align 8
  %7 = load %struct.ufs_vreg_info*, %struct.ufs_vreg_info** %4, align 8
  %8 = icmp ne %struct.ufs_vreg_info* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %11 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ufs_vreg_info*, %struct.ufs_vreg_info** %4, align 8
  %14 = getelementptr inbounds %struct.ufs_vreg_info, %struct.ufs_vreg_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ufshcd_get_vreg(i32 %12, i32 %15)
  store i32 %16, i32* %2, align 4
  br label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %17, %9
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i32 @ufshcd_get_vreg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
