; ModuleID = '/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_glink_native.c_qcom_glink_rx_close_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_glink_native.c_qcom_glink_rx_close_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_glink = type { i32, i32 }
%struct.glink_channel = type { i32, i64 }

@.str = private unnamed_addr constant [30 x i8] c"close ack on unknown channel\0A\00", align 1
@qcom_glink_channel_release = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qcom_glink*, i32)* @qcom_glink_rx_close_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qcom_glink_rx_close_ack(%struct.qcom_glink* %0, i32 %1) #0 {
  %3 = alloca %struct.qcom_glink*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.glink_channel*, align 8
  %6 = alloca i64, align 8
  store %struct.qcom_glink* %0, %struct.qcom_glink** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.qcom_glink*, %struct.qcom_glink** %3, align 8
  %8 = getelementptr inbounds %struct.qcom_glink, %struct.qcom_glink* %7, i32 0, i32 0
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.qcom_glink*, %struct.qcom_glink** %3, align 8
  %12 = getelementptr inbounds %struct.qcom_glink, %struct.qcom_glink* %11, i32 0, i32 1
  %13 = load i32, i32* %4, align 4
  %14 = call %struct.glink_channel* @idr_find(i32* %12, i32 %13)
  store %struct.glink_channel* %14, %struct.glink_channel** %5, align 8
  %15 = load %struct.glink_channel*, %struct.glink_channel** %5, align 8
  %16 = icmp ne %struct.glink_channel* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @WARN(i32 %18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load %struct.qcom_glink*, %struct.qcom_glink** %3, align 8
  %23 = getelementptr inbounds %struct.qcom_glink, %struct.qcom_glink* %22, i32 0, i32 0
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i64 %24)
  br label %43

26:                                               ; preds = %2
  %27 = load %struct.qcom_glink*, %struct.qcom_glink** %3, align 8
  %28 = getelementptr inbounds %struct.qcom_glink, %struct.qcom_glink* %27, i32 0, i32 1
  %29 = load %struct.glink_channel*, %struct.glink_channel** %5, align 8
  %30 = getelementptr inbounds %struct.glink_channel, %struct.glink_channel* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @idr_remove(i32* %28, i64 %31)
  %33 = load %struct.glink_channel*, %struct.glink_channel** %5, align 8
  %34 = getelementptr inbounds %struct.glink_channel, %struct.glink_channel* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load %struct.qcom_glink*, %struct.qcom_glink** %3, align 8
  %36 = getelementptr inbounds %struct.qcom_glink, %struct.qcom_glink* %35, i32 0, i32 0
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  %39 = load %struct.glink_channel*, %struct.glink_channel** %5, align 8
  %40 = getelementptr inbounds %struct.glink_channel, %struct.glink_channel* %39, i32 0, i32 0
  %41 = load i32, i32* @qcom_glink_channel_release, align 4
  %42 = call i32 @kref_put(i32* %40, i32 %41)
  br label %43

43:                                               ; preds = %26, %21
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.glink_channel* @idr_find(i32*, i32) #1

declare dso_local i64 @WARN(i32, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @idr_remove(i32*, i64) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
