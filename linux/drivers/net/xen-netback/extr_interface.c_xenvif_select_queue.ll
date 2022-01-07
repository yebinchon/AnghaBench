; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_interface.c_xenvif_select_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_interface.c_xenvif_select_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.xenvif = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i64, i32**, i64 }

@XEN_NETIF_CTRL_HASH_ALGORITHM_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.sk_buff*, %struct.net_device*)* @xenvif_select_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xenvif_select_queue(%struct.net_device* %0, %struct.sk_buff* %1, %struct.net_device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.xenvif*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.net_device* %2, %struct.net_device** %7, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.xenvif* @netdev_priv(%struct.net_device* %11)
  store %struct.xenvif* %12, %struct.xenvif** %8, align 8
  %13 = load %struct.xenvif*, %struct.xenvif** %8, align 8
  %14 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %9, align 4
  %17 = load %struct.xenvif*, %struct.xenvif** %8, align 8
  %18 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @READ_ONCE(i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ult i32 %21, 1
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %70

24:                                               ; preds = %3
  %25 = load %struct.xenvif*, %struct.xenvif** %8, align 8
  %26 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @XEN_NETIF_CTRL_HASH_ALGORITHM_NONE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %24
  %32 = load %struct.net_device*, %struct.net_device** %5, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %34 = call i32 @netdev_pick_tx(%struct.net_device* %32, %struct.sk_buff* %33, i32* null)
  %35 = load %struct.net_device*, %struct.net_device** %5, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = urem i32 %34, %37
  store i32 %38, i32* %4, align 4
  br label %70

39:                                               ; preds = %24
  %40 = load %struct.xenvif*, %struct.xenvif** %8, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %42 = call i32 @xenvif_set_skb_hash(%struct.xenvif* %40, %struct.sk_buff* %41)
  %43 = load i32, i32* %9, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = call i32 @skb_get_hash_raw(%struct.sk_buff* %46)
  %48 = load %struct.net_device*, %struct.net_device** %5, align 8
  %49 = getelementptr inbounds %struct.net_device, %struct.net_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = urem i32 %47, %50
  store i32 %51, i32* %4, align 4
  br label %70

52:                                               ; preds = %39
  %53 = load %struct.xenvif*, %struct.xenvif** %8, align 8
  %54 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  %56 = load i32**, i32*** %55, align 8
  %57 = load %struct.xenvif*, %struct.xenvif** %8, align 8
  %58 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i32*, i32** %56, i64 %60
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %64 = call i32 @skb_get_hash_raw(%struct.sk_buff* %63)
  %65 = load i32, i32* %9, align 4
  %66 = urem i32 %64, %65
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %62, i64 %67
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %52, %45, %31, %23
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local %struct.xenvif* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @netdev_pick_tx(%struct.net_device*, %struct.sk_buff*, i32*) #1

declare dso_local i32 @xenvif_set_skb_hash(%struct.xenvif*, %struct.sk_buff*) #1

declare dso_local i32 @skb_get_hash_raw(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
