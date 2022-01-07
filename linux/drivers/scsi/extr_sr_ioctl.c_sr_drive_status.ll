; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sr_ioctl.c_sr_drive_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sr_ioctl.c_sr_drive_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { %struct.scsi_cd* }
%struct.scsi_cd = type { i32 }
%struct.scsi_sense_hdr = type { i64, i32, i32 }
%struct.media_event_desc = type { i64, i64 }

@CDSL_CURRENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SR_TIMEOUT = common dso_local global i32 0, align 4
@MAX_RETRIES = common dso_local global i32 0, align 4
@CDS_DISC_OK = common dso_local global i32 0, align 4
@NOT_READY = common dso_local global i64 0, align 8
@CDS_DRIVE_NOT_READY = common dso_local global i32 0, align 4
@CDS_TRAY_OPEN = common dso_local global i32 0, align 4
@CDS_NO_DISC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sr_drive_status(%struct.cdrom_device_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdrom_device_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.scsi_cd*, align 8
  %7 = alloca %struct.scsi_sense_hdr, align 8
  %8 = alloca %struct.media_event_desc, align 8
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %10 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %9, i32 0, i32 0
  %11 = load %struct.scsi_cd*, %struct.scsi_cd** %10, align 8
  store %struct.scsi_cd* %11, %struct.scsi_cd** %6, align 8
  %12 = load i32, i32* @CDSL_CURRENT, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %104

18:                                               ; preds = %2
  %19 = load %struct.scsi_cd*, %struct.scsi_cd** %6, align 8
  %20 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @SR_TIMEOUT, align 4
  %23 = load i32, i32* @MAX_RETRIES, align 4
  %24 = call i32 @scsi_test_unit_ready(i32 %21, i32 %22, i32 %23, %struct.scsi_sense_hdr* %7)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %18
  %27 = load i32, i32* @CDS_DISC_OK, align 4
  store i32 %27, i32* %3, align 4
  br label %104

28:                                               ; preds = %18
  %29 = call i64 @scsi_sense_valid(%struct.scsi_sense_hdr* %7)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %7, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @NOT_READY, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %7, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 4
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %7, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* @CDS_DRIVE_NOT_READY, align 4
  store i32 %45, i32* %3, align 4
  br label %104

46:                                               ; preds = %40, %36, %31, %28
  %47 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %48 = call i32 @cdrom_get_media_event(%struct.cdrom_device_info* %47, %struct.media_event_desc* %8)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %64, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.media_event_desc, %struct.media_event_desc* %8, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, i32* @CDS_DISC_OK, align 4
  store i32 %55, i32* %3, align 4
  br label %104

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.media_event_desc, %struct.media_event_desc* %8, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i32, i32* @CDS_TRAY_OPEN, align 4
  store i32 %61, i32* %3, align 4
  br label %104

62:                                               ; preds = %56
  %63 = load i32, i32* @CDS_NO_DISC, align 4
  store i32 %63, i32* %3, align 4
  br label %104

64:                                               ; preds = %46
  %65 = call i64 @scsi_sense_valid(%struct.scsi_sense_hdr* %7)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %82

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %7, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @NOT_READY, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %7, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = icmp eq i32 %74, 4
  br i1 %75, label %76, label %82

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %7, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 2
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i32, i32* @CDS_TRAY_OPEN, align 4
  store i32 %81, i32* %3, align 4
  br label %104

82:                                               ; preds = %76, %72, %67, %64
  %83 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %7, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @NOT_READY, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %7, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = icmp eq i32 %89, 4
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = load i32, i32* @CDS_DISC_OK, align 4
  store i32 %92, i32* %3, align 4
  br label %104

93:                                               ; preds = %87, %82
  %94 = call i64 @scsi_sense_valid(%struct.scsi_sense_hdr* %7)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %7, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = icmp eq i32 %98, 58
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = load i32, i32* @CDS_NO_DISC, align 4
  store i32 %101, i32* %3, align 4
  br label %104

102:                                              ; preds = %96, %93
  %103 = load i32, i32* @CDS_TRAY_OPEN, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %102, %100, %91, %80, %62, %60, %54, %44, %26, %15
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @scsi_test_unit_ready(i32, i32, i32, %struct.scsi_sense_hdr*) #1

declare dso_local i64 @scsi_sense_valid(%struct.scsi_sense_hdr*) #1

declare dso_local i32 @cdrom_get_media_event(%struct.cdrom_device_info*, %struct.media_event_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
