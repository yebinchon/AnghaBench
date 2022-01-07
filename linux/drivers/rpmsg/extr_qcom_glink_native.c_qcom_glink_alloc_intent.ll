; ModuleID = '/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_glink_native.c_qcom_glink_alloc_intent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_glink_native.c_qcom_glink_alloc_intent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.glink_core_rx_intent = type { i32, i64, i32, %struct.glink_core_rx_intent* }
%struct.qcom_glink = type { i32 }
%struct.glink_channel = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.glink_core_rx_intent* (%struct.qcom_glink*, %struct.glink_channel*, i64, i32)* @qcom_glink_alloc_intent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.glink_core_rx_intent* @qcom_glink_alloc_intent(%struct.qcom_glink* %0, %struct.glink_channel* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.glink_core_rx_intent*, align 8
  %6 = alloca %struct.qcom_glink*, align 8
  %7 = alloca %struct.glink_channel*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.glink_core_rx_intent*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.qcom_glink* %0, %struct.qcom_glink** %6, align 8
  store %struct.glink_channel* %1, %struct.glink_channel** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i8* @kzalloc(i64 32, i32 %13)
  %15 = bitcast i8* %14 to %struct.glink_core_rx_intent*
  store %struct.glink_core_rx_intent* %15, %struct.glink_core_rx_intent** %10, align 8
  %16 = load %struct.glink_core_rx_intent*, %struct.glink_core_rx_intent** %10, align 8
  %17 = icmp ne %struct.glink_core_rx_intent* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store %struct.glink_core_rx_intent* null, %struct.glink_core_rx_intent** %5, align 8
  br label %71

19:                                               ; preds = %4
  %20 = load i64, i64* %8, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i8* @kzalloc(i64 %20, i32 %21)
  %23 = bitcast i8* %22 to %struct.glink_core_rx_intent*
  %24 = load %struct.glink_core_rx_intent*, %struct.glink_core_rx_intent** %10, align 8
  %25 = getelementptr inbounds %struct.glink_core_rx_intent, %struct.glink_core_rx_intent* %24, i32 0, i32 3
  store %struct.glink_core_rx_intent* %23, %struct.glink_core_rx_intent** %25, align 8
  %26 = load %struct.glink_core_rx_intent*, %struct.glink_core_rx_intent** %10, align 8
  %27 = getelementptr inbounds %struct.glink_core_rx_intent, %struct.glink_core_rx_intent* %26, i32 0, i32 3
  %28 = load %struct.glink_core_rx_intent*, %struct.glink_core_rx_intent** %27, align 8
  %29 = icmp ne %struct.glink_core_rx_intent* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %19
  br label %68

31:                                               ; preds = %19
  %32 = load %struct.glink_channel*, %struct.glink_channel** %7, align 8
  %33 = getelementptr inbounds %struct.glink_channel, %struct.glink_channel* %32, i32 0, i32 0
  %34 = load i64, i64* %12, align 8
  %35 = call i32 @spin_lock_irqsave(i32* %33, i64 %34)
  %36 = load %struct.glink_channel*, %struct.glink_channel** %7, align 8
  %37 = getelementptr inbounds %struct.glink_channel, %struct.glink_channel* %36, i32 0, i32 1
  %38 = load %struct.glink_core_rx_intent*, %struct.glink_core_rx_intent** %10, align 8
  %39 = load i32, i32* @GFP_ATOMIC, align 4
  %40 = call i32 @idr_alloc_cyclic(i32* %37, %struct.glink_core_rx_intent* %38, i32 1, i32 -1, i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %31
  %44 = load %struct.glink_channel*, %struct.glink_channel** %7, align 8
  %45 = getelementptr inbounds %struct.glink_channel, %struct.glink_channel* %44, i32 0, i32 0
  %46 = load i64, i64* %12, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  br label %63

48:                                               ; preds = %31
  %49 = load %struct.glink_channel*, %struct.glink_channel** %7, align 8
  %50 = getelementptr inbounds %struct.glink_channel, %struct.glink_channel* %49, i32 0, i32 0
  %51 = load i64, i64* %12, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.glink_core_rx_intent*, %struct.glink_core_rx_intent** %10, align 8
  %55 = getelementptr inbounds %struct.glink_core_rx_intent, %struct.glink_core_rx_intent* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load i64, i64* %8, align 8
  %57 = load %struct.glink_core_rx_intent*, %struct.glink_core_rx_intent** %10, align 8
  %58 = getelementptr inbounds %struct.glink_core_rx_intent, %struct.glink_core_rx_intent* %57, i32 0, i32 1
  store i64 %56, i64* %58, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.glink_core_rx_intent*, %struct.glink_core_rx_intent** %10, align 8
  %61 = getelementptr inbounds %struct.glink_core_rx_intent, %struct.glink_core_rx_intent* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  %62 = load %struct.glink_core_rx_intent*, %struct.glink_core_rx_intent** %10, align 8
  store %struct.glink_core_rx_intent* %62, %struct.glink_core_rx_intent** %5, align 8
  br label %71

63:                                               ; preds = %43
  %64 = load %struct.glink_core_rx_intent*, %struct.glink_core_rx_intent** %10, align 8
  %65 = getelementptr inbounds %struct.glink_core_rx_intent, %struct.glink_core_rx_intent* %64, i32 0, i32 3
  %66 = load %struct.glink_core_rx_intent*, %struct.glink_core_rx_intent** %65, align 8
  %67 = call i32 @kfree(%struct.glink_core_rx_intent* %66)
  br label %68

68:                                               ; preds = %63, %30
  %69 = load %struct.glink_core_rx_intent*, %struct.glink_core_rx_intent** %10, align 8
  %70 = call i32 @kfree(%struct.glink_core_rx_intent* %69)
  store %struct.glink_core_rx_intent* null, %struct.glink_core_rx_intent** %5, align 8
  br label %71

71:                                               ; preds = %68, %48, %18
  %72 = load %struct.glink_core_rx_intent*, %struct.glink_core_rx_intent** %5, align 8
  ret %struct.glink_core_rx_intent* %72
}

declare dso_local i8* @kzalloc(i64, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @idr_alloc_cyclic(i32*, %struct.glink_core_rx_intent*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(%struct.glink_core_rx_intent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
