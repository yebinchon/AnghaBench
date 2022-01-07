; ModuleID = '/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_smd.c_qcom_smd_create_ept.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_smd.c_qcom_smd_create_ept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpmsg_endpoint = type { i32, i32*, i8*, i32, %struct.rpmsg_device* }
%struct.rpmsg_device = type { i32 }
%struct.rpmsg_channel_info = type { i8* }
%struct.qcom_smd_endpoint = type { %struct.qcom_smd_channel*, %struct.rpmsg_endpoint }
%struct.qcom_smd_channel = type { i64, %struct.qcom_smd_endpoint*, i32 }
%struct.qcom_smd_device = type { %struct.qcom_smd_edge* }
%struct.qcom_smd_edge = type { i32 }

@HZ = common dso_local global i32 0, align 4
@SMD_CHANNEL_CLOSED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"channel %s is busy\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@qcom_smd_endpoint_ops = common dso_local global i32 0, align 4
@__ept_release = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rpmsg_endpoint* (%struct.rpmsg_device*, i32, i8*, i8*)* @qcom_smd_create_ept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rpmsg_endpoint* @qcom_smd_create_ept(%struct.rpmsg_device* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.rpmsg_endpoint*, align 8
  %6 = alloca %struct.rpmsg_channel_info, align 8
  %7 = alloca %struct.rpmsg_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.qcom_smd_endpoint*, align 8
  %11 = alloca %struct.qcom_smd_channel*, align 8
  %12 = alloca %struct.qcom_smd_device*, align 8
  %13 = alloca %struct.qcom_smd_edge*, align 8
  %14 = alloca %struct.rpmsg_endpoint*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = getelementptr inbounds %struct.rpmsg_channel_info, %struct.rpmsg_channel_info* %6, i32 0, i32 0
  store i8* %3, i8** %17, align 8
  store %struct.rpmsg_device* %0, %struct.rpmsg_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  %18 = load %struct.rpmsg_device*, %struct.rpmsg_device** %7, align 8
  %19 = call %struct.qcom_smd_device* @to_smd_device(%struct.rpmsg_device* %18)
  store %struct.qcom_smd_device* %19, %struct.qcom_smd_device** %12, align 8
  %20 = load %struct.qcom_smd_device*, %struct.qcom_smd_device** %12, align 8
  %21 = getelementptr inbounds %struct.qcom_smd_device, %struct.qcom_smd_device* %20, i32 0, i32 0
  %22 = load %struct.qcom_smd_edge*, %struct.qcom_smd_edge** %21, align 8
  store %struct.qcom_smd_edge* %22, %struct.qcom_smd_edge** %13, align 8
  %23 = getelementptr inbounds %struct.rpmsg_channel_info, %struct.rpmsg_channel_info* %6, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %15, align 8
  %25 = load %struct.qcom_smd_edge*, %struct.qcom_smd_edge** %13, align 8
  %26 = getelementptr inbounds %struct.qcom_smd_edge, %struct.qcom_smd_edge* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.qcom_smd_edge*, %struct.qcom_smd_edge** %13, align 8
  %29 = load i8*, i8** %15, align 8
  %30 = call %struct.qcom_smd_channel* @qcom_smd_find_channel(%struct.qcom_smd_edge* %28, i8* %29)
  store %struct.qcom_smd_channel* %30, %struct.qcom_smd_channel** %11, align 8
  %31 = icmp ne %struct.qcom_smd_channel* %30, null
  %32 = zext i1 %31 to i32
  %33 = load i32, i32* @HZ, align 4
  %34 = call i32 @wait_event_interruptible_timeout(i32 %27, i32 %32, i32 %33)
  store i32 %34, i32* %16, align 4
  %35 = load i32, i32* %16, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %4
  store %struct.rpmsg_endpoint* null, %struct.rpmsg_endpoint** %5, align 8
  br label %95

38:                                               ; preds = %4
  %39 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %11, align 8
  %40 = getelementptr inbounds %struct.qcom_smd_channel, %struct.qcom_smd_channel* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @SMD_CHANNEL_CLOSED, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = load %struct.rpmsg_device*, %struct.rpmsg_device** %7, align 8
  %46 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %45, i32 0, i32 0
  %47 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %11, align 8
  %48 = getelementptr inbounds %struct.qcom_smd_channel, %struct.qcom_smd_channel* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @dev_err(i32* %46, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %49)
  store %struct.rpmsg_endpoint* null, %struct.rpmsg_endpoint** %5, align 8
  br label %95

51:                                               ; preds = %38
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call %struct.qcom_smd_endpoint* @kzalloc(i32 48, i32 %52)
  store %struct.qcom_smd_endpoint* %53, %struct.qcom_smd_endpoint** %10, align 8
  %54 = load %struct.qcom_smd_endpoint*, %struct.qcom_smd_endpoint** %10, align 8
  %55 = icmp ne %struct.qcom_smd_endpoint* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  store %struct.rpmsg_endpoint* null, %struct.rpmsg_endpoint** %5, align 8
  br label %95

57:                                               ; preds = %51
  %58 = load %struct.qcom_smd_endpoint*, %struct.qcom_smd_endpoint** %10, align 8
  %59 = getelementptr inbounds %struct.qcom_smd_endpoint, %struct.qcom_smd_endpoint* %58, i32 0, i32 1
  store %struct.rpmsg_endpoint* %59, %struct.rpmsg_endpoint** %14, align 8
  %60 = load %struct.rpmsg_endpoint*, %struct.rpmsg_endpoint** %14, align 8
  %61 = getelementptr inbounds %struct.rpmsg_endpoint, %struct.rpmsg_endpoint* %60, i32 0, i32 0
  %62 = call i32 @kref_init(i32* %61)
  %63 = load %struct.rpmsg_device*, %struct.rpmsg_device** %7, align 8
  %64 = load %struct.rpmsg_endpoint*, %struct.rpmsg_endpoint** %14, align 8
  %65 = getelementptr inbounds %struct.rpmsg_endpoint, %struct.rpmsg_endpoint* %64, i32 0, i32 4
  store %struct.rpmsg_device* %63, %struct.rpmsg_device** %65, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.rpmsg_endpoint*, %struct.rpmsg_endpoint** %14, align 8
  %68 = getelementptr inbounds %struct.rpmsg_endpoint, %struct.rpmsg_endpoint* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = load %struct.rpmsg_endpoint*, %struct.rpmsg_endpoint** %14, align 8
  %71 = getelementptr inbounds %struct.rpmsg_endpoint, %struct.rpmsg_endpoint* %70, i32 0, i32 2
  store i8* %69, i8** %71, align 8
  %72 = load %struct.rpmsg_endpoint*, %struct.rpmsg_endpoint** %14, align 8
  %73 = getelementptr inbounds %struct.rpmsg_endpoint, %struct.rpmsg_endpoint* %72, i32 0, i32 1
  store i32* @qcom_smd_endpoint_ops, i32** %73, align 8
  %74 = load %struct.qcom_smd_endpoint*, %struct.qcom_smd_endpoint** %10, align 8
  %75 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %11, align 8
  %76 = getelementptr inbounds %struct.qcom_smd_channel, %struct.qcom_smd_channel* %75, i32 0, i32 1
  store %struct.qcom_smd_endpoint* %74, %struct.qcom_smd_endpoint** %76, align 8
  %77 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %11, align 8
  %78 = load %struct.qcom_smd_endpoint*, %struct.qcom_smd_endpoint** %10, align 8
  %79 = getelementptr inbounds %struct.qcom_smd_endpoint, %struct.qcom_smd_endpoint* %78, i32 0, i32 0
  store %struct.qcom_smd_channel* %77, %struct.qcom_smd_channel** %79, align 8
  %80 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %11, align 8
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @qcom_smd_channel_open(%struct.qcom_smd_channel* %80, i32 %81)
  store i32 %82, i32* %16, align 4
  %83 = load i32, i32* %16, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %57
  br label %88

86:                                               ; preds = %57
  %87 = load %struct.rpmsg_endpoint*, %struct.rpmsg_endpoint** %14, align 8
  store %struct.rpmsg_endpoint* %87, %struct.rpmsg_endpoint** %5, align 8
  br label %95

88:                                               ; preds = %85
  %89 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %11, align 8
  %90 = getelementptr inbounds %struct.qcom_smd_channel, %struct.qcom_smd_channel* %89, i32 0, i32 1
  store %struct.qcom_smd_endpoint* null, %struct.qcom_smd_endpoint** %90, align 8
  %91 = load %struct.rpmsg_endpoint*, %struct.rpmsg_endpoint** %14, align 8
  %92 = getelementptr inbounds %struct.rpmsg_endpoint, %struct.rpmsg_endpoint* %91, i32 0, i32 0
  %93 = load i32, i32* @__ept_release, align 4
  %94 = call i32 @kref_put(i32* %92, i32 %93)
  store %struct.rpmsg_endpoint* null, %struct.rpmsg_endpoint** %5, align 8
  br label %95

95:                                               ; preds = %88, %86, %56, %44, %37
  %96 = load %struct.rpmsg_endpoint*, %struct.rpmsg_endpoint** %5, align 8
  ret %struct.rpmsg_endpoint* %96
}

declare dso_local %struct.qcom_smd_device* @to_smd_device(%struct.rpmsg_device*) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local %struct.qcom_smd_channel* @qcom_smd_find_channel(%struct.qcom_smd_edge*, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local %struct.qcom_smd_endpoint* @kzalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @qcom_smd_channel_open(%struct.qcom_smd_channel*, i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
