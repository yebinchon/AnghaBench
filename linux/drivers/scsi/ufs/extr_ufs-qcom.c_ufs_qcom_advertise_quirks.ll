; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufs-qcom.c_ufs_qcom_advertise_quirks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufs-qcom.c_ufs_qcom_advertise_quirks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { i32 }
%struct.ufs_qcom_host = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@UFSHCD_QUIRK_DELAY_BEFORE_DME_CMDS = common dso_local global i32 0, align 4
@UFSHCD_QUIRK_BROKEN_PA_RXHSUNTERMCAP = common dso_local global i32 0, align 4
@UFSHCD_QUIRK_DME_PEER_ACCESS_AUTO_MODE = common dso_local global i32 0, align 4
@UFSHCD_QUIRK_BROKEN_INTR_AGGR = common dso_local global i32 0, align 4
@UFSHCD_QUIRK_BROKEN_LCC = common dso_local global i32 0, align 4
@UFSHCD_QUIRK_BROKEN_UFS_HCI_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ufs_hba*)* @ufs_qcom_advertise_quirks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufs_qcom_advertise_quirks(%struct.ufs_hba* %0) #0 {
  %2 = alloca %struct.ufs_hba*, align 8
  %3 = alloca %struct.ufs_qcom_host*, align 8
  store %struct.ufs_hba* %0, %struct.ufs_hba** %2, align 8
  %4 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %5 = call %struct.ufs_qcom_host* @ufshcd_get_variant(%struct.ufs_hba* %4)
  store %struct.ufs_qcom_host* %5, %struct.ufs_qcom_host** %3, align 8
  %6 = load %struct.ufs_qcom_host*, %struct.ufs_qcom_host** %3, align 8
  %7 = getelementptr inbounds %struct.ufs_qcom_host, %struct.ufs_qcom_host* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %44

11:                                               ; preds = %1
  %12 = load i32, i32* @UFSHCD_QUIRK_DELAY_BEFORE_DME_CMDS, align 4
  %13 = load i32, i32* @UFSHCD_QUIRK_BROKEN_PA_RXHSUNTERMCAP, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @UFSHCD_QUIRK_DME_PEER_ACCESS_AUTO_MODE, align 4
  %16 = or i32 %14, %15
  %17 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %18 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load %struct.ufs_qcom_host*, %struct.ufs_qcom_host** %3, align 8
  %22 = getelementptr inbounds %struct.ufs_qcom_host, %struct.ufs_qcom_host* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %38

26:                                               ; preds = %11
  %27 = load %struct.ufs_qcom_host*, %struct.ufs_qcom_host** %3, align 8
  %28 = getelementptr inbounds %struct.ufs_qcom_host, %struct.ufs_qcom_host* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load i32, i32* @UFSHCD_QUIRK_BROKEN_INTR_AGGR, align 4
  %34 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %35 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %32, %26, %11
  %39 = load i32, i32* @UFSHCD_QUIRK_BROKEN_LCC, align 4
  %40 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %41 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %38, %1
  %45 = load %struct.ufs_qcom_host*, %struct.ufs_qcom_host** %3, align 8
  %46 = getelementptr inbounds %struct.ufs_qcom_host, %struct.ufs_qcom_host* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 2
  br i1 %49, label %50, label %70

50:                                               ; preds = %44
  %51 = load i32, i32* @UFSHCD_QUIRK_BROKEN_UFS_HCI_VERSION, align 4
  %52 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %53 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load %struct.ufs_qcom_host*, %struct.ufs_qcom_host** %3, align 8
  %57 = call i32 @ufs_qcom_cap_qunipro(%struct.ufs_qcom_host* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %69, label %59

59:                                               ; preds = %50
  %60 = load i32, i32* @UFSHCD_QUIRK_DELAY_BEFORE_DME_CMDS, align 4
  %61 = load i32, i32* @UFSHCD_QUIRK_DME_PEER_ACCESS_AUTO_MODE, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @UFSHCD_QUIRK_BROKEN_PA_RXHSUNTERMCAP, align 4
  %64 = or i32 %62, %63
  %65 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %66 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %59, %50
  br label %70

70:                                               ; preds = %69, %44
  ret void
}

declare dso_local %struct.ufs_qcom_host* @ufshcd_get_variant(%struct.ufs_hba*) #1

declare dso_local i32 @ufs_qcom_cap_qunipro(%struct.ufs_qcom_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
