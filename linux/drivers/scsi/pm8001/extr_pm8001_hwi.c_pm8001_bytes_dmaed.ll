; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_bytes_dmaed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_bytes_dmaed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { %struct.TYPE_4__*, %struct.pm8001_phy* }
%struct.TYPE_4__ = type { i32 (%struct.asd_sas_phy*, i32)* }
%struct.asd_sas_phy = type { i32, i32, %struct.sas_phy* }
%struct.sas_phy = type { i32, i32, i32, i32, i32 }
%struct.pm8001_phy = type { i32, i32, %struct.TYPE_3__, i64, i32, i32, i32, %struct.asd_sas_phy }
%struct.TYPE_3__ = type { i32, i32 }
%struct.sas_identify_frame = type { i32, i32, i32 }

@SAS_LINK_RATE_1_5_GBPS = common dso_local global i32 0, align 4
@PORT_TYPE_SAS = common dso_local global i32 0, align 4
@SAS_PROTOCOL_ALL = common dso_local global i32 0, align 4
@PORT_TYPE_SATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"phy %d byte dmaded.\0A\00", align 1
@PORTE_BYTES_DMAED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pm8001_bytes_dmaed(%struct.pm8001_hba_info* %0, i32 %1) #0 {
  %3 = alloca %struct.pm8001_hba_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pm8001_phy*, align 8
  %6 = alloca %struct.asd_sas_phy*, align 8
  %7 = alloca %struct.sas_phy*, align 8
  %8 = alloca %struct.sas_identify_frame*, align 8
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %10 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %9, i32 0, i32 1
  %11 = load %struct.pm8001_phy*, %struct.pm8001_phy** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %11, i64 %13
  store %struct.pm8001_phy* %14, %struct.pm8001_phy** %5, align 8
  %15 = load %struct.pm8001_phy*, %struct.pm8001_phy** %5, align 8
  %16 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %15, i32 0, i32 7
  store %struct.asd_sas_phy* %16, %struct.asd_sas_phy** %6, align 8
  %17 = load %struct.pm8001_phy*, %struct.pm8001_phy** %5, align 8
  %18 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  br label %108

22:                                               ; preds = %2
  %23 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %6, align 8
  %24 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %23, i32 0, i32 2
  %25 = load %struct.sas_phy*, %struct.sas_phy** %24, align 8
  %26 = icmp ne %struct.sas_phy* %25, null
  br i1 %26, label %27, label %54

27:                                               ; preds = %22
  %28 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %6, align 8
  %29 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %28, i32 0, i32 2
  %30 = load %struct.sas_phy*, %struct.sas_phy** %29, align 8
  store %struct.sas_phy* %30, %struct.sas_phy** %7, align 8
  %31 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %6, align 8
  %32 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.sas_phy*, %struct.sas_phy** %7, align 8
  %35 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 4
  %36 = load %struct.pm8001_phy*, %struct.pm8001_phy** %5, align 8
  %37 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.sas_phy*, %struct.sas_phy** %7, align 8
  %40 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @SAS_LINK_RATE_1_5_GBPS, align 4
  %42 = load %struct.sas_phy*, %struct.sas_phy** %7, align 8
  %43 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load %struct.pm8001_phy*, %struct.pm8001_phy** %5, align 8
  %45 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.sas_phy*, %struct.sas_phy** %7, align 8
  %48 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.pm8001_phy*, %struct.pm8001_phy** %5, align 8
  %50 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.sas_phy*, %struct.sas_phy** %7, align 8
  %53 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %27, %22
  %55 = load %struct.pm8001_phy*, %struct.pm8001_phy** %5, align 8
  %56 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @PORT_TYPE_SAS, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %81

61:                                               ; preds = %54
  %62 = load %struct.pm8001_phy*, %struct.pm8001_phy** %5, align 8
  %63 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to %struct.sas_identify_frame*
  store %struct.sas_identify_frame* %65, %struct.sas_identify_frame** %8, align 8
  %66 = load %struct.pm8001_phy*, %struct.pm8001_phy** %5, align 8
  %67 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.sas_identify_frame*, %struct.sas_identify_frame** %8, align 8
  %71 = getelementptr inbounds %struct.sas_identify_frame, %struct.sas_identify_frame* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @SAS_PROTOCOL_ALL, align 4
  %73 = load %struct.sas_identify_frame*, %struct.sas_identify_frame** %8, align 8
  %74 = getelementptr inbounds %struct.sas_identify_frame, %struct.sas_identify_frame* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.pm8001_phy*, %struct.pm8001_phy** %5, align 8
  %76 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.sas_identify_frame*, %struct.sas_identify_frame** %8, align 8
  %80 = getelementptr inbounds %struct.sas_identify_frame, %struct.sas_identify_frame* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  br label %90

81:                                               ; preds = %54
  %82 = load %struct.pm8001_phy*, %struct.pm8001_phy** %5, align 8
  %83 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @PORT_TYPE_SATA, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  br label %89

89:                                               ; preds = %88, %81
  br label %90

90:                                               ; preds = %89, %61
  %91 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %92 = load i32, i32* %4, align 4
  %93 = call i32 @pm8001_printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %92)
  %94 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %91, i32 %93)
  %95 = load %struct.pm8001_phy*, %struct.pm8001_phy** %5, align 8
  %96 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %6, align 8
  %99 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %101 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %100, i32 0, i32 0
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32 (%struct.asd_sas_phy*, i32)*, i32 (%struct.asd_sas_phy*, i32)** %103, align 8
  %105 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %6, align 8
  %106 = load i32, i32* @PORTE_BYTES_DMAED, align 4
  %107 = call i32 %104(%struct.asd_sas_phy* %105, i32 %106)
  br label %108

108:                                              ; preds = %90, %21
  ret void
}

declare dso_local i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
