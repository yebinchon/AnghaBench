; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_init.c_pm8001_pci_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_init.c_pm8001_pci_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { i64, i32, i32*, i32*, i32, i32, i64, %struct.Scsi_Host*, %struct.sas_ha_struct*, i32, i32*, i32*, %struct.pci_dev* }
%struct.sas_ha_struct = type { %struct.pm8001_hba_info* }
%struct.pci_dev = type { i32, i32, i32 }
%struct.pci_device_id = type { i64 }
%struct.Scsi_Host = type { i32 }

@pm8001_chips = common dso_local global i32* null, align 8
@pm8001_id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@DRV_NAME = common dso_local global i8* null, align 8
@chip_8001 = common dso_local global i64 0, align 8
@IOMB_SIZE_SPCV = common dso_local global i32 0, align 4
@IOMB_SIZE_SPC = common dso_local global i32 0, align 4
@PM8001_MAX_MSIX_VEC = common dso_local global i32 0, align 4
@pm8001_tasklet = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pm8001_hba_info* (%struct.pci_dev*, %struct.pci_device_id*, %struct.Scsi_Host*)* @pm8001_pci_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pm8001_hba_info* @pm8001_pci_alloc(%struct.pci_dev* %0, %struct.pci_device_id* %1, %struct.Scsi_Host* %2) #0 {
  %4 = alloca %struct.pm8001_hba_info*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.pci_device_id*, align 8
  %7 = alloca %struct.Scsi_Host*, align 8
  %8 = alloca %struct.pm8001_hba_info*, align 8
  %9 = alloca %struct.sas_ha_struct*, align 8
  %10 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %6, align 8
  store %struct.Scsi_Host* %2, %struct.Scsi_Host** %7, align 8
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %12 = call %struct.sas_ha_struct* @SHOST_TO_SAS_HA(%struct.Scsi_Host* %11)
  store %struct.sas_ha_struct* %12, %struct.sas_ha_struct** %9, align 8
  %13 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %9, align 8
  %14 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %13, i32 0, i32 0
  %15 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %14, align 8
  store %struct.pm8001_hba_info* %15, %struct.pm8001_hba_info** %8, align 8
  %16 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %8, align 8
  %17 = icmp ne %struct.pm8001_hba_info* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store %struct.pm8001_hba_info* null, %struct.pm8001_hba_info** %4, align 8
  br label %90

19:                                               ; preds = %3
  %20 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %21 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %8, align 8
  %22 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %21, i32 0, i32 12
  store %struct.pci_dev* %20, %struct.pci_dev** %22, align 8
  %23 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 2
  %25 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %8, align 8
  %26 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %25, i32 0, i32 11
  store i32* %24, i32** %26, align 8
  %27 = load %struct.pci_device_id*, %struct.pci_device_id** %6, align 8
  %28 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %8, align 8
  %31 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load i32*, i32** @pm8001_chips, align 8
  %33 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %8, align 8
  %34 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %8, align 8
  %38 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %37, i32 0, i32 10
  store i32* %36, i32** %38, align 8
  %39 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %40 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %8, align 8
  %43 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %42, i32 0, i32 9
  store i32 %41, i32* %43, align 8
  %44 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %9, align 8
  %45 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %8, align 8
  %46 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %45, i32 0, i32 8
  store %struct.sas_ha_struct* %44, %struct.sas_ha_struct** %46, align 8
  %47 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %48 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %8, align 8
  %49 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %48, i32 0, i32 7
  store %struct.Scsi_Host* %47, %struct.Scsi_Host** %49, align 8
  %50 = load i32, i32* @pm8001_id, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* @pm8001_id, align 4
  %52 = sext i32 %50 to i64
  %53 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %8, align 8
  %54 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %53, i32 0, i32 6
  store i64 %52, i64* %54, align 8
  %55 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %8, align 8
  %56 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %55, i32 0, i32 1
  store i32 1, i32* %56, align 8
  %57 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %8, align 8
  %58 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = load i8*, i8** @DRV_NAME, align 8
  %61 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %8, align 8
  %62 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %61, i32 0, i32 6
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @sprintf(i32 %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %60, i64 %63)
  %65 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %8, align 8
  %66 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @chip_8001, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %19
  %71 = load i32, i32* @IOMB_SIZE_SPCV, align 4
  %72 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %8, align 8
  %73 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %72, i32 0, i32 4
  store i32 %71, i32* %73, align 8
  br label %78

74:                                               ; preds = %19
  %75 = load i32, i32* @IOMB_SIZE_SPC, align 4
  %76 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %8, align 8
  %77 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 8
  br label %78

78:                                               ; preds = %74, %70
  %79 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %8, align 8
  %80 = call i32 @pm8001_ioremap(%struct.pm8001_hba_info* %79)
  %81 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %8, align 8
  %82 = load %struct.pci_device_id*, %struct.pci_device_id** %6, align 8
  %83 = call i32 @pm8001_alloc(%struct.pm8001_hba_info* %81, %struct.pci_device_id* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %78
  %86 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %8, align 8
  store %struct.pm8001_hba_info* %86, %struct.pm8001_hba_info** %4, align 8
  br label %90

87:                                               ; preds = %78
  %88 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %8, align 8
  %89 = call i32 @pm8001_free(%struct.pm8001_hba_info* %88)
  store %struct.pm8001_hba_info* null, %struct.pm8001_hba_info** %4, align 8
  br label %90

90:                                               ; preds = %87, %85, %18
  %91 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  ret %struct.pm8001_hba_info* %91
}

declare dso_local %struct.sas_ha_struct* @SHOST_TO_SAS_HA(%struct.Scsi_Host*) #1

declare dso_local i32 @sprintf(i32, i8*, i8*, i64) #1

declare dso_local i32 @pm8001_ioremap(%struct.pm8001_hba_info*) #1

declare dso_local i32 @pm8001_alloc(%struct.pm8001_hba_info*, %struct.pci_device_id*) #1

declare dso_local i32 @pm8001_free(%struct.pm8001_hba_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
