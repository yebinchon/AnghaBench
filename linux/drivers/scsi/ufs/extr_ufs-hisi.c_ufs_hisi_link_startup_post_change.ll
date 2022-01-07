; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufs-hisi.c_ufs_hisi_link_startup_post_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufs-hisi.c_ufs_hisi_link_startup_post_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { i32 }
%struct.ufs_hisi_host = type { i32 }

@MASK_UFS_CLK_GATE_BYPASS = common dso_local global i32 0, align 4
@CLOCK_GATE_BYPASS = common dso_local global i32 0, align 4
@MASK_UFS_SYSCRTL_BYPASS = common dso_local global i32 0, align 4
@UFS_SYSCTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ufs_hba*)* @ufs_hisi_link_startup_post_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufs_hisi_link_startup_post_change(%struct.ufs_hba* %0) #0 {
  %2 = alloca %struct.ufs_hba*, align 8
  %3 = alloca %struct.ufs_hisi_host*, align 8
  store %struct.ufs_hba* %0, %struct.ufs_hba** %2, align 8
  %4 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %5 = call %struct.ufs_hisi_host* @ufshcd_get_variant(%struct.ufs_hba* %4)
  store %struct.ufs_hisi_host* %5, %struct.ufs_hisi_host** %3, align 8
  %6 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %7 = call i32 @UIC_ARG_MIB(i32 8260)
  %8 = call i32 @ufshcd_dme_set(%struct.ufs_hba* %6, i32 %7, i32 0)
  %9 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %10 = call i32 @UIC_ARG_MIB(i32 8261)
  %11 = call i32 @ufshcd_dme_set(%struct.ufs_hba* %9, i32 %10, i32 0)
  %12 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %13 = call i32 @UIC_ARG_MIB(i32 8256)
  %14 = call i32 @ufshcd_dme_set(%struct.ufs_hba* %12, i32 %13, i32 9)
  %15 = load %struct.ufs_hisi_host*, %struct.ufs_hisi_host** %3, align 8
  %16 = load i32, i32* @MASK_UFS_CLK_GATE_BYPASS, align 4
  %17 = load i32, i32* @CLOCK_GATE_BYPASS, align 4
  %18 = call i32 @ufs_sys_ctrl_clr_bits(%struct.ufs_hisi_host* %15, i32 %16, i32 %17)
  %19 = load %struct.ufs_hisi_host*, %struct.ufs_hisi_host** %3, align 8
  %20 = load i32, i32* @MASK_UFS_SYSCRTL_BYPASS, align 4
  %21 = load i32, i32* @UFS_SYSCTRL, align 4
  %22 = call i32 @ufs_sys_ctrl_clr_bits(%struct.ufs_hisi_host* %19, i32 %20, i32 %21)
  %23 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %24 = call i32 @UIC_ARG_MIB(i32 53402)
  %25 = call i32 @ufshcd_dme_set(%struct.ufs_hba* %23, i32 %24, i32 -2147483648)
  %26 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %27 = call i32 @UIC_ARG_MIB(i32 53404)
  %28 = call i32 @ufshcd_dme_set(%struct.ufs_hba* %26, i32 %27, i32 5)
  ret i32 0
}

declare dso_local %struct.ufs_hisi_host* @ufshcd_get_variant(%struct.ufs_hba*) #1

declare dso_local i32 @ufshcd_dme_set(%struct.ufs_hba*, i32, i32) #1

declare dso_local i32 @UIC_ARG_MIB(i32) #1

declare dso_local i32 @ufs_sys_ctrl_clr_bits(%struct.ufs_hisi_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
