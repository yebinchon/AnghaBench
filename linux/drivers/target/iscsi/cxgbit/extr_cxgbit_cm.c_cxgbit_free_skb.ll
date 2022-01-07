; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_cm.c_cxgbit_free_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_cm.c_cxgbit_free_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbit_sock = type { i32, i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cxgbit_sock*)* @cxgbit_free_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxgbit_free_skb(%struct.cxgbit_sock* %0) #0 {
  %2 = alloca %struct.cxgbit_sock*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  store %struct.cxgbit_sock* %0, %struct.cxgbit_sock** %2, align 8
  %4 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %2, align 8
  %5 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %4, i32 0, i32 5
  %6 = call i32 @__skb_queue_purge(i32* %5)
  %7 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %2, align 8
  %8 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %7, i32 0, i32 4
  %9 = call i32 @__skb_queue_purge(i32* %8)
  %10 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %2, align 8
  %11 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %10, i32 0, i32 3
  %12 = call i32 @__skb_queue_purge(i32* %11)
  %13 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %2, align 8
  %14 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %13, i32 0, i32 2
  %15 = call i32 @__skb_queue_purge(i32* %14)
  %16 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %2, align 8
  %17 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %16, i32 0, i32 1
  %18 = call i32 @__skb_queue_purge(i32* %17)
  br label %19

19:                                               ; preds = %23, %1
  %20 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %2, align 8
  %21 = call %struct.sk_buff* @cxgbit_sock_dequeue_wr(%struct.cxgbit_sock* %20)
  store %struct.sk_buff* %21, %struct.sk_buff** %3, align 8
  %22 = icmp ne %struct.sk_buff* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %25 = call i32 @kfree_skb(%struct.sk_buff* %24)
  br label %19

26:                                               ; preds = %19
  %27 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %2, align 8
  %28 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @__kfree_skb(i32 %29)
  ret void
}

declare dso_local i32 @__skb_queue_purge(i32*) #1

declare dso_local %struct.sk_buff* @cxgbit_sock_dequeue_wr(%struct.cxgbit_sock*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @__kfree_skb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
