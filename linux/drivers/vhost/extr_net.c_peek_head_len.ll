; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_net.c_peek_head_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_net.c_peek_head_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_net_virtqueue = type { i64 }
%struct.sock = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }

@VLAN_HLEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vhost_net_virtqueue*, %struct.sock*)* @peek_head_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @peek_head_len(%struct.vhost_net_virtqueue* %0, %struct.sock* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vhost_net_virtqueue*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.vhost_net_virtqueue* %0, %struct.vhost_net_virtqueue** %4, align 8
  store %struct.sock* %1, %struct.sock** %5, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.vhost_net_virtqueue*, %struct.vhost_net_virtqueue** %4, align 8
  %10 = getelementptr inbounds %struct.vhost_net_virtqueue, %struct.vhost_net_virtqueue* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.vhost_net_virtqueue*, %struct.vhost_net_virtqueue** %4, align 8
  %15 = call i32 @vhost_net_buf_peek(%struct.vhost_net_virtqueue* %14)
  store i32 %15, i32* %3, align 4
  br label %49

16:                                               ; preds = %2
  %17 = load %struct.sock*, %struct.sock** %5, align 8
  %18 = getelementptr inbounds %struct.sock, %struct.sock* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %8, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.sock*, %struct.sock** %5, align 8
  %23 = getelementptr inbounds %struct.sock, %struct.sock* %22, i32 0, i32 0
  %24 = call %struct.sk_buff* @skb_peek(%struct.TYPE_2__* %23)
  store %struct.sk_buff* %24, %struct.sk_buff** %6, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %26 = call i64 @likely(%struct.sk_buff* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %16
  %29 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %7, align 4
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = call i64 @skb_vlan_tag_present(%struct.sk_buff* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load i64, i64* @VLAN_HLEN, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %38, %36
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %35, %28
  br label %42

42:                                               ; preds = %41, %16
  %43 = load %struct.sock*, %struct.sock** %5, align 8
  %44 = getelementptr inbounds %struct.sock, %struct.sock* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %42, %13
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @vhost_net_buf_peek(%struct.vhost_net_virtqueue*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.sk_buff* @skb_peek(%struct.TYPE_2__*) #1

declare dso_local i64 @likely(%struct.sk_buff*) #1

declare dso_local i64 @skb_vlan_tag_present(%struct.sk_buff*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
