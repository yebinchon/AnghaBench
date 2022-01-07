; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_process_aio_io_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_process_aio_io_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_io_request = type { i32, i32, %struct.pqi_aio_error_info*, %struct.scsi_cmnd* }
%struct.pqi_aio_error_info = type { i32, i32, i32, i64, i32, i32 }
%struct.scsi_cmnd = type { i32, i32, i32, i32 }

@DID_OK = common dso_local global i32 0, align 4
@SAM_STAT_TASK_ABORTED = common dso_local global i32 0, align 4
@SAM_STAT_GOOD = common dso_local global i32 0, align 4
@DID_SOFT_ERROR = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"AIO\00", align 1
@DID_NO_CONNECT = common dso_local global i32 0, align 4
@SAM_STAT_CHECK_CONDITION = common dso_local global i32 0, align 4
@SCSI_SENSE_BUFFERSIZE = common dso_local global i64 0, align 8
@HARDWARE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pqi_io_request*)* @pqi_process_aio_io_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pqi_process_aio_io_error(%struct.pqi_io_request* %0) #0 {
  %2 = alloca %struct.pqi_io_request*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.pqi_aio_error_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pqi_io_request* %0, %struct.pqi_io_request** %2, align 8
  %11 = load %struct.pqi_io_request*, %struct.pqi_io_request** %2, align 8
  %12 = getelementptr inbounds %struct.pqi_io_request, %struct.pqi_io_request* %11, i32 0, i32 3
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %12, align 8
  store %struct.scsi_cmnd* %13, %struct.scsi_cmnd** %5, align 8
  %14 = load %struct.pqi_io_request*, %struct.pqi_io_request** %2, align 8
  %15 = getelementptr inbounds %struct.pqi_io_request, %struct.pqi_io_request* %14, i32 0, i32 2
  %16 = load %struct.pqi_aio_error_info*, %struct.pqi_aio_error_info** %15, align 8
  store %struct.pqi_aio_error_info* %16, %struct.pqi_aio_error_info** %6, align 8
  %17 = load i32, i32* @DID_OK, align 4
  store i32 %17, i32* %4, align 4
  store i64 0, i64* %7, align 8
  store i32 0, i32* %10, align 4
  %18 = load %struct.pqi_aio_error_info*, %struct.pqi_aio_error_info** %6, align 8
  %19 = getelementptr inbounds %struct.pqi_aio_error_info, %struct.pqi_aio_error_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %81 [
    i32 140, label %21
    i32 139, label %25
    i32 138, label %78
    i32 135, label %78
    i32 136, label %80
    i32 137, label %80
  ]

21:                                               ; preds = %1
  %22 = load %struct.pqi_aio_error_info*, %struct.pqi_aio_error_info** %6, align 8
  %23 = getelementptr inbounds %struct.pqi_aio_error_info, %struct.pqi_aio_error_info* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %3, align 4
  br label %83

25:                                               ; preds = %1
  %26 = load %struct.pqi_aio_error_info*, %struct.pqi_aio_error_info** %6, align 8
  %27 = getelementptr inbounds %struct.pqi_aio_error_info, %struct.pqi_aio_error_info* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %75 [
    i32 132, label %29
    i32 128, label %31
    i32 129, label %51
    i32 134, label %53
    i32 130, label %61
    i32 133, label %61
    i32 131, label %74
  ]

29:                                               ; preds = %25
  %30 = load i32, i32* @SAM_STAT_TASK_ABORTED, align 4
  store i32 %30, i32* %3, align 4
  br label %77

31:                                               ; preds = %25
  %32 = load i32, i32* @SAM_STAT_GOOD, align 4
  store i32 %32, i32* %3, align 4
  %33 = load %struct.pqi_aio_error_info*, %struct.pqi_aio_error_info** %6, align 8
  %34 = getelementptr inbounds %struct.pqi_aio_error_info, %struct.pqi_aio_error_info* %33, i32 0, i32 4
  %35 = call i32 @get_unaligned_le32(i32* %34)
  store i32 %35, i32* %8, align 4
  %36 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %36, i32 %37)
  %39 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %40 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %39)
  %41 = load i32, i32* %8, align 4
  %42 = sub nsw i32 %40, %41
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %45 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %31
  %49 = load i32, i32* @DID_SOFT_ERROR, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %48, %31
  br label %77

51:                                               ; preds = %25
  %52 = load i32, i32* @SAM_STAT_GOOD, align 4
  store i32 %52, i32* %3, align 4
  br label %77

