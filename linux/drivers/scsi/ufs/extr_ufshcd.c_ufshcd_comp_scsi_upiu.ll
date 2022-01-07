; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_comp_scsi_upiu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_comp_scsi_upiu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { i64 }
%struct.ufshcd_lrb = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@UFSHCI_VERSION_10 = common dso_local global i64 0, align 8
@UFSHCI_VERSION_11 = common dso_local global i64 0, align 8
@UTP_CMD_TYPE_SCSI = common dso_local global i32 0, align 4
@UTP_CMD_TYPE_UFS_STORAGE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ufs_hba*, %struct.ufshcd_lrb*)* @ufshcd_comp_scsi_upiu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufshcd_comp_scsi_upiu(%struct.ufs_hba* %0, %struct.ufshcd_lrb* %1) #0 {
  %3 = alloca %struct.ufs_hba*, align 8
  %4 = alloca %struct.ufshcd_lrb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ufs_hba* %0, %struct.ufs_hba** %3, align 8
  store %struct.ufshcd_lrb* %1, %struct.ufshcd_lrb** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %8 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @UFSHCI_VERSION_10, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %14 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @UFSHCI_VERSION_11, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %12, %2
  %19 = load i32, i32* @UTP_CMD_TYPE_SCSI, align 4
  %20 = load %struct.ufshcd_lrb*, %struct.ufshcd_lrb** %4, align 8
  %21 = getelementptr inbounds %struct.ufshcd_lrb, %struct.ufshcd_lrb* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  br label %26

22:                                               ; preds = %12
  %23 = load i32, i32* @UTP_CMD_TYPE_UFS_STORAGE, align 4
  %24 = load %struct.ufshcd_lrb*, %struct.ufshcd_lrb** %4, align 8
  %25 = getelementptr inbounds %struct.ufshcd_lrb, %struct.ufshcd_lrb* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  br label %26

26:                                               ; preds = %22, %18
  %27 = load %struct.ufshcd_lrb*, %struct.ufshcd_lrb** %4, align 8
  %28 = getelementptr inbounds %struct.ufshcd_lrb, %struct.ufshcd_lrb* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = call i64 @likely(%struct.TYPE_2__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %26
  %33 = load %struct.ufshcd_lrb*, %struct.ufshcd_lrb** %4, align 8
  %34 = load %struct.ufshcd_lrb*, %struct.ufshcd_lrb** %4, align 8
  %35 = getelementptr inbounds %struct.ufshcd_lrb, %struct.ufshcd_lrb* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ufshcd_prepare_req_desc_hdr(%struct.ufshcd_lrb* %33, i32* %5, i32 %38)
  %40 = load %struct.ufshcd_lrb*, %struct.ufshcd_lrb** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @ufshcd_prepare_utp_scsi_cmd_upiu(%struct.ufshcd_lrb* %40, i32 %41)
  br label %46

43:                                               ; preds = %26
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %43, %32
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local i64 @likely(%struct.TYPE_2__*) #1

declare dso_local i32 @ufshcd_prepare_req_desc_hdr(%struct.ufshcd_lrb*, i32*, i32) #1

declare dso_local i32 @ufshcd_prepare_utp_scsi_cmd_upiu(%struct.ufshcd_lrb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
