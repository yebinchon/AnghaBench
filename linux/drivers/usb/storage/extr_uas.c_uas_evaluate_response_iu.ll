; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_uas.c_uas_evaluate_response_iu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_uas.c_uas_evaluate_response_iu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.response_iu = type { i32 }
%struct.scsi_cmnd = type { i32 }

@DID_BAD_TARGET = common dso_local global i32 0, align 4
@DID_OK = common dso_local global i32 0, align 4
@DID_TARGET_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"response iu\00", align 1
@DID_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.response_iu*, %struct.scsi_cmnd*)* @uas_evaluate_response_iu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uas_evaluate_response_iu(%struct.response_iu* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca %struct.response_iu*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca i32, align 4
  store %struct.response_iu* %0, %struct.response_iu** %3, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %4, align 8
  %6 = load %struct.response_iu*, %struct.response_iu** %3, align 8
  %7 = getelementptr inbounds %struct.response_iu, %struct.response_iu* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %25 [
    i32 130, label %10
    i32 128, label %15
    i32 129, label %20
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* @DID_BAD_TARGET, align 4
  %12 = shl i32 %11, 16
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %14 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  br label %33

15:                                               ; preds = %2
  %16 = load i32, i32* @DID_OK, align 4
  %17 = shl i32 %16, 16
  %18 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %19 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  br label %33

20:                                               ; preds = %2
  %21 = load i32, i32* @DID_TARGET_FAILURE, align 4
  %22 = shl i32 %21, 16
  %23 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %24 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  br label %33

25:                                               ; preds = %2
  %26 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @uas_log_cmd_state(%struct.scsi_cmnd* %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @DID_ERROR, align 4
  %30 = shl i32 %29, 16
  %31 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %32 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %25, %20, %15, %10
  %34 = load i32, i32* %5, align 4
  %35 = icmp eq i32 %34, 128
  %36 = zext i1 %35 to i32
  ret i32 %36
}

declare dso_local i32 @uas_log_cmd_state(%struct.scsi_cmnd*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
