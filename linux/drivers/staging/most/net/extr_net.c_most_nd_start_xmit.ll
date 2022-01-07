; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/net/extr_net.c_most_nd_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/net/extr_net.c_most_nd_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.net_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.net_dev_context = type { i64, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.mbo = type { i32 }

@comp = common dso_local global i32 0, align 4
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @most_nd_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @most_nd_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.net_dev_context*, align 8
  %7 = alloca %struct.mbo*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = call %struct.net_dev_context* @netdev_priv(%struct.net_device* %9)
  store %struct.net_dev_context* %10, %struct.net_dev_context** %6, align 8
  %11 = load %struct.net_dev_context*, %struct.net_dev_context** %6, align 8
  %12 = getelementptr inbounds %struct.net_dev_context, %struct.net_dev_context* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.net_dev_context*, %struct.net_dev_context** %6, align 8
  %15 = getelementptr inbounds %struct.net_dev_context, %struct.net_dev_context* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.mbo* @most_get_mbo(i32 %13, i32 %17, i32* @comp)
  store %struct.mbo* %18, %struct.mbo** %7, align 8
  %19 = load %struct.mbo*, %struct.mbo** %7, align 8
  %20 = icmp ne %struct.mbo* %19, null
  br i1 %20, label %30, label %21

21:                                               ; preds = %2
  %22 = load %struct.net_device*, %struct.net_device** %5, align 8
  %23 = call i32 @netif_stop_queue(%struct.net_device* %22)
  %24 = load %struct.net_device*, %struct.net_device** %5, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %29, i32* %3, align 4
  br label %78

30:                                               ; preds = %2
  %31 = load %struct.net_dev_context*, %struct.net_dev_context** %6, align 8
  %32 = getelementptr inbounds %struct.net_dev_context, %struct.net_dev_context* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = load %struct.mbo*, %struct.mbo** %7, align 8
  %38 = call i32 @skb_to_mamac(%struct.sk_buff* %36, %struct.mbo* %37)
  store i32 %38, i32* %8, align 4
  br label %43

39:                                               ; preds = %30
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = load %struct.mbo*, %struct.mbo** %7, align 8
  %42 = call i32 @skb_to_mep(%struct.sk_buff* %40, %struct.mbo* %41)
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %39, %35
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %43
  %47 = load %struct.mbo*, %struct.mbo** %7, align 8
  %48 = call i32 @most_put_mbo(%struct.mbo* %47)
  %49 = load %struct.net_device*, %struct.net_device** %5, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  %54 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %55 = call i32 @kfree_skb(%struct.sk_buff* %54)
  %56 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %56, i32* %3, align 4
  br label %78

57:                                               ; preds = %43
  %58 = load %struct.mbo*, %struct.mbo** %7, align 8
  %59 = call i32 @most_submit_mbo(%struct.mbo* %58)
  %60 = load %struct.net_device*, %struct.net_device** %5, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  %65 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.net_device*, %struct.net_device** %5, align 8
  %69 = getelementptr inbounds %struct.net_device, %struct.net_device* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %72, %67
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %70, align 4
  %75 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %76 = call i32 @kfree_skb(%struct.sk_buff* %75)
  %77 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %57, %46, %21
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local %struct.net_dev_context* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.mbo* @most_get_mbo(i32, i32, i32*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @skb_to_mamac(%struct.sk_buff*, %struct.mbo*) #1

declare dso_local i32 @skb_to_mep(%struct.sk_buff*, %struct.mbo*) #1

declare dso_local i32 @most_put_mbo(%struct.mbo*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @most_submit_mbo(%struct.mbo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
