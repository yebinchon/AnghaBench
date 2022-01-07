; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_phy_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_phy_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { %struct.TYPE_2__*, %struct.hisi_sas_phy* }
%struct.TYPE_2__ = type { i32 (%struct.hisi_hba*, i32)*, i32 (%struct.hisi_hba*, i32)* }
%struct.hisi_sas_phy = type { i32, i32, %struct.asd_sas_phy }
%struct.asd_sas_phy = type { %struct.sas_phy* }
%struct.sas_phy = type { i32 }

@SAS_LINK_RATE_UNKNOWN = common dso_local global i32 0, align 4
@SAS_PHY_DISABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hisi_sas_phy_enable(%struct.hisi_hba* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hisi_hba*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hisi_sas_phy*, align 8
  %8 = alloca %struct.asd_sas_phy*, align 8
  %9 = alloca %struct.sas_phy*, align 8
  %10 = alloca i64, align 8
  store %struct.hisi_hba* %0, %struct.hisi_hba** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %12 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %11, i32 0, i32 1
  %13 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %13, i64 %15
  store %struct.hisi_sas_phy* %16, %struct.hisi_sas_phy** %7, align 8
  %17 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %7, align 8
  %18 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %17, i32 0, i32 2
  store %struct.asd_sas_phy* %18, %struct.asd_sas_phy** %8, align 8
  %19 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %8, align 8
  %20 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %19, i32 0, i32 0
  %21 = load %struct.sas_phy*, %struct.sas_phy** %20, align 8
  store %struct.sas_phy* %21, %struct.sas_phy** %9, align 8
  %22 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %7, align 8
  %23 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %22, i32 0, i32 1
  %24 = load i64, i64* %10, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %3
  %29 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %7, align 8
  %30 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @SAS_LINK_RATE_UNKNOWN, align 4
  %35 = load %struct.sas_phy*, %struct.sas_phy** %9, align 8
  %36 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %33, %28
  %38 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %39 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32 (%struct.hisi_hba*, i32)*, i32 (%struct.hisi_hba*, i32)** %41, align 8
  %43 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 %42(%struct.hisi_hba* %43, i32 %44)
  br label %58

46:                                               ; preds = %3
  %47 = load i32, i32* @SAS_PHY_DISABLED, align 4
  %48 = load %struct.sas_phy*, %struct.sas_phy** %9, align 8
  %49 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %51 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32 (%struct.hisi_hba*, i32)*, i32 (%struct.hisi_hba*, i32)** %53, align 8
  %55 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 %54(%struct.hisi_hba* %55, i32 %56)
  br label %58

58:                                               ; preds = %46, %37
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %7, align 8
  %61 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %7, align 8
  %63 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %62, i32 0, i32 1
  %64 = load i64, i64* %10, align 8
  %65 = call i32 @spin_unlock_irqrestore(i32* %63, i64 %64)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
