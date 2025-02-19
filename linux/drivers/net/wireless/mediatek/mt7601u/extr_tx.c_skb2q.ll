; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_tx.c_skb2q.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_tx.c_skb2q.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }

@MT_TXQ_PSD = common dso_local global i32 0, align 4
@MT_TXQ_BE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @skb2q to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skb2q(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %4 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %5 = call i32 @skb_get_queue_mapping(%struct.sk_buff* %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @MT_TXQ_PSD, align 4
  %8 = icmp sge i32 %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i64 @WARN_ON(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load i32, i32* @MT_TXQ_BE, align 4
  store i32 %13, i32* %3, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @skb_set_queue_mapping(%struct.sk_buff* %14, i32 %15)
  br label %17

17:                                               ; preds = %12, %1
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @q2hwq(i32 %18)
  ret i32 %19
}

declare dso_local i32 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @skb_set_queue_mapping(%struct.sk_buff*, i32) #1

declare dso_local i32 @q2hwq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
