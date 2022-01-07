; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v2_hw.c_interrupt_disable_v2_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v2_hw.c_interrupt_disable_v2_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { i32, i32, %struct.platform_device* }
%struct.platform_device = type { i32 }

@OQ0_INT_SRC_MSK = common dso_local global i64 0, align 8
@ENT_INT_SRC_MSK1 = common dso_local global i64 0, align 8
@ENT_INT_SRC_MSK2 = common dso_local global i64 0, align 8
@ENT_INT_SRC_MSK3 = common dso_local global i64 0, align 8
@SAS_ECC_INTR_MSK = common dso_local global i64 0, align 8
@CHL_INT1_MSK = common dso_local global i32 0, align 4
@CHL_INT2_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hisi_hba*)* @interrupt_disable_v2_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @interrupt_disable_v2_hw(%struct.hisi_hba* %0) #0 {
  %2 = alloca %struct.hisi_hba*, align 8
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  store %struct.hisi_hba* %0, %struct.hisi_hba** %2, align 8
  %5 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %6 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %5, i32 0, i32 2
  %7 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  store %struct.platform_device* %7, %struct.platform_device** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %22, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %11 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %8
  %15 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %16 = load i64, i64* @OQ0_INT_SRC_MSK, align 8
  %17 = load i32, i32* %4, align 4
  %18 = mul nsw i32 4, %17
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %16, %19
  %21 = call i32 @hisi_sas_write32(%struct.hisi_hba* %15, i64 %20, i32 1)
  br label %22

22:                                               ; preds = %14
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %4, align 4
  br label %8

25:                                               ; preds = %8
  %26 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %27 = load i64, i64* @ENT_INT_SRC_MSK1, align 8
  %28 = call i32 @hisi_sas_write32(%struct.hisi_hba* %26, i64 %27, i32 -1)
  %29 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %30 = load i64, i64* @ENT_INT_SRC_MSK2, align 8
  %31 = call i32 @hisi_sas_write32(%struct.hisi_hba* %29, i64 %30, i32 -1)
  %32 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %33 = load i64, i64* @ENT_INT_SRC_MSK3, align 8
  %34 = call i32 @hisi_sas_write32(%struct.hisi_hba* %32, i64 %33, i32 -1)
  %35 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %36 = load i64, i64* @SAS_ECC_INTR_MSK, align 8
  %37 = call i32 @hisi_sas_write32(%struct.hisi_hba* %35, i64 %36, i32 -1)
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %53, %25
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %41 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %38
  %45 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @CHL_INT1_MSK, align 4
  %48 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %45, i32 %46, i32 %47, i32 -1)
  %49 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @CHL_INT2_MSK, align 4
  %52 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %49, i32 %50, i32 %51, i32 -1)
  br label %53

53:                                               ; preds = %44
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %4, align 4
  br label %38

56:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %65, %56
  %58 = load i32, i32* %4, align 4
  %59 = icmp slt i32 %58, 128
  br i1 %59, label %60, label %68

60:                                               ; preds = %57
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @platform_get_irq(%struct.platform_device* %61, i32 %62)
  %64 = call i32 @synchronize_irq(i32 %63)
  br label %65

65:                                               ; preds = %60
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %4, align 4
  br label %57

68:                                               ; preds = %57
  ret void
}

declare dso_local i32 @hisi_sas_write32(%struct.hisi_hba*, i64, i32) #1

declare dso_local i32 @hisi_sas_phy_write32(%struct.hisi_hba*, i32, i32, i32) #1

declare dso_local i32 @synchronize_irq(i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
