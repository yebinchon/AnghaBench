; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufs-hisi.c_ufs_hisi_set_dev_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufs-hisi.c_ufs_hisi_set_dev_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_dev_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@UFS_HISI_LIMIT_NUM_LANES_RX = common dso_local global i32 0, align 4
@UFS_HISI_LIMIT_NUM_LANES_TX = common dso_local global i32 0, align 4
@UFS_HISI_LIMIT_HSGEAR_RX = common dso_local global i32 0, align 4
@UFS_HISI_LIMIT_HSGEAR_TX = common dso_local global i32 0, align 4
@UFS_HISI_LIMIT_PWMGEAR_RX = common dso_local global i32 0, align 4
@UFS_HISI_LIMIT_PWMGEAR_TX = common dso_local global i32 0, align 4
@UFS_HISI_LIMIT_RX_PWR_PWM = common dso_local global i32 0, align 4
@UFS_HISI_LIMIT_TX_PWR_PWM = common dso_local global i32 0, align 4
@UFS_HISI_LIMIT_RX_PWR_HS = common dso_local global i32 0, align 4
@UFS_HISI_LIMIT_TX_PWR_HS = common dso_local global i32 0, align 4
@UFS_HISI_LIMIT_HS_RATE = common dso_local global i32 0, align 4
@UFS_HISI_LIMIT_DESIRED_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ufs_dev_params*)* @ufs_hisi_set_dev_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufs_hisi_set_dev_cap(%struct.ufs_dev_params* %0) #0 {
  %2 = alloca %struct.ufs_dev_params*, align 8
  store %struct.ufs_dev_params* %0, %struct.ufs_dev_params** %2, align 8
  %3 = load i32, i32* @UFS_HISI_LIMIT_NUM_LANES_RX, align 4
  %4 = load %struct.ufs_dev_params*, %struct.ufs_dev_params** %2, align 8
  %5 = getelementptr inbounds %struct.ufs_dev_params, %struct.ufs_dev_params* %4, i32 0, i32 11
  store i32 %3, i32* %5, align 4
  %6 = load i32, i32* @UFS_HISI_LIMIT_NUM_LANES_TX, align 4
  %7 = load %struct.ufs_dev_params*, %struct.ufs_dev_params** %2, align 8
  %8 = getelementptr inbounds %struct.ufs_dev_params, %struct.ufs_dev_params* %7, i32 0, i32 10
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @UFS_HISI_LIMIT_HSGEAR_RX, align 4
  %10 = load %struct.ufs_dev_params*, %struct.ufs_dev_params** %2, align 8
  %11 = getelementptr inbounds %struct.ufs_dev_params, %struct.ufs_dev_params* %10, i32 0, i32 9
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @UFS_HISI_LIMIT_HSGEAR_TX, align 4
  %13 = load %struct.ufs_dev_params*, %struct.ufs_dev_params** %2, align 8
  %14 = getelementptr inbounds %struct.ufs_dev_params, %struct.ufs_dev_params* %13, i32 0, i32 8
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @UFS_HISI_LIMIT_PWMGEAR_RX, align 4
  %16 = load %struct.ufs_dev_params*, %struct.ufs_dev_params** %2, align 8
  %17 = getelementptr inbounds %struct.ufs_dev_params, %struct.ufs_dev_params* %16, i32 0, i32 7
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @UFS_HISI_LIMIT_PWMGEAR_TX, align 4
  %19 = load %struct.ufs_dev_params*, %struct.ufs_dev_params** %2, align 8
  %20 = getelementptr inbounds %struct.ufs_dev_params, %struct.ufs_dev_params* %19, i32 0, i32 6
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @UFS_HISI_LIMIT_RX_PWR_PWM, align 4
  %22 = load %struct.ufs_dev_params*, %struct.ufs_dev_params** %2, align 8
  %23 = getelementptr inbounds %struct.ufs_dev_params, %struct.ufs_dev_params* %22, i32 0, i32 5
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @UFS_HISI_LIMIT_TX_PWR_PWM, align 4
  %25 = load %struct.ufs_dev_params*, %struct.ufs_dev_params** %2, align 8
  %26 = getelementptr inbounds %struct.ufs_dev_params, %struct.ufs_dev_params* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @UFS_HISI_LIMIT_RX_PWR_HS, align 4
  %28 = load %struct.ufs_dev_params*, %struct.ufs_dev_params** %2, align 8
  %29 = getelementptr inbounds %struct.ufs_dev_params, %struct.ufs_dev_params* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @UFS_HISI_LIMIT_TX_PWR_HS, align 4
  %31 = load %struct.ufs_dev_params*, %struct.ufs_dev_params** %2, align 8
  %32 = getelementptr inbounds %struct.ufs_dev_params, %struct.ufs_dev_params* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @UFS_HISI_LIMIT_HS_RATE, align 4
  %34 = load %struct.ufs_dev_params*, %struct.ufs_dev_params** %2, align 8
  %35 = getelementptr inbounds %struct.ufs_dev_params, %struct.ufs_dev_params* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @UFS_HISI_LIMIT_DESIRED_MODE, align 4
  %37 = load %struct.ufs_dev_params*, %struct.ufs_dev_params** %2, align 8
  %38 = getelementptr inbounds %struct.ufs_dev_params, %struct.ufs_dev_params* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
