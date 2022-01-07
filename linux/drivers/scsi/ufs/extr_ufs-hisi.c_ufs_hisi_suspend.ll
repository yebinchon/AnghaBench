; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufs-hisi.c_ufs_hisi_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufs-hisi.c_ufs_hisi_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { i32 }
%struct.ufs_hisi_host = type { i32 }

@BIT_SYSCTRL_REF_CLOCK_EN = common dso_local global i32 0, align 4
@PHY_CLK_CTRL = common dso_local global i32 0, align 4
@UFS_DEVICE_RESET_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ufs_hba*, i32)* @ufs_hisi_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufs_hisi_suspend(%struct.ufs_hba* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ufs_hba*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ufs_hisi_host*, align 8
  store %struct.ufs_hba* %0, %struct.ufs_hba** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ufs_hba*, %struct.ufs_hba** %4, align 8
  %8 = call %struct.ufs_hisi_host* @ufshcd_get_variant(%struct.ufs_hba* %7)
  store %struct.ufs_hisi_host* %8, %struct.ufs_hisi_host** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i64 @ufshcd_is_runtime_pm(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %31

13:                                               ; preds = %2
  %14 = load %struct.ufs_hisi_host*, %struct.ufs_hisi_host** %6, align 8
  %15 = getelementptr inbounds %struct.ufs_hisi_host, %struct.ufs_hisi_host* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = call i32 @WARN_ON(i32 1)
  store i32 0, i32* %3, align 4
  br label %31

20:                                               ; preds = %13
  %21 = load %struct.ufs_hisi_host*, %struct.ufs_hisi_host** %6, align 8
  %22 = load i32, i32* @BIT_SYSCTRL_REF_CLOCK_EN, align 4
  %23 = load i32, i32* @PHY_CLK_CTRL, align 4
  %24 = call i32 @ufs_sys_ctrl_clr_bits(%struct.ufs_hisi_host* %21, i32 %22, i32 %23)
  %25 = call i32 @udelay(i32 10)
  %26 = load %struct.ufs_hisi_host*, %struct.ufs_hisi_host** %6, align 8
  %27 = load i32, i32* @UFS_DEVICE_RESET_CTRL, align 4
  %28 = call i32 @ufs_sys_ctrl_writel(%struct.ufs_hisi_host* %26, i32 1048576, i32 %27)
  %29 = load %struct.ufs_hisi_host*, %struct.ufs_hisi_host** %6, align 8
  %30 = getelementptr inbounds %struct.ufs_hisi_host, %struct.ufs_hisi_host* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %20, %18, %12
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local %struct.ufs_hisi_host* @ufshcd_get_variant(%struct.ufs_hba*) #1

declare dso_local i64 @ufshcd_is_runtime_pm(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ufs_sys_ctrl_clr_bits(%struct.ufs_hisi_host*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ufs_sys_ctrl_writel(%struct.ufs_hisi_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
