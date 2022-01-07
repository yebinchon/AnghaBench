; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_handle_init_compl_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_handle_init_compl_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_info = type { i32, i32 }

@ADAPT_SUCCESS = common dso_local global i64 0, align 8
@ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"init_msg: invalid state %d to get init compl msg\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.scsi_info*)* @ibmvscsis_handle_init_compl_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ibmvscsis_handle_init_compl_msg(%struct.scsi_info* %0) #0 {
  %2 = alloca %struct.scsi_info*, align 8
  %3 = alloca i64, align 8
  store %struct.scsi_info* %0, %struct.scsi_info** %2, align 8
  %4 = load i64, i64* @ADAPT_SUCCESS, align 8
  store i64 %4, i64* %3, align 8
  %5 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %6 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %14 [
    i32 134, label %8
    i32 137, label %8
    i32 135, label %8
    i32 136, label %8
    i32 132, label %8
    i32 131, label %8
    i32 130, label %10
    i32 128, label %13
    i32 133, label %13
    i32 138, label %13
    i32 129, label %13
  ]

8:                                                ; preds = %1, %1, %1, %1, %1, %1
  %9 = load i64, i64* @ERROR, align 8
  store i64 %9, i64* %3, align 8
  br label %24

10:                                               ; preds = %1
  %11 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %12 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %11, i32 0, i32 0
  store i32 138, i32* %12, align 4
  br label %24

13:                                               ; preds = %1, %1, %1, %1
  br label %14

14:                                               ; preds = %1, %13
  %15 = load i64, i64* @ERROR, align 8
  store i64 %15, i64* %3, align 8
  %16 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %17 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %16, i32 0, i32 1
  %18 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %19 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @dev_err(i32* %17, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %23 = call i32 @ibmvscsis_post_disconnect(%struct.scsi_info* %22, i32 135, i32 0)
  br label %24

24:                                               ; preds = %14, %10, %8
  %25 = load i64, i64* %3, align 8
  ret i64 %25
}

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @ibmvscsis_post_disconnect(%struct.scsi_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
