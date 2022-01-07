; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_init_pwr_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_init_pwr_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64, i8*, i8*, i8*, i8* }

@UFS_PWM_G1 = common dso_local global i8* null, align 8
@SLOWAUTO_MODE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ufs_hba*)* @ufshcd_init_pwr_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufshcd_init_pwr_info(%struct.ufs_hba* %0) #0 {
  %2 = alloca %struct.ufs_hba*, align 8
  store %struct.ufs_hba* %0, %struct.ufs_hba** %2, align 8
  %3 = load i8*, i8** @UFS_PWM_G1, align 8
  %4 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %5 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 6
  store i8* %3, i8** %6, align 8
  %7 = load i8*, i8** @UFS_PWM_G1, align 8
  %8 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %9 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 5
  store i8* %7, i8** %10, align 8
  %11 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %12 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %15 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store i32 1, i32* %16, align 4
  %17 = load i8*, i8** @SLOWAUTO_MODE, align 8
  %18 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %19 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 4
  store i8* %17, i8** %20, align 8
  %21 = load i8*, i8** @SLOWAUTO_MODE, align 8
  %22 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %23 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 3
  store i8* %21, i8** %24, align 8
  %25 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %26 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  store i64 0, i64* %27, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
