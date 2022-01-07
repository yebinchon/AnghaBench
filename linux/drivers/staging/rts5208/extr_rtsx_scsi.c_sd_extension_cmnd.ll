; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_scsi.c_sd_extension_cmnd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_scsi.c_sd_extension_cmnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32* }
%struct.rtsx_chip = type { i64 }

@RTSX_STAT_SS = common dso_local global i64 0, align 8
@RTSX_STAT_RUN = common dso_local global i32 0, align 4
@SENSE_TYPE_MEDIA_NOT_PRESENT = common dso_local global i32 0, align 4
@TRANSPORT_FAILED = common dso_local global i32 0, align 4
@SD_CARD = common dso_local global i64 0, align 8
@SENSE_TYPE_MEDIA_LUN_NOT_SUPPORT = common dso_local global i32 0, align 4
@SENSE_TYPE_MEDIA_INVALID_CMD_FIELD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, %struct.rtsx_chip*)* @sd_extension_cmnd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_extension_cmnd(%struct.scsi_cmnd* %0, %struct.rtsx_chip* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.rtsx_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store %struct.rtsx_chip* %1, %struct.rtsx_chip** %5, align 8
  %8 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %9 = call i32 @SCSI_LUN(%struct.scsi_cmnd* %8)
  store i32 %9, i32* %6, align 4
  %10 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %11 = call i32 @rtsx_disable_aspm(%struct.rtsx_chip* %10)
  %12 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %13 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %18 = call i64 @rtsx_get_stat(%struct.rtsx_chip* %17)
  %19 = load i64, i64* @RTSX_STAT_SS, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %23 = call i32 @rtsx_exit_ss(%struct.rtsx_chip* %22)
  %24 = call i32 @wait_timeout(i32 100)
  br label %25

25:                                               ; preds = %21, %16, %2
  %26 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %27 = load i32, i32* @RTSX_STAT_RUN, align 4
  %28 = call i32 @rtsx_set_stat(%struct.rtsx_chip* %26, i32 %27)
  %29 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %30 = call i32 @sd_cleanup_work(%struct.rtsx_chip* %29)
  %31 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @check_card_ready(%struct.rtsx_chip* %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %25
  %36 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @SENSE_TYPE_MEDIA_NOT_PRESENT, align 4
  %39 = call i32 @set_sense_type(%struct.rtsx_chip* %36, i32 %37, i32 %38)
  %40 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %40, i32* %3, align 4
  br label %91

41:                                               ; preds = %25
  %42 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i64 @get_lun_card(%struct.rtsx_chip* %42, i32 %43)
  %45 = load i64, i64* @SD_CARD, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @SENSE_TYPE_MEDIA_LUN_NOT_SUPPORT, align 4
  %51 = call i32 @set_sense_type(%struct.rtsx_chip* %48, i32 %49, i32 %50)
  %52 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %52, i32* %3, align 4
  br label %91

53:                                               ; preds = %41
  %54 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %55 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  switch i32 %58, label %83 [
    i32 128, label %59
    i32 133, label %63
    i32 132, label %67
    i32 131, label %71
    i32 130, label %75
    i32 129, label %79
  ]

59:                                               ; preds = %53
  %60 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %61 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %62 = call i32 @sd_pass_thru_mode(%struct.scsi_cmnd* %60, %struct.rtsx_chip* %61)
  store i32 %62, i32* %7, align 4
  br label %89

63:                                               ; preds = %53
  %64 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %65 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %66 = call i32 @sd_execute_no_data(%struct.scsi_cmnd* %64, %struct.rtsx_chip* %65)
  store i32 %66, i32* %7, align 4
  br label %89

67:                                               ; preds = %53
  %68 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %69 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %70 = call i32 @sd_execute_read_data(%struct.scsi_cmnd* %68, %struct.rtsx_chip* %69)
  store i32 %70, i32* %7, align 4
  br label %89

71:                                               ; preds = %53
  %72 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %73 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %74 = call i32 @sd_execute_write_data(%struct.scsi_cmnd* %72, %struct.rtsx_chip* %73)
  store i32 %74, i32* %7, align 4
  br label %89

75:                                               ; preds = %53
  %76 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %77 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %78 = call i32 @sd_get_cmd_rsp(%struct.scsi_cmnd* %76, %struct.rtsx_chip* %77)
  store i32 %78, i32* %7, align 4
  br label %89

79:                                               ; preds = %53
  %80 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %81 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %82 = call i32 @sd_hw_rst(%struct.scsi_cmnd* %80, %struct.rtsx_chip* %81)
  store i32 %82, i32* %7, align 4
  br label %89

83:                                               ; preds = %53
  %84 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @SENSE_TYPE_MEDIA_INVALID_CMD_FIELD, align 4
  %87 = call i32 @set_sense_type(%struct.rtsx_chip* %84, i32 %85, i32 %86)
  %88 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %88, i32* %3, align 4
  br label %91

89:                                               ; preds = %79, %75, %71, %67, %63, %59
  %90 = load i32, i32* %7, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %89, %83, %47, %35
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @SCSI_LUN(%struct.scsi_cmnd*) #1

declare dso_local i32 @rtsx_disable_aspm(%struct.rtsx_chip*) #1

declare dso_local i64 @rtsx_get_stat(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_exit_ss(%struct.rtsx_chip*) #1

declare dso_local i32 @wait_timeout(i32) #1

declare dso_local i32 @rtsx_set_stat(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @sd_cleanup_work(%struct.rtsx_chip*) #1

declare dso_local i32 @check_card_ready(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @set_sense_type(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i64 @get_lun_card(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @sd_pass_thru_mode(%struct.scsi_cmnd*, %struct.rtsx_chip*) #1

declare dso_local i32 @sd_execute_no_data(%struct.scsi_cmnd*, %struct.rtsx_chip*) #1

declare dso_local i32 @sd_execute_read_data(%struct.scsi_cmnd*, %struct.rtsx_chip*) #1

declare dso_local i32 @sd_execute_write_data(%struct.scsi_cmnd*, %struct.rtsx_chip*) #1

declare dso_local i32 @sd_get_cmd_rsp(%struct.scsi_cmnd*, %struct.rtsx_chip*) #1

declare dso_local i32 @sd_hw_rst(%struct.scsi_cmnd*, %struct.rtsx_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
