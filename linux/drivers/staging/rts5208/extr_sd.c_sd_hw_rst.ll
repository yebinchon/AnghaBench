; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_hw_rst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_hw_rst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32* }
%struct.rtsx_chip = type { %struct.sd_info }
%struct.sd_info = type { i32, i32, i32 }

@SENSE_TYPE_MEDIA_INVALID_CMD_FIELD = common dso_local global i32 0, align 4
@TRANSPORT_FAILED = common dso_local global i32 0, align 4
@SENSE_TYPE_MEDIA_CHANGE = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@SENSE_TYPE_MEDIA_NOT_PRESENT = common dso_local global i32 0, align 4
@TRANSPORT_GOOD = common dso_local global i32 0, align 4
@SD_SDR_RST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sd_hw_rst(%struct.scsi_cmnd* %0, %struct.rtsx_chip* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.rtsx_chip*, align 8
  %6 = alloca %struct.sd_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store %struct.rtsx_chip* %1, %struct.rtsx_chip** %5, align 8
  %9 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %10 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %9, i32 0, i32 0
  store %struct.sd_info* %10, %struct.sd_info** %6, align 8
  %11 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %12 = call i32 @SCSI_LUN(%struct.scsi_cmnd* %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %14 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %2
  %18 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @SENSE_TYPE_MEDIA_INVALID_CMD_FIELD, align 4
  %21 = call i32 @set_sense_type(%struct.rtsx_chip* %18, i32 %19, i32 %20)
  %22 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %22, i32* %3, align 4
  br label %138

23:                                               ; preds = %2
  %24 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %25 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %30 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %29, i32 0, i32 0
  store i32 0, i32* %30, align 4
  %31 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @SENSE_TYPE_MEDIA_CHANGE, align 4
  %34 = call i32 @set_sense_type(%struct.rtsx_chip* %31, i32 %32, i32 %33)
  %35 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %35, i32* %3, align 4
  br label %138

36:                                               ; preds = %23
  %37 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %38 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 83
  br i1 %42, label %85, label %43

43:                                               ; preds = %36
  %44 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %45 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 3
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 68
  br i1 %49, label %85, label %50

50:                                               ; preds = %43
  %51 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %52 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 4
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 32
  br i1 %56, label %85, label %57

57:                                               ; preds = %50
  %58 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %59 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 5
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 67
  br i1 %63, label %85, label %64

64:                                               ; preds = %57
  %65 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %66 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 6
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 97
  br i1 %70, label %85, label %71

71:                                               ; preds = %64
  %72 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %73 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 7
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 114
  br i1 %77, label %85, label %78

78:                                               ; preds = %71
  %79 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %80 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 8
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 100
  br i1 %84, label %85, label %91

85:                                               ; preds = %78, %71, %64, %57, %50, %43, %36
  %86 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @SENSE_TYPE_MEDIA_INVALID_CMD_FIELD, align 4
  %89 = call i32 @set_sense_type(%struct.rtsx_chip* %86, i32 %87, i32 %88)
  %90 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %90, i32* %3, align 4
  br label %138

91:                                               ; preds = %78
  %92 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %93 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, 15
  switch i32 %97, label %128 [
    i32 0, label %98
    i32 1, label %113
  ]

98:                                               ; preds = %91
  %99 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %100 = call i32 @reset_sd_card(%struct.rtsx_chip* %99)
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* @STATUS_SUCCESS, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %112

104:                                              ; preds = %98
  %105 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @SENSE_TYPE_MEDIA_NOT_PRESENT, align 4
  %108 = call i32 @set_sense_type(%struct.rtsx_chip* %105, i32 %106, i32 %107)
  %109 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %110 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %109, i32 0, i32 0
  store i32 1, i32* %110, align 4
  %111 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %111, i32* %3, align 4
  br label %138

112:                                              ; preds = %98
  br label %134

113:                                              ; preds = %91
  %114 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %115 = call i32 @reset_sd(%struct.rtsx_chip* %114)
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* @STATUS_SUCCESS, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %127

119:                                              ; preds = %113
  %120 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* @SENSE_TYPE_MEDIA_NOT_PRESENT, align 4
  %123 = call i32 @set_sense_type(%struct.rtsx_chip* %120, i32 %121, i32 %122)
  %124 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %125 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %124, i32 0, i32 0
  store i32 1, i32* %125, align 4
  %126 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %126, i32* %3, align 4
  br label %138

127:                                              ; preds = %113
  br label %134

128:                                              ; preds = %91
  %129 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* @SENSE_TYPE_MEDIA_INVALID_CMD_FIELD, align 4
  %132 = call i32 @set_sense_type(%struct.rtsx_chip* %129, i32 %130, i32 %131)
  %133 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %133, i32* %3, align 4
  br label %138

134:                                              ; preds = %127, %112
  %135 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %136 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %135, i32 0)
  %137 = load i32, i32* @TRANSPORT_GOOD, align 4
  store i32 %137, i32* %3, align 4
  br label %138

138:                                              ; preds = %134, %128, %119, %104, %85, %28, %17
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local i32 @SCSI_LUN(%struct.scsi_cmnd*) #1

declare dso_local i32 @set_sense_type(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @reset_sd_card(%struct.rtsx_chip*) #1

declare dso_local i32 @reset_sd(%struct.rtsx_chip*) #1

declare dso_local i32 @scsi_set_resid(%struct.scsi_cmnd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
