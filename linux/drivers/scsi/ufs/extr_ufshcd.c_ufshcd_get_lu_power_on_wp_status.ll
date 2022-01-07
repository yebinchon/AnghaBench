; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_get_lu_power_on_wp_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_get_lu_power_on_wp_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }
%struct.scsi_device = type { i32 }

@UFS_LU_POWER_ON_WP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ufs_hba*, %struct.scsi_device*)* @ufshcd_get_lu_power_on_wp_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufshcd_get_lu_power_on_wp_status(%struct.ufs_hba* %0, %struct.scsi_device* %1) #0 {
  %3 = alloca %struct.ufs_hba*, align 8
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca i64, align 8
  store %struct.ufs_hba* %0, %struct.ufs_hba** %3, align 8
  store %struct.scsi_device* %1, %struct.scsi_device** %4, align 8
  %6 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %7 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %34

11:                                               ; preds = %2
  %12 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %13 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %34, label %17

17:                                               ; preds = %11
  %18 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %19 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %20 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ufshcd_scsi_to_upiu_lun(i32 %21)
  %23 = call i32 @ufshcd_get_lu_wp(%struct.ufs_hba* %18, i32 %22, i64* %5)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %17
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* @UFS_LU_POWER_ON_WP, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %31 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  br label %33

33:                                               ; preds = %29, %25, %17
  br label %34

34:                                               ; preds = %33, %11, %2
  ret void
}

declare dso_local i32 @ufshcd_get_lu_wp(%struct.ufs_hba*, i32, i64*) #1

declare dso_local i32 @ufshcd_scsi_to_upiu_lun(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
