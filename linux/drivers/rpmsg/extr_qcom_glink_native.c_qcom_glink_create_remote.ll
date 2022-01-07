; ModuleID = '/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_glink_native.c_qcom_glink_create_remote.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_glink_native.c_qcom_glink_create_remote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_glink = type { i32 }
%struct.glink_channel = type { i32, i32 }

@HZ = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@qcom_glink_channel_release = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcom_glink*, %struct.glink_channel*)* @qcom_glink_create_remote to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_glink_create_remote(%struct.qcom_glink* %0, %struct.glink_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qcom_glink*, align 8
  %5 = alloca %struct.glink_channel*, align 8
  %6 = alloca i32, align 4
  store %struct.qcom_glink* %0, %struct.qcom_glink** %4, align 8
  store %struct.glink_channel* %1, %struct.glink_channel** %5, align 8
  %7 = load %struct.qcom_glink*, %struct.qcom_glink** %4, align 8
  %8 = load %struct.glink_channel*, %struct.glink_channel** %5, align 8
  %9 = call i32 @qcom_glink_send_open_ack(%struct.qcom_glink* %7, %struct.glink_channel* %8)
  %10 = load %struct.qcom_glink*, %struct.qcom_glink** %4, align 8
  %11 = load %struct.glink_channel*, %struct.glink_channel** %5, align 8
  %12 = call i32 @qcom_glink_send_open_req(%struct.qcom_glink* %10, %struct.glink_channel* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %28

16:                                               ; preds = %2
  %17 = load %struct.glink_channel*, %struct.glink_channel** %5, align 8
  %18 = getelementptr inbounds %struct.glink_channel, %struct.glink_channel* %17, i32 0, i32 1
  %19 = load i32, i32* @HZ, align 4
  %20 = mul nsw i32 5, %19
  %21 = call i32 @wait_for_completion_timeout(i32* %18, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %16
  %25 = load i32, i32* @ETIMEDOUT, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %28

27:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %37

28:                                               ; preds = %24, %15
  %29 = load %struct.qcom_glink*, %struct.qcom_glink** %4, align 8
  %30 = load %struct.glink_channel*, %struct.glink_channel** %5, align 8
  %31 = call i32 @qcom_glink_send_close_req(%struct.qcom_glink* %29, %struct.glink_channel* %30)
  %32 = load %struct.glink_channel*, %struct.glink_channel** %5, align 8
  %33 = getelementptr inbounds %struct.glink_channel, %struct.glink_channel* %32, i32 0, i32 0
  %34 = load i32, i32* @qcom_glink_channel_release, align 4
  %35 = call i32 @kref_put(i32* %33, i32 %34)
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %28, %27
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @qcom_glink_send_open_ack(%struct.qcom_glink*, %struct.glink_channel*) #1

declare dso_local i32 @qcom_glink_send_open_req(%struct.qcom_glink*, %struct.glink_channel*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @qcom_glink_send_close_req(%struct.qcom_glink*, %struct.glink_channel*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
