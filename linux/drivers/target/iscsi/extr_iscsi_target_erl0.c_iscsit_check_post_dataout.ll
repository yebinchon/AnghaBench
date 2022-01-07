; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_erl0.c_iscsit_check_post_dataout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_erl0.c_iscsit_check_post_dataout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cmd = type { i64, %struct.iscsi_conn* }
%struct.iscsi_conn = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [74 x i8] c"Unable to recover from DataOUT CRC failure while ERL=0, closing session.\0A\00", align 1
@ISCSI_REASON_DATA_DIGEST_ERROR = common dso_local global i32 0, align 4
@DATAOUT_CANNOT_RECOVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsit_check_post_dataout(%struct.iscsi_cmd* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iscsi_cmd*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.iscsi_conn*, align 8
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %10 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %9, i32 0, i32 1
  %11 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  store %struct.iscsi_conn* %11, %struct.iscsi_conn** %8, align 8
  %12 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %13 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %12, i32 0, i32 0
  store i64 0, i64* %13, align 8
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @iscsit_dataout_post_crc_passed(%struct.iscsi_cmd* %17, i8* %18)
  store i32 %19, i32* %4, align 4
  br label %44

20:                                               ; preds = %3
  %21 = load %struct.iscsi_conn*, %struct.iscsi_conn** %8, align 8
  %22 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %20
  %30 = call i32 @pr_err(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %32 = load i32, i32* @ISCSI_REASON_DATA_DIGEST_ERROR, align 4
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @iscsit_reject_cmd(%struct.iscsi_cmd* %31, i32 %32, i8* %33)
  %35 = load i32, i32* @DATAOUT_CANNOT_RECOVER, align 4
  store i32 %35, i32* %4, align 4
  br label %44

36:                                               ; preds = %20
  %37 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %38 = load i32, i32* @ISCSI_REASON_DATA_DIGEST_ERROR, align 4
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @iscsit_reject_cmd(%struct.iscsi_cmd* %37, i32 %38, i8* %39)
  %41 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @iscsit_dataout_post_crc_failed(%struct.iscsi_cmd* %41, i8* %42)
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %36, %29, %16
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @iscsit_dataout_post_crc_passed(%struct.iscsi_cmd*, i8*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @iscsit_reject_cmd(%struct.iscsi_cmd*, i32, i8*) #1

declare dso_local i32 @iscsit_dataout_post_crc_failed(%struct.iscsi_cmd*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
