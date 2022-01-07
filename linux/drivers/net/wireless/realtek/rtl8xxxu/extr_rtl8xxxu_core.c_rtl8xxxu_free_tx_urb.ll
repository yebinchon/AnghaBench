; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_core.c_rtl8xxxu_free_tx_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_core.c_rtl8xxxu_free_tx_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8xxxu_priv = type { i64, i32, i32, i32, i32 }
%struct.rtl8xxxu_tx_urb = type { i32 }

@RTL8XXXU_TX_URB_HIGH_WATER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8xxxu_priv*, %struct.rtl8xxxu_tx_urb*)* @rtl8xxxu_free_tx_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8xxxu_free_tx_urb(%struct.rtl8xxxu_priv* %0, %struct.rtl8xxxu_tx_urb* %1) #0 {
  %3 = alloca %struct.rtl8xxxu_priv*, align 8
  %4 = alloca %struct.rtl8xxxu_tx_urb*, align 8
  %5 = alloca i64, align 8
  store %struct.rtl8xxxu_priv* %0, %struct.rtl8xxxu_priv** %3, align 8
  store %struct.rtl8xxxu_tx_urb* %1, %struct.rtl8xxxu_tx_urb** %4, align 8
  %6 = load %struct.rtl8xxxu_tx_urb*, %struct.rtl8xxxu_tx_urb** %4, align 8
  %7 = getelementptr inbounds %struct.rtl8xxxu_tx_urb, %struct.rtl8xxxu_tx_urb* %6, i32 0, i32 0
  %8 = call i32 @INIT_LIST_HEAD(i32* %7)
  %9 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %10 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %9, i32 0, i32 2
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.rtl8xxxu_tx_urb*, %struct.rtl8xxxu_tx_urb** %4, align 8
  %14 = getelementptr inbounds %struct.rtl8xxxu_tx_urb, %struct.rtl8xxxu_tx_urb* %13, i32 0, i32 0
  %15 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %16 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %15, i32 0, i32 4
  %17 = call i32 @list_add(i32* %14, i32* %16)
  %18 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %19 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 1
  store i64 %21, i64* %19, align 8
  %22 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %23 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @RTL8XXXU_TX_URB_HIGH_WATER, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %2
  %28 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %29 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %34 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %33, i32 0, i32 1
  store i32 0, i32* %34, align 8
  %35 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %36 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @ieee80211_wake_queues(i32 %37)
  br label %39

39:                                               ; preds = %32, %27, %2
  %40 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %41 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %40, i32 0, i32 2
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @ieee80211_wake_queues(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
