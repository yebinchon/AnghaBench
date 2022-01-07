; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_sysmon.c_sysmon_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_sysmon.c_sysmon_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpmsg_device = type { i32 }
%struct.qcom_sysmon = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"ssr:ack\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpmsg_device*, i8*, i32, i8*, i32)* @sysmon_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysmon_callback(%struct.rpmsg_device* %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.rpmsg_device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.qcom_sysmon*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.rpmsg_device* %0, %struct.rpmsg_device** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i8*, i8** %10, align 8
  %16 = bitcast i8* %15 to %struct.qcom_sysmon*
  store %struct.qcom_sysmon* %16, %struct.qcom_sysmon** %12, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  %17 = load i8*, i8** %13, align 8
  %18 = call i32 @strlen(i8* %17)
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %14, align 4
  %20 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %12, align 8
  %21 = icmp ne %struct.qcom_sysmon* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %5
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %42

25:                                               ; preds = %5
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %14, align 4
  %28 = icmp sge i32 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %25
  %30 = load i8*, i8** %8, align 8
  %31 = load i8*, i8** %13, align 8
  %32 = load i32, i32* %14, align 4
  %33 = call i32 @memcmp(i8* %30, i8* %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %12, align 8
  %37 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  br label %38

38:                                               ; preds = %35, %29, %25
  %39 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %12, align 8
  %40 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %39, i32 0, i32 1
  %41 = call i32 @complete(i32* %40)
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %38, %22
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
