; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks7010_sdio.c_enqueue_txdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks7010_sdio.c_enqueue_txdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks_wlan_private = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, %struct.tx_device_buffer* }
%struct.tx_device_buffer = type { i8*, i64, void (%struct.ks_wlan_private.0*, %struct.sk_buff*)*, %struct.sk_buff.1* }
%struct.ks_wlan_private.0 = type opaque
%struct.sk_buff = type opaque
%struct.sk_buff.1 = type { i32 }

@DEVICE_STATE_BOOT = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@TX_DEVICE_BUFF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"tx buffer overflow\0A\00", align 1
@EOVERFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ks_wlan_private*, i8*, i64, void (%struct.ks_wlan_private*, %struct.sk_buff.1*)*, %struct.sk_buff.1*)* @enqueue_txdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enqueue_txdev(%struct.ks_wlan_private* %0, i8* %1, i64 %2, void (%struct.ks_wlan_private*, %struct.sk_buff.1*)* %3, %struct.sk_buff.1* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ks_wlan_private*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca void (%struct.ks_wlan_private*, %struct.sk_buff.1*)*, align 8
  %11 = alloca %struct.sk_buff.1*, align 8
  %12 = alloca %struct.tx_device_buffer*, align 8
  %13 = alloca i32, align 4
  store %struct.ks_wlan_private* %0, %struct.ks_wlan_private** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store void (%struct.ks_wlan_private*, %struct.sk_buff.1*)* %3, void (%struct.ks_wlan_private*, %struct.sk_buff.1*)** %10, align 8
  store %struct.sk_buff.1* %4, %struct.sk_buff.1** %11, align 8
  %14 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %7, align 8
  %15 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @DEVICE_STATE_BOOT, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load i32, i32* @EPERM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %13, align 4
  br label %60

22:                                               ; preds = %5
  %23 = load i32, i32* @TX_DEVICE_BUFF_SIZE, align 4
  %24 = sub nsw i32 %23, 1
  %25 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %7, align 8
  %26 = call i32 @txq_count(%struct.ks_wlan_private* %25)
  %27 = icmp sle i32 %24, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %7, align 8
  %30 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @netdev_err(i32 %31, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EOVERFLOW, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %13, align 4
  br label %60

35:                                               ; preds = %22
  %36 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %7, align 8
  %37 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load %struct.tx_device_buffer*, %struct.tx_device_buffer** %38, align 8
  %40 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %7, align 8
  %41 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.tx_device_buffer, %struct.tx_device_buffer* %39, i64 %43
  store %struct.tx_device_buffer* %44, %struct.tx_device_buffer** %12, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = load %struct.tx_device_buffer*, %struct.tx_device_buffer** %12, align 8
  %47 = getelementptr inbounds %struct.tx_device_buffer, %struct.tx_device_buffer* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  %48 = load i64, i64* %9, align 8
  %49 = load %struct.tx_device_buffer*, %struct.tx_device_buffer** %12, align 8
  %50 = getelementptr inbounds %struct.tx_device_buffer, %struct.tx_device_buffer* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  %51 = load void (%struct.ks_wlan_private*, %struct.sk_buff.1*)*, void (%struct.ks_wlan_private*, %struct.sk_buff.1*)** %10, align 8
  %52 = bitcast void (%struct.ks_wlan_private*, %struct.sk_buff.1*)* %51 to void (%struct.ks_wlan_private.0*, %struct.sk_buff*)*
  %53 = load %struct.tx_device_buffer*, %struct.tx_device_buffer** %12, align 8
  %54 = getelementptr inbounds %struct.tx_device_buffer, %struct.tx_device_buffer* %53, i32 0, i32 2
  store void (%struct.ks_wlan_private.0*, %struct.sk_buff*)* %52, void (%struct.ks_wlan_private.0*, %struct.sk_buff*)** %54, align 8
  %55 = load %struct.sk_buff.1*, %struct.sk_buff.1** %11, align 8
  %56 = load %struct.tx_device_buffer*, %struct.tx_device_buffer** %12, align 8
  %57 = getelementptr inbounds %struct.tx_device_buffer, %struct.tx_device_buffer* %56, i32 0, i32 3
  store %struct.sk_buff.1* %55, %struct.sk_buff.1** %57, align 8
  %58 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %7, align 8
  %59 = call i32 @inc_txqtail(%struct.ks_wlan_private* %58)
  store i32 0, i32* %6, align 4
  br label %71

60:                                               ; preds = %28, %19
  %61 = load i8*, i8** %8, align 8
  %62 = call i32 @kfree(i8* %61)
  %63 = load void (%struct.ks_wlan_private*, %struct.sk_buff.1*)*, void (%struct.ks_wlan_private*, %struct.sk_buff.1*)** %10, align 8
  %64 = icmp ne void (%struct.ks_wlan_private*, %struct.sk_buff.1*)* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load void (%struct.ks_wlan_private*, %struct.sk_buff.1*)*, void (%struct.ks_wlan_private*, %struct.sk_buff.1*)** %10, align 8
  %67 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %7, align 8
  %68 = load %struct.sk_buff.1*, %struct.sk_buff.1** %11, align 8
  call void %66(%struct.ks_wlan_private* %67, %struct.sk_buff.1* %68)
  br label %69

69:                                               ; preds = %65, %60
  %70 = load i32, i32* %13, align 4
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %69, %35
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local i32 @txq_count(%struct.ks_wlan_private*) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @inc_txqtail(%struct.ks_wlan_private*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
