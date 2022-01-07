; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v3_hw.c_interrupt_disable_v3_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v3_hw.c_interrupt_disable_v3_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { i32, i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@OQ0_INT_SRC_MSK = common dso_local global i64 0, align 8
@ENT_INT_SRC_MSK1 = common dso_local global i64 0, align 8
@ENT_INT_SRC_MSK2 = common dso_local global i64 0, align 8
@ENT_INT_SRC_MSK3 = common dso_local global i64 0, align 8
@SAS_ECC_INTR_MSK = common dso_local global i64 0, align 8
@CHL_INT1_MSK = common dso_local global i32 0, align 4
@CHL_INT2_MSK = common dso_local global i32 0, align 4
@PHYCTRL_NOT_RDY_MSK = common dso_local global i32 0, align 4
@PHYCTRL_PHY_ENA_MSK = common dso_local global i32 0, align 4
@SL_RX_BCAST_CHK_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hisi_hba*)* @interrupt_disable_v3_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @interrupt_disable_v3_hw(%struct.hisi_hba* %0) #0 {
  %2 = alloca %struct.hisi_hba*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.hisi_hba* %0, %struct.hisi_hba** %2, align 8
  %5 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %6 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %5, i32 0, i32 2
  %7 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  store %struct.pci_dev* %7, %struct.pci_dev** %3, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %9 = call i32 @pci_irq_vector(%struct.pci_dev* %8, i32 1)
  %10 = call i32 @synchronize_irq(i32 %9)
  %11 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %12 = call i32 @pci_irq_vector(%struct.pci_dev* %11, i32 2)
  %13 = call i32 @synchronize_irq(i32 %12)
  %14 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %15 = call i32 @pci_irq_vector(%struct.pci_dev* %14, i32 11)
  %16 = call i32 @synchronize_irq(i32 %15)
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %36, %1
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %20 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %17
  %24 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %25 = load i64, i64* @OQ0_INT_SRC_MSK, align 8
  %26 = load i32, i32* %4, align 4
  %27 = mul nsw i32 4, %26
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %25, %28
  %30 = call i32 @hisi_sas_write32(%struct.hisi_hba* %24, i64 %29, i32 1)
  %31 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 16
  %34 = call i32 @pci_irq_vector(%struct.pci_dev* %31, i32 %33)
  %35 = call i32 @synchronize_irq(i32 %34)
  br label %36

36:                                               ; preds = %23
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %17

39:                                               ; preds = %17
  %40 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %41 = load i64, i64* @ENT_INT_SRC_MSK1, align 8
  %42 = call i32 @hisi_sas_write32(%struct.hisi_hba* %40, i64 %41, i32 -1)
  %43 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %44 = load i64, i64* @ENT_INT_SRC_MSK2, align 8
  %45 = call i32 @hisi_sas_write32(%struct.hisi_hba* %43, i64 %44, i32 -1)
  %46 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %47 = load i64, i64* @ENT_INT_SRC_MSK3, align 8
  %48 = call i32 @hisi_sas_write32(%struct.hisi_hba* %46, i64 %47, i32 -1)
  %49 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %50 = load i64, i64* @SAS_ECC_INTR_MSK, align 8
  %51 = call i32 @hisi_sas_write32(%struct.hisi_hba* %49, i64 %50, i32 -1)
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %79, %39
  %53 = load i32, i32* %4, align 4
  %54 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %55 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %82

58:                                               ; preds = %52
  %59 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @CHL_INT1_MSK, align 4
  %62 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %59, i32 %60, i32 %61, i32 -1)
  %63 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @CHL_INT2_MSK, align 4
  %66 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %63, i32 %64, i32 %65, i32 -1)
  %67 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @PHYCTRL_NOT_RDY_MSK, align 4
  %70 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %67, i32 %68, i32 %69, i32 1)
  %71 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @PHYCTRL_PHY_ENA_MSK, align 4
  %74 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %71, i32 %72, i32 %73, i32 1)
  %75 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @SL_RX_BCAST_CHK_MSK, align 4
  %78 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %75, i32 %76, i32 %77, i32 1)
  br label %79

79:                                               ; preds = %58
  %80 = load i32, i32* %4, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %4, align 4
  br label %52

82:                                               ; preds = %52
  ret void
}

declare dso_local i32 @synchronize_irq(i32) #1

declare dso_local i32 @pci_irq_vector(%struct.pci_dev*, i32) #1

declare dso_local i32 @hisi_sas_write32(%struct.hisi_hba*, i64, i32) #1

declare dso_local i32 @hisi_sas_phy_write32(%struct.hisi_hba*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
