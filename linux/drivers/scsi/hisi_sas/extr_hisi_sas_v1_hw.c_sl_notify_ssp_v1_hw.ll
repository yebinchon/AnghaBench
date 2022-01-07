; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v1_hw.c_sl_notify_ssp_v1_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v1_hw.c_sl_notify_ssp_v1_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { i32 }

@SL_CONTROL = common dso_local global i32 0, align 4
@SL_CONTROL_NOTIFY_EN_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hisi_hba*, i32)* @sl_notify_ssp_v1_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sl_notify_ssp_v1_hw(%struct.hisi_hba* %0, i32 %1) #0 {
  %3 = alloca %struct.hisi_hba*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hisi_hba* %0, %struct.hisi_hba** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @SL_CONTROL, align 4
  %9 = call i32 @hisi_sas_phy_read32(%struct.hisi_hba* %6, i32 %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* @SL_CONTROL_NOTIFY_EN_MSK, align 4
  %11 = load i32, i32* %5, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %5, align 4
  %13 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @SL_CONTROL, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %13, i32 %14, i32 %15, i32 %16)
  %18 = call i32 @msleep(i32 1)
  %19 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @SL_CONTROL, align 4
  %22 = call i32 @hisi_sas_phy_read32(%struct.hisi_hba* %19, i32 %20, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* @SL_CONTROL_NOTIFY_EN_MSK, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @SL_CONTROL, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %27, i32 %28, i32 %29, i32 %30)
  ret void
}

declare dso_local i32 @hisi_sas_phy_read32(%struct.hisi_hba*, i32, i32) #1

declare dso_local i32 @hisi_sas_phy_write32(%struct.hisi_hba*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
