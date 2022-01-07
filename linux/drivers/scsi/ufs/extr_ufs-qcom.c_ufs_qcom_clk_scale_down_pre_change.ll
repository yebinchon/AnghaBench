; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufs-qcom.c_ufs_qcom_clk_scale_down_pre_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufs-qcom.c_ufs_qcom_clk_scale_down_pre_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { i32 }
%struct.ufs_qcom_host = type { i32 }

@DME_VS_CORE_CLK_CTRL = common dso_local global i32 0, align 4
@DME_VS_CORE_CLK_CTRL_CORE_CLK_DIV_EN_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ufs_hba*)* @ufs_qcom_clk_scale_down_pre_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufs_qcom_clk_scale_down_pre_change(%struct.ufs_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ufs_hba*, align 8
  %4 = alloca %struct.ufs_qcom_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ufs_hba* %0, %struct.ufs_hba** %3, align 8
  %7 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %8 = call %struct.ufs_qcom_host* @ufshcd_get_variant(%struct.ufs_hba* %7)
  store %struct.ufs_qcom_host* %8, %struct.ufs_qcom_host** %4, align 8
  %9 = load %struct.ufs_qcom_host*, %struct.ufs_qcom_host** %4, align 8
  %10 = call i32 @ufs_qcom_cap_qunipro(%struct.ufs_qcom_host* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %37

13:                                               ; preds = %1
  %14 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %15 = load i32, i32* @DME_VS_CORE_CLK_CTRL, align 4
  %16 = call i32 @UIC_ARG_MIB(i32 %15)
  %17 = call i32 @ufshcd_dme_get(%struct.ufs_hba* %14, i32 %16, i32* %6)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %35, label %20

20:                                               ; preds = %13
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @DME_VS_CORE_CLK_CTRL_CORE_CLK_DIV_EN_BIT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  %26 = load i32, i32* @DME_VS_CORE_CLK_CTRL_CORE_CLK_DIV_EN_BIT, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %6, align 4
  %30 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %31 = load i32, i32* @DME_VS_CORE_CLK_CTRL, align 4
  %32 = call i32 @UIC_ARG_MIB(i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @ufshcd_dme_set(%struct.ufs_hba* %30, i32 %32, i32 %33)
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %25, %20, %13
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %35, %12
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.ufs_qcom_host* @ufshcd_get_variant(%struct.ufs_hba*) #1

declare dso_local i32 @ufs_qcom_cap_qunipro(%struct.ufs_qcom_host*) #1

declare dso_local i32 @ufshcd_dme_get(%struct.ufs_hba*, i32, i32*) #1

declare dso_local i32 @UIC_ARG_MIB(i32) #1

declare dso_local i32 @ufshcd_dme_set(%struct.ufs_hba*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
