; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_main.c_cxgbit_queue_lro_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_main.c_cxgbit_queue_lro_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbit_sock = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cxgbit_sock*, %struct.sk_buff*)* @cxgbit_queue_lro_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxgbit_queue_lro_skb(%struct.cxgbit_sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.cxgbit_sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  store %struct.cxgbit_sock* %0, %struct.cxgbit_sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %3, align 8
  %7 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %3, align 8
  %11 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %10, i32 0, i32 1
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = call i32 @__skb_queue_tail(%struct.TYPE_3__* %11, %struct.sk_buff* %12)
  %14 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %3, align 8
  %15 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %14, i32 0, i32 1
  %16 = call i32 @skb_queue_len(%struct.TYPE_3__* %15)
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 1, i32* %5, align 4
  br label %19

19:                                               ; preds = %18, %2
  %20 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %3, align 8
  %21 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = call i32 @spin_unlock(i32* %22)
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %3, align 8
  %28 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %27, i32 0, i32 0
  %29 = call i32 @wake_up(i32* %28)
  br label %30

30:                                               ; preds = %26, %19
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__skb_queue_tail(%struct.TYPE_3__*, %struct.sk_buff*) #1

declare dso_local i32 @skb_queue_len(%struct.TYPE_3__*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
