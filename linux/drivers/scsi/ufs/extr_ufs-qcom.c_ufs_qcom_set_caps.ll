; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufs-qcom.c_ufs_qcom_set_caps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufs-qcom.c_ufs_qcom_set_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { i32 }
%struct.ufs_qcom_host = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@UFSHCD_CAP_CLK_GATING = common dso_local global i32 0, align 4
@UFSHCD_CAP_HIBERN8_WITH_CLK_GATING = common dso_local global i32 0, align 4
@UFSHCD_CAP_CLK_SCALING = common dso_local global i32 0, align 4
@UFSHCD_CAP_AUTO_BKOPS_SUSPEND = common dso_local global i32 0, align 4
@UFS_QCOM_CAP_QUNIPRO = common dso_local global i32 0, align 4
@UFS_QCOM_CAP_RETAIN_SEC_CFG_AFTER_PWR_COLLAPSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ufs_hba*)* @ufs_qcom_set_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufs_qcom_set_caps(%struct.ufs_hba* %0) #0 {
  %2 = alloca %struct.ufs_hba*, align 8
  %3 = alloca %struct.ufs_qcom_host*, align 8
  store %struct.ufs_hba* %0, %struct.ufs_hba** %2, align 8
  %4 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %5 = call %struct.ufs_qcom_host* @ufshcd_get_variant(%struct.ufs_hba* %4)
  store %struct.ufs_qcom_host* %5, %struct.ufs_qcom_host** %3, align 8
  %6 = load i32, i32* @UFSHCD_CAP_CLK_GATING, align 4
  %7 = load i32, i32* @UFSHCD_CAP_HIBERN8_WITH_CLK_GATING, align 4
  %8 = or i32 %6, %7
  %9 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %10 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = or i32 %11, %8
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* @UFSHCD_CAP_CLK_SCALING, align 4
  %14 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %15 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* @UFSHCD_CAP_AUTO_BKOPS_SUSPEND, align 4
  %19 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %20 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load %struct.ufs_qcom_host*, %struct.ufs_qcom_host** %3, align 8
  %24 = getelementptr inbounds %struct.ufs_qcom_host, %struct.ufs_qcom_host* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp sge i32 %26, 2
  br i1 %27, label %28, label %34

28:                                               ; preds = %1
  %29 = load i32, i32* @UFS_QCOM_CAP_QUNIPRO, align 4
  %30 = load i32, i32* @UFS_QCOM_CAP_RETAIN_SEC_CFG_AFTER_PWR_COLLAPSE, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.ufs_qcom_host*, %struct.ufs_qcom_host** %3, align 8
  %33 = getelementptr inbounds %struct.ufs_qcom_host, %struct.ufs_qcom_host* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  br label %34

34:                                               ; preds = %28, %1
  ret void
}

declare dso_local %struct.ufs_qcom_host* @ufshcd_get_variant(%struct.ufs_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
