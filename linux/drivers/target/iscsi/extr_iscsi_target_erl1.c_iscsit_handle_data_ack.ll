; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_erl1.c_iscsit_handle_data_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_erl1.c_iscsit_handle_data_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i32 }
%struct.iscsi_cmd = type { i64, i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"Data ACK SNACK for TTT: 0x%08x is invalid.\0A\00", align 1
@.str.1 = private unnamed_addr constant [90 x i8] c"ITT: 0x%08x Data ACK SNACK BegRUN: 0x%08x is less than the already acked DataSN: 0x%08x.\0A\00", align 1
@ICF_GOT_DATACK_SNACK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [74 x i8] c"Received Data ACK SNACK for ITT: 0x%08x, updated acked DataSN to 0x%08x.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsit_handle_data_ack(%struct.iscsi_conn* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iscsi_conn*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.iscsi_cmd*, align 8
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.iscsi_cmd* null, %struct.iscsi_cmd** %10, align 8
  %11 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %12 = load i64, i64* %7, align 8
  %13 = call %struct.iscsi_cmd* @iscsit_find_cmd_from_ttt(%struct.iscsi_conn* %11, i64 %12)
  store %struct.iscsi_cmd* %13, %struct.iscsi_cmd** %10, align 8
  %14 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %10, align 8
  %15 = icmp ne %struct.iscsi_cmd* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i64, i64* %7, align 8
  %18 = call i32 (i8*, i64, ...) @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %17)
  store i32 -1, i32* %5, align 4
  br label %52

19:                                               ; preds = %4
  %20 = load i64, i64* %8, align 8
  %21 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %10, align 8
  %22 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sle i64 %20, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %19
  %26 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %10, align 8
  %27 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* %8, align 8
  %31 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %10, align 8
  %32 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 (i8*, i64, ...) @pr_err(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0), i64 %29, i64 %30, i64 %33)
  store i32 -1, i32* %5, align 4
  br label %52

35:                                               ; preds = %19
  %36 = load i32, i32* @ICF_GOT_DATACK_SNACK, align 4
  %37 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %10, align 8
  %38 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load i64, i64* %8, align 8
  %42 = sub nsw i64 %41, 1
  %43 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %10, align 8
  %44 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %10, align 8
  %46 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %10, align 8
  %49 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @pr_debug(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i32 %47, i64 %50)
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %35, %25, %16
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local %struct.iscsi_cmd* @iscsit_find_cmd_from_ttt(%struct.iscsi_conn*, i64) #1

declare dso_local i32 @pr_err(i8*, i64, ...) #1

declare dso_local i32 @pr_debug(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
