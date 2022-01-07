; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_phy_set_linkrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_phy_set_linkrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { %struct.TYPE_4__*, %struct.hisi_sas_phy* }
%struct.TYPE_4__ = type { {}* }
%struct.hisi_sas_phy = type { %struct.asd_sas_phy }
%struct.asd_sas_phy = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.sas_phy_linkrates = type { i64, i64 }

@SAS_LINK_RATE_1_5_GBPS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SAS_LINK_RATE_UNKNOWN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hisi_hba*, i32, %struct.sas_phy_linkrates*)* @hisi_sas_phy_set_linkrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_sas_phy_set_linkrate(%struct.hisi_hba* %0, i32 %1, %struct.sas_phy_linkrates* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hisi_hba*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sas_phy_linkrates*, align 8
  %8 = alloca %struct.sas_phy_linkrates, align 8
  %9 = alloca %struct.hisi_sas_phy*, align 8
  %10 = alloca %struct.asd_sas_phy*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hisi_hba* %0, %struct.hisi_hba** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sas_phy_linkrates* %2, %struct.sas_phy_linkrates** %7, align 8
  %13 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %14 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %13, i32 0, i32 1
  %15 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %15, i64 %17
  store %struct.hisi_sas_phy* %18, %struct.hisi_sas_phy** %9, align 8
  %19 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %9, align 8
  %20 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %19, i32 0, i32 0
  store %struct.asd_sas_phy* %20, %struct.asd_sas_phy** %10, align 8
  %21 = load %struct.sas_phy_linkrates*, %struct.sas_phy_linkrates** %7, align 8
  %22 = getelementptr inbounds %struct.sas_phy_linkrates, %struct.sas_phy_linkrates* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SAS_LINK_RATE_1_5_GBPS, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %98

29:                                               ; preds = %3
  %30 = load %struct.sas_phy_linkrates*, %struct.sas_phy_linkrates** %7, align 8
  %31 = getelementptr inbounds %struct.sas_phy_linkrates, %struct.sas_phy_linkrates* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SAS_LINK_RATE_UNKNOWN, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %29
  %36 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %10, align 8
  %37 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %12, align 4
  %41 = load %struct.sas_phy_linkrates*, %struct.sas_phy_linkrates** %7, align 8
  %42 = getelementptr inbounds %struct.sas_phy_linkrates, %struct.sas_phy_linkrates* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %11, align 4
  br label %65

45:                                               ; preds = %29
  %46 = load %struct.sas_phy_linkrates*, %struct.sas_phy_linkrates** %7, align 8
  %47 = getelementptr inbounds %struct.sas_phy_linkrates, %struct.sas_phy_linkrates* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SAS_LINK_RATE_UNKNOWN, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %45
  %52 = load %struct.sas_phy_linkrates*, %struct.sas_phy_linkrates** %7, align 8
  %53 = getelementptr inbounds %struct.sas_phy_linkrates, %struct.sas_phy_linkrates* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %12, align 4
  %56 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %10, align 8
  %57 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %11, align 4
  br label %64

61:                                               ; preds = %45
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %98

64:                                               ; preds = %51
  br label %65

65:                                               ; preds = %64, %35
  %66 = load i32, i32* %12, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.sas_phy_linkrates, %struct.sas_phy_linkrates* %8, i32 0, i32 1
  store i64 %67, i64* %68, align 8
  %69 = load i32, i32* %11, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.sas_phy_linkrates, %struct.sas_phy_linkrates* %8, i32 0, i32 0
  store i64 %70, i64* %71, align 8
  %72 = load i32, i32* %12, align 4
  %73 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %10, align 8
  %74 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %73, i32 0, i32 0
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  store i32 %72, i32* %76, align 4
  %77 = load i32, i32* %11, align 4
  %78 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %10, align 8
  %79 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %78, i32 0, i32 0
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  store i32 %77, i32* %81, align 4
  %82 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @hisi_sas_phy_enable(%struct.hisi_hba* %82, i32 %83, i32 0)
  %85 = call i32 @msleep(i32 100)
  %86 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %87 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %86, i32 0, i32 0
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = bitcast {}** %89 to i32 (%struct.hisi_hba*, i32, %struct.sas_phy_linkrates*)**
  %91 = load i32 (%struct.hisi_hba*, i32, %struct.sas_phy_linkrates*)*, i32 (%struct.hisi_hba*, i32, %struct.sas_phy_linkrates*)** %90, align 8
  %92 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %93 = load i32, i32* %6, align 4
  %94 = call i32 %91(%struct.hisi_hba* %92, i32 %93, %struct.sas_phy_linkrates* %8)
  %95 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @hisi_sas_phy_enable(%struct.hisi_hba* %95, i32 %96, i32 1)
  store i32 0, i32* %4, align 4
  br label %98

98:                                               ; preds = %65, %61, %26
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32 @hisi_sas_phy_enable(%struct.hisi_hba*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
