; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_ctl.c_pm8001_ctl_fw_version_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_ctl.c_pm8001_ctl_fw_version_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.sas_ha_struct = type { %struct.pm8001_hba_info* }
%struct.pm8001_hba_info = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@chip_8001 = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%02x.%02x.%02x.%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @pm8001_ctl_fw_version_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8001_ctl_fw_version_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.Scsi_Host*, align 8
  %9 = alloca %struct.sas_ha_struct*, align 8
  %10 = alloca %struct.pm8001_hba_info*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.Scsi_Host* @class_to_shost(%struct.device* %11)
  store %struct.Scsi_Host* %12, %struct.Scsi_Host** %8, align 8
  %13 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %14 = call %struct.sas_ha_struct* @SHOST_TO_SAS_HA(%struct.Scsi_Host* %13)
  store %struct.sas_ha_struct* %14, %struct.sas_ha_struct** %9, align 8
  %15 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %9, align 8
  %16 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %15, i32 0, i32 0
  %17 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %16, align 8
  store %struct.pm8001_hba_info* %17, %struct.pm8001_hba_info** %10, align 8
  %18 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %10, align 8
  %19 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @chip_8001, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %50

23:                                               ; preds = %3
  %24 = load i8*, i8** %7, align 8
  %25 = load i32, i32* @PAGE_SIZE, align 4
  %26 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %10, align 8
  %27 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = ashr i32 %30, 24
  %32 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %10, align 8
  %33 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = ashr i32 %36, 16
  %38 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %10, align 8
  %39 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = ashr i32 %42, 8
  %44 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %10, align 8
  %45 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @snprintf(i8* %24, i32 %25, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %37, i32 %43, i32 %48)
  store i32 %49, i32* %4, align 4
  br label %77

50:                                               ; preds = %3
  %51 = load i8*, i8** %7, align 8
  %52 = load i32, i32* @PAGE_SIZE, align 4
  %53 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %10, align 8
  %54 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = ashr i32 %57, 24
  %59 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %10, align 8
  %60 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = ashr i32 %63, 16
  %65 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %10, align 8
  %66 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = ashr i32 %69, 8
  %71 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %10, align 8
  %72 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @snprintf(i8* %51, i32 %52, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %64, i32 %70, i32 %75)
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %50, %23
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local %struct.Scsi_Host* @class_to_shost(%struct.device*) #1

declare dso_local %struct.sas_ha_struct* @SHOST_TO_SAS_HA(%struct.Scsi_Host*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
