; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v1_hw.c_phys_init_v1_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v1_hw.c_phys_init_v1_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { i32, %struct.timer_list }
%struct.timer_list = type { i32 }

@CHL_INT2_MSK = common dso_local global i32 0, align 4
@start_phys_v1_hw = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hisi_hba*)* @phys_init_v1_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @phys_init_v1_hw(%struct.hisi_hba* %0) #0 {
  %2 = alloca %struct.hisi_hba*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.timer_list*, align 8
  store %struct.hisi_hba* %0, %struct.hisi_hba** %2, align 8
  %5 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %6 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %5, i32 0, i32 1
  store %struct.timer_list* %6, %struct.timer_list** %4, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %22, %1
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %10 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %7
  %14 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @CHL_INT2_MSK, align 4
  %17 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %14, i32 %15, i32 %16, i32 106)
  %18 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @CHL_INT2_MSK, align 4
  %21 = call i32 @hisi_sas_phy_read32(%struct.hisi_hba* %18, i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %13
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %7

25:                                               ; preds = %7
  %26 = load %struct.timer_list*, %struct.timer_list** %4, align 8
  %27 = load i32, i32* @start_phys_v1_hw, align 4
  %28 = call i32 @timer_setup(%struct.timer_list* %26, i32 %27, i32 0)
  %29 = load %struct.timer_list*, %struct.timer_list** %4, align 8
  %30 = load i64, i64* @jiffies, align 8
  %31 = load i64, i64* @HZ, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @mod_timer(%struct.timer_list* %29, i64 %32)
  ret void
}

declare dso_local i32 @hisi_sas_phy_write32(%struct.hisi_hba*, i32, i32, i32) #1

declare dso_local i32 @hisi_sas_phy_read32(%struct.hisi_hba*, i32, i32) #1

declare dso_local i32 @timer_setup(%struct.timer_list*, i32, i32) #1

declare dso_local i32 @mod_timer(%struct.timer_list*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
