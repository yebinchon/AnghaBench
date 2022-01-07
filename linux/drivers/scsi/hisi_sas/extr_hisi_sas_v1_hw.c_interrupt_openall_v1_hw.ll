; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v1_hw.c_interrupt_openall_v1_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v1_hw.c_interrupt_openall_v1_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { i32 }

@CHL_INT0 = common dso_local global i32 0, align 4
@CHL_INT1 = common dso_local global i32 0, align 4
@CHL_INT2 = common dso_local global i32 0, align 4
@CHL_INT0_MSK = common dso_local global i32 0, align 4
@CHL_INT1_MSK = common dso_local global i32 0, align 4
@CHL_INT2_MSK = common dso_local global i32 0, align 4
@CHL_INT0_MSK_PHYCTRL_NOTRDY_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hisi_hba*)* @interrupt_openall_v1_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interrupt_openall_v1_hw(%struct.hisi_hba* %0) #0 {
  %2 = alloca %struct.hisi_hba*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.hisi_hba* %0, %struct.hisi_hba** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %58, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %8 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %61

11:                                               ; preds = %5
  %12 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @CHL_INT0, align 4
  %15 = call i32 @hisi_sas_phy_read32(%struct.hisi_hba* %12, i32 %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @CHL_INT0, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %16, i32 %17, i32 %18, i32 %19)
  %21 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @CHL_INT1, align 4
  %24 = call i32 @hisi_sas_phy_read32(%struct.hisi_hba* %21, i32 %22, i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @CHL_INT1, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %25, i32 %26, i32 %27, i32 %28)
  %30 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @CHL_INT2, align 4
  %33 = call i32 @hisi_sas_phy_read32(%struct.hisi_hba* %30, i32 %31, i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @CHL_INT2, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %34, i32 %35, i32 %36, i32 %37)
  %39 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @CHL_INT0_MSK, align 4
  %42 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %39, i32 %40, i32 %41, i32 3990510)
  %43 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @CHL_INT1_MSK, align 4
  %46 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %43, i32 %44, i32 %45, i32 98303)
  %47 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @CHL_INT2_MSK, align 4
  %50 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %47, i32 %48, i32 %49, i32 -2147483350)
  %51 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @CHL_INT0_MSK, align 4
  %54 = load i32, i32* @CHL_INT0_MSK_PHYCTRL_NOTRDY_MSK, align 4
  %55 = xor i32 %54, -1
  %56 = and i32 4194303, %55
  %57 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %51, i32 %52, i32 %53, i32 %56)
  br label %58

58:                                               ; preds = %11
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %3, align 4
  br label %5

61:                                               ; preds = %5
  ret i32 0
}

declare dso_local i32 @hisi_sas_phy_read32(%struct.hisi_hba*, i32, i32) #1

declare dso_local i32 @hisi_sas_phy_write32(%struct.hisi_hba*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
