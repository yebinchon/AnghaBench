; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_get_ioaccel_drive_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_get_ioaccel_drive_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { i32 }
%struct.hpsa_scsi_dev_t = type { i32, i64, i64 }
%struct.ReportExtendedLUNdata = type { %struct.ext_report_lun_entry* }
%struct.ext_report_lun_entry = type { i32, i32*, i64 }
%struct.bmic_identify_physical_device = type { i32 }

@DRIVE_CMDS_RESERVED_FOR_FW = common dso_local global i64 0, align 8
@DRIVE_QUEUE_DEPTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctlr_info*, %struct.hpsa_scsi_dev_t*, %struct.ReportExtendedLUNdata*, i32, %struct.bmic_identify_physical_device*)* @hpsa_get_ioaccel_drive_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpsa_get_ioaccel_drive_info(%struct.ctlr_info* %0, %struct.hpsa_scsi_dev_t* %1, %struct.ReportExtendedLUNdata* %2, i32 %3, %struct.bmic_identify_physical_device* %4) #0 {
  %6 = alloca %struct.ctlr_info*, align 8
  %7 = alloca %struct.hpsa_scsi_dev_t*, align 8
  %8 = alloca %struct.ReportExtendedLUNdata*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.bmic_identify_physical_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ext_report_lun_entry*, align 8
  store %struct.ctlr_info* %0, %struct.ctlr_info** %6, align 8
  store %struct.hpsa_scsi_dev_t* %1, %struct.hpsa_scsi_dev_t** %7, align 8
  store %struct.ReportExtendedLUNdata* %2, %struct.ReportExtendedLUNdata** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.bmic_identify_physical_device* %4, %struct.bmic_identify_physical_device** %10, align 8
  %13 = load %struct.ReportExtendedLUNdata*, %struct.ReportExtendedLUNdata** %8, align 8
  %14 = getelementptr inbounds %struct.ReportExtendedLUNdata, %struct.ReportExtendedLUNdata* %13, i32 0, i32 0
  %15 = load %struct.ext_report_lun_entry*, %struct.ext_report_lun_entry** %14, align 8
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.ext_report_lun_entry, %struct.ext_report_lun_entry* %15, i64 %17
  store %struct.ext_report_lun_entry* %18, %struct.ext_report_lun_entry** %12, align 8
  %19 = load %struct.ext_report_lun_entry*, %struct.ext_report_lun_entry** %12, align 8
  %20 = getelementptr inbounds %struct.ext_report_lun_entry, %struct.ext_report_lun_entry* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %23 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %22, i32 0, i32 2
  store i64 %21, i64* %23, align 8
  %24 = load %struct.ext_report_lun_entry*, %struct.ext_report_lun_entry** %12, align 8
  %25 = getelementptr inbounds %struct.ext_report_lun_entry, %struct.ext_report_lun_entry* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %5
  %30 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %31 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %36 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  br label %37

37:                                               ; preds = %34, %29, %5
  %38 = load %struct.bmic_identify_physical_device*, %struct.bmic_identify_physical_device** %10, align 8
  %39 = call i32 @memset(%struct.bmic_identify_physical_device* %38, i32 0, i32 4)
  %40 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %41 = load %struct.ext_report_lun_entry*, %struct.ext_report_lun_entry** %12, align 8
  %42 = getelementptr inbounds %struct.ext_report_lun_entry, %struct.ext_report_lun_entry* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load %struct.ext_report_lun_entry*, %struct.ext_report_lun_entry** %12, align 8
  %46 = getelementptr inbounds %struct.ext_report_lun_entry, %struct.ext_report_lun_entry* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = call i32 @GET_BMIC_DRIVE_NUMBER(i32* %48)
  %50 = load %struct.bmic_identify_physical_device*, %struct.bmic_identify_physical_device** %10, align 8
  %51 = call i32 @hpsa_bmic_id_physical_device(%struct.ctlr_info* %40, i32* %44, i32 %49, %struct.bmic_identify_physical_device* %50, i32 4)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %37
  %55 = load %struct.bmic_identify_physical_device*, %struct.bmic_identify_physical_device** %10, align 8
  %56 = getelementptr inbounds %struct.bmic_identify_physical_device, %struct.bmic_identify_physical_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @le16_to_cpu(i32 %57)
  %59 = sub nsw i64 %58, 2
  %60 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %61 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %60, i32 0, i32 1
  store i64 %59, i64* %61, align 8
  br label %65

62:                                               ; preds = %37
  %63 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %64 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %63, i32 0, i32 1
  store i64 7, i64* %64, align 8
  br label %65

65:                                               ; preds = %62, %54
  ret void
}

declare dso_local i32 @memset(%struct.bmic_identify_physical_device*, i32, i32) #1

declare dso_local i32 @hpsa_bmic_id_physical_device(%struct.ctlr_info*, i32*, i32, %struct.bmic_identify_physical_device*, i32) #1

declare dso_local i32 @GET_BMIC_DRIVE_NUMBER(i32*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
