; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_txrx.c_tx_policy_clean.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_txrx.c_tx_policy_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { %struct.tx_policy_cache }
%struct.tx_policy_cache = type { i32, i32, %struct.tx_policy_cache_entry* }
%struct.tx_policy_cache_entry = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@TX_POLICY_CACHE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tx_policy_clean(%struct.cw1200_common* %0) #0 {
  %2 = alloca %struct.cw1200_common*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.tx_policy_cache*, align 8
  %6 = alloca %struct.tx_policy_cache_entry*, align 8
  store %struct.cw1200_common* %0, %struct.cw1200_common** %2, align 8
  %7 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %8 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %7, i32 0, i32 0
  store %struct.tx_policy_cache* %8, %struct.tx_policy_cache** %5, align 8
  %9 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %10 = call i32 @cw1200_tx_queues_lock(%struct.cw1200_common* %9)
  %11 = load %struct.tx_policy_cache*, %struct.tx_policy_cache** %5, align 8
  %12 = getelementptr inbounds %struct.tx_policy_cache, %struct.tx_policy_cache* %11, i32 0, i32 0
  %13 = call i32 @spin_lock_bh(i32* %12)
  %14 = load %struct.tx_policy_cache*, %struct.tx_policy_cache** %5, align 8
  %15 = getelementptr inbounds %struct.tx_policy_cache, %struct.tx_policy_cache* %14, i32 0, i32 1
  %16 = call i32 @list_empty(i32* %15)
  store i32 %16, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %47, %1
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @TX_POLICY_CACHE_SIZE, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %50

21:                                               ; preds = %17
  %22 = load %struct.tx_policy_cache*, %struct.tx_policy_cache** %5, align 8
  %23 = getelementptr inbounds %struct.tx_policy_cache, %struct.tx_policy_cache* %22, i32 0, i32 2
  %24 = load %struct.tx_policy_cache_entry*, %struct.tx_policy_cache_entry** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.tx_policy_cache_entry, %struct.tx_policy_cache_entry* %24, i64 %26
  store %struct.tx_policy_cache_entry* %27, %struct.tx_policy_cache_entry** %6, align 8
  %28 = load %struct.tx_policy_cache_entry*, %struct.tx_policy_cache_entry** %6, align 8
  %29 = getelementptr inbounds %struct.tx_policy_cache_entry, %struct.tx_policy_cache_entry* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @WARN_ON(i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %21
  %35 = load %struct.tx_policy_cache_entry*, %struct.tx_policy_cache_entry** %6, align 8
  %36 = getelementptr inbounds %struct.tx_policy_cache_entry, %struct.tx_policy_cache_entry* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = load %struct.tx_policy_cache_entry*, %struct.tx_policy_cache_entry** %6, align 8
  %39 = getelementptr inbounds %struct.tx_policy_cache_entry, %struct.tx_policy_cache_entry* %38, i32 0, i32 1
  %40 = load %struct.tx_policy_cache*, %struct.tx_policy_cache** %5, align 8
  %41 = getelementptr inbounds %struct.tx_policy_cache, %struct.tx_policy_cache* %40, i32 0, i32 1
  %42 = call i32 @list_move(i32* %39, i32* %41)
  br label %43

43:                                               ; preds = %34, %21
  %44 = load %struct.tx_policy_cache_entry*, %struct.tx_policy_cache_entry** %6, align 8
  %45 = getelementptr inbounds %struct.tx_policy_cache_entry, %struct.tx_policy_cache_entry* %44, i32 0, i32 0
  %46 = call i32 @memset(%struct.TYPE_2__* %45, i32 0, i32 8)
  br label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %3, align 4
  br label %17

50:                                               ; preds = %17
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %55 = call i32 @cw1200_tx_queues_unlock(%struct.cw1200_common* %54)
  br label %56

56:                                               ; preds = %53, %50
  %57 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %58 = call i32 @cw1200_tx_queues_unlock(%struct.cw1200_common* %57)
  %59 = load %struct.tx_policy_cache*, %struct.tx_policy_cache** %5, align 8
  %60 = getelementptr inbounds %struct.tx_policy_cache, %struct.tx_policy_cache* %59, i32 0, i32 0
  %61 = call i32 @spin_unlock_bh(i32* %60)
  ret void
}

declare dso_local i32 @cw1200_tx_queues_lock(%struct.cw1200_common*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i64 @WARN_ON(i64) #1

declare dso_local i32 @list_move(i32*, i32*) #1

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @cw1200_tx_queues_unlock(%struct.cw1200_common*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
