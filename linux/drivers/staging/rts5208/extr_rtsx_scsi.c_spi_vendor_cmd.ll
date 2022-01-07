; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_scsi.c_spi_vendor_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_scsi.c_spi_vendor_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32* }
%struct.rtsx_chip = type { i64 }

@SENSE_TYPE_MEDIA_INVALID_CMD_FIELD = common dso_local global i32 0, align 4
@TRANSPORT_FAILED = common dso_local global i32 0, align 4
@RTSX_STAT_SS = common dso_local global i64 0, align 8
@RTSX_STAT_RUN = common dso_local global i32 0, align 4
@SSC_PDCTL = common dso_local global i32 0, align 4
@CARD_GPIO_DIR = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@TRANSPORT_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, %struct.rtsx_chip*)* @spi_vendor_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_vendor_cmd(%struct.scsi_cmnd* %0, %struct.rtsx_chip* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.rtsx_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store %struct.rtsx_chip* %1, %struct.rtsx_chip** %5, align 8
  %9 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %10 = call i32 @SCSI_LUN(%struct.scsi_cmnd* %9)
  store i32 %10, i32* %7, align 4
  %11 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %12 = call i64 @CHECK_PID(%struct.rtsx_chip* %11, i32 21000)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %16 = call i64 @CHECK_PID(%struct.rtsx_chip* %15, i32 21128)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %14, %2
  %19 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @SENSE_TYPE_MEDIA_INVALID_CMD_FIELD, align 4
  %22 = call i32 @set_sense_type(%struct.rtsx_chip* %19, i32 %20, i32 %21)
  %23 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %23, i32* %3, align 4
  br label %110

24:                                               ; preds = %14
  %25 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %26 = call i32 @rtsx_disable_aspm(%struct.rtsx_chip* %25)
  %27 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %28 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %24
  %32 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %33 = call i64 @rtsx_get_stat(%struct.rtsx_chip* %32)
  %34 = load i64, i64* @RTSX_STAT_SS, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %38 = call i32 @rtsx_exit_ss(%struct.rtsx_chip* %37)
  %39 = call i32 @wait_timeout(i32 100)
  br label %40

40:                                               ; preds = %36, %31, %24
  %41 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %42 = load i32, i32* @RTSX_STAT_RUN, align 4
  %43 = call i32 @rtsx_set_stat(%struct.rtsx_chip* %41, i32 %42)
  %44 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %45 = load i32, i32* @SSC_PDCTL, align 4
  %46 = call i32 @rtsx_force_power_on(%struct.rtsx_chip* %44, i32 %45)
  %47 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %48 = load i32, i32* @CARD_GPIO_DIR, align 4
  %49 = call i32 @rtsx_read_register(%struct.rtsx_chip* %47, i32 %48, i32* %8)
  %50 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %51 = load i32, i32* @CARD_GPIO_DIR, align 4
  %52 = load i32, i32* %8, align 4
  %53 = and i32 %52, 6
  %54 = call i32 @rtsx_write_register(%struct.rtsx_chip* %50, i32 %51, i32 7, i32 %53)
  %55 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %56 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 2
  %59 = load i32, i32* %58, align 4
  switch i32 %59, label %88 [
    i32 133, label %60
    i32 130, label %64
    i32 132, label %68
    i32 131, label %72
    i32 129, label %76
    i32 128, label %80
    i32 134, label %84
  ]

60:                                               ; preds = %40
  %61 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %62 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %63 = call i32 @spi_get_status(%struct.scsi_cmnd* %61, %struct.rtsx_chip* %62)
  store i32 %63, i32* %6, align 4
  br label %98

64:                                               ; preds = %40
  %65 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %66 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %67 = call i32 @spi_set_parameter(%struct.scsi_cmnd* %65, %struct.rtsx_chip* %66)
  store i32 %67, i32* %6, align 4
  br label %98

68:                                               ; preds = %40
  %69 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %70 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %71 = call i32 @spi_read_flash_id(%struct.scsi_cmnd* %69, %struct.rtsx_chip* %70)
  store i32 %71, i32* %6, align 4
  br label %98

72:                                               ; preds = %40
  %73 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %74 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %75 = call i32 @spi_read_flash(%struct.scsi_cmnd* %73, %struct.rtsx_chip* %74)
  store i32 %75, i32* %6, align 4
  br label %98

76:                                               ; preds = %40
  %77 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %78 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %79 = call i32 @spi_write_flash(%struct.scsi_cmnd* %77, %struct.rtsx_chip* %78)
  store i32 %79, i32* %6, align 4
  br label %98

80:                                               ; preds = %40
  %81 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %82 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %83 = call i32 @spi_write_flash_status(%struct.scsi_cmnd* %81, %struct.rtsx_chip* %82)
  store i32 %83, i32* %6, align 4
  br label %98

84:                                               ; preds = %40
  %85 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %86 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %87 = call i32 @spi_erase_flash(%struct.scsi_cmnd* %85, %struct.rtsx_chip* %86)
  store i32 %87, i32* %6, align 4
  br label %98

88:                                               ; preds = %40
  %89 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %90 = load i32, i32* @CARD_GPIO_DIR, align 4
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @rtsx_write_register(%struct.rtsx_chip* %89, i32 %90, i32 7, i32 %91)
  %93 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @SENSE_TYPE_MEDIA_INVALID_CMD_FIELD, align 4
  %96 = call i32 @set_sense_type(%struct.rtsx_chip* %93, i32 %94, i32 %95)
  %97 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %97, i32* %3, align 4
  br label %110

98:                                               ; preds = %84, %80, %76, %72, %68, %64, %60
  %99 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %100 = load i32, i32* @CARD_GPIO_DIR, align 4
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @rtsx_write_register(%struct.rtsx_chip* %99, i32 %100, i32 7, i32 %101)
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @STATUS_SUCCESS, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %98
  %107 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %107, i32* %3, align 4
  br label %110

108:                                              ; preds = %98
  %109 = load i32, i32* @TRANSPORT_GOOD, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %108, %106, %88, %18
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @SCSI_LUN(%struct.scsi_cmnd*) #1

declare dso_local i64 @CHECK_PID(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @set_sense_type(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @rtsx_disable_aspm(%struct.rtsx_chip*) #1

declare dso_local i64 @rtsx_get_stat(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_exit_ss(%struct.rtsx_chip*) #1

declare dso_local i32 @wait_timeout(i32) #1

declare dso_local i32 @rtsx_set_stat(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @rtsx_force_power_on(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @rtsx_read_register(%struct.rtsx_chip*, i32, i32*) #1

declare dso_local i32 @rtsx_write_register(%struct.rtsx_chip*, i32, i32, i32) #1

declare dso_local i32 @spi_get_status(%struct.scsi_cmnd*, %struct.rtsx_chip*) #1

declare dso_local i32 @spi_set_parameter(%struct.scsi_cmnd*, %struct.rtsx_chip*) #1

declare dso_local i32 @spi_read_flash_id(%struct.scsi_cmnd*, %struct.rtsx_chip*) #1

declare dso_local i32 @spi_read_flash(%struct.scsi_cmnd*, %struct.rtsx_chip*) #1

declare dso_local i32 @spi_write_flash(%struct.scsi_cmnd*, %struct.rtsx_chip*) #1

declare dso_local i32 @spi_write_flash_status(%struct.scsi_cmnd*, %struct.rtsx_chip*) #1

declare dso_local i32 @spi_erase_flash(%struct.scsi_cmnd*, %struct.rtsx_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
