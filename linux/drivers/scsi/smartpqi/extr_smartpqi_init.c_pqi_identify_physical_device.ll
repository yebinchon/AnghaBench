; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_identify_physical_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_identify_physical_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { i32 }
%struct.pqi_scsi_dev = type { i32 }
%struct.bmic_identify_physical_device = type { i32 }
%struct.pqi_raid_path_request = type { i32, i32, i8** }

@BMIC_IDENTIFY_PHYSICAL_DEVICE = common dso_local global i32 0, align 4
@RAID_CTLR_LUNID = common dso_local global i32 0, align 4
@NO_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pqi_ctrl_info*, %struct.pqi_scsi_dev*, %struct.bmic_identify_physical_device*, i64)* @pqi_identify_physical_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqi_identify_physical_device(%struct.pqi_ctrl_info* %0, %struct.pqi_scsi_dev* %1, %struct.bmic_identify_physical_device* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pqi_ctrl_info*, align 8
  %7 = alloca %struct.pqi_scsi_dev*, align 8
  %8 = alloca %struct.bmic_identify_physical_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.pqi_raid_path_request, align 8
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %6, align 8
  store %struct.pqi_scsi_dev* %1, %struct.pqi_scsi_dev** %7, align 8
  store %struct.bmic_identify_physical_device* %2, %struct.bmic_identify_physical_device** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %6, align 8
  %15 = load i32, i32* @BMIC_IDENTIFY_PHYSICAL_DEVICE, align 4
  %16 = load i32, i32* @RAID_CTLR_LUNID, align 4
  %17 = load %struct.bmic_identify_physical_device*, %struct.bmic_identify_physical_device** %8, align 8
  %18 = load i64, i64* %9, align 8
  %19 = call i32 @pqi_build_raid_path_request(%struct.pqi_ctrl_info* %14, %struct.pqi_raid_path_request* %13, i32 %15, i32 %16, %struct.bmic_identify_physical_device* %17, i64 %18, i32 0, i32* %11)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %5, align 4
  br label %54

24:                                               ; preds = %4
  %25 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %7, align 8
  %26 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @CISS_GET_DRIVE_NUMBER(i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i8*
  %32 = getelementptr inbounds %struct.pqi_raid_path_request, %struct.pqi_raid_path_request* %13, i32 0, i32 2
  %33 = load i8**, i8*** %32, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 2
  store i8* %31, i8** %34, align 8
  %35 = load i32, i32* %12, align 4
  %36 = ashr i32 %35, 8
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to i8*
  %39 = getelementptr inbounds %struct.pqi_raid_path_request, %struct.pqi_raid_path_request* %13, i32 0, i32 2
  %40 = load i8**, i8*** %39, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 9
  store i8* %38, i8** %41, align 8
  %42 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %6, align 8
  %43 = getelementptr inbounds %struct.pqi_raid_path_request, %struct.pqi_raid_path_request* %13, i32 0, i32 1
  %44 = load i32, i32* @NO_TIMEOUT, align 4
  %45 = call i32 @pqi_submit_raid_request_synchronous(%struct.pqi_ctrl_info* %42, i32* %43, i32 0, i32* null, i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %6, align 8
  %47 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.pqi_raid_path_request, %struct.pqi_raid_path_request* %13, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @pqi_pci_unmap(i32 %48, i32 %50, i32 1, i32 %51)
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %24, %22
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @pqi_build_raid_path_request(%struct.pqi_ctrl_info*, %struct.pqi_raid_path_request*, i32, i32, %struct.bmic_identify_physical_device*, i64, i32, i32*) #1

declare dso_local i32 @CISS_GET_DRIVE_NUMBER(i32) #1

declare dso_local i32 @pqi_submit_raid_request_synchronous(%struct.pqi_ctrl_info*, i32*, i32, i32*, i32) #1

declare dso_local i32 @pqi_pci_unmap(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
