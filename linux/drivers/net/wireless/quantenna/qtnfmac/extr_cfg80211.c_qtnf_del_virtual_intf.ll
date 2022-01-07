; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_cfg80211.c_qtnf_del_virtual_intf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_cfg80211.c_qtnf_del_virtual_intf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.wireless_dev = type { %struct.net_device* }
%struct.net_device = type { i64 }
%struct.qtnf_vif = type { %struct.TYPE_5__, %struct.TYPE_4__*, i32, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_6__ = type { i32 }
%struct.sk_buff = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@NETREG_REGISTERED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"VIF%u.%u: failed to delete VIF\0A\00", align 1
@NL80211_IFTYPE_UNSPECIFIED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qtnf_del_virtual_intf(%struct.wiphy* %0, %struct.wireless_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca %struct.wireless_dev*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.qtnf_vif*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store %struct.wireless_dev* %1, %struct.wireless_dev** %5, align 8
  %9 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %10 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %9, i32 0, i32 0
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = icmp ne %struct.net_device* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @WARN_ON(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EFAULT, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %84

21:                                               ; preds = %2
  %22 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %23 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %22, i32 0, i32 0
  %24 = load %struct.net_device*, %struct.net_device** %23, align 8
  %25 = call %struct.qtnf_vif* @qtnf_netdev_get_priv(%struct.net_device* %24)
  store %struct.qtnf_vif* %25, %struct.qtnf_vif** %7, align 8
  %26 = load %struct.qtnf_vif*, %struct.qtnf_vif** %7, align 8
  %27 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %26, i32 0, i32 3
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = call i32 @qtnf_scan_done(%struct.TYPE_6__* %28, i32 1)
  %30 = load %struct.net_device*, %struct.net_device** %6, align 8
  %31 = call i32 @netif_tx_stop_all_queues(%struct.net_device* %30)
  %32 = load %struct.net_device*, %struct.net_device** %6, align 8
  %33 = call i64 @netif_carrier_ok(%struct.net_device* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %21
  %36 = load %struct.net_device*, %struct.net_device** %6, align 8
  %37 = call i32 @netif_carrier_off(%struct.net_device* %36)
  br label %38

38:                                               ; preds = %35, %21
  br label %39

39:                                               ; preds = %44, %38
  %40 = load %struct.qtnf_vif*, %struct.qtnf_vif** %7, align 8
  %41 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %40, i32 0, i32 5
  %42 = call %struct.sk_buff* @skb_dequeue(i32* %41)
  store %struct.sk_buff* %42, %struct.sk_buff** %8, align 8
  %43 = icmp ne %struct.sk_buff* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %46 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %45)
  br label %39

47:                                               ; preds = %39
  %48 = load %struct.qtnf_vif*, %struct.qtnf_vif** %7, align 8
  %49 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %48, i32 0, i32 4
  %50 = call i32 @cancel_work_sync(i32* %49)
  %51 = load %struct.net_device*, %struct.net_device** %6, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @NETREG_REGISTERED, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %47
  %57 = load %struct.net_device*, %struct.net_device** %6, align 8
  %58 = call i32 @unregister_netdevice(%struct.net_device* %57)
  br label %59

59:                                               ; preds = %56, %47
  %60 = load %struct.qtnf_vif*, %struct.qtnf_vif** %7, align 8
  %61 = call i64 @qtnf_cmd_send_del_intf(%struct.qtnf_vif* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %59
  %64 = load %struct.qtnf_vif*, %struct.qtnf_vif** %7, align 8
  %65 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %64, i32 0, i32 3
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.qtnf_vif*, %struct.qtnf_vif** %7, align 8
  %70 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %68, i32 %71)
  br label %73

73:                                               ; preds = %63, %59
  %74 = load %struct.qtnf_vif*, %struct.qtnf_vif** %7, align 8
  %75 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %74, i32 0, i32 1
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  store i32* null, i32** %77, align 8
  %78 = load %struct.qtnf_vif*, %struct.qtnf_vif** %7, align 8
  %79 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %78, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %79, align 8
  %80 = load i32, i32* @NL80211_IFTYPE_UNSPECIFIED, align 4
  %81 = load %struct.qtnf_vif*, %struct.qtnf_vif** %7, align 8
  %82 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  store i32 %80, i32* %83, align 8
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %73, %18
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.qtnf_vif* @qtnf_netdev_get_priv(%struct.net_device*) #1

declare dso_local i32 @qtnf_scan_done(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @netif_tx_stop_all_queues(%struct.net_device*) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @unregister_netdevice(%struct.net_device*) #1

declare dso_local i64 @qtnf_cmd_send_del_intf(%struct.qtnf_vif*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
