; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_control_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_control_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_sas_phy = type { i32, %struct.sas_ha_struct* }
%struct.sas_ha_struct = type { %struct.hisi_hba* }
%struct.hisi_hba = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.hisi_hba*, i32)*, i32 (%struct.hisi_hba*, i32)* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asd_sas_phy*, i32, i8*)* @hisi_sas_control_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_sas_control_phy(%struct.asd_sas_phy* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.asd_sas_phy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sas_ha_struct*, align 8
  %9 = alloca %struct.hisi_hba*, align 8
  %10 = alloca i32, align 4
  store %struct.asd_sas_phy* %0, %struct.asd_sas_phy** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %5, align 8
  %12 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %11, i32 0, i32 1
  %13 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %12, align 8
  store %struct.sas_ha_struct* %13, %struct.sas_ha_struct** %8, align 8
  %14 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %8, align 8
  %15 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %14, i32 0, i32 0
  %16 = load %struct.hisi_hba*, %struct.hisi_hba** %15, align 8
  store %struct.hisi_hba* %16, %struct.hisi_hba** %9, align 8
  %17 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %5, align 8
  %18 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %6, align 4
  switch i32 %20, label %65 [
    i32 131, label %21
    i32 130, label %30
    i32 133, label %38
    i32 128, label %42
    i32 132, label %47
    i32 129, label %64
  ]

21:                                               ; preds = %3
  %22 = load %struct.hisi_hba*, %struct.hisi_hba** %9, align 8
  %23 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32 (%struct.hisi_hba*, i32)*, i32 (%struct.hisi_hba*, i32)** %25, align 8
  %27 = load %struct.hisi_hba*, %struct.hisi_hba** %9, align 8
  %28 = load i32, i32* %10, align 4
  %29 = call i32 %26(%struct.hisi_hba* %27, i32 %28)
  br label %68

30:                                               ; preds = %3
  %31 = load %struct.hisi_hba*, %struct.hisi_hba** %9, align 8
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @hisi_sas_phy_enable(%struct.hisi_hba* %31, i32 %32, i32 0)
  %34 = call i32 @msleep(i32 100)
  %35 = load %struct.hisi_hba*, %struct.hisi_hba** %9, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @hisi_sas_phy_enable(%struct.hisi_hba* %35, i32 %36, i32 1)
  br label %68

38:                                               ; preds = %3
  %39 = load %struct.hisi_hba*, %struct.hisi_hba** %9, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @hisi_sas_phy_enable(%struct.hisi_hba* %39, i32 %40, i32 0)
  br label %68

42:                                               ; preds = %3
  %43 = load %struct.hisi_hba*, %struct.hisi_hba** %9, align 8
  %44 = load i32, i32* %10, align 4
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @hisi_sas_phy_set_linkrate(%struct.hisi_hba* %43, i32 %44, i8* %45)
  store i32 %46, i32* %4, align 4
  br label %69

47:                                               ; preds = %3
  %48 = load %struct.hisi_hba*, %struct.hisi_hba** %9, align 8
  %49 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32 (%struct.hisi_hba*, i32)*, i32 (%struct.hisi_hba*, i32)** %51, align 8
  %53 = icmp ne i32 (%struct.hisi_hba*, i32)* %52, null
  br i1 %53, label %54, label %63

54:                                               ; preds = %47
  %55 = load %struct.hisi_hba*, %struct.hisi_hba** %9, align 8
  %56 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32 (%struct.hisi_hba*, i32)*, i32 (%struct.hisi_hba*, i32)** %58, align 8
  %60 = load %struct.hisi_hba*, %struct.hisi_hba** %9, align 8
  %61 = load i32, i32* %10, align 4
  %62 = call i32 %59(%struct.hisi_hba* %60, i32 %61)
  br label %68

63:                                               ; preds = %47
  br label %64

64:                                               ; preds = %3, %63
  br label %65

65:                                               ; preds = %3, %64
  %66 = load i32, i32* @EOPNOTSUPP, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %69

68:                                               ; preds = %54, %38, %30, %21
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %68, %65, %42
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @hisi_sas_phy_enable(%struct.hisi_hba*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @hisi_sas_phy_set_linkrate(%struct.hisi_hba*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
