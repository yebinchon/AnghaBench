; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufs-qcom.c_ufs_qcom_dump_dbg_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufs-qcom.c_ufs_qcom_dump_dbg_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { i32 }

@REG_UFS_SYS1CLK_1US = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"HCI Vendor Specific Registers \00", align 1
@ufs_qcom_dump_regs_wrapper = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ufs_hba*)* @ufs_qcom_dump_dbg_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufs_qcom_dump_dbg_regs(%struct.ufs_hba* %0) #0 {
  %2 = alloca %struct.ufs_hba*, align 8
  store %struct.ufs_hba* %0, %struct.ufs_hba** %2, align 8
  %3 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %4 = load i32, i32* @REG_UFS_SYS1CLK_1US, align 4
  %5 = call i32 @ufshcd_dump_regs(%struct.ufs_hba* %3, i32 %4, i32 64, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %7 = load i32, i32* @ufs_qcom_dump_regs_wrapper, align 4
  %8 = call i32 @ufs_qcom_print_hw_debug_reg_all(%struct.ufs_hba* %6, i32* null, i32 %7)
  %9 = call i32 @usleep_range(i32 1000, i32 1100)
  %10 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %11 = call i32 @ufs_qcom_testbus_read(%struct.ufs_hba* %10)
  %12 = call i32 @usleep_range(i32 1000, i32 1100)
  %13 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %14 = call i32 @ufs_qcom_print_unipro_testbus(%struct.ufs_hba* %13)
  %15 = call i32 @usleep_range(i32 1000, i32 1100)
  ret void
}

declare dso_local i32 @ufshcd_dump_regs(%struct.ufs_hba*, i32, i32, i8*) #1

declare dso_local i32 @ufs_qcom_print_hw_debug_reg_all(%struct.ufs_hba*, i32*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @ufs_qcom_testbus_read(%struct.ufs_hba*) #1

declare dso_local i32 @ufs_qcom_print_unipro_testbus(%struct.ufs_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
