; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_scsi.c_set_variable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_scsi.c_set_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32* }
%struct.rtsx_chip = type { i32, i64, %struct.ms_info, %struct.sd_info, %struct.xd_info }
%struct.ms_info = type { i32 }
%struct.sd_info = type { i32 }
%struct.xd_info = type { i32 }

@SENSE_TYPE_MEDIA_INVALID_CMD_FIELD = common dso_local global i32 0, align 4
@TRANSPORT_FAILED = common dso_local global i32 0, align 4
@RTSX_STAT_SS = common dso_local global i64 0, align 8
@RTSX_STAT_RUN = common dso_local global i32 0, align 4
@SSC_PDCTL = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@SENSE_TYPE_MEDIA_WRITE_ERR = common dso_local global i32 0, align 4
@LED_GPIO = common dso_local global i32 0, align 4
@TRANSPORT_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, %struct.rtsx_chip*)* @set_variable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_variable(%struct.scsi_cmnd* %0, %struct.rtsx_chip* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.rtsx_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xd_info*, align 8
  %8 = alloca %struct.sd_info*, align 8
  %9 = alloca %struct.ms_info*, align 8
  %10 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store %struct.rtsx_chip* %1, %struct.rtsx_chip** %5, align 8
  %11 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %12 = call i32 @SCSI_LUN(%struct.scsi_cmnd* %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %14 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 3
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %62

19:                                               ; preds = %2
  %20 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %21 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %20, i32 0, i32 4
  store %struct.xd_info* %21, %struct.xd_info** %7, align 8
  %22 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %23 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %22, i32 0, i32 3
  store %struct.sd_info* %23, %struct.sd_info** %8, align 8
  %24 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %25 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %24, i32 0, i32 2
  store %struct.ms_info* %25, %struct.ms_info** %9, align 8
  %26 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %27 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 4
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %55 [
    i32 128, label %31
    i32 129, label %39
    i32 130, label %47
  ]

31:                                               ; preds = %19
  %32 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %33 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 5
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.xd_info*, %struct.xd_info** %7, align 8
  %38 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  br label %61

39:                                               ; preds = %19
  %40 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %41 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 5
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.sd_info*, %struct.sd_info** %8, align 8
  %46 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  br label %61

47:                                               ; preds = %19
  %48 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %49 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 5
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ms_info*, %struct.ms_info** %9, align 8
  %54 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  br label %61

55:                                               ; preds = %19
  %56 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @SENSE_TYPE_MEDIA_INVALID_CMD_FIELD, align 4
  %59 = call i32 @set_sense_type(%struct.rtsx_chip* %56, i32 %57, i32 %58)
  %60 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %60, i32* %3, align 4
  br label %128

61:                                               ; preds = %47, %39, %31
  br label %126

62:                                               ; preds = %2
  %63 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %64 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 3
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 2
  br i1 %68, label %69, label %119

69:                                               ; preds = %62
  %70 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %71 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 4
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %78 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %77, i32 0, i32 0
  store i32 1, i32* %78, align 8
  br label %118

79:                                               ; preds = %69
  %80 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %81 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %80, i32 0, i32 0
  store i32 0, i32* %81, align 8
  %82 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %83 = call i32 @rtsx_disable_aspm(%struct.rtsx_chip* %82)
  %84 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %85 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %79
  %89 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %90 = call i64 @rtsx_get_stat(%struct.rtsx_chip* %89)
  %91 = load i64, i64* @RTSX_STAT_SS, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %95 = call i32 @rtsx_exit_ss(%struct.rtsx_chip* %94)
  %96 = call i32 @wait_timeout(i32 100)
  br label %97

97:                                               ; preds = %93, %88, %79
  %98 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %99 = load i32, i32* @RTSX_STAT_RUN, align 4
  %100 = call i32 @rtsx_set_stat(%struct.rtsx_chip* %98, i32 %99)
  %101 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %102 = load i32, i32* @SSC_PDCTL, align 4
  %103 = call i32 @rtsx_force_power_on(%struct.rtsx_chip* %101, i32 %102)
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* @STATUS_SUCCESS, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %114

107:                                              ; preds = %97
  %108 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %109 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %110 = call i32 @SCSI_LUN(%struct.scsi_cmnd* %109)
  %111 = load i32, i32* @SENSE_TYPE_MEDIA_WRITE_ERR, align 4
  %112 = call i32 @set_sense_type(%struct.rtsx_chip* %108, i32 %110, i32 %111)
  %113 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %113, i32* %3, align 4
  br label %128

114:                                              ; preds = %97
  %115 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %116 = load i32, i32* @LED_GPIO, align 4
  %117 = call i32 @turn_off_led(%struct.rtsx_chip* %115, i32 %116)
  br label %118

118:                                              ; preds = %114, %76
  br label %125

119:                                              ; preds = %62
  %120 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* @SENSE_TYPE_MEDIA_INVALID_CMD_FIELD, align 4
  %123 = call i32 @set_sense_type(%struct.rtsx_chip* %120, i32 %121, i32 %122)
  %124 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %124, i32* %3, align 4
  br label %128

125:                                              ; preds = %118
  br label %126

126:                                              ; preds = %125, %61
  %127 = load i32, i32* @TRANSPORT_GOOD, align 4
  store i32 %127, i32* %3, align 4
  br label %128

128:                                              ; preds = %126, %119, %107, %55
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i32 @SCSI_LUN(%struct.scsi_cmnd*) #1

declare dso_local i32 @set_sense_type(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @rtsx_disable_aspm(%struct.rtsx_chip*) #1

declare dso_local i64 @rtsx_get_stat(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_exit_ss(%struct.rtsx_chip*) #1

declare dso_local i32 @wait_timeout(i32) #1

declare dso_local i32 @rtsx_set_stat(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @rtsx_force_power_on(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @turn_off_led(%struct.rtsx_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
