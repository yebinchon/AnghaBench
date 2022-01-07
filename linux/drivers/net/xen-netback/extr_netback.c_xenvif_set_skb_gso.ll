; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_netback.c_xenvif_set_skb_gso.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_netback.c_xenvif_set_skb_gso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenvif = type { i32 }
%struct.sk_buff = type { i32 }
%struct.xen_netif_extra_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_6__ = type { i64, i32 }

@.str = private unnamed_addr constant [28 x i8] c"GSO size must not be zero.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SKB_GSO_TCPV4 = common dso_local global i32 0, align 4
@SKB_GSO_TCPV6 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Bad GSO type %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xenvif*, %struct.sk_buff*, %struct.xen_netif_extra_info*)* @xenvif_set_skb_gso to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xenvif_set_skb_gso(%struct.xenvif* %0, %struct.sk_buff* %1, %struct.xen_netif_extra_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xenvif*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.xen_netif_extra_info*, align 8
  store %struct.xenvif* %0, %struct.xenvif** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.xen_netif_extra_info* %2, %struct.xen_netif_extra_info** %7, align 8
  %8 = load %struct.xen_netif_extra_info*, %struct.xen_netif_extra_info** %7, align 8
  %9 = getelementptr inbounds %struct.xen_netif_extra_info, %struct.xen_netif_extra_info* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %3
  %15 = load %struct.xenvif*, %struct.xenvif** %5, align 8
  %16 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (i32, i8*, ...) @netdev_err(i32 %17, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.xenvif*, %struct.xenvif** %5, align 8
  %20 = call i32 @xenvif_fatal_tx_err(%struct.xenvif* %19)
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %62

23:                                               ; preds = %3
  %24 = load %struct.xen_netif_extra_info*, %struct.xen_netif_extra_info** %7, align 8
  %25 = getelementptr inbounds %struct.xen_netif_extra_info, %struct.xen_netif_extra_info* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %39 [
    i32 129, label %29
    i32 128, label %34
  ]

29:                                               ; preds = %23
  %30 = load i32, i32* @SKB_GSO_TCPV4, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %32 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %31)
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 8
  br label %53

34:                                               ; preds = %23
  %35 = load i32, i32* @SKB_GSO_TCPV6, align 4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %37 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %36)
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  store i32 %35, i32* %38, align 8
  br label %53

39:                                               ; preds = %23
  %40 = load %struct.xenvif*, %struct.xenvif** %5, align 8
  %41 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.xen_netif_extra_info*, %struct.xen_netif_extra_info** %7, align 8
  %44 = getelementptr inbounds %struct.xen_netif_extra_info, %struct.xen_netif_extra_info* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 (i32, i8*, ...) @netdev_err(i32 %42, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load %struct.xenvif*, %struct.xenvif** %5, align 8
  %50 = call i32 @xenvif_fatal_tx_err(%struct.xenvif* %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %62

53:                                               ; preds = %34, %29
  %54 = load %struct.xen_netif_extra_info*, %struct.xen_netif_extra_info** %7, align 8
  %55 = getelementptr inbounds %struct.xen_netif_extra_info, %struct.xen_netif_extra_info* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %60 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %59)
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  store i64 %58, i64* %61, align 8
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %53, %39, %14
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @netdev_err(i32, i8*, ...) #1

declare dso_local i32 @xenvif_fatal_tx_err(%struct.xenvif*) #1

declare dso_local %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
