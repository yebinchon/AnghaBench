; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_sysmon.c_sysmon_send_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_sysmon.c_sysmon_send_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_sysmon = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"ssr:%s:before_shutdown\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to send sysmon event\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"timeout waiting for sysmon ack\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"unexpected response to sysmon event\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qcom_sysmon*, i8*)* @sysmon_send_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sysmon_send_event(%struct.qcom_sysmon* %0, i8* %1) #0 {
  %3 = alloca %struct.qcom_sysmon*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [50 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.qcom_sysmon* %0, %struct.qcom_sysmon** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @snprintf(i8* %8, i32 50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = sext i32 %11 to i64
  %13 = icmp uge i64 %12, 50
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %64

15:                                               ; preds = %2
  %16 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %3, align 8
  %17 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %16, i32 0, i32 1
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %3, align 8
  %20 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %19, i32 0, i32 3
  %21 = call i32 @reinit_completion(i32* %20)
  %22 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %3, align 8
  %23 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %22, i32 0, i32 0
  store i32 0, i32* %23, align 4
  %24 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %3, align 8
  %25 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @rpmsg_send(i32 %26, i8* %27, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %15
  %33 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %3, align 8
  %34 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %60

37:                                               ; preds = %15
  %38 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %3, align 8
  %39 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %38, i32 0, i32 3
  %40 = call i32 @msecs_to_jiffies(i32 5000)
  %41 = call i32 @wait_for_completion_timeout(i32* %39, i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %37
  %45 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %3, align 8
  %46 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dev_err(i32 %47, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %60

49:                                               ; preds = %37
  %50 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %3, align 8
  %51 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %49
  %55 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %3, align 8
  %56 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @dev_err(i32 %57, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %59

59:                                               ; preds = %54, %49
  br label %60

60:                                               ; preds = %59, %44, %32
  %61 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %3, align 8
  %62 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %61, i32 0, i32 1
  %63 = call i32 @mutex_unlock(i32* %62)
  br label %64

64:                                               ; preds = %60, %14
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @rpmsg_send(i32, i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
