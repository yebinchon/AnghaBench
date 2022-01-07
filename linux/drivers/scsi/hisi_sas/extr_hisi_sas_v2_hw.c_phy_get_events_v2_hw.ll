; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v2_hw.c_phy_get_events_v2_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v2_hw.c_phy_get_events_v2_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { %struct.hisi_sas_phy* }
%struct.hisi_sas_phy = type { %struct.asd_sas_phy }
%struct.asd_sas_phy = type { %struct.sas_phy* }
%struct.sas_phy = type { i32, i32, i32, i32 }

@SAS_ERR_CNT4_REG = common dso_local global i32 0, align 4
@SAS_ERR_CNT6_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hisi_hba*, i32)* @phy_get_events_v2_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @phy_get_events_v2_hw(%struct.hisi_hba* %0, i32 %1) #0 {
  %3 = alloca %struct.hisi_hba*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hisi_sas_phy*, align 8
  %6 = alloca %struct.asd_sas_phy*, align 8
  %7 = alloca %struct.sas_phy*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hisi_hba* %0, %struct.hisi_hba** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %11 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %10, i32 0, i32 0
  %12 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %12, i64 %14
  store %struct.hisi_sas_phy* %15, %struct.hisi_sas_phy** %5, align 8
  %16 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %5, align 8
  %17 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %16, i32 0, i32 0
  store %struct.asd_sas_phy* %17, %struct.asd_sas_phy** %6, align 8
  %18 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %6, align 8
  %19 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %18, i32 0, i32 0
  %20 = load %struct.sas_phy*, %struct.sas_phy** %19, align 8
  store %struct.sas_phy* %20, %struct.sas_phy** %7, align 8
  %21 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @SAS_ERR_CNT4_REG, align 4
  %24 = call i32 @hisi_sas_phy_read32(%struct.hisi_hba* %21, i32 %22, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @SAS_ERR_CNT6_REG, align 4
  %28 = call i32 @hisi_sas_phy_read32(%struct.hisi_hba* %25, i32 %26, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %8, align 4
  %30 = ashr i32 %29, 16
  %31 = and i32 %30, 65535
  %32 = load %struct.sas_phy*, %struct.sas_phy** %7, align 8
  %33 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* %8, align 4
  %37 = and i32 %36, 65535
  %38 = load %struct.sas_phy*, %struct.sas_phy** %7, align 8
  %39 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load i32, i32* %9, align 4
  %43 = and i32 %42, 16711680
  %44 = ashr i32 %43, 16
  %45 = load %struct.sas_phy*, %struct.sas_phy** %7, align 8
  %46 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* %9, align 4
  %50 = and i32 %49, 255
  %51 = load %struct.sas_phy*, %struct.sas_phy** %7, align 8
  %52 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, %50
  store i32 %54, i32* %52, align 4
  ret void
}

declare dso_local i32 @hisi_sas_phy_read32(%struct.hisi_hba*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
