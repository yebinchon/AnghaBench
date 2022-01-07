; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_core.c_rtl8192_rtx_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_core.c_rtl8192_rtx_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, i32 }
%struct.sk_buff = type { i64 }
%struct.rtl8192_rx_info = type { i32 }

@CMDR = common dso_local global i32 0, align 4
@CR_TE = common dso_local global i32 0, align 4
@CR_RE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"skb_queue not empty\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8192_rtx_disable(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.r8192_priv*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.rtl8192_rx_info*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %7)
  store %struct.r8192_priv* %8, %struct.r8192_priv** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = load i32, i32* @CMDR, align 4
  %11 = call i32 @read_nic_byte(%struct.net_device* %9, i32 %10, i32* %3)
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = load i32, i32* @CMDR, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @CR_TE, align 4
  %16 = load i32, i32* @CR_RE, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = and i32 %14, %18
  %20 = call i32 @write_nic_byte(%struct.net_device* %12, i32 %13, i32 %19)
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = call i32 @force_pci_posting(%struct.net_device* %21)
  %23 = call i32 @mdelay(i32 10)
  br label %24

24:                                               ; preds = %39, %38, %1
  %25 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %26 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %25, i32 0, i32 1
  %27 = call %struct.sk_buff* @__skb_dequeue(i32* %26)
  store %struct.sk_buff* %27, %struct.sk_buff** %5, align 8
  %28 = icmp ne %struct.sk_buff* %27, null
  br i1 %28, label %29, label %46

29:                                               ; preds = %24
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.rtl8192_rx_info*
  store %struct.rtl8192_rx_info* %33, %struct.rtl8192_rx_info** %6, align 8
  %34 = load %struct.rtl8192_rx_info*, %struct.rtl8192_rx_info** %6, align 8
  %35 = getelementptr inbounds %struct.rtl8192_rx_info, %struct.rtl8192_rx_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %29
  br label %24

39:                                               ; preds = %29
  %40 = load %struct.rtl8192_rx_info*, %struct.rtl8192_rx_info** %6, align 8
  %41 = getelementptr inbounds %struct.rtl8192_rx_info, %struct.rtl8192_rx_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @usb_kill_urb(i32 %42)
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = call i32 @kfree_skb(%struct.sk_buff* %44)
  br label %24

46:                                               ; preds = %24
  %47 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %48 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %47, i32 0, i32 0
  %49 = call i64 @skb_queue_len(i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load %struct.net_device*, %struct.net_device** %2, align 8
  %53 = call i32 @netdev_warn(%struct.net_device* %52, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %46
  %55 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %56 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %55, i32 0, i32 0
  %57 = call i32 @skb_queue_purge(i32* %56)
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @read_nic_byte(%struct.net_device*, i32, i32*) #1

declare dso_local i32 @write_nic_byte(%struct.net_device*, i32, i32) #1

declare dso_local i32 @force_pci_posting(%struct.net_device*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(i32*) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
