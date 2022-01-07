; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_comp_devman_upiu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_comp_devman_upiu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ufshcd_lrb = type { i32 }

@UFSHCI_VERSION_10 = common dso_local global i64 0, align 8
@UFSHCI_VERSION_11 = common dso_local global i64 0, align 8
@UTP_CMD_TYPE_DEV_MANAGE = common dso_local global i32 0, align 4
@UTP_CMD_TYPE_UFS_STORAGE = common dso_local global i32 0, align 4
@DMA_NONE = common dso_local global i32 0, align 4
@DEV_CMD_TYPE_QUERY = common dso_local global i64 0, align 8
@DEV_CMD_TYPE_NOP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ufs_hba*, %struct.ufshcd_lrb*)* @ufshcd_comp_devman_upiu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufshcd_comp_devman_upiu(%struct.ufs_hba* %0, %struct.ufshcd_lrb* %1) #0 {
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
  %19 = load i32, i32* @UTP_CMD_TYPE_DEV_MANAGE, align 4
  %20 = load %struct.ufshcd_lrb*, %struct.ufshcd_lrb** %4, align 8
  %21 = getelementptr inbounds %struct.ufshcd_lrb, %struct.ufshcd_lrb* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  br label %26

22:                                               ; preds = %12
  %23 = load i32, i32* @UTP_CMD_TYPE_UFS_STORAGE, align 4
  %24 = load %struct.ufshcd_lrb*, %struct.ufshcd_lrb** %4, align 8
  %25 = getelementptr inbounds %struct.ufshcd_lrb, %struct.ufshcd_lrb* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  br label %26

26:                                               ; preds = %22, %18
  %27 = load %struct.ufshcd_lrb*, %struct.ufshcd_lrb** %4, align 8
  %28 = load i32, i32* @DMA_NONE, align 4
  %29 = call i32 @ufshcd_prepare_req_desc_hdr(%struct.ufshcd_lrb* %27, i32* %5, i32 %28)
  %30 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %31 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @DEV_CMD_TYPE_QUERY, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %26
  %37 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %38 = load %struct.ufshcd_lrb*, %struct.ufshcd_lrb** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @ufshcd_prepare_utp_query_req_upiu(%struct.ufs_hba* %37, %struct.ufshcd_lrb* %38, i32 %39)
  br label %55

41:                                               ; preds = %26
  %42 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %43 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @DEV_CMD_TYPE_NOP, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load %struct.ufshcd_lrb*, %struct.ufshcd_lrb** %4, align 8
  %50 = call i32 @ufshcd_prepare_utp_nop_upiu(%struct.ufshcd_lrb* %49)
  br label %54

51:                                               ; preds = %41
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %51, %48
  br label %55

55:                                               ; preds = %54, %36
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i32 @ufshcd_prepare_req_desc_hdr(%struct.ufshcd_lrb*, i32*, i32) #1

declare dso_local i32 @ufshcd_prepare_utp_query_req_upiu(%struct.ufs_hba*, %struct.ufshcd_lrb*, i32) #1

declare dso_local i32 @ufshcd_prepare_utp_nop_upiu(%struct.ufshcd_lrb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
