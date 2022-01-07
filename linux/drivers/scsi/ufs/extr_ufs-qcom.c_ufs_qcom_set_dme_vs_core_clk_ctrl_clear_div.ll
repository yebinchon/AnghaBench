; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufs-qcom.c_ufs_qcom_set_dme_vs_core_clk_ctrl_clear_div.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufs-qcom.c_ufs_qcom_set_dme_vs_core_clk_ctrl_clear_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { i32 }

@DME_VS_CORE_CLK_CTRL_MAX_CORE_CLK_1US_CYCLES_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DME_VS_CORE_CLK_CTRL = common dso_local global i32 0, align 4
@DME_VS_CORE_CLK_CTRL_CORE_CLK_DIV_EN_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ufs_hba*, i32)* @ufs_qcom_set_dme_vs_core_clk_ctrl_clear_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufs_qcom_set_dme_vs_core_clk_ctrl_clear_div(%struct.ufs_hba* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ufs_hba*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ufs_hba* %0, %struct.ufs_hba** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @DME_VS_CORE_CLK_CTRL_MAX_CORE_CLK_1US_CYCLES_MASK, align 4
  %10 = icmp sgt i32 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %41

14:                                               ; preds = %2
  %15 = load %struct.ufs_hba*, %struct.ufs_hba** %4, align 8
  %16 = load i32, i32* @DME_VS_CORE_CLK_CTRL, align 4
  %17 = call i32 @UIC_ARG_MIB(i32 %16)
  %18 = call i32 @ufshcd_dme_get(%struct.ufs_hba* %15, i32 %17, i32* %7)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %39

22:                                               ; preds = %14
  %23 = load i32, i32* @DME_VS_CORE_CLK_CTRL_MAX_CORE_CLK_1US_CYCLES_MASK, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %7, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* @DME_VS_CORE_CLK_CTRL_CORE_CLK_DIV_EN_BIT, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %7, align 4
  %34 = load %struct.ufs_hba*, %struct.ufs_hba** %4, align 8
  %35 = load i32, i32* @DME_VS_CORE_CLK_CTRL, align 4
  %36 = call i32 @UIC_ARG_MIB(i32 %35)
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @ufshcd_dme_set(%struct.ufs_hba* %34, i32 %36, i32 %37)
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %22, %21
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %39, %11
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @ufshcd_dme_get(%struct.ufs_hba*, i32, i32*) #1

declare dso_local i32 @UIC_ARG_MIB(i32) #1

declare dso_local i32 @ufshcd_dme_set(%struct.ufs_hba*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
