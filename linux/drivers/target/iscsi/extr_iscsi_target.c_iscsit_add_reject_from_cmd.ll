; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_add_reject_from_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_add_reject_from_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cmd = type { %struct.TYPE_2__, i32, i32, i32, i32, i32, %struct.iscsi_conn*, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.iscsi_conn = type { i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"cmd->conn is NULL for ITT: 0x%08x\0A\00", align 1
@ISCSI_OP_REJECT = common dso_local global i32 0, align 4
@ISCSI_HDR_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Unable to allocate memory for cmd->buf_ptr\0A\00", align 1
@ISTATE_SEND_REJECT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"iscsi reject: calling target_put_sess_cmd >>>>>>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_cmd*, i32, i32, i8*)* @iscsit_add_reject_from_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsit_add_reject_from_cmd(%struct.iscsi_cmd* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iscsi_cmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.iscsi_conn*, align 8
  %11 = alloca i32, align 4
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %13 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %11, align 4
  %18 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %19 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %18, i32 0, i32 6
  %20 = load %struct.iscsi_conn*, %struct.iscsi_conn** %19, align 8
  %21 = icmp ne %struct.iscsi_conn* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %4
  %23 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %24 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 8
  %26 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %25)
  store i32 -1, i32* %5, align 4
  br label %84

27:                                               ; preds = %4
  %28 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %29 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %28, i32 0, i32 6
  %30 = load %struct.iscsi_conn*, %struct.iscsi_conn** %29, align 8
  store %struct.iscsi_conn* %30, %struct.iscsi_conn** %10, align 8
  %31 = load i32, i32* @ISCSI_OP_REJECT, align 4
  %32 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %33 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %32, i32 0, i32 5
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %36 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 4
  %37 = load i8*, i8** %9, align 8
  %38 = load i32, i32* @ISCSI_HDR_LEN, align 4
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call i32 @kmemdup(i8* %37, i32 %38, i32 %39)
  %41 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %42 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 8
  %43 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %44 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %27
  %48 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %49 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %50 = call i32 @iscsit_free_cmd(%struct.iscsi_cmd* %49, i32 0)
  store i32 -1, i32* %5, align 4
  br label %84

51:                                               ; preds = %27
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %51
  %55 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %56 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %55, i32 0, i32 0
  %57 = call i32 @spin_lock_bh(i32* %56)
  %58 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %59 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %58, i32 0, i32 2
  %60 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %61 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %60, i32 0, i32 1
  %62 = call i32 @list_add_tail(i32* %59, i32* %61)
  %63 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %64 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %63, i32 0, i32 0
  %65 = call i32 @spin_unlock_bh(i32* %64)
  br label %66

66:                                               ; preds = %54, %51
  %67 = load i32, i32* @ISTATE_SEND_REJECT, align 4
  %68 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %69 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  %70 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %71 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %72 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %73 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @iscsit_add_cmd_to_response_queue(%struct.iscsi_cmd* %70, %struct.iscsi_conn* %71, i32 %74)
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %66
  %79 = call i32 @pr_debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  %80 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %81 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %80, i32 0, i32 0
  %82 = call i32 @target_put_sess_cmd(%struct.TYPE_2__* %81)
  br label %83

83:                                               ; preds = %78, %66
  store i32 -1, i32* %5, align 4
  br label %84

84:                                               ; preds = %83, %47, %22
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @kmemdup(i8*, i32, i32) #1

declare dso_local i32 @iscsit_free_cmd(%struct.iscsi_cmd*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @iscsit_add_cmd_to_response_queue(%struct.iscsi_cmd*, %struct.iscsi_conn*, i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @target_put_sess_cmd(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
