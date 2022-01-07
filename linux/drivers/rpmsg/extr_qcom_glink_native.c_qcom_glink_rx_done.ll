; ModuleID = '/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_glink_native.c_qcom_glink_rx_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_glink_native.c_qcom_glink_rx_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_glink = type { i64 }
%struct.glink_channel = type { i32, i32, i32, i32 }
%struct.glink_core_rx_intent = type { i32, i32, i32, %struct.glink_core_rx_intent* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qcom_glink*, %struct.glink_channel*, %struct.glink_core_rx_intent*)* @qcom_glink_rx_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qcom_glink_rx_done(%struct.qcom_glink* %0, %struct.glink_channel* %1, %struct.glink_core_rx_intent* %2) #0 {
  %4 = alloca %struct.qcom_glink*, align 8
  %5 = alloca %struct.glink_channel*, align 8
  %6 = alloca %struct.glink_core_rx_intent*, align 8
  store %struct.qcom_glink* %0, %struct.qcom_glink** %4, align 8
  store %struct.glink_channel* %1, %struct.glink_channel** %5, align 8
  store %struct.glink_core_rx_intent* %2, %struct.glink_core_rx_intent** %6, align 8
  %7 = load %struct.qcom_glink*, %struct.qcom_glink** %4, align 8
  %8 = getelementptr inbounds %struct.qcom_glink, %struct.qcom_glink* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %3
  %12 = load %struct.glink_core_rx_intent*, %struct.glink_core_rx_intent** %6, align 8
  %13 = getelementptr inbounds %struct.glink_core_rx_intent, %struct.glink_core_rx_intent* %12, i32 0, i32 3
  %14 = load %struct.glink_core_rx_intent*, %struct.glink_core_rx_intent** %13, align 8
  %15 = call i32 @kfree(%struct.glink_core_rx_intent* %14)
  %16 = load %struct.glink_core_rx_intent*, %struct.glink_core_rx_intent** %6, align 8
  %17 = call i32 @kfree(%struct.glink_core_rx_intent* %16)
  br label %51

18:                                               ; preds = %3
  %19 = load %struct.glink_core_rx_intent*, %struct.glink_core_rx_intent** %6, align 8
  %20 = getelementptr inbounds %struct.glink_core_rx_intent, %struct.glink_core_rx_intent* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %36, label %23

23:                                               ; preds = %18
  %24 = load %struct.glink_channel*, %struct.glink_channel** %5, align 8
  %25 = getelementptr inbounds %struct.glink_channel, %struct.glink_channel* %24, i32 0, i32 1
  %26 = call i32 @spin_lock(i32* %25)
  %27 = load %struct.glink_channel*, %struct.glink_channel** %5, align 8
  %28 = getelementptr inbounds %struct.glink_channel, %struct.glink_channel* %27, i32 0, i32 3
  %29 = load %struct.glink_core_rx_intent*, %struct.glink_core_rx_intent** %6, align 8
  %30 = getelementptr inbounds %struct.glink_core_rx_intent, %struct.glink_core_rx_intent* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @idr_remove(i32* %28, i32 %31)
  %33 = load %struct.glink_channel*, %struct.glink_channel** %5, align 8
  %34 = getelementptr inbounds %struct.glink_channel, %struct.glink_channel* %33, i32 0, i32 1
  %35 = call i32 @spin_unlock(i32* %34)
  br label %36

36:                                               ; preds = %23, %18
  %37 = load %struct.glink_channel*, %struct.glink_channel** %5, align 8
  %38 = getelementptr inbounds %struct.glink_channel, %struct.glink_channel* %37, i32 0, i32 1
  %39 = call i32 @spin_lock(i32* %38)
  %40 = load %struct.glink_core_rx_intent*, %struct.glink_core_rx_intent** %6, align 8
  %41 = getelementptr inbounds %struct.glink_core_rx_intent, %struct.glink_core_rx_intent* %40, i32 0, i32 0
  %42 = load %struct.glink_channel*, %struct.glink_channel** %5, align 8
  %43 = getelementptr inbounds %struct.glink_channel, %struct.glink_channel* %42, i32 0, i32 2
  %44 = call i32 @list_add_tail(i32* %41, i32* %43)
  %45 = load %struct.glink_channel*, %struct.glink_channel** %5, align 8
  %46 = getelementptr inbounds %struct.glink_channel, %struct.glink_channel* %45, i32 0, i32 1
  %47 = call i32 @spin_unlock(i32* %46)
  %48 = load %struct.glink_channel*, %struct.glink_channel** %5, align 8
  %49 = getelementptr inbounds %struct.glink_channel, %struct.glink_channel* %48, i32 0, i32 0
  %50 = call i32 @schedule_work(i32* %49)
  br label %51

51:                                               ; preds = %36, %11
  ret void
}

declare dso_local i32 @kfree(%struct.glink_core_rx_intent*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
