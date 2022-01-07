; ModuleID = '/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_smd.c_qcom_smd_channel_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_smd.c_qcom_smd_channel_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_smd_channel = type { i64, i32, i32, i32, %struct.qcom_smd_edge* }
%struct.qcom_smd_edge = type { i32 }

@SZ_4K = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SMD_CHANNEL_OPENING = common dso_local global i64 0, align 8
@SMD_CHANNEL_OPENED = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"remote side did not enter opening state\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"remote side did not enter open state\0A\00", align 1
@SMD_CHANNEL_CLOSED = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcom_smd_channel*, i32)* @qcom_smd_channel_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_smd_channel_open(%struct.qcom_smd_channel* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qcom_smd_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qcom_smd_edge*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.qcom_smd_channel* %0, %struct.qcom_smd_channel** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %4, align 8
  %10 = getelementptr inbounds %struct.qcom_smd_channel, %struct.qcom_smd_channel* %9, i32 0, i32 4
  %11 = load %struct.qcom_smd_edge*, %struct.qcom_smd_edge** %10, align 8
  store %struct.qcom_smd_edge* %11, %struct.qcom_smd_edge** %6, align 8
  %12 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %4, align 8
  %13 = getelementptr inbounds %struct.qcom_smd_channel, %struct.qcom_smd_channel* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @SZ_4K, align 4
  %16 = call i64 @min(i32 %14, i32 %15)
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i32 @kmalloc(i64 %17, i32 %18)
  %20 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %4, align 8
  %21 = getelementptr inbounds %struct.qcom_smd_channel, %struct.qcom_smd_channel* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %4, align 8
  %23 = getelementptr inbounds %struct.qcom_smd_channel, %struct.qcom_smd_channel* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %89

29:                                               ; preds = %2
  %30 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @qcom_smd_channel_set_callback(%struct.qcom_smd_channel* %30, i32 %31)
  %33 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %4, align 8
  %34 = load i64, i64* @SMD_CHANNEL_OPENING, align 8
  %35 = call i32 @qcom_smd_channel_set_state(%struct.qcom_smd_channel* %33, i64 %34)
  %36 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %4, align 8
  %37 = getelementptr inbounds %struct.qcom_smd_channel, %struct.qcom_smd_channel* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %4, align 8
  %40 = getelementptr inbounds %struct.qcom_smd_channel, %struct.qcom_smd_channel* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @SMD_CHANNEL_OPENING, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %29
  %45 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %4, align 8
  %46 = getelementptr inbounds %struct.qcom_smd_channel, %struct.qcom_smd_channel* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @SMD_CHANNEL_OPENED, align 8
  %49 = icmp eq i64 %47, %48
  br label %50

50:                                               ; preds = %44, %29
  %51 = phi i1 [ true, %29 ], [ %49, %44 ]
  %52 = zext i1 %51 to i32
  %53 = load i32, i32* @HZ, align 4
  %54 = call i32 @wait_event_interruptible_timeout(i32 %38, i32 %52, i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %50
  %58 = load %struct.qcom_smd_edge*, %struct.qcom_smd_edge** %6, align 8
  %59 = getelementptr inbounds %struct.qcom_smd_edge, %struct.qcom_smd_edge* %58, i32 0, i32 0
  %60 = call i32 @dev_err(i32* %59, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %83

61:                                               ; preds = %50
  %62 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %4, align 8
  %63 = load i64, i64* @SMD_CHANNEL_OPENED, align 8
  %64 = call i32 @qcom_smd_channel_set_state(%struct.qcom_smd_channel* %62, i64 %63)
  %65 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %4, align 8
  %66 = getelementptr inbounds %struct.qcom_smd_channel, %struct.qcom_smd_channel* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %4, align 8
  %69 = getelementptr inbounds %struct.qcom_smd_channel, %struct.qcom_smd_channel* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @SMD_CHANNEL_OPENED, align 8
  %72 = icmp eq i64 %70, %71
  %73 = zext i1 %72 to i32
  %74 = load i32, i32* @HZ, align 4
  %75 = call i32 @wait_event_interruptible_timeout(i32 %67, i32 %73, i32 %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %61
  %79 = load %struct.qcom_smd_edge*, %struct.qcom_smd_edge** %6, align 8
  %80 = getelementptr inbounds %struct.qcom_smd_edge, %struct.qcom_smd_edge* %79, i32 0, i32 0
  %81 = call i32 @dev_err(i32* %80, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %83

82:                                               ; preds = %61
  store i32 0, i32* %3, align 4
  br label %89

83:                                               ; preds = %78, %57
  %84 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %4, align 8
  %85 = load i64, i64* @SMD_CHANNEL_CLOSED, align 8
  %86 = call i32 @qcom_smd_channel_set_state(%struct.qcom_smd_channel* %84, i64 %85)
  %87 = load i32, i32* @ETIMEDOUT, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %83, %82, %26
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i64 @min(i32, i32) #1

declare dso_local i32 @kmalloc(i64, i32) #1

declare dso_local i32 @qcom_smd_channel_set_callback(%struct.qcom_smd_channel*, i32) #1

declare dso_local i32 @qcom_smd_channel_set_state(%struct.qcom_smd_channel*, i64) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
