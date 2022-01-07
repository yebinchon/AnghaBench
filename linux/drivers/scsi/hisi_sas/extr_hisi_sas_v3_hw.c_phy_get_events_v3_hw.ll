; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v3_hw.c_phy_get_events_v3_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v3_hw.c_phy_get_events_v3_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { %struct.hisi_sas_phy* }
%struct.hisi_sas_phy = type { i32, i32, %struct.asd_sas_phy }
%struct.asd_sas_phy = type { %struct.sas_phy* }
%struct.sas_phy = type { i32, i32, i32, i32 }

@ERR_CNT_DWS_LOST = common dso_local global i32 0, align 4
@ERR_CNT_RESET_PROB = common dso_local global i32 0, align 4
@ERR_CNT_INVLD_DW = common dso_local global i32 0, align 4
@ERR_CNT_DISP_ERR = common dso_local global i32 0, align 4
@ERR_CNT_CODE_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hisi_hba*, i32)* @phy_get_events_v3_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @phy_get_events_v3_hw(%struct.hisi_hba* %0, i32 %1) #0 {
  %3 = alloca %struct.hisi_hba*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hisi_sas_phy*, align 8
  %6 = alloca %struct.asd_sas_phy*, align 8
  %7 = alloca %struct.sas_phy*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
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
  %17 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %16, i32 0, i32 2
  store %struct.asd_sas_phy* %17, %struct.asd_sas_phy** %6, align 8
  %18 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %6, align 8
  %19 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %18, i32 0, i32 0
  %20 = load %struct.sas_phy*, %struct.sas_phy** %19, align 8
  store %struct.sas_phy* %20, %struct.sas_phy** %7, align 8
  %21 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %5, align 8
  %22 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %21, i32 0, i32 0
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @ERR_CNT_DWS_LOST, align 4
  %28 = call i64 @hisi_sas_phy_read32(%struct.hisi_hba* %25, i32 %26, i32 %27)
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load %struct.sas_phy*, %struct.sas_phy** %7, align 8
  %31 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %29
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %31, align 4
  %36 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @ERR_CNT_RESET_PROB, align 4
  %39 = call i64 @hisi_sas_phy_read32(%struct.hisi_hba* %36, i32 %37, i32 %38)
  store i64 %39, i64* %9, align 8
  %40 = load i64, i64* %9, align 8
  %41 = load %struct.sas_phy*, %struct.sas_phy** %7, align 8
  %42 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %40
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %42, align 4
  %47 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @ERR_CNT_INVLD_DW, align 4
  %50 = call i64 @hisi_sas_phy_read32(%struct.hisi_hba* %47, i32 %48, i32 %49)
  store i64 %50, i64* %9, align 8
  %51 = load i64, i64* %9, align 8
  %52 = load %struct.sas_phy*, %struct.sas_phy** %7, align 8
  %53 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %51
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %53, align 4
  %58 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @ERR_CNT_DISP_ERR, align 4
  %61 = call i64 @hisi_sas_phy_read32(%struct.hisi_hba* %58, i32 %59, i32 %60)
  store i64 %61, i64* %9, align 8
  %62 = load i64, i64* %9, align 8
  %63 = load %struct.sas_phy*, %struct.sas_phy** %7, align 8
  %64 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %66, %62
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %64, align 4
  %69 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @ERR_CNT_CODE_ERR, align 4
  %72 = call i64 @hisi_sas_phy_read32(%struct.hisi_hba* %69, i32 %70, i32 %71)
  store i64 %72, i64* %9, align 8
  %73 = load i64, i64* %9, align 8
  %74 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %5, align 8
  %75 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %77, %73
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %75, align 4
  %80 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %5, align 8
  %81 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %80, i32 0, i32 0
  %82 = load i64, i64* %8, align 8
  %83 = call i32 @spin_unlock_irqrestore(i32* %81, i64 %82)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @hisi_sas_phy_read32(%struct.hisi_hba*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
