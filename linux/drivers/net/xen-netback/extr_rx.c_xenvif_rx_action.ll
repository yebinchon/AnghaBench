; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_rx.c_xenvif_rx_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_rx.c_xenvif_rx_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenvif_queue = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.sk_buff_head* }
%struct.sk_buff_head = type { i32 }

@RX_BATCH_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xenvif_rx_action(%struct.xenvif_queue* %0) #0 {
  %2 = alloca %struct.xenvif_queue*, align 8
  %3 = alloca %struct.sk_buff_head, align 4
  %4 = alloca i32, align 4
  store %struct.xenvif_queue* %0, %struct.xenvif_queue** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = call i32 @__skb_queue_head_init(%struct.sk_buff_head* %3)
  %6 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %7 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.sk_buff_head* %3, %struct.sk_buff_head** %8, align 8
  br label %9

9:                                                ; preds = %19, %1
  %10 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %11 = call i64 @xenvif_rx_ring_slots_available(%struct.xenvif_queue* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @RX_BATCH_SIZE, align 4
  %16 = icmp ult i32 %14, %15
  br label %17

17:                                               ; preds = %13, %9
  %18 = phi i1 [ false, %9 ], [ %16, %13 ]
  br i1 %18, label %19, label %24

19:                                               ; preds = %17
  %20 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %21 = call i32 @xenvif_rx_skb(%struct.xenvif_queue* %20)
  %22 = load i32, i32* %4, align 4
  %23 = add i32 %22, 1
  store i32 %23, i32* %4, align 4
  br label %9

24:                                               ; preds = %17
  %25 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %26 = call i32 @xenvif_rx_copy_flush(%struct.xenvif_queue* %25)
  ret void
}

declare dso_local i32 @__skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local i64 @xenvif_rx_ring_slots_available(%struct.xenvif_queue*) #1

declare dso_local i32 @xenvif_rx_skb(%struct.xenvif_queue*) #1

declare dso_local i32 @xenvif_rx_copy_flush(%struct.xenvif_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
