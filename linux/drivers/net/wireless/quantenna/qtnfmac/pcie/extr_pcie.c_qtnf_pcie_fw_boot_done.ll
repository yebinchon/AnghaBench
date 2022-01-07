; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/pcie/extr_pcie.c_qtnf_pcie_fw_boot_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/pcie/extr_pcie.c_qtnf_pcie_fw_boot_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_bus = type { i32 }

@QTNF_FW_STATE_BOOT_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"failed to attach core\0A\00", align 1
@DRV_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"mps\00", align 1
@qtnf_dbg_mps_show = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"msi_enabled\00", align 1
@qtnf_dbg_msi_show = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"shm_stats\00", align 1
@qtnf_dbg_shm_stats = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qtnf_pcie_fw_boot_done(%struct.qtnf_bus* %0) #0 {
  %2 = alloca %struct.qtnf_bus*, align 8
  %3 = alloca i32, align 4
  store %struct.qtnf_bus* %0, %struct.qtnf_bus** %2, align 8
  %4 = load i32, i32* @QTNF_FW_STATE_BOOT_DONE, align 4
  %5 = load %struct.qtnf_bus*, %struct.qtnf_bus** %2, align 8
  %6 = getelementptr inbounds %struct.qtnf_bus, %struct.qtnf_bus* %5, i32 0, i32 0
  store i32 %4, i32* %6, align 4
  %7 = load %struct.qtnf_bus*, %struct.qtnf_bus** %2, align 8
  %8 = call i32 @qtnf_core_attach(%struct.qtnf_bus* %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %26

13:                                               ; preds = %1
  %14 = load %struct.qtnf_bus*, %struct.qtnf_bus** %2, align 8
  %15 = load i32, i32* @DRV_NAME, align 4
  %16 = call i32 @qtnf_debugfs_init(%struct.qtnf_bus* %14, i32 %15)
  %17 = load %struct.qtnf_bus*, %struct.qtnf_bus** %2, align 8
  %18 = load i32, i32* @qtnf_dbg_mps_show, align 4
  %19 = call i32 @qtnf_debugfs_add_entry(%struct.qtnf_bus* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load %struct.qtnf_bus*, %struct.qtnf_bus** %2, align 8
  %21 = load i32, i32* @qtnf_dbg_msi_show, align 4
  %22 = call i32 @qtnf_debugfs_add_entry(%struct.qtnf_bus* %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %21)
  %23 = load %struct.qtnf_bus*, %struct.qtnf_bus** %2, align 8
  %24 = load i32, i32* @qtnf_dbg_shm_stats, align 4
  %25 = call i32 @qtnf_debugfs_add_entry(%struct.qtnf_bus* %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %13, %11
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @qtnf_core_attach(%struct.qtnf_bus*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @qtnf_debugfs_init(%struct.qtnf_bus*, i32) #1

declare dso_local i32 @qtnf_debugfs_add_entry(%struct.qtnf_bus*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
