; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_scsi.c_test_unit_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_scsi.c_test_unit_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32 }
%struct.rtsx_chip = type { %struct.sd_info, i32 }
%struct.sd_info = type { i32, i64 }

@SENSE_TYPE_MEDIA_NOT_PRESENT = common dso_local global i32 0, align 4
@TRANSPORT_FAILED = common dso_local global i32 0, align 4
@SENSE_TYPE_MEDIA_CHANGE = common dso_local global i32 0, align 4
@TRANSPORT_GOOD = common dso_local global i32 0, align 4
@SD_CARD = common dso_local global i64 0, align 8
@SD_LOCKED = common dso_local global i32 0, align 4
@SENSE_TYPE_MEDIA_READ_FORBIDDEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, %struct.rtsx_chip*)* @test_unit_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_unit_ready(%struct.scsi_cmnd* %0, %struct.rtsx_chip* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.rtsx_chip*, align 8
  %6 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store %struct.rtsx_chip* %1, %struct.rtsx_chip** %5, align 8
  %7 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %8 = call i32 @SCSI_LUN(%struct.scsi_cmnd* %7)
  store i32 %8, i32* %6, align 4
  %9 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @check_card_ready(%struct.rtsx_chip* %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @SENSE_TYPE_MEDIA_NOT_PRESENT, align 4
  %17 = call i32 @set_sense_type(%struct.rtsx_chip* %14, i32 %15, i32 %16)
  %18 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %18, i32* %3, align 4
  br label %39

19:                                               ; preds = %2
  %20 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %21 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @CHK_BIT(i32 %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %19
  %27 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %28 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @SET_BIT(i32 %29, i32 %30)
  %32 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @SENSE_TYPE_MEDIA_CHANGE, align 4
  %35 = call i32 @set_sense_type(%struct.rtsx_chip* %32, i32 %33, i32 %34)
  %36 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %36, i32* %3, align 4
  br label %39

37:                                               ; preds = %19
  %38 = load i32, i32* @TRANSPORT_GOOD, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %37, %26, %13
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @SCSI_LUN(%struct.scsi_cmnd*) #1

declare dso_local i32 @check_card_ready(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @set_sense_type(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @CHK_BIT(i32, i32) #1

declare dso_local i32 @SET_BIT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
