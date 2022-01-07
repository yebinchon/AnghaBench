; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_get_path_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_get_path_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsa_scsi_dev_t = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.ReportExtendedLUNdata = type { %struct.ext_report_lun_entry* }
%struct.ext_report_lun_entry = type { i32 }
%struct.bmic_identify_physical_device = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hpsa_scsi_dev_t*, %struct.ReportExtendedLUNdata*, i32, %struct.bmic_identify_physical_device*)* @hpsa_get_path_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpsa_get_path_info(%struct.hpsa_scsi_dev_t* %0, %struct.ReportExtendedLUNdata* %1, i32 %2, %struct.bmic_identify_physical_device* %3) #0 {
  %5 = alloca %struct.hpsa_scsi_dev_t*, align 8
  %6 = alloca %struct.ReportExtendedLUNdata*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bmic_identify_physical_device*, align 8
  %9 = alloca %struct.ext_report_lun_entry*, align 8
  store %struct.hpsa_scsi_dev_t* %0, %struct.hpsa_scsi_dev_t** %5, align 8
  store %struct.ReportExtendedLUNdata* %1, %struct.ReportExtendedLUNdata** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.bmic_identify_physical_device* %3, %struct.bmic_identify_physical_device** %8, align 8
  %10 = load %struct.ReportExtendedLUNdata*, %struct.ReportExtendedLUNdata** %6, align 8
  %11 = getelementptr inbounds %struct.ReportExtendedLUNdata, %struct.ReportExtendedLUNdata* %10, i32 0, i32 0
  %12 = load %struct.ext_report_lun_entry*, %struct.ext_report_lun_entry** %11, align 8
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.ext_report_lun_entry, %struct.ext_report_lun_entry* %12, i64 %14
  store %struct.ext_report_lun_entry* %15, %struct.ext_report_lun_entry** %9, align 8
  %16 = load %struct.ext_report_lun_entry*, %struct.ext_report_lun_entry** %9, align 8
  %17 = getelementptr inbounds %struct.ext_report_lun_entry, %struct.ext_report_lun_entry* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %4
  %22 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %5, align 8
  %23 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %22, i32 0, i32 6
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %5, align 8
  %28 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  br label %29

29:                                               ; preds = %26, %21, %4
  %30 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %5, align 8
  %31 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %30, i32 0, i32 5
  %32 = load %struct.bmic_identify_physical_device*, %struct.bmic_identify_physical_device** %8, align 8
  %33 = getelementptr inbounds %struct.bmic_identify_physical_device, %struct.bmic_identify_physical_device* %32, i32 0, i32 4
  %34 = call i32 @memcpy(i32* %31, i32* %33, i32 4)
  %35 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %5, align 8
  %36 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %35, i32 0, i32 4
  %37 = load %struct.bmic_identify_physical_device*, %struct.bmic_identify_physical_device** %8, align 8
  %38 = getelementptr inbounds %struct.bmic_identify_physical_device, %struct.bmic_identify_physical_device* %37, i32 0, i32 3
  %39 = call i32 @memcpy(i32* %36, i32* %38, i32 4)
  %40 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %5, align 8
  %41 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %40, i32 0, i32 3
  %42 = load %struct.bmic_identify_physical_device*, %struct.bmic_identify_physical_device** %8, align 8
  %43 = getelementptr inbounds %struct.bmic_identify_physical_device, %struct.bmic_identify_physical_device* %42, i32 0, i32 2
  %44 = call i32 @memcpy(i32* %41, i32* %43, i32 4)
  %45 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %5, align 8
  %46 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %45, i32 0, i32 2
  %47 = load %struct.bmic_identify_physical_device*, %struct.bmic_identify_physical_device** %8, align 8
  %48 = getelementptr inbounds %struct.bmic_identify_physical_device, %struct.bmic_identify_physical_device* %47, i32 0, i32 1
  %49 = call i32 @memcpy(i32* %46, i32* %48, i32 4)
  %50 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %5, align 8
  %51 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %50, i32 0, i32 1
  %52 = load %struct.bmic_identify_physical_device*, %struct.bmic_identify_physical_device** %8, align 8
  %53 = getelementptr inbounds %struct.bmic_identify_physical_device, %struct.bmic_identify_physical_device* %52, i32 0, i32 0
  %54 = call i32 @memcpy(i32* %51, i32* %53, i32 4)
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
