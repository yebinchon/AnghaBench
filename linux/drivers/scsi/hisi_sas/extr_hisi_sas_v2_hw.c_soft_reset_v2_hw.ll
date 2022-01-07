; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v2_hw.c_soft_reset_v2_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v2_hw.c_soft_reset_v2_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { %struct.device* }
%struct.device = type { i32 }

@DLVRY_QUEUE_ENABLE = common dso_local global i64 0, align 8
@AXI_MASTER_CFG_BASE = common dso_local global i64 0, align 8
@AM_CTRL_GLOBAL = common dso_local global i64 0, align 8
@AM_CURR_TRANS_RETURN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"wait axi bus state to idle timeout!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hisi_hba*)* @soft_reset_v2_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soft_reset_v2_hw(%struct.hisi_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hisi_hba*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hisi_hba* %0, %struct.hisi_hba** %3, align 8
  %8 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %9 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %8, i32 0, i32 0
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %12 = call i32 @interrupt_disable_v2_hw(%struct.hisi_hba* %11)
  %13 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %14 = load i64, i64* @DLVRY_QUEUE_ENABLE, align 8
  %15 = call i32 @hisi_sas_write32(%struct.hisi_hba* %13, i64 %14, i32 0)
  %16 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %17 = call i32 @hisi_sas_kill_tasklets(%struct.hisi_hba* %16)
  %18 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %19 = call i32 @hisi_sas_stop_phys(%struct.hisi_hba* %18)
  %20 = call i32 @mdelay(i32 10)
  %21 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %22 = load i64, i64* @AXI_MASTER_CFG_BASE, align 8
  %23 = load i64, i64* @AM_CTRL_GLOBAL, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @hisi_sas_write32(%struct.hisi_hba* %21, i64 %24, i32 1)
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %1, %43
  %27 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %28 = load i64, i64* @AXI_MASTER_CFG_BASE, align 8
  %29 = load i64, i64* @AM_CURR_TRANS_RETURN, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @hisi_sas_read32_relaxed(%struct.hisi_hba* %27, i64 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %32, 3
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %44

35:                                               ; preds = %26
  %36 = call i32 @udelay(i32 10)
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  %39 = icmp sgt i32 %37, 10
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = call i32 @dev_err(%struct.device* %41, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %56

43:                                               ; preds = %35
  br label %26

44:                                               ; preds = %34
  %45 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %46 = call i32 @hisi_sas_init_mem(%struct.hisi_hba* %45)
  %47 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %48 = call i32 @hw_init_v2_hw(%struct.hisi_hba* %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %2, align 4
  br label %56

53:                                               ; preds = %44
  %54 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %55 = call i32 @phys_reject_stp_links_v2_hw(%struct.hisi_hba* %54)
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %53, %51, %40
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @interrupt_disable_v2_hw(%struct.hisi_hba*) #1

declare dso_local i32 @hisi_sas_write32(%struct.hisi_hba*, i64, i32) #1

declare dso_local i32 @hisi_sas_kill_tasklets(%struct.hisi_hba*) #1

declare dso_local i32 @hisi_sas_stop_phys(%struct.hisi_hba*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @hisi_sas_read32_relaxed(%struct.hisi_hba*, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @hisi_sas_init_mem(%struct.hisi_hba*) #1

declare dso_local i32 @hw_init_v2_hw(%struct.hisi_hba*) #1

declare dso_local i32 @phys_reject_stp_links_v2_hw(%struct.hisi_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
