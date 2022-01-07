; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_usb_ops_linux.c_rtl8188eu_recv_tasklet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_usb_ops_linux.c_rtl8188eu_recv_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.adapter = type { i64, i64, %struct.recv_priv }
%struct.recv_priv = type { i32, i32 }

@.str = private unnamed_addr constant [52 x i8] c"recv_tasklet => bDriverStopped or bSurpriseRemoved\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8188eu_recv_tasklet(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.recv_priv*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.adapter*
  store %struct.adapter* %7, %struct.adapter** %4, align 8
  %8 = load %struct.adapter*, %struct.adapter** %4, align 8
  %9 = getelementptr inbounds %struct.adapter, %struct.adapter* %8, i32 0, i32 2
  store %struct.recv_priv* %9, %struct.recv_priv** %5, align 8
  br label %10

10:                                               ; preds = %29, %1
  %11 = load %struct.recv_priv*, %struct.recv_priv** %5, align 8
  %12 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %11, i32 0, i32 1
  %13 = call %struct.sk_buff* @skb_dequeue(i32* %12)
  store %struct.sk_buff* %13, %struct.sk_buff** %3, align 8
  %14 = icmp ne %struct.sk_buff* null, %13
  br i1 %14, label %15, label %41

15:                                               ; preds = %10
  %16 = load %struct.adapter*, %struct.adapter** %4, align 8
  %17 = getelementptr inbounds %struct.adapter, %struct.adapter* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load %struct.adapter*, %struct.adapter** %4, align 8
  %22 = getelementptr inbounds %struct.adapter, %struct.adapter* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20, %15
  %26 = call i32 @DBG_88E(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %28 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %27)
  br label %41

29:                                               ; preds = %20
  %30 = load %struct.adapter*, %struct.adapter** %4, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %32 = call i32 @recvbuf2recvframe(%struct.adapter* %30, %struct.sk_buff* %31)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %34 = call i32 @skb_reset_tail_pointer(%struct.sk_buff* %33)
  %35 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  %37 = load %struct.recv_priv*, %struct.recv_priv** %5, align 8
  %38 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %37, i32 0, i32 0
  %39 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %40 = call i32 @skb_queue_tail(i32* %38, %struct.sk_buff* %39)
  br label %10

41:                                               ; preds = %25, %10
  ret void
}

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @DBG_88E(i8*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @recvbuf2recvframe(%struct.adapter*, %struct.sk_buff*) #1

declare dso_local i32 @skb_reset_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
