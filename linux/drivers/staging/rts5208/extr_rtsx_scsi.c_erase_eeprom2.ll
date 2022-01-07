; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_scsi.c_erase_eeprom2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_scsi.c_erase_eeprom2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32* }
%struct.rtsx_chip = type { i64 }

@RTSX_STAT_SS = common dso_local global i64 0, align 8
@RTSX_STAT_RUN = common dso_local global i32 0, align 4
@SSC_PDCTL = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@SENSE_TYPE_MEDIA_WRITE_ERR = common dso_local global i32 0, align 4
@TRANSPORT_FAILED = common dso_local global i32 0, align 4
@SENSE_TYPE_MEDIA_INVALID_CMD_FIELD = common dso_local global i32 0, align 4
@TRANSPORT_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, %struct.rtsx_chip*)* @erase_eeprom2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @erase_eeprom2(%struct.scsi_cmnd* %0, %struct.rtsx_chip* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.rtsx_chip*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store %struct.rtsx_chip* %1, %struct.rtsx_chip** %5, align 8
  %9 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %10 = call i32 @rtsx_disable_aspm(%struct.rtsx_chip* %9)
  %11 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %12 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %2
  %16 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %17 = call i64 @rtsx_get_stat(%struct.rtsx_chip* %16)
  %18 = load i64, i64* @RTSX_STAT_SS, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %22 = call i32 @rtsx_exit_ss(%struct.rtsx_chip* %21)
  %23 = call i32 @wait_timeout(i32 100)
  br label %24

24:                                               ; preds = %20, %15, %2
  %25 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %26 = load i32, i32* @RTSX_STAT_RUN, align 4
  %27 = call i32 @rtsx_set_stat(%struct.rtsx_chip* %25, i32 %26)
  %28 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %29 = load i32, i32* @SSC_PDCTL, align 4
  %30 = call i32 @rtsx_force_power_on(%struct.rtsx_chip* %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @STATUS_SUCCESS, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %24
  %35 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %36 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %37 = call i32 @SCSI_LUN(%struct.scsi_cmnd* %36)
  %38 = load i32, i32* @SENSE_TYPE_MEDIA_WRITE_ERR, align 4
  %39 = call i32 @set_sense_type(%struct.rtsx_chip* %35, i32 %37, i32 %38)
  %40 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %40, i32* %3, align 4
  br label %104

41:                                               ; preds = %24
  %42 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %43 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 3
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %8, align 4
  %47 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %48 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 4
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 %51, 8
  %53 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %54 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 5
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %52, %57
  %59 = trunc i32 %58 to i16
  store i16 %59, i16* %6, align 2
  %60 = load i32, i32* %8, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %41
  %63 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %64 = call i32 @spi_erase_eeprom_chip(%struct.rtsx_chip* %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @STATUS_SUCCESS, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %62
  %69 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %70 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %71 = call i32 @SCSI_LUN(%struct.scsi_cmnd* %70)
  %72 = load i32, i32* @SENSE_TYPE_MEDIA_WRITE_ERR, align 4
  %73 = call i32 @set_sense_type(%struct.rtsx_chip* %69, i32 %71, i32 %72)
  %74 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %74, i32* %3, align 4
  br label %104

75:                                               ; preds = %62
  br label %102

76:                                               ; preds = %41
  %77 = load i32, i32* %8, align 4
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %94

79:                                               ; preds = %76
  %80 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %81 = load i16, i16* %6, align 2
  %82 = call i32 @spi_erase_eeprom_byte(%struct.rtsx_chip* %80, i16 zeroext %81)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @STATUS_SUCCESS, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %79
  %87 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %88 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %89 = call i32 @SCSI_LUN(%struct.scsi_cmnd* %88)
  %90 = load i32, i32* @SENSE_TYPE_MEDIA_WRITE_ERR, align 4
  %91 = call i32 @set_sense_type(%struct.rtsx_chip* %87, i32 %89, i32 %90)
  %92 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %92, i32* %3, align 4
  br label %104

93:                                               ; preds = %79
  br label %101

94:                                               ; preds = %76
  %95 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %96 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %97 = call i32 @SCSI_LUN(%struct.scsi_cmnd* %96)
  %98 = load i32, i32* @SENSE_TYPE_MEDIA_INVALID_CMD_FIELD, align 4
  %99 = call i32 @set_sense_type(%struct.rtsx_chip* %95, i32 %97, i32 %98)
  %100 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %100, i32* %3, align 4
  br label %104

101:                                              ; preds = %93
  br label %102

102:                                              ; preds = %101, %75
  %103 = load i32, i32* @TRANSPORT_GOOD, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %102, %94, %86, %68, %34
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @rtsx_disable_aspm(%struct.rtsx_chip*) #1

declare dso_local i64 @rtsx_get_stat(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_exit_ss(%struct.rtsx_chip*) #1

declare dso_local i32 @wait_timeout(i32) #1

declare dso_local i32 @rtsx_set_stat(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @rtsx_force_power_on(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @set_sense_type(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @SCSI_LUN(%struct.scsi_cmnd*) #1

declare dso_local i32 @spi_erase_eeprom_chip(%struct.rtsx_chip*) #1

declare dso_local i32 @spi_erase_eeprom_byte(%struct.rtsx_chip*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