53:                                               ; preds = %25
  %54 = load %struct.pqi_io_request*, %struct.pqi_io_request** %2, align 8
  %55 = call i32 @pqi_aio_path_disabled(%struct.pqi_io_request* %54)
  %56 = load i32, i32* @SAM_STAT_GOOD, align 4
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* @EAGAIN, align 4
  %58 = sub nsw i32 0, %57
  %59 = load %struct.pqi_io_request*, %struct.pqi_io_request** %2, align 8
  %60 = getelementptr inbounds %struct.pqi_io_request, %struct.pqi_io_request* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  br label %77

61:                                               ; preds = %25, %25
  %62 = load %struct.pqi_io_request*, %struct.pqi_io_request** %2, align 8
  %63 = getelementptr inbounds %struct.pqi_io_request, %struct.pqi_io_request* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %61
  store i32 1, i32* %10, align 4
  %67 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %68 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @pqi_take_device_offline(i32 %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %71 = load i32, i32* @DID_NO_CONNECT, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %66, %61
  %73 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  store i32 %73, i32* %3, align 4
  br label %77

74:                                               ; preds = %25
  br label %75

75:                                               ; preds = %25, %74
  %76 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %75, %72, %53, %51, %50, %29
  br label %83

78:                                               ; preds = %1, %1
  %79 = load i32, i32* @SAM_STAT_GOOD, align 4
  store i32 %79, i32* %3, align 4
  br label %83

80:                                               ; preds = %1, %1
  br label %81

81:                                               ; preds = %1, %80
  %82 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %81, %78, %77, %21
  %84 = load %struct.pqi_aio_error_info*, %struct.pqi_aio_error_info** %6, align 8
  %85 = getelementptr inbounds %struct.pqi_aio_error_info, %struct.pqi_aio_error_info* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %114

88:                                               ; preds = %83
  %89 = load %struct.pqi_aio_error_info*, %struct.pqi_aio_error_info** %6, align 8
  %90 = getelementptr inbounds %struct.pqi_aio_error_info, %struct.pqi_aio_error_info* %89, i32 0, i32 2
  %91 = call i64 @get_unaligned_le16(i32* %90)
  store i64 %91, i64* %7, align 8
  %92 = load i64, i64* %7, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %113

94:                                               ; preds = %88
  %95 = load i64, i64* %7, align 8
  %96 = icmp ugt i64 %95, 4
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  store i64 4, i64* %7, align 8
  br label %98

98:                                               ; preds = %97, %94
  %99 = load i64, i64* %7, align 8
  %100 = load i64, i64* @SCSI_SENSE_BUFFERSIZE, align 8
  %101 = icmp ugt i64 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  %103 = load i64, i64* @SCSI_SENSE_BUFFERSIZE, align 8
  store i64 %103, i64* %7, align 8
  br label %104

104:                                              ; preds = %102, %98
  %105 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %106 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.pqi_aio_error_info*, %struct.pqi_aio_error_info** %6, align 8
  %109 = getelementptr inbounds %struct.pqi_aio_error_info, %struct.pqi_aio_error_info* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i64, i64* %7, align 8
  %112 = call i32 @memcpy(i32 %107, i32 %110, i64 %111)
  br label %113

113:                                              ; preds = %104, %88
  br label %114

114:                                              ; preds = %113, %83
  %115 = load i32, i32* %10, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %114
  %118 = load i64, i64* %7, align 8
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %117
  %121 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %122 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @HARDWARE_ERROR, align 4
  %125 = call i32 @scsi_build_sense_buffer(i32 0, i32 %123, i32 %124, i32 62, i32 1)
  br label %126

126:                                              ; preds = %120, %117, %114
  %127 = load i32, i32* %3, align 4
  %128 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %129 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 4
  %130 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %131 = load i32, i32* %4, align 4
  %132 = call i32 @set_host_byte(%struct.scsi_cmnd* %130, i32 %131)
  ret void
}

declare dso_local i32 @get_unaligned_le32(i32*) #1

declare dso_local i32 @scsi_set_resid(%struct.scsi_cmnd*, i32) #1

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @pqi_aio_path_disabled(%struct.pqi_io_request*) #1

declare dso_local i32 @pqi_take_device_offline(i32, i8*) #1

declare dso_local i64 @get_unaligned_le16(i32*) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @scsi_build_sense_buffer(i32, i32, i32, i32, i32) #1

declare dso_local i32 @set_host_byte(%struct.scsi_cmnd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
