; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_core.c_qtnf_packet_send_hi_pri.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_core.c_qtnf_packet_send_hi_pri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.qtnf_vif = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qtnf_packet_send_hi_pri(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.qtnf_vif*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %4 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %5 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.qtnf_vif* @qtnf_netdev_get_priv(i32 %6)
  store %struct.qtnf_vif* %7, %struct.qtnf_vif** %3, align 8
  %8 = load %struct.qtnf_vif*, %struct.qtnf_vif** %3, align 8
  %9 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %8, i32 0, i32 2
  %10 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %11 = call i32 @skb_queue_tail(i32* %9, %struct.sk_buff* %10)
  %12 = load %struct.qtnf_vif*, %struct.qtnf_vif** %3, align 8
  %13 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.qtnf_vif*, %struct.qtnf_vif** %3, align 8
  %20 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %19, i32 0, i32 0
  %21 = call i32 @queue_work(i32 %18, i32* %20)
  ret void
}

declare dso_local %struct.qtnf_vif* @qtnf_netdev_get_priv(i32) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
