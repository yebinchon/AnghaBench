; ModuleID = '/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_glink_native.c_qcom_glink_announce_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_glink_native.c_qcom_glink_announce_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpmsg_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.glink_channel = type { %struct.qcom_glink* }
%struct.qcom_glink = type { i64 }
%struct.glink_core_rx_intent = type { i32 }
%struct.property = type { i32, i32* }

@SZ_1K = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"qcom,intents\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpmsg_device*)* @qcom_glink_announce_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_glink_announce_create(%struct.rpmsg_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rpmsg_device*, align 8
  %4 = alloca %struct.glink_channel*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.qcom_glink*, align 8
  %7 = alloca %struct.glink_core_rx_intent*, align 8
  %8 = alloca %struct.property*, align 8
  %9 = alloca [2 x i32], align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.rpmsg_device* %0, %struct.rpmsg_device** %3, align 8
  %14 = load %struct.rpmsg_device*, %struct.rpmsg_device** %3, align 8
  %15 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.glink_channel* @to_glink_channel(i32 %16)
  store %struct.glink_channel* %17, %struct.glink_channel** %4, align 8
  %18 = load %struct.rpmsg_device*, %struct.rpmsg_device** %3, align 8
  %19 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.device_node*, %struct.device_node** %20, align 8
  store %struct.device_node* %21, %struct.device_node** %5, align 8
  %22 = load %struct.glink_channel*, %struct.glink_channel** %4, align 8
  %23 = getelementptr inbounds %struct.glink_channel, %struct.glink_channel* %22, i32 0, i32 0
  %24 = load %struct.qcom_glink*, %struct.qcom_glink** %23, align 8
  store %struct.qcom_glink* %24, %struct.qcom_glink** %6, align 8
  store %struct.property* null, %struct.property** %8, align 8
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %26 = load i32, i32* @SZ_1K, align 4
  %27 = call i32 @cpu_to_be32(i32 %26)
  store i32 %27, i32* %25, align 4
  %28 = getelementptr inbounds i32, i32* %25, i64 1
  %29 = call i32 @cpu_to_be32(i32 5)
  store i32 %29, i32* %28, align 4
  store i32 1, i32* %11, align 4
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32* %30, i32** %12, align 8
  %31 = load %struct.qcom_glink*, %struct.qcom_glink** %6, align 8
  %32 = getelementptr inbounds %struct.qcom_glink, %struct.qcom_glink* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %85

36:                                               ; preds = %1
  %37 = load %struct.device_node*, %struct.device_node** %5, align 8
  %38 = call %struct.property* @of_find_property(%struct.device_node* %37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* null)
  store %struct.property* %38, %struct.property** %8, align 8
  %39 = load %struct.property*, %struct.property** %8, align 8
  %40 = icmp ne %struct.property* %39, null
  br i1 %40, label %41, label %52

41:                                               ; preds = %36
  %42 = load %struct.property*, %struct.property** %8, align 8
  %43 = getelementptr inbounds %struct.property, %struct.property* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %12, align 8
  %45 = load %struct.property*, %struct.property** %8, align 8
  %46 = getelementptr inbounds %struct.property, %struct.property* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = udiv i64 %48, 4
  %50 = udiv i64 %49, 2
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %41, %36
  br label %53

53:                                               ; preds = %83, %52
  %54 = load i32, i32* %11, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %11, align 4
  %56 = icmp ne i32 %54, 0
  br i1 %56, label %57, label %84

57:                                               ; preds = %53
  %58 = load i32*, i32** %12, align 8
  %59 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %59, i32** %12, align 8
  %60 = ptrtoint i32* %58 to i32
  %61 = call i32 @be32_to_cpup(i32 %60)
  store i32 %61, i32* %13, align 4
  %62 = load i32*, i32** %12, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %63, i32** %12, align 8
  %64 = ptrtoint i32* %62 to i32
  %65 = call i32 @be32_to_cpup(i32 %64)
  store i32 %65, i32* %10, align 4
  br label %66

66:                                               ; preds = %78, %57
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %10, align 4
  %69 = icmp ne i32 %67, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %66
  %71 = load %struct.qcom_glink*, %struct.qcom_glink** %6, align 8
  %72 = load %struct.glink_channel*, %struct.glink_channel** %4, align 8
  %73 = load i32, i32* %13, align 4
  %74 = call %struct.glink_core_rx_intent* @qcom_glink_alloc_intent(%struct.qcom_glink* %71, %struct.glink_channel* %72, i32 %73, i32 1)
  store %struct.glink_core_rx_intent* %74, %struct.glink_core_rx_intent** %7, align 8
  %75 = load %struct.glink_core_rx_intent*, %struct.glink_core_rx_intent** %7, align 8
  %76 = icmp ne %struct.glink_core_rx_intent* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %70
  br label %83

78:                                               ; preds = %70
  %79 = load %struct.qcom_glink*, %struct.qcom_glink** %6, align 8
  %80 = load %struct.glink_channel*, %struct.glink_channel** %4, align 8
  %81 = load %struct.glink_core_rx_intent*, %struct.glink_core_rx_intent** %7, align 8
  %82 = call i32 @qcom_glink_advertise_intent(%struct.qcom_glink* %79, %struct.glink_channel* %80, %struct.glink_core_rx_intent* %81)
  br label %66

83:                                               ; preds = %77, %66
  br label %53

84:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %84, %35
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local %struct.glink_channel* @to_glink_channel(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local %struct.property* @of_find_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @be32_to_cpup(i32) #1

declare dso_local %struct.glink_core_rx_intent* @qcom_glink_alloc_intent(%struct.qcom_glink*, %struct.glink_channel*, i32, i32) #1

declare dso_local i32 @qcom_glink_advertise_intent(%struct.qcom_glink*, %struct.glink_channel*, %struct.glink_core_rx_intent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
