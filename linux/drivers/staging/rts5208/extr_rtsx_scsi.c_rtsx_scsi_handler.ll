; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_scsi.c_rtsx_scsi_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_scsi.c_rtsx_scsi_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32* }
%struct.rtsx_chip = type { %struct.ms_info, %struct.sd_info }
%struct.ms_info = type { i64, i64 }
%struct.sd_info = type { i64 }

@MS_CARD = common dso_local global i64 0, align 8
@FORMAT_IN_PROGRESS = common dso_local global i64 0, align 8
@CUR_ERR = common dso_local global i32 0, align 4
@TRANSPORT_FAILED = common dso_local global i32 0, align 4
@TRANSPORT_GOOD = common dso_local global i32 0, align 4
@SENSE_TYPE_MEDIA_INVALID_CMD_FIELD = common dso_local global i32 0, align 4
@GET_DEV_STATUS = common dso_local global i32 0, align 4
@SCSI_APP_CMD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtsx_scsi_handler(%struct.scsi_cmnd* %0, %struct.rtsx_chip* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.rtsx_chip*, align 8
  %6 = alloca %struct.ms_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store %struct.rtsx_chip* %1, %struct.rtsx_chip** %5, align 8
  %9 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %10 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %9, i32 0, i32 0
  store %struct.ms_info* %10, %struct.ms_info** %6, align 8
  %11 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %12 = call i32 @SCSI_LUN(%struct.scsi_cmnd* %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i64 @get_lun_card(%struct.rtsx_chip* %13, i32 %14)
  %16 = load i64, i64* @MS_CARD, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %49

18:                                               ; preds = %2
  %19 = load %struct.ms_info*, %struct.ms_info** %6, align 8
  %20 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @FORMAT_IN_PROGRESS, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %49

24:                                               ; preds = %18
  %25 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %26 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 140
  br i1 %30, label %31, label %48

31:                                               ; preds = %24
  %32 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %33 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 148
  br i1 %37, label %38, label %48

38:                                               ; preds = %31
  %39 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @CUR_ERR, align 4
  %42 = load %struct.ms_info*, %struct.ms_info** %6, align 8
  %43 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = call i32 @set_sense_data(%struct.rtsx_chip* %39, i32 %40, i32 %41, i32 2, i32 0, i32 4, i32 4, i32 0, i32 %45)
  %47 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %47, i32* %3, align 4
  br label %112

48:                                               ; preds = %31, %24
  br label %49

49:                                               ; preds = %48, %18, %2
  %50 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %51 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %104 [
    i32 143, label %55
    i32 129, label %55
    i32 142, label %55
    i32 128, label %55
    i32 132, label %62
    i32 148, label %66
    i32 141, label %70
    i32 133, label %74
    i32 152, label %78
    i32 140, label %82
    i32 146, label %86
    i32 145, label %86
    i32 35, label %90
    i32 131, label %94
    i32 144, label %98
    i32 149, label %102
    i32 147, label %102
    i32 130, label %102
  ]

55:                                               ; preds = %49, %49, %49, %49
  %56 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %57 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %58 = call i32 @read_write(%struct.scsi_cmnd* %56, %struct.rtsx_chip* %57)
  store i32 %58, i32* %8, align 4
  %59 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %60 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %61 = call i32 @led_shine(%struct.scsi_cmnd* %59, %struct.rtsx_chip* %60)
  br label %110

62:                                               ; preds = %49
  %63 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %64 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %65 = call i32 @test_unit_ready(%struct.scsi_cmnd* %63, %struct.rtsx_chip* %64)
  store i32 %65, i32* %8, align 4
  br label %110

66:                                               ; preds = %49
  %67 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %68 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %69 = call i32 @inquiry(%struct.scsi_cmnd* %67, %struct.rtsx_chip* %68)
  store i32 %69, i32* %8, align 4
  br label %110

70:                                               ; preds = %49
  %71 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %72 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %73 = call i32 @read_capacity(%struct.scsi_cmnd* %71, %struct.rtsx_chip* %72)
  store i32 %73, i32* %8, align 4
  br label %110

74:                                               ; preds = %49
  %75 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %76 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %77 = call i32 @start_stop_unit(%struct.scsi_cmnd* %75, %struct.rtsx_chip* %76)
  store i32 %77, i32* %8, align 4
  br label %110

78:                                               ; preds = %49
  %79 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %80 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %81 = call i32 @allow_medium_removal(%struct.scsi_cmnd* %79, %struct.rtsx_chip* %80)
  store i32 %81, i32* %8, align 4
  br label %110

82:                                               ; preds = %49
  %83 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %84 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %85 = call i32 @request_sense(%struct.scsi_cmnd* %83, %struct.rtsx_chip* %84)
  store i32 %85, i32* %8, align 4
  br label %110

86:                                               ; preds = %49, %49
  %87 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %88 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %89 = call i32 @mode_sense(%struct.scsi_cmnd* %87, %struct.rtsx_chip* %88)
  store i32 %89, i32* %8, align 4
  br label %110

90:                                               ; preds = %49
  %91 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %92 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %93 = call i32 @read_format_capacity(%struct.scsi_cmnd* %91, %struct.rtsx_chip* %92)
  store i32 %93, i32* %8, align 4
  br label %110

94:                                               ; preds = %49
  %95 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %96 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %97 = call i32 @vendor_cmnd(%struct.scsi_cmnd* %95, %struct.rtsx_chip* %96)
  store i32 %97, i32* %8, align 4
  br label %110

98:                                               ; preds = %49
  %99 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %100 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %101 = call i32 @ms_sp_cmnd(%struct.scsi_cmnd* %99, %struct.rtsx_chip* %100)
  store i32 %101, i32* %8, align 4
  br label %110

102:                                              ; preds = %49, %49, %49
  %103 = load i32, i32* @TRANSPORT_GOOD, align 4
  store i32 %103, i32* %8, align 4
  br label %110

104:                                              ; preds = %49
  %105 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @SENSE_TYPE_MEDIA_INVALID_CMD_FIELD, align 4
  %108 = call i32 @set_sense_type(%struct.rtsx_chip* %105, i32 %106, i32 %107)
  %109 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %109, i32* %8, align 4
  br label %110

110:                                              ; preds = %104, %102, %98, %94, %90, %86, %82, %78, %74, %70, %66, %62, %55
  %111 = load i32, i32* %8, align 4
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %110, %38
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @SCSI_LUN(%struct.scsi_cmnd*) #1

declare dso_local i64 @get_lun_card(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @set_sense_data(%struct.rtsx_chip*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @read_write(%struct.scsi_cmnd*, %struct.rtsx_chip*) #1

declare dso_local i32 @led_shine(%struct.scsi_cmnd*, %struct.rtsx_chip*) #1

declare dso_local i32 @test_unit_ready(%struct.scsi_cmnd*, %struct.rtsx_chip*) #1

declare dso_local i32 @inquiry(%struct.scsi_cmnd*, %struct.rtsx_chip*) #1

declare dso_local i32 @read_capacity(%struct.scsi_cmnd*, %struct.rtsx_chip*) #1

declare dso_local i32 @start_stop_unit(%struct.scsi_cmnd*, %struct.rtsx_chip*) #1

declare dso_local i32 @allow_medium_removal(%struct.scsi_cmnd*, %struct.rtsx_chip*) #1

declare dso_local i32 @request_sense(%struct.scsi_cmnd*, %struct.rtsx_chip*) #1

declare dso_local i32 @mode_sense(%struct.scsi_cmnd*, %struct.rtsx_chip*) #1

declare dso_local i32 @read_format_capacity(%struct.scsi_cmnd*, %struct.rtsx_chip*) #1

declare dso_local i32 @vendor_cmnd(%struct.scsi_cmnd*, %struct.rtsx_chip*) #1

declare dso_local i32 @ms_sp_cmnd(%struct.scsi_cmnd*, %struct.rtsx_chip*) #1

declare dso_local i32 @set_sense_type(%struct.rtsx_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
