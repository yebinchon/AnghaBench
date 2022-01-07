; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_rx.c_xenvif_rx_next_frag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_rx.c_xenvif_rx_next_frag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenvif_pkt_state = type { i32, %struct.sk_buff*, %struct.sk_buff*, i64 }
%struct.sk_buff = type { %struct.sk_buff* }
%struct.TYPE_2__ = type { i32, %struct.sk_buff* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xenvif_pkt_state*)* @xenvif_rx_next_frag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xenvif_rx_next_frag(%struct.xenvif_pkt_state* %0) #0 {
  %2 = alloca %struct.xenvif_pkt_state*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  store %struct.xenvif_pkt_state* %0, %struct.xenvif_pkt_state** %2, align 8
  %5 = load %struct.xenvif_pkt_state*, %struct.xenvif_pkt_state** %2, align 8
  %6 = getelementptr inbounds %struct.xenvif_pkt_state, %struct.xenvif_pkt_state* %5, i32 0, i32 1
  %7 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %7, %struct.sk_buff** %3, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %9 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %4, align 4
  %12 = load %struct.xenvif_pkt_state*, %struct.xenvif_pkt_state** %2, align 8
  %13 = getelementptr inbounds %struct.xenvif_pkt_state, %struct.xenvif_pkt_state* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = add i32 %14, 1
  store i32 %15, i32* %13, align 8
  %16 = load %struct.xenvif_pkt_state*, %struct.xenvif_pkt_state** %2, align 8
  %17 = getelementptr inbounds %struct.xenvif_pkt_state, %struct.xenvif_pkt_state* %16, i32 0, i32 3
  store i64 0, i64* %17, align 8
  %18 = load %struct.xenvif_pkt_state*, %struct.xenvif_pkt_state** %2, align 8
  %19 = getelementptr inbounds %struct.xenvif_pkt_state, %struct.xenvif_pkt_state* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = icmp uge i32 %20, %21
  br i1 %22, label %23, label %45

23:                                               ; preds = %1
  %24 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %25 = load %struct.xenvif_pkt_state*, %struct.xenvif_pkt_state** %2, align 8
  %26 = getelementptr inbounds %struct.xenvif_pkt_state, %struct.xenvif_pkt_state* %25, i32 0, i32 2
  %27 = load %struct.sk_buff*, %struct.sk_buff** %26, align 8
  %28 = icmp eq %struct.sk_buff* %24, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  %30 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %31 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %30)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load %struct.sk_buff*, %struct.sk_buff** %32, align 8
  %34 = load %struct.xenvif_pkt_state*, %struct.xenvif_pkt_state** %2, align 8
  %35 = getelementptr inbounds %struct.xenvif_pkt_state, %struct.xenvif_pkt_state* %34, i32 0, i32 1
  store %struct.sk_buff* %33, %struct.sk_buff** %35, align 8
  br label %42

36:                                               ; preds = %23
  %37 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load %struct.sk_buff*, %struct.sk_buff** %38, align 8
  %40 = load %struct.xenvif_pkt_state*, %struct.xenvif_pkt_state** %2, align 8
  %41 = getelementptr inbounds %struct.xenvif_pkt_state, %struct.xenvif_pkt_state* %40, i32 0, i32 1
  store %struct.sk_buff* %39, %struct.sk_buff** %41, align 8
  br label %42

42:                                               ; preds = %36, %29
  %43 = load %struct.xenvif_pkt_state*, %struct.xenvif_pkt_state** %2, align 8
  %44 = getelementptr inbounds %struct.xenvif_pkt_state, %struct.xenvif_pkt_state* %43, i32 0, i32 0
  store i32 -1, i32* %44, align 8
  br label %45

45:                                               ; preds = %42, %1
  ret void
}

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
