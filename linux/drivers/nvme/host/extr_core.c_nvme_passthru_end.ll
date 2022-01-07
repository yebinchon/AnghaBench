; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_passthru_end.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_passthru_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ctrl = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@NVME_CMD_EFFECTS_LBCC = common dso_local global i32 0, align 4
@NVME_CMD_EFFECTS_CSE_MASK = common dso_local global i32 0, align 4
@NVME_NSID_ALL = common dso_local global i32 0, align 4
@NVME_CMD_EFFECTS_CCC = common dso_local global i32 0, align 4
@NVME_CMD_EFFECTS_NIC = common dso_local global i32 0, align 4
@NVME_CMD_EFFECTS_NCC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_ctrl*, i32)* @nvme_passthru_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_passthru_end(%struct.nvme_ctrl* %0, i32 %1) #0 {
  %3 = alloca %struct.nvme_ctrl*, align 8
  %4 = alloca i32, align 4
  store %struct.nvme_ctrl* %0, %struct.nvme_ctrl** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @NVME_CMD_EFFECTS_LBCC, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %11 = call i32 @nvme_update_formats(%struct.nvme_ctrl* %10)
  br label %12

12:                                               ; preds = %9, %2
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @NVME_CMD_EFFECTS_LBCC, align 4
  %15 = load i32, i32* @NVME_CMD_EFFECTS_CSE_MASK, align 4
  %16 = or i32 %14, %15
  %17 = and i32 %13, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %12
  %20 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %21 = call i32 @nvme_unfreeze(%struct.nvme_ctrl* %20)
  %22 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %23 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = call i32 @nvme_mpath_unfreeze(%struct.TYPE_2__* %24)
  %26 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %27 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @mutex_unlock(i32* %29)
  %31 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %32 = load i32, i32* @NVME_NSID_ALL, align 4
  %33 = call i32 @nvme_remove_invalid_namespaces(%struct.nvme_ctrl* %31, i32 %32)
  %34 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %35 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %34, i32 0, i32 0
  %36 = call i32 @mutex_unlock(i32* %35)
  br label %37

37:                                               ; preds = %19, %12
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @NVME_CMD_EFFECTS_CCC, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %44 = call i32 @nvme_init_identify(%struct.nvme_ctrl* %43)
  br label %45

45:                                               ; preds = %42, %37
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @NVME_CMD_EFFECTS_NIC, align 4
  %48 = load i32, i32* @NVME_CMD_EFFECTS_NCC, align 4
  %49 = or i32 %47, %48
  %50 = and i32 %46, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %54 = call i32 @nvme_queue_scan(%struct.nvme_ctrl* %53)
  br label %55

55:                                               ; preds = %52, %45
  ret void
}

declare dso_local i32 @nvme_update_formats(%struct.nvme_ctrl*) #1

declare dso_local i32 @nvme_unfreeze(%struct.nvme_ctrl*) #1

declare dso_local i32 @nvme_mpath_unfreeze(%struct.TYPE_2__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @nvme_remove_invalid_namespaces(%struct.nvme_ctrl*, i32) #1

declare dso_local i32 @nvme_init_identify(%struct.nvme_ctrl*) #1

declare dso_local i32 @nvme_queue_scan(%struct.nvme_ctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
