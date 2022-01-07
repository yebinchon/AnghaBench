; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_tx_dummy_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_tx_dummy_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32, i32, i32*, i32 }

@WL1271_FLAG_DUMMY_PACKET_PENDING = common dso_local global i32 0, align 4
@WL1271_FLAG_FW_TX_BUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1271_tx_dummy_packet(%struct.wl1271* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wl1271*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %3, align 8
  %6 = load i32, i32* @WL1271_FLAG_DUMMY_PACKET_PENDING, align 4
  %7 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %8 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %7, i32 0, i32 0
  %9 = call i64 @test_bit(i32 %6, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %47

12:                                               ; preds = %1
  %13 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %14 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @skb_get_queue_mapping(i32 %15)
  %17 = call i32 @wl1271_tx_get_queue(i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %19 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %18, i32 0, i32 1
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load i32, i32* @WL1271_FLAG_DUMMY_PACKET_PENDING, align 4
  %23 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %24 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %23, i32 0, i32 0
  %25 = call i32 @set_bit(i32 %22, i32* %24)
  %26 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %27 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  %34 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %35 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %34, i32 0, i32 1
  %36 = load i64, i64* %4, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  %38 = load i32, i32* @WL1271_FLAG_FW_TX_BUSY, align 4
  %39 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %40 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %39, i32 0, i32 0
  %41 = call i64 @test_bit(i32 %38, i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %12
  %44 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %45 = call i32 @wlcore_tx_work_locked(%struct.wl1271* %44)
  store i32 %45, i32* %2, align 4
  br label %47

46:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %43, %11
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @wl1271_tx_get_queue(i32) #1

declare dso_local i32 @skb_get_queue_mapping(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wlcore_tx_work_locked(%struct.wl1271*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
