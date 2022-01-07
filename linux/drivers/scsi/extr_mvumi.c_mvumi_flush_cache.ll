; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_flush_cache.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_flush_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvumi_hba = type { i8, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mvumi_cmd = type { i64, %struct.mvumi_msg_frame*, i32, i32* }
%struct.mvumi_msg_frame = type { i8, i32*, i32, i64, i32, i32 }

@.str = private unnamed_addr constant [64 x i8] c"failed to get memory for internal flush cache cmd for device %d\00", align 1
@REQ_STATUS_PENDING = common dso_local global i64 0, align 8
@CL_FUN_SCSI_CMD = common dso_local global i32 0, align 4
@CMD_FLAG_NON_DATA = common dso_local global i32 0, align 4
@MAX_COMMAND_SIZE = common dso_local global i32 0, align 4
@SCSI_CMD_MARVELL_SPECIFIC = common dso_local global i32 0, align 4
@CDB_CORE_MODULE = common dso_local global i32 0, align 4
@CDB_CORE_SHUTDOWN = common dso_local global i32 0, align 4
@SAM_STAT_GOOD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"device %d flush cache failed, status=0x%x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.mvumi_hba*)* @mvumi_flush_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @mvumi_flush_cache(%struct.mvumi_hba* %0) #0 {
  %2 = alloca %struct.mvumi_hba*, align 8
  %3 = alloca %struct.mvumi_cmd*, align 8
  %4 = alloca %struct.mvumi_msg_frame*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store %struct.mvumi_hba* %0, %struct.mvumi_hba** %2, align 8
  store i8 0, i8* %6, align 1
  store i8 8, i8* %7, align 1
  store i8 0, i8* %5, align 1
  br label %8

8:                                                ; preds = %124, %1
  %9 = load i8, i8* %5, align 1
  %10 = zext i8 %9 to i32
  %11 = load %struct.mvumi_hba*, %struct.mvumi_hba** %2, align 8
  %12 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %11, i32 0, i32 0
  %13 = load i8, i8* %12, align 8
  %14 = zext i8 %13 to i32
  %15 = icmp slt i32 %10, %14
  br i1 %15, label %16, label %127

16:                                               ; preds = %8
  %17 = load %struct.mvumi_hba*, %struct.mvumi_hba** %2, align 8
  %18 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i8, i8* %5, align 1
  %21 = zext i8 %20 to i32
  %22 = load i8, i8* %7, align 1
  %23 = zext i8 %22 to i32
  %24 = sdiv i32 %21, %23
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %19, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i8, i8* %5, align 1
  %29 = zext i8 %28 to i32
  %30 = load i8, i8* %7, align 1
  %31 = zext i8 %30 to i32
  %32 = srem i32 %29, %31
  %33 = shl i32 1, %32
  %34 = and i32 %27, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %16
  br label %124

37:                                               ; preds = %16
  br label %38

38:                                               ; preds = %55, %37
  %39 = load %struct.mvumi_hba*, %struct.mvumi_hba** %2, align 8
  %40 = call %struct.mvumi_cmd* @mvumi_create_internal_cmd(%struct.mvumi_hba* %39, i32 0)
  store %struct.mvumi_cmd* %40, %struct.mvumi_cmd** %3, align 8
  %41 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %3, align 8
  %42 = icmp ne %struct.mvumi_cmd* %41, null
  br i1 %42, label %56, label %43

43:                                               ; preds = %38
  %44 = load i8, i8* %6, align 1
  %45 = add i8 %44, 1
  store i8 %45, i8* %6, align 1
  %46 = zext i8 %44 to i32
  %47 = icmp sge i32 %46, 5
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load %struct.mvumi_hba*, %struct.mvumi_hba** %2, align 8
  %50 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %49, i32 0, i32 2
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i8, i8* %5, align 1
  %54 = call i32 (i32*, i8*, i8, ...) @dev_err(i32* %52, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i8 zeroext %53)
  store i8 0, i8* %6, align 1
  br label %124

55:                                               ; preds = %43
  br label %38

56:                                               ; preds = %38
  %57 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %3, align 8
  %58 = getelementptr inbounds %struct.mvumi_cmd, %struct.mvumi_cmd* %57, i32 0, i32 3
  store i32* null, i32** %58, align 8
  %59 = load i64, i64* @REQ_STATUS_PENDING, align 8
  %60 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %3, align 8
  %61 = getelementptr inbounds %struct.mvumi_cmd, %struct.mvumi_cmd* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %3, align 8
  %63 = getelementptr inbounds %struct.mvumi_cmd, %struct.mvumi_cmd* %62, i32 0, i32 2
  %64 = call i32 @atomic_set(i32* %63, i32 0)
  %65 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %3, align 8
  %66 = getelementptr inbounds %struct.mvumi_cmd, %struct.mvumi_cmd* %65, i32 0, i32 1
  %67 = load %struct.mvumi_msg_frame*, %struct.mvumi_msg_frame** %66, align 8
  store %struct.mvumi_msg_frame* %67, %struct.mvumi_msg_frame** %4, align 8
  %68 = load i32, i32* @CL_FUN_SCSI_CMD, align 4
  %69 = load %struct.mvumi_msg_frame*, %struct.mvumi_msg_frame** %4, align 8
  %70 = getelementptr inbounds %struct.mvumi_msg_frame, %struct.mvumi_msg_frame* %69, i32 0, i32 5
  store i32 %68, i32* %70, align 4
  %71 = load i8, i8* %5, align 1
  %72 = load %struct.mvumi_msg_frame*, %struct.mvumi_msg_frame** %4, align 8
  %73 = getelementptr inbounds %struct.mvumi_msg_frame, %struct.mvumi_msg_frame* %72, i32 0, i32 0
  store i8 %71, i8* %73, align 8
  %74 = load i32, i32* @CMD_FLAG_NON_DATA, align 4
  %75 = load %struct.mvumi_msg_frame*, %struct.mvumi_msg_frame** %4, align 8
  %76 = getelementptr inbounds %struct.mvumi_msg_frame, %struct.mvumi_msg_frame* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 8
  %77 = load %struct.mvumi_msg_frame*, %struct.mvumi_msg_frame** %4, align 8
  %78 = getelementptr inbounds %struct.mvumi_msg_frame, %struct.mvumi_msg_frame* %77, i32 0, i32 3
  store i64 0, i64* %78, align 8
  %79 = load i32, i32* @MAX_COMMAND_SIZE, align 4
  %80 = load %struct.mvumi_msg_frame*, %struct.mvumi_msg_frame** %4, align 8
  %81 = getelementptr inbounds %struct.mvumi_msg_frame, %struct.mvumi_msg_frame* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  %82 = load %struct.mvumi_msg_frame*, %struct.mvumi_msg_frame** %4, align 8
  %83 = getelementptr inbounds %struct.mvumi_msg_frame, %struct.mvumi_msg_frame* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* @MAX_COMMAND_SIZE, align 4
  %86 = call i32 @memset(i32* %84, i32 0, i32 %85)
  %87 = load i32, i32* @SCSI_CMD_MARVELL_SPECIFIC, align 4
  %88 = load %struct.mvumi_msg_frame*, %struct.mvumi_msg_frame** %4, align 8
  %89 = getelementptr inbounds %struct.mvumi_msg_frame, %struct.mvumi_msg_frame* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  store i32 %87, i32* %91, align 4
  %92 = load i32, i32* @CDB_CORE_MODULE, align 4
  %93 = load %struct.mvumi_msg_frame*, %struct.mvumi_msg_frame** %4, align 8
  %94 = getelementptr inbounds %struct.mvumi_msg_frame, %struct.mvumi_msg_frame* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 1
  store i32 %92, i32* %96, align 4
  %97 = load i32, i32* @CDB_CORE_SHUTDOWN, align 4
  %98 = load %struct.mvumi_msg_frame*, %struct.mvumi_msg_frame** %4, align 8
  %99 = getelementptr inbounds %struct.mvumi_msg_frame, %struct.mvumi_msg_frame* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 2
  store i32 %97, i32* %101, align 4
  %102 = load %struct.mvumi_hba*, %struct.mvumi_hba** %2, align 8
  %103 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %3, align 8
  %104 = call i32 @mvumi_issue_blocked_cmd(%struct.mvumi_hba* %102, %struct.mvumi_cmd* %103)
  %105 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %3, align 8
  %106 = getelementptr inbounds %struct.mvumi_cmd, %struct.mvumi_cmd* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @SAM_STAT_GOOD, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %120

110:                                              ; preds = %56
  %111 = load %struct.mvumi_hba*, %struct.mvumi_hba** %2, align 8
  %112 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %111, i32 0, i32 2
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i8, i8* %5, align 1
  %116 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %3, align 8
  %117 = getelementptr inbounds %struct.mvumi_cmd, %struct.mvumi_cmd* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = call i32 (i32*, i8*, i8, ...) @dev_err(i32* %114, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %115, i64 %118)
  br label %120

120:                                              ; preds = %110, %56
  %121 = load %struct.mvumi_hba*, %struct.mvumi_hba** %2, align 8
  %122 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %3, align 8
  %123 = call i32 @mvumi_delete_internal_cmd(%struct.mvumi_hba* %121, %struct.mvumi_cmd* %122)
  br label %124

124:                                              ; preds = %120, %48, %36
  %125 = load i8, i8* %5, align 1
  %126 = add i8 %125, 1
  store i8 %126, i8* %5, align 1
  br label %8

127:                                              ; preds = %8
  ret i8 0
}

declare dso_local %struct.mvumi_cmd* @mvumi_create_internal_cmd(%struct.mvumi_hba*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i8 zeroext, ...) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @mvumi_issue_blocked_cmd(%struct.mvumi_hba*, %struct.mvumi_cmd*) #1

declare dso_local i32 @mvumi_delete_internal_cmd(%struct.mvumi_hba*, %struct.mvumi_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
