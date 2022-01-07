; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/nfcmrvl/extr_fw_dnld.c_nfcmrvl_fw_dnld_recv_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/nfcmrvl/extr_fw_dnld.c_nfcmrvl_fw_dnld_recv_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfcmrvl_private = type { %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.sk_buff = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfcmrvl_fw_dnld_recv_frame(%struct.nfcmrvl_private* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.nfcmrvl_private*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.nfcmrvl_private* %0, %struct.nfcmrvl_private** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %5 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %3, align 8
  %6 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %5, i32 0, i32 1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = call i64 @timer_pending(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %3, align 8
  %13 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = call i32 @del_timer_sync(i32* %15)
  br label %17

17:                                               ; preds = %11, %2
  %18 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %3, align 8
  %19 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = call i32 @atomic_set(i32* %21, i32 1)
  %23 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %3, align 8
  %24 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = call i32 @skb_queue_tail(i32* %25, %struct.sk_buff* %26)
  %28 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %3, align 8
  %29 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %3, align 8
  %33 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = call i32 @queue_work(i32 %31, i32* %34)
  ret void
}

declare dso_local i64 @timer_pending(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
