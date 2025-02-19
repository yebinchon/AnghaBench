; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_p80211netdev.c_unregister_wlandev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_p80211netdev.c_unregister_wlandev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlandevice = type { i32, i32 }
%struct.sk_buff = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unregister_wlandev(%struct.wlandevice* %0) #0 {
  %2 = alloca %struct.wlandevice*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  store %struct.wlandevice* %0, %struct.wlandevice** %2, align 8
  %4 = load %struct.wlandevice*, %struct.wlandevice** %2, align 8
  %5 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @unregister_netdev(i32 %6)
  br label %8

8:                                                ; preds = %13, %1
  %9 = load %struct.wlandevice*, %struct.wlandevice** %2, align 8
  %10 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %9, i32 0, i32 0
  %11 = call %struct.sk_buff* @skb_dequeue(i32* %10)
  store %struct.sk_buff* %11, %struct.sk_buff** %3, align 8
  %12 = icmp ne %struct.sk_buff* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %15 = call i32 @dev_kfree_skb(%struct.sk_buff* %14)
  br label %8

16:                                               ; preds = %8
  ret i32 0
}

declare dso_local i32 @unregister_netdev(i32) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
