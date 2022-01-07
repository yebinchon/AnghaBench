; ModuleID = '/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_glink_native.c_qcom_glink_handle_rx_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_glink_native.c_qcom_glink_handle_rx_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_glink = type { i32, i32, i32 }
%struct.glink_core_rx_intent = type { i32, i32 }
%struct.glink_channel = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"invalid channel id received\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"invalid intent id received\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qcom_glink*, i32, i32, i32)* @qcom_glink_handle_rx_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qcom_glink_handle_rx_done(%struct.qcom_glink* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.qcom_glink*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.glink_core_rx_intent*, align 8
  %10 = alloca %struct.glink_channel*, align 8
  %11 = alloca i64, align 8
  store %struct.qcom_glink* %0, %struct.qcom_glink** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.qcom_glink*, %struct.qcom_glink** %5, align 8
  %13 = getelementptr inbounds %struct.qcom_glink, %struct.qcom_glink* %12, i32 0, i32 1
  %14 = load i64, i64* %11, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.qcom_glink*, %struct.qcom_glink** %5, align 8
  %17 = getelementptr inbounds %struct.qcom_glink, %struct.qcom_glink* %16, i32 0, i32 2
  %18 = load i32, i32* %6, align 4
  %19 = call i8* @idr_find(i32* %17, i32 %18)
  %20 = bitcast i8* %19 to %struct.glink_channel*
  store %struct.glink_channel* %20, %struct.glink_channel** %10, align 8
  %21 = load %struct.qcom_glink*, %struct.qcom_glink** %5, align 8
  %22 = getelementptr inbounds %struct.qcom_glink, %struct.qcom_glink* %21, i32 0, i32 1
  %23 = load i64, i64* %11, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* %22, i64 %23)
  %25 = load %struct.glink_channel*, %struct.glink_channel** %10, align 8
  %26 = icmp ne %struct.glink_channel* %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %4
  %28 = load %struct.qcom_glink*, %struct.qcom_glink** %5, align 8
  %29 = getelementptr inbounds %struct.qcom_glink, %struct.qcom_glink* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %72

32:                                               ; preds = %4
  %33 = load %struct.glink_channel*, %struct.glink_channel** %10, align 8
  %34 = getelementptr inbounds %struct.glink_channel, %struct.glink_channel* %33, i32 0, i32 0
  %35 = load i64, i64* %11, align 8
  %36 = call i32 @spin_lock_irqsave(i32* %34, i64 %35)
  %37 = load %struct.glink_channel*, %struct.glink_channel** %10, align 8
  %38 = getelementptr inbounds %struct.glink_channel, %struct.glink_channel* %37, i32 0, i32 1
  %39 = load i32, i32* %7, align 4
  %40 = call i8* @idr_find(i32* %38, i32 %39)
  %41 = bitcast i8* %40 to %struct.glink_core_rx_intent*
  store %struct.glink_core_rx_intent* %41, %struct.glink_core_rx_intent** %9, align 8
  %42 = load %struct.glink_core_rx_intent*, %struct.glink_core_rx_intent** %9, align 8
  %43 = icmp ne %struct.glink_core_rx_intent* %42, null
  br i1 %43, label %53, label %44

44:                                               ; preds = %32
  %45 = load %struct.glink_channel*, %struct.glink_channel** %10, align 8
  %46 = getelementptr inbounds %struct.glink_channel, %struct.glink_channel* %45, i32 0, i32 0
  %47 = load i64, i64* %11, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  %49 = load %struct.qcom_glink*, %struct.qcom_glink** %5, align 8
  %50 = getelementptr inbounds %struct.qcom_glink, %struct.qcom_glink* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @dev_err(i32 %51, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %72

53:                                               ; preds = %32
  %54 = load %struct.glink_core_rx_intent*, %struct.glink_core_rx_intent** %9, align 8
  %55 = getelementptr inbounds %struct.glink_core_rx_intent, %struct.glink_core_rx_intent* %54, i32 0, i32 0
  store i32 0, i32* %55, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %67, label %58

58:                                               ; preds = %53
  %59 = load %struct.glink_channel*, %struct.glink_channel** %10, align 8
  %60 = getelementptr inbounds %struct.glink_channel, %struct.glink_channel* %59, i32 0, i32 1
  %61 = load %struct.glink_core_rx_intent*, %struct.glink_core_rx_intent** %9, align 8
  %62 = getelementptr inbounds %struct.glink_core_rx_intent, %struct.glink_core_rx_intent* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @idr_remove(i32* %60, i32 %63)
  %65 = load %struct.glink_core_rx_intent*, %struct.glink_core_rx_intent** %9, align 8
  %66 = call i32 @kfree(%struct.glink_core_rx_intent* %65)
  br label %67

67:                                               ; preds = %58, %53
  %68 = load %struct.glink_channel*, %struct.glink_channel** %10, align 8
  %69 = getelementptr inbounds %struct.glink_channel, %struct.glink_channel* %68, i32 0, i32 0
  %70 = load i64, i64* %11, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* %69, i64 %70)
  br label %72

72:                                               ; preds = %67, %44, %27
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i8* @idr_find(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @kfree(%struct.glink_core_rx_intent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
