; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v2_hw.c_phys_try_accept_stp_links_v2_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v2_hw.c_phys_try_accept_stp_links_v2_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { i32, i32 }

@DMA_TX_DFX1 = common dso_local global i32 0, align 4
@DMA_TX_DFX1_IPTT_MSK = common dso_local global i32 0, align 4
@CON_CONTROL = common dso_local global i32 0, align 4
@CON_CONTROL_CFG_OPEN_ACC_STP_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hisi_hba*)* @phys_try_accept_stp_links_v2_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @phys_try_accept_stp_links_v2_hw(%struct.hisi_hba* %0) #0 {
  %2 = alloca %struct.hisi_hba*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hisi_hba* %0, %struct.hisi_hba** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %48, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %9 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %51

12:                                               ; preds = %6
  %13 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %14 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @BIT(i32 %16)
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %12
  br label %48

21:                                               ; preds = %12
  %22 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @DMA_TX_DFX1, align 4
  %25 = call i32 @hisi_sas_phy_read32(%struct.hisi_hba* %22, i32 %23, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @DMA_TX_DFX1_IPTT_MSK, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %21
  %31 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @CON_CONTROL, align 4
  %34 = call i32 @hisi_sas_phy_read32(%struct.hisi_hba* %31, i32 %32, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* @CON_CONTROL_CFG_OPEN_ACC_STP_MSK, align 4
  %36 = load i32, i32* %5, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %5, align 4
  %38 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @CON_CONTROL, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %38, i32 %39, i32 %40, i32 %41)
  %43 = load i32, i32* %3, align 4
  %44 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %45 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %44, i32 0, i32 1
  %46 = call i32 @clear_bit(i32 %43, i32* %45)
  br label %47

47:                                               ; preds = %30, %21
  br label %48

48:                                               ; preds = %47, %20
  %49 = load i32, i32* %3, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %3, align 4
  br label %6

51:                                               ; preds = %6
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @hisi_sas_phy_read32(%struct.hisi_hba*, i32, i32) #1

declare dso_local i32 @hisi_sas_phy_write32(%struct.hisi_hba*, i32, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
