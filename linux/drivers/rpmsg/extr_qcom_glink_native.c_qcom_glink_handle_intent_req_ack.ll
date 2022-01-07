; ModuleID = '/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_glink_native.c_qcom_glink_handle_intent_req_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_glink_native.c_qcom_glink_handle_intent_req_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_glink = type { i32, i32, i32 }
%struct.glink_channel = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"unable to find channel\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qcom_glink*, i32, i32)* @qcom_glink_handle_intent_req_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qcom_glink_handle_intent_req_ack(%struct.qcom_glink* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.qcom_glink*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.glink_channel*, align 8
  %8 = alloca i64, align 8
  store %struct.qcom_glink* %0, %struct.qcom_glink** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.qcom_glink*, %struct.qcom_glink** %4, align 8
  %10 = getelementptr inbounds %struct.qcom_glink, %struct.qcom_glink* %9, i32 0, i32 1
  %11 = load i64, i64* %8, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.qcom_glink*, %struct.qcom_glink** %4, align 8
  %14 = getelementptr inbounds %struct.qcom_glink, %struct.qcom_glink* %13, i32 0, i32 2
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.glink_channel* @idr_find(i32* %14, i32 %15)
  store %struct.glink_channel* %16, %struct.glink_channel** %7, align 8
  %17 = load %struct.qcom_glink*, %struct.qcom_glink** %4, align 8
  %18 = getelementptr inbounds %struct.qcom_glink, %struct.qcom_glink* %17, i32 0, i32 1
  %19 = load i64, i64* %8, align 8
  %20 = call i32 @spin_unlock_irqrestore(i32* %18, i64 %19)
  %21 = load %struct.glink_channel*, %struct.glink_channel** %7, align 8
  %22 = icmp ne %struct.glink_channel* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %3
  %24 = load %struct.qcom_glink*, %struct.qcom_glink** %4, align 8
  %25 = getelementptr inbounds %struct.qcom_glink, %struct.qcom_glink* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %35

28:                                               ; preds = %3
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.glink_channel*, %struct.glink_channel** %7, align 8
  %31 = getelementptr inbounds %struct.glink_channel, %struct.glink_channel* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.glink_channel*, %struct.glink_channel** %7, align 8
  %33 = getelementptr inbounds %struct.glink_channel, %struct.glink_channel* %32, i32 0, i32 1
  %34 = call i32 @complete(i32* %33)
  br label %35

35:                                               ; preds = %28, %23
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.glink_channel* @idr_find(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
