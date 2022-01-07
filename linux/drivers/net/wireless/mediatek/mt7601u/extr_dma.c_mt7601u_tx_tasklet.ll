; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_dma.c_mt7601u_tx_tasklet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_dma.c_mt7601u_tx_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7601u_dev = type { i32, i32, i32, i32, i32 }
%struct.sk_buff_head = type { i32 }
%struct.sk_buff = type { i32 }

@MT7601U_STATE_MORE_STATS = common dso_local global i32 0, align 4
@MT7601U_STATE_READING_STATS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @mt7601u_tx_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7601u_tx_tasklet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.mt7601u_dev*, align 8
  %4 = alloca %struct.sk_buff_head, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = inttoptr i64 %7 to %struct.mt7601u_dev*
  store %struct.mt7601u_dev* %8, %struct.mt7601u_dev** %3, align 8
  %9 = call i32 @__skb_queue_head_init(%struct.sk_buff_head* %4)
  %10 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %11 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %10, i32 0, i32 0
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load i32, i32* @MT7601U_STATE_MORE_STATS, align 4
  %15 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %16 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %15, i32 0, i32 4
  %17 = call i32 @set_bit(i32 %14, i32* %16)
  %18 = load i32, i32* @MT7601U_STATE_READING_STATS, align 4
  %19 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %20 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %19, i32 0, i32 4
  %21 = call i32 @test_and_set_bit(i32 %18, i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %1
  %24 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %25 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %28 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %27, i32 0, i32 2
  %29 = call i32 @msecs_to_jiffies(i32 10)
  %30 = call i32 @queue_delayed_work(i32 %26, i32* %28, i32 %29)
  br label %31

31:                                               ; preds = %23, %1
  %32 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %33 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %32, i32 0, i32 1
  %34 = call i32 @skb_queue_splice_init(i32* %33, %struct.sk_buff_head* %4)
  %35 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %36 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %35, i32 0, i32 0
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  br label %39

39:                                               ; preds = %43, %31
  %40 = call i32 @skb_queue_empty(%struct.sk_buff_head* %4)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = call %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head* %4)
  store %struct.sk_buff* %44, %struct.sk_buff** %6, align 8
  %45 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = call i32 @mt7601u_tx_status(%struct.mt7601u_dev* %45, %struct.sk_buff* %46)
  br label %39

48:                                               ; preds = %39
  ret void
}

declare dso_local i32 @__skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @skb_queue_splice_init(i32*, %struct.sk_buff_head*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @skb_queue_empty(%struct.sk_buff_head*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head*) #1

declare dso_local i32 @mt7601u_tx_status(%struct.mt7601u_dev*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
