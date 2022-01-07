; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_get_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_get_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvumi_hba = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mvumi_cmd = type { i64, i32, %struct.mvumi_msg_frame*, i32, i32* }
%struct.mvumi_msg_frame = type { i32, i8*, i32, i32, i32, i64 }

@REQ_STATUS_PENDING = common dso_local global i64 0, align 8
@CMD_FLAG_DATA_IN = common dso_local global i32 0, align 4
@CL_FUN_SCSI_CMD = common dso_local global i32 0, align 4
@MAX_COMMAND_SIZE = common dso_local global i32 0, align 4
@APICDB0_EVENT = common dso_local global i8 0, align 1
@SAM_STAT_GOOD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"get event failed, status=0x%x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvumi_hba*, i8)* @mvumi_get_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvumi_get_event(%struct.mvumi_hba* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mvumi_hba*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.mvumi_cmd*, align 8
  %7 = alloca %struct.mvumi_msg_frame*, align 8
  store %struct.mvumi_hba* %0, %struct.mvumi_hba** %4, align 8
  store i8 %1, i8* %5, align 1
  %8 = load %struct.mvumi_hba*, %struct.mvumi_hba** %4, align 8
  %9 = call %struct.mvumi_cmd* @mvumi_create_internal_cmd(%struct.mvumi_hba* %8, i32 512)
  store %struct.mvumi_cmd* %9, %struct.mvumi_cmd** %6, align 8
  %10 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %6, align 8
  %11 = icmp ne %struct.mvumi_cmd* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %87

13:                                               ; preds = %2
  %14 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %6, align 8
  %15 = getelementptr inbounds %struct.mvumi_cmd, %struct.mvumi_cmd* %14, i32 0, i32 4
  store i32* null, i32** %15, align 8
  %16 = load i64, i64* @REQ_STATUS_PENDING, align 8
  %17 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %6, align 8
  %18 = getelementptr inbounds %struct.mvumi_cmd, %struct.mvumi_cmd* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %6, align 8
  %20 = getelementptr inbounds %struct.mvumi_cmd, %struct.mvumi_cmd* %19, i32 0, i32 3
  %21 = call i32 @atomic_set(i32* %20, i32 0)
  %22 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %6, align 8
  %23 = getelementptr inbounds %struct.mvumi_cmd, %struct.mvumi_cmd* %22, i32 0, i32 2
  %24 = load %struct.mvumi_msg_frame*, %struct.mvumi_msg_frame** %23, align 8
  store %struct.mvumi_msg_frame* %24, %struct.mvumi_msg_frame** %7, align 8
  %25 = load %struct.mvumi_msg_frame*, %struct.mvumi_msg_frame** %7, align 8
  %26 = getelementptr inbounds %struct.mvumi_msg_frame, %struct.mvumi_msg_frame* %25, i32 0, i32 5
  store i64 0, i64* %26, align 8
  %27 = load i32, i32* @CMD_FLAG_DATA_IN, align 4
  %28 = load %struct.mvumi_msg_frame*, %struct.mvumi_msg_frame** %7, align 8
  %29 = getelementptr inbounds %struct.mvumi_msg_frame, %struct.mvumi_msg_frame* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* @CL_FUN_SCSI_CMD, align 4
  %31 = load %struct.mvumi_msg_frame*, %struct.mvumi_msg_frame** %7, align 8
  %32 = getelementptr inbounds %struct.mvumi_msg_frame, %struct.mvumi_msg_frame* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @MAX_COMMAND_SIZE, align 4
  %34 = load %struct.mvumi_msg_frame*, %struct.mvumi_msg_frame** %7, align 8
  %35 = getelementptr inbounds %struct.mvumi_msg_frame, %struct.mvumi_msg_frame* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.mvumi_msg_frame*, %struct.mvumi_msg_frame** %7, align 8
  %37 = getelementptr inbounds %struct.mvumi_msg_frame, %struct.mvumi_msg_frame* %36, i32 0, i32 0
  store i32 4, i32* %37, align 8
  %38 = load %struct.mvumi_msg_frame*, %struct.mvumi_msg_frame** %7, align 8
  %39 = getelementptr inbounds %struct.mvumi_msg_frame, %struct.mvumi_msg_frame* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = load i32, i32* @MAX_COMMAND_SIZE, align 4
  %42 = call i32 @memset(i8* %40, i32 0, i32 %41)
  %43 = load i8, i8* @APICDB0_EVENT, align 1
  %44 = load %struct.mvumi_msg_frame*, %struct.mvumi_msg_frame** %7, align 8
  %45 = getelementptr inbounds %struct.mvumi_msg_frame, %struct.mvumi_msg_frame* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  store i8 %43, i8* %47, align 1
  %48 = load i8, i8* %5, align 1
  %49 = load %struct.mvumi_msg_frame*, %struct.mvumi_msg_frame** %7, align 8
  %50 = getelementptr inbounds %struct.mvumi_msg_frame, %struct.mvumi_msg_frame* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  store i8 %48, i8* %52, align 1
  %53 = load %struct.mvumi_hba*, %struct.mvumi_hba** %4, align 8
  %54 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %6, align 8
  %55 = call i32 @mvumi_issue_blocked_cmd(%struct.mvumi_hba* %53, %struct.mvumi_cmd* %54)
  %56 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %6, align 8
  %57 = getelementptr inbounds %struct.mvumi_cmd, %struct.mvumi_cmd* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @SAM_STAT_GOOD, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %13
  %62 = load %struct.mvumi_hba*, %struct.mvumi_hba** %4, align 8
  %63 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %6, align 8
  %67 = getelementptr inbounds %struct.mvumi_cmd, %struct.mvumi_cmd* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @dev_err(i32* %65, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %68)
  br label %83

70:                                               ; preds = %13
  %71 = load %struct.mvumi_hba*, %struct.mvumi_hba** %4, align 8
  %72 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %6, align 8
  %73 = getelementptr inbounds %struct.mvumi_cmd, %struct.mvumi_cmd* %72, i32 0, i32 2
  %74 = load %struct.mvumi_msg_frame*, %struct.mvumi_msg_frame** %73, align 8
  %75 = getelementptr inbounds %struct.mvumi_msg_frame, %struct.mvumi_msg_frame* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 1
  %78 = load i8, i8* %77, align 1
  %79 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %6, align 8
  %80 = getelementptr inbounds %struct.mvumi_cmd, %struct.mvumi_cmd* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @mvumi_notification(%struct.mvumi_hba* %71, i8 zeroext %78, i32 %81)
  br label %83

83:                                               ; preds = %70, %61
  %84 = load %struct.mvumi_hba*, %struct.mvumi_hba** %4, align 8
  %85 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %6, align 8
  %86 = call i32 @mvumi_delete_internal_cmd(%struct.mvumi_hba* %84, %struct.mvumi_cmd* %85)
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %83, %12
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local %struct.mvumi_cmd* @mvumi_create_internal_cmd(%struct.mvumi_hba*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @mvumi_issue_blocked_cmd(%struct.mvumi_hba*, %struct.mvumi_cmd*) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i32 @mvumi_notification(%struct.mvumi_hba*, i8 zeroext, i32) #1

declare dso_local i32 @mvumi_delete_internal_cmd(%struct.mvumi_hba*, %struct.mvumi_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
