; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v3_hw.c_phy_set_linkrate_v3_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v3_hw.c_phy_set_linkrate_v3_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { i32 }
%struct.sas_phy_linkrates = type { i32 }

@PROG_PHY_LINK_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hisi_hba*, i32, %struct.sas_phy_linkrates*)* @phy_set_linkrate_v3_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @phy_set_linkrate_v3_hw(%struct.hisi_hba* %0, i32 %1, %struct.sas_phy_linkrates* %2) #0 {
  %4 = alloca %struct.hisi_hba*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sas_phy_linkrates*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hisi_hba* %0, %struct.hisi_hba** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.sas_phy_linkrates* %2, %struct.sas_phy_linkrates** %6, align 8
  %9 = load %struct.sas_phy_linkrates*, %struct.sas_phy_linkrates** %6, align 8
  %10 = getelementptr inbounds %struct.sas_phy_linkrates, %struct.sas_phy_linkrates* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %7, align 4
  store i32 2048, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @hisi_sas_get_prog_phy_linkrate_mask(i32 %12)
  %14 = load i32, i32* %8, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %8, align 4
  %16 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @PROG_PHY_LINK_RATE, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %16, i32 %17, i32 %18, i32 %19)
  ret void
}

declare dso_local i32 @hisi_sas_get_prog_phy_linkrate_mask(i32) #1

declare dso_local i32 @hisi_sas_phy_write32(%struct.hisi_hba*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
