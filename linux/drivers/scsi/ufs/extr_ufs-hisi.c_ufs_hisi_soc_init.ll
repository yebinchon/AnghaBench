; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufs-hisi.c_ufs_hisi_soc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufs-hisi.c_ufs_hisi_soc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { i32 }
%struct.ufs_hisi_host = type { i32 }

@BIT_UFS_PSW_MTCMOS_EN = common dso_local global i32 0, align 4
@PSW_POWER_CTRL = common dso_local global i32 0, align 4
@BIT_SYSCTRL_PWR_READY = common dso_local global i32 0, align 4
@HC_LP_CTRL = common dso_local global i32 0, align 4
@MASK_UFS_DEVICE_RESET = common dso_local global i32 0, align 4
@UFS_DEVICE_RESET_CTRL = common dso_local global i32 0, align 4
@PHY_CLK_CTRL = common dso_local global i32 0, align 4
@MASK_SYSCTRL_CFG_CLOCK_FREQ = common dso_local global i32 0, align 4
@UFS_FREQ_CFG_CLK = common dso_local global i32 0, align 4
@MASK_SYSCTRL_REF_CLOCK_SEL = common dso_local global i32 0, align 4
@MASK_UFS_CLK_GATE_BYPASS = common dso_local global i32 0, align 4
@CLOCK_GATE_BYPASS = common dso_local global i32 0, align 4
@MASK_UFS_SYSCRTL_BYPASS = common dso_local global i32 0, align 4
@UFS_SYSCTRL = common dso_local global i32 0, align 4
@BIT_SYSCTRL_PSW_CLK_EN = common dso_local global i32 0, align 4
@PSW_CLK_CTRL = common dso_local global i32 0, align 4
@BIT_UFS_PSW_ISO_CTRL = common dso_local global i32 0, align 4
@BIT_UFS_PHY_ISO_CTRL = common dso_local global i32 0, align 4
@PHY_ISO_EN = common dso_local global i32 0, align 4
@BIT_SYSCTRL_LP_ISOL_EN = common dso_local global i32 0, align 4
@BIT_SYSCTRL_LP_RESET_N = common dso_local global i32 0, align 4
@RESET_CTRL_EN = common dso_local global i32 0, align 4
@BIT_UFS_DEVICE_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ufs_hba*)* @ufs_hisi_soc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufs_hisi_soc_init(%struct.ufs_hba* %0) #0 {
  %2 = alloca %struct.ufs_hba*, align 8
  %3 = alloca %struct.ufs_hisi_host*, align 8
  %4 = alloca i32, align 4
  store %struct.ufs_hba* %0, %struct.ufs_hba** %2, align 8
  %5 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %6 = call %struct.ufs_hisi_host* @ufshcd_get_variant(%struct.ufs_hba* %5)
  store %struct.ufs_hisi_host* %6, %struct.ufs_hisi_host** %3, align 8
  %7 = load %struct.ufs_hisi_host*, %struct.ufs_hisi_host** %3, align 8
  %8 = getelementptr inbounds %struct.ufs_hisi_host, %struct.ufs_hisi_host* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @IS_ERR(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %1
  %13 = load %struct.ufs_hisi_host*, %struct.ufs_hisi_host** %3, align 8
  %14 = getelementptr inbounds %struct.ufs_hisi_host, %struct.ufs_hisi_host* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @reset_control_assert(i32 %15)
  br label %17

17:                                               ; preds = %12, %1
  %18 = load %struct.ufs_hisi_host*, %struct.ufs_hisi_host** %3, align 8
  %19 = load i32, i32* @BIT_UFS_PSW_MTCMOS_EN, align 4
  %20 = load i32, i32* @PSW_POWER_CTRL, align 4
  %21 = call i32 @ufs_sys_ctrl_set_bits(%struct.ufs_hisi_host* %18, i32 %19, i32 %20)
  %22 = call i32 @udelay(i32 10)
  %23 = load %struct.ufs_hisi_host*, %struct.ufs_hisi_host** %3, align 8
  %24 = load i32, i32* @BIT_SYSCTRL_PWR_READY, align 4
  %25 = load i32, i32* @HC_LP_CTRL, align 4
  %26 = call i32 @ufs_sys_ctrl_set_bits(%struct.ufs_hisi_host* %23, i32 %24, i32 %25)
  %27 = load %struct.ufs_hisi_host*, %struct.ufs_hisi_host** %3, align 8
  %28 = load i32, i32* @MASK_UFS_DEVICE_RESET, align 4
  %29 = load i32, i32* @UFS_DEVICE_RESET_CTRL, align 4
  %30 = call i32 @ufs_sys_ctrl_writel(%struct.ufs_hisi_host* %27, i32 %28, i32 %29)
  %31 = load %struct.ufs_hisi_host*, %struct.ufs_hisi_host** %3, align 8
  %32 = load i32, i32* @PHY_CLK_CTRL, align 4
  %33 = call i32 @ufs_sys_ctrl_readl(%struct.ufs_hisi_host* %31, i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @MASK_SYSCTRL_CFG_CLOCK_FREQ, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  %38 = load i32, i32* @UFS_FREQ_CFG_CLK, align 4
  %39 = or i32 %37, %38
  store i32 %39, i32* %4, align 4
  %40 = load %struct.ufs_hisi_host*, %struct.ufs_hisi_host** %3, align 8
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @PHY_CLK_CTRL, align 4
  %43 = call i32 @ufs_sys_ctrl_writel(%struct.ufs_hisi_host* %40, i32 %41, i32 %42)
  %44 = load %struct.ufs_hisi_host*, %struct.ufs_hisi_host** %3, align 8
  %45 = load i32, i32* @MASK_SYSCTRL_REF_CLOCK_SEL, align 4
  %46 = load i32, i32* @PHY_CLK_CTRL, align 4
  %47 = call i32 @ufs_sys_ctrl_clr_bits(%struct.ufs_hisi_host* %44, i32 %45, i32 %46)
  %48 = load %struct.ufs_hisi_host*, %struct.ufs_hisi_host** %3, align 8
  %49 = load i32, i32* @MASK_UFS_CLK_GATE_BYPASS, align 4
  %50 = load i32, i32* @CLOCK_GATE_BYPASS, align 4
  %51 = call i32 @ufs_sys_ctrl_set_bits(%struct.ufs_hisi_host* %48, i32 %49, i32 %50)
  %52 = load %struct.ufs_hisi_host*, %struct.ufs_hisi_host** %3, align 8
  %53 = load i32, i32* @MASK_UFS_SYSCRTL_BYPASS, align 4
  %54 = load i32, i32* @UFS_SYSCTRL, align 4
  %55 = call i32 @ufs_sys_ctrl_set_bits(%struct.ufs_hisi_host* %52, i32 %53, i32 %54)
  %56 = load %struct.ufs_hisi_host*, %struct.ufs_hisi_host** %3, align 8
  %57 = load i32, i32* @BIT_SYSCTRL_PSW_CLK_EN, align 4
  %58 = load i32, i32* @PSW_CLK_CTRL, align 4
  %59 = call i32 @ufs_sys_ctrl_set_bits(%struct.ufs_hisi_host* %56, i32 %57, i32 %58)
  %60 = load %struct.ufs_hisi_host*, %struct.ufs_hisi_host** %3, align 8
  %61 = load i32, i32* @BIT_UFS_PSW_ISO_CTRL, align 4
  %62 = load i32, i32* @PSW_POWER_CTRL, align 4
  %63 = call i32 @ufs_sys_ctrl_clr_bits(%struct.ufs_hisi_host* %60, i32 %61, i32 %62)
  %64 = load %struct.ufs_hisi_host*, %struct.ufs_hisi_host** %3, align 8
  %65 = load i32, i32* @BIT_UFS_PHY_ISO_CTRL, align 4
  %66 = load i32, i32* @PHY_ISO_EN, align 4
  %67 = call i32 @ufs_sys_ctrl_clr_bits(%struct.ufs_hisi_host* %64, i32 %65, i32 %66)
  %68 = load %struct.ufs_hisi_host*, %struct.ufs_hisi_host** %3, align 8
  %69 = load i32, i32* @BIT_SYSCTRL_LP_ISOL_EN, align 4
  %70 = load i32, i32* @HC_LP_CTRL, align 4
  %71 = call i32 @ufs_sys_ctrl_clr_bits(%struct.ufs_hisi_host* %68, i32 %69, i32 %70)
  %72 = load %struct.ufs_hisi_host*, %struct.ufs_hisi_host** %3, align 8
  %73 = load i32, i32* @BIT_SYSCTRL_LP_RESET_N, align 4
  %74 = load i32, i32* @RESET_CTRL_EN, align 4
  %75 = call i32 @ufs_sys_ctrl_set_bits(%struct.ufs_hisi_host* %72, i32 %73, i32 %74)
  %76 = call i32 @mdelay(i32 1)
  %77 = load %struct.ufs_hisi_host*, %struct.ufs_hisi_host** %3, align 8
  %78 = load i32, i32* @MASK_UFS_DEVICE_RESET, align 4
  %79 = load i32, i32* @BIT_UFS_DEVICE_RESET, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @UFS_DEVICE_RESET_CTRL, align 4
  %82 = call i32 @ufs_sys_ctrl_writel(%struct.ufs_hisi_host* %77, i32 %80, i32 %81)
  %83 = call i32 @msleep(i32 20)
  %84 = load %struct.ufs_hisi_host*, %struct.ufs_hisi_host** %3, align 8
  %85 = load i32, i32* @UFS_DEVICE_RESET_CTRL, align 4
  %86 = call i32 @ufs_sys_ctrl_writel(%struct.ufs_hisi_host* %84, i32 53478192, i32 %85)
  %87 = load %struct.ufs_hisi_host*, %struct.ufs_hisi_host** %3, align 8
  %88 = getelementptr inbounds %struct.ufs_hisi_host, %struct.ufs_hisi_host* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @IS_ERR(i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %17
  %93 = load %struct.ufs_hisi_host*, %struct.ufs_hisi_host** %3, align 8
  %94 = getelementptr inbounds %struct.ufs_hisi_host, %struct.ufs_hisi_host* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @reset_control_deassert(i32 %95)
  br label %97

97:                                               ; preds = %92, %17
  ret void
}

declare dso_local %struct.ufs_hisi_host* @ufshcd_get_variant(%struct.ufs_hba*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @ufs_sys_ctrl_set_bits(%struct.ufs_hisi_host*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ufs_sys_ctrl_writel(%struct.ufs_hisi_host*, i32, i32) #1

declare dso_local i32 @ufs_sys_ctrl_readl(%struct.ufs_hisi_host*, i32) #1

declare dso_local i32 @ufs_sys_ctrl_clr_bits(%struct.ufs_hisi_host*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @reset_control_deassert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
