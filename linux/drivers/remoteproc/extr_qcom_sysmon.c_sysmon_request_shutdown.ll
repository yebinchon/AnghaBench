; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_sysmon.c_sysmon_request_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_sysmon.c_sysmon_request_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_sysmon = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"ssr:shutdown\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"send sysmon shutdown request failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"timeout waiting for sysmon ack\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"unexpected response to sysmon shutdown request\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qcom_sysmon*)* @sysmon_request_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sysmon_request_shutdown(%struct.qcom_sysmon* %0) #0 {
  %2 = alloca %struct.qcom_sysmon*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store %struct.qcom_sysmon* %0, %struct.qcom_sysmon** %2, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  %5 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %2, align 8
  %6 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %5, i32 0, i32 1
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %2, align 8
  %9 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %8, i32 0, i32 3
  %10 = call i32 @reinit_completion(i32* %9)
  %11 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %2, align 8
  %12 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %11, i32 0, i32 0
  store i32 0, i32* %12, align 4
  %13 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %2, align 8
  %14 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = load i8*, i8** %3, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = call i64 @strlen(i8* %17)
  %19 = add nsw i64 %18, 1
  %20 = call i32 @rpmsg_send(i32 %15, i8* %16, i64 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %2, align 8
  %25 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %51

28:                                               ; preds = %1
  %29 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %2, align 8
  %30 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %29, i32 0, i32 3
  %31 = call i32 @msecs_to_jiffies(i32 5000)
  %32 = call i32 @wait_for_completion_timeout(i32* %30, i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %28
  %36 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %2, align 8
  %37 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %51

40:                                               ; preds = %28
  %41 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %2, align 8
  %42 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %2, align 8
  %47 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dev_err(i32 %48, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  br label %50

50:                                               ; preds = %45, %40
  br label %51

51:                                               ; preds = %50, %35, %23
  %52 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %2, align 8
  %53 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %52, i32 0, i32 1
  %54 = call i32 @mutex_unlock(i32* %53)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @rpmsg_send(i32, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

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
