; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v2_hw.c_phys_reject_stp_links_v2_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v2_hw.c_phys_reject_stp_links_v2_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { i32, i32 }

@CON_CONTROL = common dso_local global i32 0, align 4
@CON_CONTROL_CFG_OPEN_ACC_STP_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hisi_hba*)* @phys_reject_stp_links_v2_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @phys_reject_stp_links_v2_hw(%struct.hisi_hba* %0) #0 {
  %2 = alloca %struct.hisi_hba*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.hisi_hba* %0, %struct.hisi_hba** %2, align 8
  %5 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %6 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = shl i32 1, %7
  %9 = sub nsw i32 %8, 1
  %10 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %11 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %38, %1
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %15 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %41

18:                                               ; preds = %12
  %19 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @CON_CONTROL, align 4
  %22 = call i32 @hisi_sas_phy_read32(%struct.hisi_hba* %19, i32 %20, i32 %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @CON_CONTROL_CFG_OPEN_ACC_STP_MSK, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %18
  br label %38

28:                                               ; preds = %18
  %29 = load i32, i32* @CON_CONTROL_CFG_OPEN_ACC_STP_MSK, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %3, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %3, align 4
  %33 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @CON_CONTROL, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %33, i32 %34, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %28, %27
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %12

41:                                               ; preds = %12
  ret void
}

declare dso_local i32 @hisi_sas_phy_read32(%struct.hisi_hba*, i32, i32) #1

declare dso_local i32 @hisi_sas_phy_write32(%struct.hisi_hba*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
