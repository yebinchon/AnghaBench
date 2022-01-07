; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_scsi.c_request_sense.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_scsi.c_request_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32 }
%struct.rtsx_chip = type { %struct.sense_data_t*, %struct.ms_info }
%struct.sense_data_t = type { i32 }
%struct.ms_info = type { i64, i64, i64 }

@MS_CARD = common dso_local global i64 0, align 8
@FORMAT_SUCCESS = common dso_local global i64 0, align 8
@SENSE_TYPE_NO_SENSE = common dso_local global i32 0, align 4
@FORMAT_IN_PROGRESS = common dso_local global i64 0, align 8
@CUR_ERR = common dso_local global i32 0, align 4
@SENSE_TYPE_FORMAT_CMD_FAILED = common dso_local global i32 0, align 4
@RTSX_STAT_RUN = common dso_local global i32 0, align 4
@TRANSPORT_ERROR = common dso_local global i32 0, align 4
@TRANSPORT_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, %struct.rtsx_chip*)* @request_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @request_sense(%struct.scsi_cmnd* %0, %struct.rtsx_chip* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.rtsx_chip*, align 8
  %6 = alloca %struct.sense_data_t*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ms_info*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store %struct.rtsx_chip* %1, %struct.rtsx_chip** %5, align 8
  %11 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %12 = call i32 @SCSI_LUN(%struct.scsi_cmnd* %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %14 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %13, i32 0, i32 1
  store %struct.ms_info* %14, %struct.ms_info** %8, align 8
  %15 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %16 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %15, i32 0, i32 0
  %17 = load %struct.sense_data_t*, %struct.sense_data_t** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.sense_data_t, %struct.sense_data_t* %17, i64 %19
  store %struct.sense_data_t* %20, %struct.sense_data_t** %6, align 8
  %21 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i64 @get_lun_card(%struct.rtsx_chip* %21, i32 %22)
  %24 = load i64, i64* @MS_CARD, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %75

26:                                               ; preds = %2
  %27 = load %struct.ms_info*, %struct.ms_info** %8, align 8
  %28 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %75

31:                                               ; preds = %26
  %32 = load %struct.ms_info*, %struct.ms_info** %8, align 8
  %33 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @FORMAT_SUCCESS, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %31
  %38 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @SENSE_TYPE_NO_SENSE, align 4
  %41 = call i32 @set_sense_type(%struct.rtsx_chip* %38, i32 %39, i32 %40)
  %42 = load %struct.ms_info*, %struct.ms_info** %8, align 8
  %43 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %42, i32 0, i32 2
  store i64 0, i64* %43, align 8
  %44 = load %struct.ms_info*, %struct.ms_info** %8, align 8
  %45 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  br label %71

46:                                               ; preds = %31
  %47 = load %struct.ms_info*, %struct.ms_info** %8, align 8
  %48 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @FORMAT_IN_PROGRESS, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %46
  %53 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @CUR_ERR, align 4
  %56 = load %struct.ms_info*, %struct.ms_info** %8, align 8
  %57 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = call i32 @set_sense_data(%struct.rtsx_chip* %53, i32 %54, i32 %55, i32 2, i32 0, i32 4, i32 4, i32 0, i32 %59)
  br label %70

61:                                               ; preds = %46
  %62 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @SENSE_TYPE_FORMAT_CMD_FAILED, align 4
  %65 = call i32 @set_sense_type(%struct.rtsx_chip* %62, i32 %63, i32 %64)
  %66 = load %struct.ms_info*, %struct.ms_info** %8, align 8
  %67 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %66, i32 0, i32 2
  store i64 0, i64* %67, align 8
  %68 = load %struct.ms_info*, %struct.ms_info** %8, align 8
  %69 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %68, i32 0, i32 1
  store i64 0, i64* %69, align 8
  br label %70

70:                                               ; preds = %61, %52
  br label %71

71:                                               ; preds = %70, %37
  %72 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %73 = load i32, i32* @RTSX_STAT_RUN, align 4
  %74 = call i32 @rtsx_set_stat(%struct.rtsx_chip* %72, i32 %73)
  br label %75

75:                                               ; preds = %71, %26, %2
  %76 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %77 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %76)
  %78 = call i8* @vmalloc(i32 %77)
  store i8* %78, i8** %10, align 8
  %79 = load i8*, i8** %10, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %83, label %81

81:                                               ; preds = %75
  %82 = load i32, i32* @TRANSPORT_ERROR, align 4
  store i32 %82, i32* %3, align 4
  br label %105

83:                                               ; preds = %75
  %84 = load %struct.sense_data_t*, %struct.sense_data_t** %6, align 8
  %85 = bitcast %struct.sense_data_t* %84 to i8*
  store i8* %85, i8** %9, align 8
  %86 = load i8*, i8** %10, align 8
  %87 = load i8*, i8** %9, align 8
  %88 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %89 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %88)
  %90 = call i32 @memcpy(i8* %86, i8* %87, i32 %89)
  %91 = load i8*, i8** %10, align 8
  %92 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %93 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %92)
  %94 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %95 = call i32 @rtsx_stor_set_xfer_buf(i8* %91, i32 %93, %struct.scsi_cmnd* %94)
  %96 = load i8*, i8** %10, align 8
  %97 = call i32 @vfree(i8* %96)
  %98 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %99 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %98, i32 0)
  %100 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @SENSE_TYPE_NO_SENSE, align 4
  %103 = call i32 @set_sense_type(%struct.rtsx_chip* %100, i32 %101, i32 %102)
  %104 = load i32, i32* @TRANSPORT_GOOD, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %83, %81
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @SCSI_LUN(%struct.scsi_cmnd*) #1

declare dso_local i64 @get_lun_card(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @set_sense_type(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @set_sense_data(%struct.rtsx_chip*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @rtsx_set_stat(%struct.rtsx_chip*, i32) #1

declare dso_local i8* @vmalloc(i32) #1

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @rtsx_stor_set_xfer_buf(i8*, i32, %struct.scsi_cmnd*) #1

declare dso_local i32 @vfree(i8*) #1

declare dso_local i32 @scsi_set_resid(%struct.scsi_cmnd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
