; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v1_hw.c_int_bcast_v1_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v1_hw.c_int_bcast_v1_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_sas_phy = type { %struct.asd_sas_phy, %struct.hisi_hba* }
%struct.asd_sas_phy = type { i32 }
%struct.hisi_hba = type { i32, %struct.device*, %struct.sas_ha_struct }
%struct.device = type { i32 }
%struct.sas_ha_struct = type { i32 (%struct.asd_sas_phy.0*, i32)* }
%struct.asd_sas_phy.0 = type opaque

@IRQ_HANDLED = common dso_local global i32 0, align 4
@CHL_INT2 = common dso_local global i32 0, align 4
@CHL_INT2_SL_RX_BC_ACK_MSK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"bcast: irq_value = %x not set enable bit\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@HISI_SAS_RESET_BIT = common dso_local global i32 0, align 4
@PORTE_BROADCAST_RCVD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @int_bcast_v1_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @int_bcast_v1_hw(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hisi_sas_phy*, align 8
  %6 = alloca %struct.hisi_hba*, align 8
  %7 = alloca %struct.asd_sas_phy*, align 8
  %8 = alloca %struct.sas_ha_struct*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.hisi_sas_phy*
  store %struct.hisi_sas_phy* %14, %struct.hisi_sas_phy** %5, align 8
  %15 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %5, align 8
  %16 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %15, i32 0, i32 1
  %17 = load %struct.hisi_hba*, %struct.hisi_hba** %16, align 8
  store %struct.hisi_hba* %17, %struct.hisi_hba** %6, align 8
  %18 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %5, align 8
  %19 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %18, i32 0, i32 0
  store %struct.asd_sas_phy* %19, %struct.asd_sas_phy** %7, align 8
  %20 = load %struct.hisi_hba*, %struct.hisi_hba** %6, align 8
  %21 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %20, i32 0, i32 2
  store %struct.sas_ha_struct* %21, %struct.sas_ha_struct** %8, align 8
  %22 = load %struct.hisi_hba*, %struct.hisi_hba** %6, align 8
  %23 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %22, i32 0, i32 1
  %24 = load %struct.device*, %struct.device** %23, align 8
  store %struct.device* %24, %struct.device** %9, align 8
  %25 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %7, align 8
  %26 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %28, i32* %12, align 4
  %29 = load %struct.hisi_hba*, %struct.hisi_hba** %6, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @CHL_INT2, align 4
  %32 = call i32 @hisi_sas_phy_read32(%struct.hisi_hba* %29, i32 %30, i32 %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @CHL_INT2_SL_RX_BC_ACK_MSK, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %2
  %38 = load %struct.device*, %struct.device** %9, align 8
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @dev_err(%struct.device* %38, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @IRQ_NONE, align 4
  store i32 %41, i32* %12, align 4
  br label %57

42:                                               ; preds = %2
  %43 = load i32, i32* @HISI_SAS_RESET_BIT, align 4
  %44 = load %struct.hisi_hba*, %struct.hisi_hba** %6, align 8
  %45 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %44, i32 0, i32 0
  %46 = call i32 @test_bit(i32 %43, i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %42
  %49 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %8, align 8
  %50 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %49, i32 0, i32 0
  %51 = load i32 (%struct.asd_sas_phy.0*, i32)*, i32 (%struct.asd_sas_phy.0*, i32)** %50, align 8
  %52 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %7, align 8
  %53 = bitcast %struct.asd_sas_phy* %52 to %struct.asd_sas_phy.0*
  %54 = load i32, i32* @PORTE_BROADCAST_RCVD, align 4
  %55 = call i32 %51(%struct.asd_sas_phy.0* %53, i32 %54)
  br label %56

56:                                               ; preds = %48, %42
  br label %57

57:                                               ; preds = %56, %37
  %58 = load %struct.hisi_hba*, %struct.hisi_hba** %6, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @CHL_INT2, align 4
  %61 = load i32, i32* @CHL_INT2_SL_RX_BC_ACK_MSK, align 4
  %62 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %58, i32 %59, i32 %60, i32 %61)
  %63 = load i32, i32* %12, align 4
  ret i32 %63
}

declare dso_local i32 @hisi_sas_phy_read32(%struct.hisi_hba*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @hisi_sas_phy_write32(%struct.hisi_hba*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
