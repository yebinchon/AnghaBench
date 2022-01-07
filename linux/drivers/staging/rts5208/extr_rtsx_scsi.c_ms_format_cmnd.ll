; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_scsi.c_ms_format_cmnd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_scsi.c_ms_format_cmnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32* }
%struct.rtsx_chip = type { i32, i32, i64, %struct.ms_info }
%struct.ms_info = type { i32 }

@MS_CARD = common dso_local global i32 0, align 4
@SENSE_TYPE_MEDIA_LUN_NOT_SUPPORT = common dso_local global i32 0, align 4
@TRANSPORT_FAILED = common dso_local global i32 0, align 4
@SENSE_TYPE_MEDIA_INVALID_CMD_FIELD = common dso_local global i32 0, align 4
@RTSX_STAT_SS = common dso_local global i64 0, align 8
@SENSE_TYPE_MEDIA_NOT_PRESENT = common dso_local global i32 0, align 4
@RTSX_STAT_RUN = common dso_local global i32 0, align 4
@SENSE_TYPE_MEDIA_WRITE_PROTECT = common dso_local global i32 0, align 4
@MS_SHORT_DATA_LEN = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@SENSE_TYPE_FORMAT_CMD_FAILED = common dso_local global i32 0, align 4
@TRANSPORT_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, %struct.rtsx_chip*)* @ms_format_cmnd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms_format_cmnd(%struct.scsi_cmnd* %0, %struct.rtsx_chip* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.rtsx_chip*, align 8
  %6 = alloca %struct.ms_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store %struct.rtsx_chip* %1, %struct.rtsx_chip** %5, align 8
  %10 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %11 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %10, i32 0, i32 3
  store %struct.ms_info* %11, %struct.ms_info** %6, align 8
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %13 = call i32 @SCSI_LUN(%struct.scsi_cmnd* %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @get_lun_card(%struct.rtsx_chip* %14, i32 %15)
  %17 = load i32, i32* @MS_CARD, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @SENSE_TYPE_MEDIA_LUN_NOT_SUPPORT, align 4
  %23 = call i32 @set_sense_type(%struct.rtsx_chip* %20, i32 %21, i32 %22)
  %24 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %24, i32* %3, align 4
  br label %166

25:                                               ; preds = %2
  %26 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %27 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 3
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 77
  br i1 %31, label %60, label %32

32:                                               ; preds = %25
  %33 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %34 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 4
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 71
  br i1 %38, label %60, label %39

39:                                               ; preds = %32
  %40 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %41 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 5
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 102
  br i1 %45, label %60, label %46

46:                                               ; preds = %39
  %47 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %48 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 6
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 109
  br i1 %52, label %60, label %53

53:                                               ; preds = %46
  %54 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %55 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 7
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 116
  br i1 %59, label %60, label %66

60:                                               ; preds = %53, %46, %39, %32, %25
  %61 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @SENSE_TYPE_MEDIA_INVALID_CMD_FIELD, align 4
  %64 = call i32 @set_sense_type(%struct.rtsx_chip* %61, i32 %62, i32 %63)
  %65 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %65, i32* %3, align 4
  br label %166

66:                                               ; preds = %53
  %67 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %68 = call i32 @rtsx_disable_aspm(%struct.rtsx_chip* %67)
  %69 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %70 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %98

73:                                               ; preds = %66
  %74 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %75 = call i64 @rtsx_get_stat(%struct.rtsx_chip* %74)
  %76 = load i64, i64* @RTSX_STAT_SS, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %98

78:                                               ; preds = %73
  %79 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %80 = call i32 @rtsx_exit_ss(%struct.rtsx_chip* %79)
  %81 = call i32 @wait_timeout(i32 100)
  %82 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @check_card_ready(%struct.rtsx_chip* %82, i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %78
  %87 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %88 = load i32, i32* %7, align 4
  %89 = call i64 @get_card_size(%struct.rtsx_chip* %87, i32 %88)
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %86, %78
  %92 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @SENSE_TYPE_MEDIA_NOT_PRESENT, align 4
  %95 = call i32 @set_sense_type(%struct.rtsx_chip* %92, i32 %93, i32 %94)
  %96 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %96, i32* %3, align 4
  br label %166

97:                                               ; preds = %86
  br label %98

98:                                               ; preds = %97, %73, %66
  %99 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %100 = load i32, i32* @RTSX_STAT_RUN, align 4
  %101 = call i32 @rtsx_set_stat(%struct.rtsx_chip* %99, i32 %100)
  %102 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %103 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 8
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %106, 1
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %98
  store i32 0, i32* %8, align 4
  br label %111

110:                                              ; preds = %98
  store i32 1, i32* %8, align 4
  br label %111

111:                                              ; preds = %110, %109
  %112 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %113 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @MS_CARD, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %124, label %118

118:                                              ; preds = %111
  %119 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* @SENSE_TYPE_MEDIA_NOT_PRESENT, align 4
  %122 = call i32 @set_sense_type(%struct.rtsx_chip* %119, i32 %120, i32 %121)
  %123 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %123, i32* %3, align 4
  br label %166

124:                                              ; preds = %111
  %125 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %126 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @MS_CARD, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %124
  %132 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* @SENSE_TYPE_MEDIA_WRITE_PROTECT, align 4
  %135 = call i32 @set_sense_type(%struct.rtsx_chip* %132, i32 %133, i32 %134)
  %136 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %136, i32* %3, align 4
  br label %166

137:                                              ; preds = %124
  %138 = load %struct.ms_info*, %struct.ms_info** %6, align 8
  %139 = call i32 @CHK_MSPRO(%struct.ms_info* %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %147, label %141

141:                                              ; preds = %137
  %142 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %143 = load i32, i32* %7, align 4
  %144 = load i32, i32* @SENSE_TYPE_MEDIA_LUN_NOT_SUPPORT, align 4
  %145 = call i32 @set_sense_type(%struct.rtsx_chip* %142, i32 %143, i32 %144)
  %146 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %146, i32* %3, align 4
  br label %166

147:                                              ; preds = %137
  %148 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %149 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %150 = load i32, i32* @MS_SHORT_DATA_LEN, align 4
  %151 = load i32, i32* %8, align 4
  %152 = call i32 @mspro_format(%struct.scsi_cmnd* %148, %struct.rtsx_chip* %149, i32 %150, i32 %151)
  store i32 %152, i32* %9, align 4
  %153 = load i32, i32* %9, align 4
  %154 = load i32, i32* @STATUS_SUCCESS, align 4
  %155 = icmp ne i32 %153, %154
  br i1 %155, label %156, label %162

156:                                              ; preds = %147
  %157 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %158 = load i32, i32* %7, align 4
  %159 = load i32, i32* @SENSE_TYPE_FORMAT_CMD_FAILED, align 4
  %160 = call i32 @set_sense_type(%struct.rtsx_chip* %157, i32 %158, i32 %159)
  %161 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %161, i32* %3, align 4
  br label %166

162:                                              ; preds = %147
  %163 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %164 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %163, i32 0)
  %165 = load i32, i32* @TRANSPORT_GOOD, align 4
  store i32 %165, i32* %3, align 4
  br label %166

166:                                              ; preds = %162, %156, %141, %131, %118, %91, %60, %19
  %167 = load i32, i32* %3, align 4
  ret i32 %167
}

declare dso_local i32 @SCSI_LUN(%struct.scsi_cmnd*) #1

declare dso_local i32 @get_lun_card(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @set_sense_type(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @rtsx_disable_aspm(%struct.rtsx_chip*) #1

declare dso_local i64 @rtsx_get_stat(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_exit_ss(%struct.rtsx_chip*) #1

declare dso_local i32 @wait_timeout(i32) #1

declare dso_local i32 @check_card_ready(%struct.rtsx_chip*, i32) #1

declare dso_local i64 @get_card_size(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @rtsx_set_stat(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @CHK_MSPRO(%struct.ms_info*) #1

declare dso_local i32 @mspro_format(%struct.scsi_cmnd*, %struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @scsi_set_resid(%struct.scsi_cmnd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
