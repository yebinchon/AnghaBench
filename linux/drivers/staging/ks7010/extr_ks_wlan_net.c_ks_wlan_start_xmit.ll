; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_wlan_net.c_ks_wlan_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_wlan_net.c_ks_wlan_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.ks_wlan_private = type { i64 }

@.str = private unnamed_addr constant [20 x i8] c"in_interrupt()=%ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"ks_wlan:  skb == NULL!!!\0A\00", align 1
@DEVICE_STATE_READY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"hostif_data_request error: =%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @ks_wlan_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ks_wlan_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ks_wlan_private*, align 8
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %5, align 8
  %9 = call %struct.ks_wlan_private* @netdev_priv(%struct.net_device* %8)
  store %struct.ks_wlan_private* %9, %struct.ks_wlan_private** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call i32 (...) @in_interrupt()
  %12 = call i32 @netdev_dbg(%struct.net_device* %10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = icmp ne %struct.sk_buff* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %47

18:                                               ; preds = %2
  %19 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %6, align 8
  %20 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @DEVICE_STATE_READY, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = call i32 @dev_kfree_skb(%struct.sk_buff* %25)
  store i32 0, i32* %3, align 4
  br label %47

27:                                               ; preds = %18
  %28 = load %struct.net_device*, %struct.net_device** %5, align 8
  %29 = call i64 @netif_running(%struct.net_device* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load %struct.net_device*, %struct.net_device** %5, align 8
  %33 = call i32 @netif_stop_queue(%struct.net_device* %32)
  br label %34

34:                                               ; preds = %31, %27
  %35 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %6, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = call i32 @hostif_data_request(%struct.ks_wlan_private* %35, %struct.sk_buff* %36)
  store i32 %37, i32* %7, align 4
  %38 = load %struct.net_device*, %struct.net_device** %5, align 8
  %39 = call i32 @netif_trans_update(%struct.net_device* %38)
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %34
  %43 = load %struct.net_device*, %struct.net_device** %5, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %43, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %42, %34
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %24, %15
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.ks_wlan_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @hostif_data_request(%struct.ks_wlan_private*, %struct.sk_buff*) #1

declare dso_local i32 @netif_trans_update(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
