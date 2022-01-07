; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_recv.c_recv_tasklet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_recv.c_recv_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct._adapter = type { %struct.recv_priv }
%struct.recv_priv = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @recv_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @recv_tasklet(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct._adapter*, align 8
  %5 = alloca %struct.recv_priv*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct._adapter*
  store %struct._adapter* %7, %struct._adapter** %4, align 8
  %8 = load %struct._adapter*, %struct._adapter** %4, align 8
  %9 = getelementptr inbounds %struct._adapter, %struct._adapter* %8, i32 0, i32 0
  store %struct.recv_priv* %9, %struct.recv_priv** %5, align 8
  br label %10

10:                                               ; preds = %34, %1
  %11 = load %struct.recv_priv*, %struct.recv_priv** %5, align 8
  %12 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %11, i32 0, i32 1
  %13 = call %struct.sk_buff* @skb_dequeue(i32* %12)
  store %struct.sk_buff* %13, %struct.sk_buff** %3, align 8
  %14 = icmp ne %struct.sk_buff* null, %13
  br i1 %14, label %15, label %35

15:                                               ; preds = %10
  %16 = load %struct._adapter*, %struct._adapter** %4, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %18 = call i32 @recvbuf2recvframe(%struct._adapter* %16, %struct.sk_buff* %17)
  %19 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %20 = call i32 @skb_reset_tail_pointer(%struct.sk_buff* %19)
  %21 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %24 = call i32 @skb_cloned(%struct.sk_buff* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %15
  %27 = load %struct.recv_priv*, %struct.recv_priv** %5, align 8
  %28 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %27, i32 0, i32 0
  %29 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %30 = call i32 @skb_queue_tail(i32* %28, %struct.sk_buff* %29)
  br label %34

31:                                               ; preds = %15
  %32 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %33 = call i32 @consume_skb(%struct.sk_buff* %32)
  br label %34

34:                                               ; preds = %31, %26
  br label %10

35:                                               ; preds = %10
  ret void
}

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @recvbuf2recvframe(%struct._adapter*, %struct.sk_buff*) #1

declare dso_local i32 @skb_reset_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32 @skb_cloned(%struct.sk_buff*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
