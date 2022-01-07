; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_scsi.c_get_sd_csd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_scsi.c_get_sd_csd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32 }
%struct.rtsx_chip = type { %struct.sd_info }
%struct.sd_info = type { i32 }

@SENSE_TYPE_MEDIA_NOT_PRESENT = common dso_local global i32 0, align 4
@TRANSPORT_FAILED = common dso_local global i32 0, align 4
@SD_CARD = common dso_local global i64 0, align 8
@SENSE_TYPE_MEDIA_UNRECOVER_READ_ERR = common dso_local global i32 0, align 4
@TRANSPORT_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, %struct.rtsx_chip*)* @get_sd_csd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_sd_csd(%struct.scsi_cmnd* %0, %struct.rtsx_chip* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.rtsx_chip*, align 8
  %6 = alloca %struct.sd_info*, align 8
  %7 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store %struct.rtsx_chip* %1, %struct.rtsx_chip** %5, align 8
  %8 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %9 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %8, i32 0, i32 0
  store %struct.sd_info* %9, %struct.sd_info** %6, align 8
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %11 = call i32 @SCSI_LUN(%struct.scsi_cmnd* %10)
  store i32 %11, i32* %7, align 4
  %12 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @check_card_ready(%struct.rtsx_chip* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %2
  %17 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @SENSE_TYPE_MEDIA_NOT_PRESENT, align 4
  %20 = call i32 @set_sense_type(%struct.rtsx_chip* %17, i32 %18, i32 %19)
  %21 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %21, i32* %3, align 4
  br label %45

22:                                               ; preds = %2
  %23 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i64 @get_lun_card(%struct.rtsx_chip* %23, i32 %24)
  %26 = load i64, i64* @SD_CARD, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @SENSE_TYPE_MEDIA_UNRECOVER_READ_ERR, align 4
  %32 = call i32 @set_sense_type(%struct.rtsx_chip* %29, i32 %30, i32 %31)
  %33 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %33, i32* %3, align 4
  br label %45

34:                                               ; preds = %22
  %35 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %36 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %35, i32 0)
  %37 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %38 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %41 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %40)
  %42 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %43 = call i32 @rtsx_stor_set_xfer_buf(i32 %39, i32 %41, %struct.scsi_cmnd* %42)
  %44 = load i32, i32* @TRANSPORT_GOOD, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %34, %28, %16
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @SCSI_LUN(%struct.scsi_cmnd*) #1

declare dso_local i32 @check_card_ready(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @set_sense_type(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i64 @get_lun_card(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @scsi_set_resid(%struct.scsi_cmnd*, i32) #1

declare dso_local i32 @rtsx_stor_set_xfer_buf(i32, i32, %struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
