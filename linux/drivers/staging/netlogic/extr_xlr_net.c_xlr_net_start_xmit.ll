; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/netlogic/extr_xlr_net.c_xlr_net_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/netlogic/extr_xlr_net.c_xlr_net_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.nlm_fmn_msg = type { i32 }
%struct.xlr_net_priv = type { i32 }

@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @xlr_net_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlr_net_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.nlm_fmn_msg, align 4
  %6 = alloca %struct.xlr_net_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.xlr_net_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.xlr_net_priv* %10, %struct.xlr_net_priv** %6, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @virt_to_phys(i32 %13)
  %15 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %16 = call i32 @xlr_make_tx_desc(%struct.nlm_fmn_msg* %5, i32 %14, %struct.sk_buff* %15)
  %17 = call i32 (...) @nlm_cop2_enable_irqsave()
  store i32 %17, i32* %8, align 4
  %18 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %6, align 8
  %19 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @nlm_fmn_send(i32 2, i32 0, i32 %20, %struct.nlm_fmn_msg* %5)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @nlm_cop2_disable_irqrestore(i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %28 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %27)
  br label %29

29:                                               ; preds = %26, %2
  %30 = load i32, i32* @NETDEV_TX_OK, align 4
  ret i32 %30
}

declare dso_local %struct.xlr_net_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @xlr_make_tx_desc(%struct.nlm_fmn_msg*, i32, %struct.sk_buff*) #1

declare dso_local i32 @virt_to_phys(i32) #1

declare dso_local i32 @nlm_cop2_enable_irqsave(...) #1

declare dso_local i32 @nlm_fmn_send(i32, i32, i32, %struct.nlm_fmn_msg*) #1

declare dso_local i32 @nlm_cop2_disable_irqrestore(i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
