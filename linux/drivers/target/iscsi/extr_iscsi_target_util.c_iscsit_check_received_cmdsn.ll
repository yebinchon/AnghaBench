; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_util.c_iscsit_check_received_cmdsn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_util.c_iscsit_check_received_cmdsn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_session = type { i64, i32 }

@.str = private unnamed_addr constant [68 x i8] c"Received CmdSN: 0x%08x is greater than MaxCmdSN: 0x%08x, ignoring.\0A\00", align 1
@CMDSN_MAXCMDSN_OVERRUN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"Received CmdSN matches ExpCmdSN, incremented ExpCmdSN to: 0x%08x\0A\00", align 1
@CMDSN_NORMAL_OPERATION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [77 x i8] c"Received CmdSN: 0x%08x is greater than ExpCmdSN: 0x%08x, not acknowledging.\0A\00", align 1
@CMDSN_HIGHER_THAN_EXP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [65 x i8] c"Received CmdSN: 0x%08x is less than ExpCmdSN: 0x%08x, ignoring.\0A\00", align 1
@CMDSN_LOWER_THAN_EXP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_session*, i64)* @iscsit_check_received_cmdsn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsit_check_received_cmdsn(%struct.iscsi_session* %0, i64 %1) #0 {
  %3 = alloca %struct.iscsi_session*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.iscsi_session* %0, %struct.iscsi_session** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %8 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %7, i32 0, i32 1
  %9 = call i64 @atomic_read(i32* %8)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call i64 @iscsi_sna_gt(i64 %10, i64 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @pr_err(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i64 %15, i64 %16)
  %18 = load i32, i32* @CMDSN_MAXCMDSN_OVERRUN, align 4
  store i32 %18, i32* %6, align 4
  br label %58

19:                                               ; preds = %2
  %20 = load i64, i64* %4, align 8
  %21 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %22 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %20, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %19
  %26 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %27 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 1
  store i64 %29, i64* %27, align 8
  %30 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %31 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 (i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i64 %32)
  %34 = load i32, i32* @CMDSN_NORMAL_OPERATION, align 4
  store i32 %34, i32* %6, align 4
  br label %57

35:                                               ; preds = %19
  %36 = load i64, i64* %4, align 8
  %37 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %38 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @iscsi_sna_gt(i64 %36, i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %35
  %43 = load i64, i64* %4, align 8
  %44 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %45 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 (i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.2, i64 0, i64 0), i64 %43, i64 %46)
  %48 = load i32, i32* @CMDSN_HIGHER_THAN_EXP, align 4
  store i32 %48, i32* %6, align 4
  br label %56

49:                                               ; preds = %35
  %50 = load i64, i64* %4, align 8
  %51 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %52 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @pr_err(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0), i64 %50, i64 %53)
  %55 = load i32, i32* @CMDSN_LOWER_THAN_EXP, align 4
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %49, %42
  br label %57

57:                                               ; preds = %56, %25
  br label %58

58:                                               ; preds = %57, %14
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @iscsi_sna_gt(i64, i64) #1

declare dso_local i32 @pr_err(i8*, i64, i64) #1

declare dso_local i32 @pr_debug(i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
