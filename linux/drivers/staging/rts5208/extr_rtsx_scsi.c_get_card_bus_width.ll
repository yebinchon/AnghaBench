; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_scsi.c_get_card_bus_width.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_scsi.c_get_card_bus_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32 }
%struct.rtsx_chip = type { i64* }

@SENSE_TYPE_MEDIA_NOT_PRESENT = common dso_local global i32 0, align 4
@TRANSPORT_FAILED = common dso_local global i32 0, align 4
@SD_CARD = common dso_local global i64 0, align 8
@MS_CARD = common dso_local global i64 0, align 8
@SENSE_TYPE_MEDIA_UNRECOVER_READ_ERR = common dso_local global i32 0, align 4
@TRANSPORT_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, %struct.rtsx_chip*)* @get_card_bus_width to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_card_bus_width(%struct.scsi_cmnd* %0, %struct.rtsx_chip* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.rtsx_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store %struct.rtsx_chip* %1, %struct.rtsx_chip** %5, align 8
  %9 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %10 = call i32 @SCSI_LUN(%struct.scsi_cmnd* %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @check_card_ready(%struct.rtsx_chip* %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @SENSE_TYPE_MEDIA_NOT_PRESENT, align 4
  %19 = call i32 @set_sense_type(%struct.rtsx_chip* %16, i32 %17, i32 %18)
  %20 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %20, i32* %3, align 4
  br label %54

21:                                               ; preds = %2
  %22 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i64 @get_lun_card(%struct.rtsx_chip* %22, i32 %23)
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @SD_CARD, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %21
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @MS_CARD, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %28, %21
  %33 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %34 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %8, align 8
  br label %46

40:                                               ; preds = %28
  %41 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @SENSE_TYPE_MEDIA_UNRECOVER_READ_ERR, align 4
  %44 = call i32 @set_sense_type(%struct.rtsx_chip* %41, i32 %42, i32 %43)
  %45 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %45, i32* %3, align 4
  br label %54

46:                                               ; preds = %32
  %47 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %48 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %47, i32 0)
  %49 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %50 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %49)
  %51 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %52 = call i32 @rtsx_stor_set_xfer_buf(i64* %8, i32 %50, %struct.scsi_cmnd* %51)
  %53 = load i32, i32* @TRANSPORT_GOOD, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %46, %40, %15
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @SCSI_LUN(%struct.scsi_cmnd*) #1

declare dso_local i32 @check_card_ready(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @set_sense_type(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i64 @get_lun_card(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @scsi_set_resid(%struct.scsi_cmnd*, i32) #1

declare dso_local i32 @rtsx_stor_set_xfer_buf(i64*, i32, %struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
