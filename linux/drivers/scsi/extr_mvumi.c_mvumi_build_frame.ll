; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_build_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_build_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvumi_hba = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.scsi_cmnd = type { i32, i32, i32, i32*, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }
%struct.mvumi_cmd = type { %struct.mvumi_msg_frame*, i32, %struct.scsi_cmnd* }
%struct.mvumi_msg_frame = type { i16, i64, i64, i32*, i32, i32, i32, i64 }

@REQ_STATUS_PENDING = common dso_local global i32 0, align 4
@CMD_FLAG_NON_DATA = common dso_local global i64 0, align 8
@CMD_FLAG_DATA_IN = common dso_local global i64 0, align 8
@CMD_FLAG_DATA_OUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"unexpected data direction[%d] cmd[0x%x]\0A\00", align 1
@CL_FUN_SCSI_CMD = common dso_local global i32 0, align 4
@DID_OK = common dso_local global i32 0, align 4
@DRIVER_SENSE = common dso_local global i32 0, align 4
@SAM_STAT_CHECK_CONDITION = common dso_local global i32 0, align 4
@ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.mvumi_hba*, %struct.scsi_cmnd*, %struct.mvumi_cmd*)* @mvumi_build_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @mvumi_build_frame(%struct.mvumi_hba* %0, %struct.scsi_cmnd* %1, %struct.mvumi_cmd* %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca %struct.mvumi_hba*, align 8
  %6 = alloca %struct.scsi_cmnd*, align 8
  %7 = alloca %struct.mvumi_cmd*, align 8
  %8 = alloca %struct.mvumi_msg_frame*, align 8
  store %struct.mvumi_hba* %0, %struct.mvumi_hba** %5, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %6, align 8
  store %struct.mvumi_cmd* %2, %struct.mvumi_cmd** %7, align 8
  %9 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %10 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %7, align 8
  %11 = getelementptr inbounds %struct.mvumi_cmd, %struct.mvumi_cmd* %10, i32 0, i32 2
  store %struct.scsi_cmnd* %9, %struct.scsi_cmnd** %11, align 8
  %12 = load i32, i32* @REQ_STATUS_PENDING, align 4
  %13 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %7, align 8
  %14 = getelementptr inbounds %struct.mvumi_cmd, %struct.mvumi_cmd* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 8
  %15 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %7, align 8
  %16 = getelementptr inbounds %struct.mvumi_cmd, %struct.mvumi_cmd* %15, i32 0, i32 0
  %17 = load %struct.mvumi_msg_frame*, %struct.mvumi_msg_frame** %16, align 8
  store %struct.mvumi_msg_frame* %17, %struct.mvumi_msg_frame** %8, align 8
  %18 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %19 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %18, i32 0, i32 5
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i16
  %24 = zext i16 %23 to i32
  %25 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %26 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %25, i32 0, i32 5
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i16
  %31 = zext i16 %30 to i32
  %32 = shl i32 %31, 8
  %33 = or i32 %24, %32
  %34 = trunc i32 %33 to i16
  %35 = load %struct.mvumi_msg_frame*, %struct.mvumi_msg_frame** %8, align 8
  %36 = getelementptr inbounds %struct.mvumi_msg_frame, %struct.mvumi_msg_frame* %35, i32 0, i32 0
  store i16 %34, i16* %36, align 8
  %37 = load %struct.mvumi_msg_frame*, %struct.mvumi_msg_frame** %8, align 8
  %38 = getelementptr inbounds %struct.mvumi_msg_frame, %struct.mvumi_msg_frame* %37, i32 0, i32 7
  store i64 0, i64* %38, align 8
  %39 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %40 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  switch i32 %41, label %61 [
    i32 129, label %42
    i32 130, label %48
    i32 128, label %54
    i32 131, label %60
  ]

42:                                               ; preds = %3
  %43 = load i64, i64* @CMD_FLAG_NON_DATA, align 8
  %44 = load %struct.mvumi_msg_frame*, %struct.mvumi_msg_frame** %8, align 8
  %45 = getelementptr inbounds %struct.mvumi_msg_frame, %struct.mvumi_msg_frame* %44, i32 0, i32 7
  %46 = load i64, i64* %45, align 8
  %47 = or i64 %46, %43
  store i64 %47, i64* %45, align 8
  br label %75

48:                                               ; preds = %3
  %49 = load i64, i64* @CMD_FLAG_DATA_IN, align 8
  %50 = load %struct.mvumi_msg_frame*, %struct.mvumi_msg_frame** %8, align 8
  %51 = getelementptr inbounds %struct.mvumi_msg_frame, %struct.mvumi_msg_frame* %50, i32 0, i32 7
  %52 = load i64, i64* %51, align 8
  %53 = or i64 %52, %49
  store i64 %53, i64* %51, align 8
  br label %75

54:                                               ; preds = %3
  %55 = load i64, i64* @CMD_FLAG_DATA_OUT, align 8
  %56 = load %struct.mvumi_msg_frame*, %struct.mvumi_msg_frame** %8, align 8
  %57 = getelementptr inbounds %struct.mvumi_msg_frame, %struct.mvumi_msg_frame* %56, i32 0, i32 7
  %58 = load i64, i64* %57, align 8
  %59 = or i64 %58, %55
  store i64 %59, i64* %57, align 8
  br label %75

60:                                               ; preds = %3
  br label %61

61:                                               ; preds = %3, %60
  %62 = load %struct.mvumi_hba*, %struct.mvumi_hba** %5, align 8
  %63 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %67 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %70 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %69, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @dev_warn(i32* %65, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %68, i32 %73)
  br label %120

75:                                               ; preds = %54, %48, %42
  %76 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %77 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.mvumi_msg_frame*, %struct.mvumi_msg_frame** %8, align 8
  %80 = getelementptr inbounds %struct.mvumi_msg_frame, %struct.mvumi_msg_frame* %79, i32 0, i32 5
  store i32 %78, i32* %80, align 4
  %81 = load %struct.mvumi_msg_frame*, %struct.mvumi_msg_frame** %8, align 8
  %82 = getelementptr inbounds %struct.mvumi_msg_frame, %struct.mvumi_msg_frame* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %85 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.mvumi_msg_frame*, %struct.mvumi_msg_frame** %8, align 8
  %88 = getelementptr inbounds %struct.mvumi_msg_frame, %struct.mvumi_msg_frame* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @memcpy(i32 %83, i32* %86, i32 %89)
  %91 = load i32, i32* @CL_FUN_SCSI_CMD, align 4
  %92 = load %struct.mvumi_msg_frame*, %struct.mvumi_msg_frame** %8, align 8
  %93 = getelementptr inbounds %struct.mvumi_msg_frame, %struct.mvumi_msg_frame* %92, i32 0, i32 4
  store i32 %91, i32* %93, align 8
  %94 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %95 = call i64 @scsi_bufflen(%struct.scsi_cmnd* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %114

97:                                               ; preds = %75
  %98 = load %struct.mvumi_hba*, %struct.mvumi_hba** %5, align 8
  %99 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %100 = load %struct.mvumi_msg_frame*, %struct.mvumi_msg_frame** %8, align 8
  %101 = getelementptr inbounds %struct.mvumi_msg_frame, %struct.mvumi_msg_frame* %100, i32 0, i32 3
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  %104 = load %struct.mvumi_msg_frame*, %struct.mvumi_msg_frame** %8, align 8
  %105 = getelementptr inbounds %struct.mvumi_msg_frame, %struct.mvumi_msg_frame* %104, i32 0, i32 2
  %106 = call i64 @mvumi_make_sgl(%struct.mvumi_hba* %98, %struct.scsi_cmnd* %99, i32* %103, i64* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %97
  br label %120

109:                                              ; preds = %97
  %110 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %111 = call i64 @scsi_bufflen(%struct.scsi_cmnd* %110)
  %112 = load %struct.mvumi_msg_frame*, %struct.mvumi_msg_frame** %8, align 8
  %113 = getelementptr inbounds %struct.mvumi_msg_frame, %struct.mvumi_msg_frame* %112, i32 0, i32 1
  store i64 %111, i64* %113, align 8
  br label %119

114:                                              ; preds = %75
  %115 = load %struct.mvumi_msg_frame*, %struct.mvumi_msg_frame** %8, align 8
  %116 = getelementptr inbounds %struct.mvumi_msg_frame, %struct.mvumi_msg_frame* %115, i32 0, i32 2
  store i64 0, i64* %116, align 8
  %117 = load %struct.mvumi_msg_frame*, %struct.mvumi_msg_frame** %8, align 8
  %118 = getelementptr inbounds %struct.mvumi_msg_frame, %struct.mvumi_msg_frame* %117, i32 0, i32 1
  store i64 0, i64* %118, align 8
  br label %119

119:                                              ; preds = %114, %109
  store i8 0, i8* %4, align 1
  br label %135

120:                                              ; preds = %108, %61
  %121 = load i32, i32* @DID_OK, align 4
  %122 = shl i32 %121, 16
  %123 = load i32, i32* @DRIVER_SENSE, align 4
  %124 = shl i32 %123, 24
  %125 = or i32 %122, %124
  %126 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %127 = or i32 %125, %126
  %128 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %129 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 4
  %130 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %131 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %134 = call i32 @scsi_build_sense_buffer(i32 0, i32 %132, i32 %133, i32 36, i32 0)
  store i8 -1, i8* %4, align 1
  br label %135

135:                                              ; preds = %120, %119
  %136 = load i8, i8* %4, align 1
  ret i8 %136
}

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i64 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i64 @mvumi_make_sgl(%struct.mvumi_hba*, %struct.scsi_cmnd*, i32*, i64*) #1

declare dso_local i32 @scsi_build_sense_buffer(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
