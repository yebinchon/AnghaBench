; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_target.c_cxgbit_rxq_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_target.c_cxgbit_rxq_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbit_sock = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxgbit_sock*, %struct.sk_buff_head*)* @cxgbit_rxq_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgbit_rxq_len(%struct.cxgbit_sock* %0, %struct.sk_buff_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cxgbit_sock*, align 8
  %5 = alloca %struct.sk_buff_head*, align 8
  store %struct.cxgbit_sock* %0, %struct.cxgbit_sock** %4, align 8
  store %struct.sk_buff_head* %1, %struct.sk_buff_head** %5, align 8
  %6 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %4, align 8
  %7 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = call i32 @spin_lock_bh(i32* %8)
  %10 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %4, align 8
  %11 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %10, i32 0, i32 0
  %12 = call i64 @skb_queue_len(%struct.TYPE_3__* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %4, align 8
  %16 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %15, i32 0, i32 0
  %17 = load %struct.sk_buff_head*, %struct.sk_buff_head** %5, align 8
  %18 = call i32 @skb_queue_splice_init(%struct.TYPE_3__* %16, %struct.sk_buff_head* %17)
  %19 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %4, align 8
  %20 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = call i32 @spin_unlock_bh(i32* %21)
  store i32 1, i32* %3, align 4
  br label %28

23:                                               ; preds = %2
  %24 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %4, align 8
  %25 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = call i32 @spin_unlock_bh(i32* %26)
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %23, %14
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @skb_queue_len(%struct.TYPE_3__*) #1

declare dso_local i32 @skb_queue_splice_init(%struct.TYPE_3__*, %struct.sk_buff_head*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
