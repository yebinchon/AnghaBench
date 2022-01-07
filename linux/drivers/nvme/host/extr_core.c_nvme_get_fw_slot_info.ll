; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_get_fw_slot_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_get_fw_slot_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ctrl = type { i32 }
%struct.nvme_fw_slot_info_log = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@NVME_NSID_ALL = common dso_local global i32 0, align 4
@NVME_LOG_FW_SLOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Get FW SLOT INFO log error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_ctrl*)* @nvme_get_fw_slot_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_get_fw_slot_info(%struct.nvme_ctrl* %0) #0 {
  %2 = alloca %struct.nvme_ctrl*, align 8
  %3 = alloca %struct.nvme_fw_slot_info_log*, align 8
  store %struct.nvme_ctrl* %0, %struct.nvme_ctrl** %2, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.nvme_fw_slot_info_log* @kmalloc(i32 4, i32 %4)
  store %struct.nvme_fw_slot_info_log* %5, %struct.nvme_fw_slot_info_log** %3, align 8
  %6 = load %struct.nvme_fw_slot_info_log*, %struct.nvme_fw_slot_info_log** %3, align 8
  %7 = icmp ne %struct.nvme_fw_slot_info_log* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %24

9:                                                ; preds = %1
  %10 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %2, align 8
  %11 = load i32, i32* @NVME_NSID_ALL, align 4
  %12 = load i32, i32* @NVME_LOG_FW_SLOT, align 4
  %13 = load %struct.nvme_fw_slot_info_log*, %struct.nvme_fw_slot_info_log** %3, align 8
  %14 = call i64 @nvme_get_log(%struct.nvme_ctrl* %10, i32 %11, i32 0, i32 %12, %struct.nvme_fw_slot_info_log* %13, i32 4, i32 0)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %9
  %17 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %2, align 8
  %18 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dev_warn(i32 %19, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %16, %9
  %22 = load %struct.nvme_fw_slot_info_log*, %struct.nvme_fw_slot_info_log** %3, align 8
  %23 = call i32 @kfree(%struct.nvme_fw_slot_info_log* %22)
  br label %24

24:                                               ; preds = %21, %8
  ret void
}

declare dso_local %struct.nvme_fw_slot_info_log* @kmalloc(i32, i32) #1

declare dso_local i64 @nvme_get_log(%struct.nvme_ctrl*, i32, i32, i32, %struct.nvme_fw_slot_info_log*, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @kfree(%struct.nvme_fw_slot_info_log*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
