; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v2_hw.c_disable_phy_v2_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v2_hw.c_disable_phy_v2_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { i32, i32, %struct.device* }
%struct.device = type { i32 }

@AXI_MASTER_CFG_BASE = common dso_local global i64 0, align 8
@AM_CTRL_GLOBAL = common dso_local global i64 0, align 8
@PORT_DFX0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"phy%d, wait tx fifo need send break\0A\00", align 1
@TXID_AUTO = common dso_local global i32 0, align 4
@TXID_AUTO_CTB_MSK = common dso_local global i32 0, align 4
@PHY_CFG = common dso_local global i32 0, align 4
@PHY_CFG_ENA_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hisi_hba*, i32)* @disable_phy_v2_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disable_phy_v2_hw(%struct.hisi_hba* %0, i32 %1) #0 {
  %3 = alloca %struct.hisi_hba*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.device*, align 8
  store %struct.hisi_hba* %0, %struct.hisi_hba** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %11 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %10, i32 0, i32 2
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %9, align 8
  %13 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %14 = load i64, i64* @AXI_MASTER_CFG_BASE, align 8
  %15 = load i64, i64* @AM_CTRL_GLOBAL, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @hisi_sas_read32(%struct.hisi_hba* %13, i64 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = or i32 %18, 1
  store i32 %19, i32* %6, align 4
  %20 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %21 = load i64, i64* @AXI_MASTER_CFG_BASE, align 8
  %22 = load i64, i64* @AM_CTRL_GLOBAL, align 8
  %23 = add nsw i64 %21, %22
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @hisi_sas_write32(%struct.hisi_hba* %20, i64 %23, i32 %24)
  %26 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i64 @is_sata_phy_v2_hw(%struct.hisi_hba* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %2
  %31 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i64 @allowed_disable_phy_v2_hw(%struct.hisi_hba* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %76

36:                                               ; preds = %30
  %37 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %38 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %41 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %40, i32 0, i32 0
  %42 = call i32 @queue_work(i32 %39, i32* %41)
  br label %98

43:                                               ; preds = %2
  %44 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @PORT_DFX0, align 4
  %47 = call i32 @hisi_sas_phy_read32(%struct.hisi_hba* %44, i32 %45, i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = and i32 %48, 8128
  %50 = ashr i32 %49, 6
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 4
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  br label %76

54:                                               ; preds = %43
  %55 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @tx_fifo_is_empty_v2_hw(%struct.hisi_hba* %55, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %75, label %59

59:                                               ; preds = %54
  %60 = load %struct.device*, %struct.device** %9, align 8
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @dev_warn(%struct.device* %60, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @TXID_AUTO, align 4
  %66 = call i32 @hisi_sas_phy_read32(%struct.hisi_hba* %63, i32 %64, i32 %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* @TXID_AUTO_CTB_MSK, align 4
  %68 = load i32, i32* %8, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %8, align 4
  %70 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @TXID_AUTO, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %70, i32 %71, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %59, %54
  br label %76

76:                                               ; preds = %75, %53, %35
  %77 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @PHY_CFG, align 4
  %80 = call i32 @hisi_sas_phy_read32(%struct.hisi_hba* %77, i32 %78, i32 %79)
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* @PHY_CFG_ENA_MSK, align 4
  %82 = xor i32 %81, -1
  %83 = load i32, i32* %5, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %5, align 4
  %85 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @PHY_CFG, align 4
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %85, i32 %86, i32 %87, i32 %88)
  %90 = load i32, i32* %6, align 4
  %91 = and i32 %90, -2
  store i32 %91, i32* %6, align 4
  %92 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %93 = load i64, i64* @AXI_MASTER_CFG_BASE, align 8
  %94 = load i64, i64* @AM_CTRL_GLOBAL, align 8
  %95 = add nsw i64 %93, %94
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @hisi_sas_write32(%struct.hisi_hba* %92, i64 %95, i32 %96)
  br label %98

98:                                               ; preds = %76, %36
  ret void
}

declare dso_local i32 @hisi_sas_read32(%struct.hisi_hba*, i64) #1

declare dso_local i32 @hisi_sas_write32(%struct.hisi_hba*, i64, i32) #1

declare dso_local i64 @is_sata_phy_v2_hw(%struct.hisi_hba*, i32) #1

declare dso_local i64 @allowed_disable_phy_v2_hw(%struct.hisi_hba*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @hisi_sas_phy_read32(%struct.hisi_hba*, i32, i32) #1

declare dso_local i32 @tx_fifo_is_empty_v2_hw(%struct.hisi_hba*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i32 @hisi_sas_phy_write32(%struct.hisi_hba*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
