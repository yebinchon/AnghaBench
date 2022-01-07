; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_handle_init_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_handle_init_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_info = type { i32, i32 }

@ADAPT_SUCCESS = common dso_local global i64 0, align 8
@INIT_COMPLETE_MSG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"init_msg: failed to send, rc %ld\0A\00", align 1
@ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"init_msg: invalid state %d to get init msg\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.scsi_info*)* @ibmvscsis_handle_init_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ibmvscsis_handle_init_msg(%struct.scsi_info* %0) #0 {
  %2 = alloca %struct.scsi_info*, align 8
  %3 = alloca i64, align 8
  store %struct.scsi_info* %0, %struct.scsi_info** %2, align 8
  %4 = load i64, i64* @ADAPT_SUCCESS, align 8
  store i64 %4, i64* %3, align 8
  %5 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %6 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %41 [
    i32 130, label %8
    i32 131, label %37
    i32 132, label %39
    i32 129, label %40
    i32 142, label %40
    i32 133, label %40
    i32 128, label %40
    i32 134, label %40
    i32 141, label %40
    i32 139, label %40
    i32 140, label %40
  ]

8:                                                ; preds = %1
  %9 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %10 = load i32, i32* @INIT_COMPLETE_MSG, align 4
  %11 = call i64 @ibmvscsis_send_init_message(%struct.scsi_info* %9, i32 %10)
  store i64 %11, i64* %3, align 8
  %12 = load i64, i64* %3, align 8
  switch i64 %12, label %36 [
    i64 135, label %13
    i64 136, label %16
    i64 137, label %23
    i64 138, label %31
  ]

13:                                               ; preds = %8
  %14 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %15 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %14, i32 0, i32 0
  store i32 142, i32* %15, align 4
  br label %36

16:                                               ; preds = %8
  %17 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %18 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %17, i32 0, i32 1
  %19 = load i64, i64* %3, align 8
  %20 = call i32 @dev_err(i32* %18, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %22 = call i32 @ibmvscsis_post_disconnect(%struct.scsi_info* %21, i32 141, i32 0)
  br label %36

23:                                               ; preds = %8
  %24 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %25 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %24, i32 0, i32 1
  %26 = load i64, i64* %3, align 8
  %27 = call i32 @dev_err(i32* %25, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %26)
  %28 = load i64, i64* @ERROR, align 8
  store i64 %28, i64* %3, align 8
  %29 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %30 = call i32 @ibmvscsis_post_disconnect(%struct.scsi_info* %29, i32 139, i32 0)
  br label %36

31:                                               ; preds = %8
  %32 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %33 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %32, i32 0, i32 1
  %34 = load i64, i64* %3, align 8
  %35 = call i32 @dev_warn(i32* %33, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %34)
  store i64 0, i64* %3, align 8
  br label %36

36:                                               ; preds = %8, %31, %23, %16, %13
  br label %52

37:                                               ; preds = %1
  %38 = load i64, i64* @ERROR, align 8
  store i64 %38, i64* %3, align 8
  br label %52

39:                                               ; preds = %1
  br label %52

40:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1
  br label %41

41:                                               ; preds = %1, %40
  %42 = load i64, i64* @ERROR, align 8
  store i64 %42, i64* %3, align 8
  %43 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %44 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %43, i32 0, i32 1
  %45 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %46 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = call i32 @dev_err(i32* %44, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %48)
  %50 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %51 = call i32 @ibmvscsis_post_disconnect(%struct.scsi_info* %50, i32 139, i32 0)
  br label %52

52:                                               ; preds = %41, %39, %37, %36
  %53 = load i64, i64* %3, align 8
  ret i64 %53
}

declare dso_local i64 @ibmvscsis_send_init_message(%struct.scsi_info*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i32 @ibmvscsis_post_disconnect(%struct.scsi_info*, i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
