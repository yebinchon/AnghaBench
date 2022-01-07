; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v3_hw.c_phy_hard_reset_v3_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v3_hw.c_phy_hard_reset_v3_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { %struct.hisi_sas_phy* }
%struct.hisi_sas_phy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@SAS_END_DEVICE = common dso_local global i64 0, align 8
@TXID_AUTO = common dso_local global i32 0, align 4
@TX_HARDRST_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hisi_hba*, i32)* @phy_hard_reset_v3_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @phy_hard_reset_v3_hw(%struct.hisi_hba* %0, i32 %1) #0 {
  %3 = alloca %struct.hisi_hba*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hisi_sas_phy*, align 8
  %6 = alloca i32, align 4
  store %struct.hisi_hba* %0, %struct.hisi_hba** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %8 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %7, i32 0, i32 0
  %9 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %9, i64 %11
  store %struct.hisi_sas_phy* %12, %struct.hisi_sas_phy** %5, align 8
  %13 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @hisi_sas_phy_enable(%struct.hisi_hba* %13, i32 %14, i32 0)
  %16 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %5, align 8
  %17 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SAS_END_DEVICE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %2
  %23 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @TXID_AUTO, align 4
  %26 = call i32 @hisi_sas_phy_read32(%struct.hisi_hba* %23, i32 %24, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @TXID_AUTO, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @TX_HARDRST_MSK, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %27, i32 %28, i32 %29, i32 %32)
  br label %34

34:                                               ; preds = %22, %2
  %35 = call i32 @msleep(i32 100)
  %36 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @hisi_sas_phy_enable(%struct.hisi_hba* %36, i32 %37, i32 1)
  ret void
}

declare dso_local i32 @hisi_sas_phy_enable(%struct.hisi_hba*, i32, i32) #1

declare dso_local i32 @hisi_sas_phy_read32(%struct.hisi_hba*, i32, i32) #1

declare dso_local i32 @hisi_sas_phy_write32(%struct.hisi_hba*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
