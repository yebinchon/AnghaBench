; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v2_hw.c_phy_bcast_v2_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v2_hw.c_phy_bcast_v2_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { i32, %struct.sas_ha_struct, %struct.hisi_sas_phy* }
%struct.sas_ha_struct = type { i32 (%struct.asd_sas_phy*, i32)* }
%struct.asd_sas_phy = type opaque
%struct.hisi_sas_phy = type { %struct.asd_sas_phy.0 }
%struct.asd_sas_phy.0 = type { i32 }

@SL_RX_BCAST_CHK_MSK = common dso_local global i32 0, align 4
@RX_PRIMS_STATUS = common dso_local global i32 0, align 4
@RX_BCAST_CHG_MSK = common dso_local global i32 0, align 4
@HISI_SAS_RESET_BIT = common dso_local global i32 0, align 4
@PORTE_BROADCAST_RCVD = common dso_local global i32 0, align 4
@CHL_INT0 = common dso_local global i32 0, align 4
@CHL_INT0_SL_RX_BCST_ACK_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.hisi_hba*)* @phy_bcast_v2_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @phy_bcast_v2_hw(i32 %0, %struct.hisi_hba* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hisi_hba*, align 8
  %5 = alloca %struct.hisi_sas_phy*, align 8
  %6 = alloca %struct.asd_sas_phy.0*, align 8
  %7 = alloca %struct.sas_ha_struct*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.hisi_hba* %1, %struct.hisi_hba** %4, align 8
  %9 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %10 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %9, i32 0, i32 2
  %11 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %11, i64 %13
  store %struct.hisi_sas_phy* %14, %struct.hisi_sas_phy** %5, align 8
  %15 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %5, align 8
  %16 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %15, i32 0, i32 0
  store %struct.asd_sas_phy.0* %16, %struct.asd_sas_phy.0** %6, align 8
  %17 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %18 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %17, i32 0, i32 1
  store %struct.sas_ha_struct* %18, %struct.sas_ha_struct** %7, align 8
  %19 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @SL_RX_BCAST_CHK_MSK, align 4
  %22 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %19, i32 %20, i32 %21, i32 1)
  %23 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @RX_PRIMS_STATUS, align 4
  %26 = call i32 @hisi_sas_phy_read32(%struct.hisi_hba* %23, i32 %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @RX_BCAST_CHG_MSK, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %2
  %32 = load i32, i32* @HISI_SAS_RESET_BIT, align 4
  %33 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %34 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %33, i32 0, i32 0
  %35 = call i32 @test_bit(i32 %32, i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %31
  %38 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %7, align 8
  %39 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %38, i32 0, i32 0
  %40 = load i32 (%struct.asd_sas_phy*, i32)*, i32 (%struct.asd_sas_phy*, i32)** %39, align 8
  %41 = load %struct.asd_sas_phy.0*, %struct.asd_sas_phy.0** %6, align 8
  %42 = bitcast %struct.asd_sas_phy.0* %41 to %struct.asd_sas_phy*
  %43 = load i32, i32* @PORTE_BROADCAST_RCVD, align 4
  %44 = call i32 %40(%struct.asd_sas_phy* %42, i32 %43)
  br label %45

45:                                               ; preds = %37, %31, %2
  %46 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @CHL_INT0, align 4
  %49 = load i32, i32* @CHL_INT0_SL_RX_BCST_ACK_MSK, align 4
  %50 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %46, i32 %47, i32 %48, i32 %49)
  %51 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @SL_RX_BCAST_CHK_MSK, align 4
  %54 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %51, i32 %52, i32 %53, i32 0)
  ret void
}

declare dso_local i32 @hisi_sas_phy_write32(%struct.hisi_hba*, i32, i32, i32) #1

declare dso_local i32 @hisi_sas_phy_read32(%struct.hisi_hba*, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
