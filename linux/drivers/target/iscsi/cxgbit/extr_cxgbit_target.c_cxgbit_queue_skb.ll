; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_target.c_cxgbit_queue_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_target.c_cxgbit_queue_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbit_sock = type { i32, i32, i32, i32, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.sk_buff = type { i64 }

@CSK_STATE_ESTABLISHED = common dso_local global i64 0, align 8
@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxgbit_sock*, %struct.sk_buff*)* @cxgbit_queue_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgbit_queue_skb(%struct.cxgbit_sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cxgbit_sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  store %struct.cxgbit_sock* %0, %struct.cxgbit_sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %4, align 8
  %8 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %7, i32 0, i32 6
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %4, align 8
  %11 = call i32 @cxgbit_lock_sock(%struct.cxgbit_sock* %10)
  %12 = call i32 @wait_event_interruptible(i32 %9, i32 %11)
  %13 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %4, align 8
  %14 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %13, i32 0, i32 5
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @CSK_STATE_ESTABLISHED, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @current, align 4
  %21 = call i64 @signal_pending(i32 %20)
  %22 = icmp ne i64 %21, 0
  br label %23

23:                                               ; preds = %19, %2
  %24 = phi i1 [ true, %2 ], [ %22, %19 ]
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %50

28:                                               ; preds = %23
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = call i32 @__kfree_skb(%struct.sk_buff* %29)
  %31 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %4, align 8
  %32 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %31, i32 0, i32 1
  %33 = call i32 @__skb_queue_purge(i32* %32)
  store i32 -1, i32* %6, align 4
  %34 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %4, align 8
  %35 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %34, i32 0, i32 3
  %36 = call i32 @spin_lock_bh(i32* %35)
  %37 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %4, align 8
  %38 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %28
  %42 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %4, align 8
  %43 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %42, i32 0, i32 3
  %44 = call i32 @spin_unlock_bh(i32* %43)
  br label %74

45:                                               ; preds = %28
  %46 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %4, align 8
  %47 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %46, i32 0, i32 3
  %48 = call i32 @spin_unlock_bh(i32* %47)
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %3, align 4
  br label %78

50:                                               ; preds = %23
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %55 = call i64 @cxgbit_skcb_tx_extralen(%struct.sk_buff* %54)
  %56 = add nsw i64 %53, %55
  %57 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %4, align 8
  %58 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %60, %56
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %58, align 8
  %63 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %4, align 8
  %64 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %63, i32 0, i32 1
  %65 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %4, align 8
  %66 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %65, i32 0, i32 0
  %67 = call i32 @skb_queue_splice_tail_init(i32* %64, i32* %66)
  %68 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %4, align 8
  %69 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %68, i32 0, i32 0
  %70 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %71 = call i32 @__skb_queue_tail(i32* %69, %struct.sk_buff* %70)
  %72 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %4, align 8
  %73 = call i32 @cxgbit_push_tx_frames(%struct.cxgbit_sock* %72)
  br label %74

74:                                               ; preds = %50, %41
  %75 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %4, align 8
  %76 = call i32 @cxgbit_unlock_sock(%struct.cxgbit_sock* %75)
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %74, %45
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @cxgbit_lock_sock(%struct.cxgbit_sock*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @__kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @__skb_queue_purge(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i64 @cxgbit_skcb_tx_extralen(%struct.sk_buff*) #1

declare dso_local i32 @skb_queue_splice_tail_init(i32*, i32*) #1

declare dso_local i32 @__skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @cxgbit_push_tx_frames(%struct.cxgbit_sock*) #1

declare dso_local i32 @cxgbit_unlock_sock(%struct.cxgbit_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
