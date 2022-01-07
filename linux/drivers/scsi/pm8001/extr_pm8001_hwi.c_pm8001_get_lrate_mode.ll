; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_get_lrate_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_get_lrate_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_phy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, %struct.sas_phy* }
%struct.sas_phy = type { i8*, i8*, i8*, i8*, i8* }

@SAS_LINK_RATE_12_0_GBPS = common dso_local global i8* null, align 8
@SAS_LINK_RATE_6_0_GBPS = common dso_local global i8* null, align 8
@SAS_LINK_RATE_3_0_GBPS = common dso_local global i8* null, align 8
@SAS_LINK_RATE_1_5_GBPS = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pm8001_get_lrate_mode(%struct.pm8001_phy* %0, i32 %1) #0 {
  %3 = alloca %struct.pm8001_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sas_phy*, align 8
  store %struct.pm8001_phy* %0, %struct.pm8001_phy** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.pm8001_phy*, %struct.pm8001_phy** %3, align 8
  %7 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load %struct.sas_phy*, %struct.sas_phy** %8, align 8
  store %struct.sas_phy* %9, %struct.sas_phy** %5, align 8
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %55 [
    i32 131, label %11
    i32 128, label %22
    i32 129, label %33
    i32 130, label %44
  ]

11:                                               ; preds = %2
  %12 = load i8*, i8** @SAS_LINK_RATE_12_0_GBPS, align 8
  %13 = load %struct.pm8001_phy*, %struct.pm8001_phy** %3, align 8
  %14 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i8* %12, i8** %15, align 8
  %16 = load i8*, i8** @SAS_LINK_RATE_12_0_GBPS, align 8
  %17 = load %struct.pm8001_phy*, %struct.pm8001_phy** %3, align 8
  %18 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load %struct.sas_phy*, %struct.sas_phy** %19, align 8
  %21 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %20, i32 0, i32 4
  store i8* %16, i8** %21, align 8
  br label %55

22:                                               ; preds = %2
  %23 = load i8*, i8** @SAS_LINK_RATE_6_0_GBPS, align 8
  %24 = load %struct.pm8001_phy*, %struct.pm8001_phy** %3, align 8
  %25 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i8* %23, i8** %26, align 8
  %27 = load i8*, i8** @SAS_LINK_RATE_6_0_GBPS, align 8
  %28 = load %struct.pm8001_phy*, %struct.pm8001_phy** %3, align 8
  %29 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load %struct.sas_phy*, %struct.sas_phy** %30, align 8
  %32 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %31, i32 0, i32 4
  store i8* %27, i8** %32, align 8
  br label %55

33:                                               ; preds = %2
  %34 = load i8*, i8** @SAS_LINK_RATE_3_0_GBPS, align 8
  %35 = load %struct.pm8001_phy*, %struct.pm8001_phy** %3, align 8
  %36 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i8* %34, i8** %37, align 8
  %38 = load i8*, i8** @SAS_LINK_RATE_3_0_GBPS, align 8
  %39 = load %struct.pm8001_phy*, %struct.pm8001_phy** %3, align 8
  %40 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load %struct.sas_phy*, %struct.sas_phy** %41, align 8
  %43 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %42, i32 0, i32 4
  store i8* %38, i8** %43, align 8
  br label %55

44:                                               ; preds = %2
  %45 = load i8*, i8** @SAS_LINK_RATE_1_5_GBPS, align 8
  %46 = load %struct.pm8001_phy*, %struct.pm8001_phy** %3, align 8
  %47 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i8* %45, i8** %48, align 8
  %49 = load i8*, i8** @SAS_LINK_RATE_1_5_GBPS, align 8
  %50 = load %struct.pm8001_phy*, %struct.pm8001_phy** %3, align 8
  %51 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load %struct.sas_phy*, %struct.sas_phy** %52, align 8
  %54 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %53, i32 0, i32 4
  store i8* %49, i8** %54, align 8
  br label %55

55:                                               ; preds = %2, %44, %33, %22, %11
  %56 = load %struct.pm8001_phy*, %struct.pm8001_phy** %3, align 8
  %57 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = load %struct.sas_phy*, %struct.sas_phy** %5, align 8
  %61 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %60, i32 0, i32 4
  store i8* %59, i8** %61, align 8
  %62 = load i8*, i8** @SAS_LINK_RATE_6_0_GBPS, align 8
  %63 = load %struct.sas_phy*, %struct.sas_phy** %5, align 8
  %64 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %63, i32 0, i32 3
  store i8* %62, i8** %64, align 8
  %65 = load i8*, i8** @SAS_LINK_RATE_1_5_GBPS, align 8
  %66 = load %struct.sas_phy*, %struct.sas_phy** %5, align 8
  %67 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %66, i32 0, i32 2
  store i8* %65, i8** %67, align 8
  %68 = load i8*, i8** @SAS_LINK_RATE_6_0_GBPS, align 8
  %69 = load %struct.sas_phy*, %struct.sas_phy** %5, align 8
  %70 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %69, i32 0, i32 1
  store i8* %68, i8** %70, align 8
  %71 = load i8*, i8** @SAS_LINK_RATE_1_5_GBPS, align 8
  %72 = load %struct.sas_phy*, %struct.sas_phy** %5, align 8
  %73 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
