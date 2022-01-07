; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_target.c_cxgbit_wait_rxq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_target.c_cxgbit_wait_rxq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbit_sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.sk_buff_head = type { i32 }

@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxgbit_sock*)* @cxgbit_wait_rxq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgbit_wait_rxq(%struct.cxgbit_sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cxgbit_sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sk_buff_head, align 4
  store %struct.cxgbit_sock* %0, %struct.cxgbit_sock** %3, align 8
  %6 = call i32 @skb_queue_head_init(%struct.sk_buff_head* %5)
  %7 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %3, align 8
  %8 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %3, align 8
  %11 = call i32 @cxgbit_rxq_len(%struct.cxgbit_sock* %10, %struct.sk_buff_head* %5)
  %12 = call i32 @wait_event_interruptible(i32 %9, i32 %11)
  %13 = load i32, i32* @current, align 4
  %14 = call i64 @signal_pending(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %29

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %27, %17
  %19 = call %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head* %5)
  store %struct.sk_buff* %19, %struct.sk_buff** %4, align 8
  %20 = icmp ne %struct.sk_buff* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %3, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = call i64 @cxgbit_rx_skb(%struct.cxgbit_sock* %22, %struct.sk_buff* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %29

27:                                               ; preds = %21
  br label %18

28:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %31

29:                                               ; preds = %26, %16
  %30 = call i32 @__skb_queue_purge(%struct.sk_buff_head* %5)
  store i32 -1, i32* %2, align 4
  br label %31

31:                                               ; preds = %29, %28
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @cxgbit_rxq_len(%struct.cxgbit_sock*, %struct.sk_buff_head*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head*) #1

declare dso_local i64 @cxgbit_rx_skb(%struct.cxgbit_sock*, %struct.sk_buff*) #1

declare dso_local i32 @__skb_queue_purge(%struct.sk_buff_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
