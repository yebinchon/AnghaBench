; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_tx.c_wlcore_stop_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_tx.c_wlcore_stop_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32, i32, i32* }

@WLCORE_NUM_MAC_ADDRESSES = common dso_local global i32 0, align 4
@NUM_TX_QUEUES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlcore_stop_queues(%struct.wl1271* %0, i32 %1) #0 {
  %3 = alloca %struct.wl1271*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.wl1271* %0, %struct.wl1271** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %8 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %7, i32 0, i32 0
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %27, %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @WLCORE_NUM_MAC_ADDRESSES, align 4
  %14 = load i32, i32* @NUM_TX_QUEUES, align 4
  %15 = mul nsw i32 %13, %14
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %11
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %20 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = call i32 @test_and_set_bit(i32 %18, i32* %24)
  %26 = call i32 @WARN_ON_ONCE(i32 %25)
  br label %27

27:                                               ; preds = %17
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %11

30:                                               ; preds = %11
  %31 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %32 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ieee80211_stop_queues(i32 %33)
  %35 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %36 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %35, i32 0, i32 0
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @ieee80211_stop_queues(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
