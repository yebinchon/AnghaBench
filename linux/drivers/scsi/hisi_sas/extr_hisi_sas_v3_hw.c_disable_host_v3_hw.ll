; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v3_hw.c_disable_host_v3_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v3_hw.c_disable_host_v3_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { %struct.device* }
%struct.device = type { i32 }

@DLVRY_QUEUE_ENABLE = common dso_local global i64 0, align 8
@AXI_MASTER_CFG_BASE = common dso_local global i64 0, align 8
@AM_CTRL_GLOBAL = common dso_local global i64 0, align 8
@AM_CTRL_SHUTDOWN_REQ_MSK = common dso_local global i32 0, align 4
@AM_CURR_TRANS_RETURN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"axi bus is not idle, rc=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hisi_hba*)* @disable_host_v3_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @disable_host_v3_hw(%struct.hisi_hba* %0) #0 {
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
  %12 = call i32 @interrupt_disable_v3_hw(%struct.hisi_hba* %11)
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
  %25 = call i32 @hisi_sas_read32(%struct.hisi_hba* %21, i64 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* @AM_CTRL_SHUTDOWN_REQ_MSK, align 4
  %27 = load i32, i32* %6, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %6, align 4
  %29 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %30 = load i64, i64* @AXI_MASTER_CFG_BASE, align 8
  %31 = load i64, i64* @AM_CTRL_GLOBAL, align 8
  %32 = add nsw i64 %30, %31
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @hisi_sas_write32(%struct.hisi_hba* %29, i64 %32, i32 %33)
  %35 = load i64, i64* @AXI_MASTER_CFG_BASE, align 8
  %36 = load i64, i64* @AM_CURR_TRANS_RETURN, align 8
  %37 = add nsw i64 %35, %36
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp eq i32 %39, 3
  %41 = zext i1 %40 to i32
  %42 = call i32 @hisi_sas_read32_poll_timeout(i64 %37, i32 %38, i32 %41, i32 10, i32 100)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %1
  %46 = load %struct.device*, %struct.device** %4, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @dev_err(%struct.device* %46, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %2, align 4
  br label %51

50:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %45
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @interrupt_disable_v3_hw(%struct.hisi_hba*) #1

declare dso_local i32 @hisi_sas_write32(%struct.hisi_hba*, i64, i32) #1

declare dso_local i32 @hisi_sas_kill_tasklets(%struct.hisi_hba*) #1

declare dso_local i32 @hisi_sas_stop_phys(%struct.hisi_hba*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @hisi_sas_read32(%struct.hisi_hba*, i64) #1

declare dso_local i32 @hisi_sas_read32_poll_timeout(i64, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
