; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_txrx.c_tx_policy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_txrx.c_tx_policy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { %struct.tx_policy_cache }
%struct.tx_policy_cache = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@TX_POLICY_CACHE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tx_policy_init(%struct.cw1200_common* %0) #0 {
  %2 = alloca %struct.cw1200_common*, align 8
  %3 = alloca %struct.tx_policy_cache*, align 8
  %4 = alloca i32, align 4
  store %struct.cw1200_common* %0, %struct.cw1200_common** %2, align 8
  %5 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %6 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %5, i32 0, i32 0
  store %struct.tx_policy_cache* %6, %struct.tx_policy_cache** %3, align 8
  %7 = load %struct.tx_policy_cache*, %struct.tx_policy_cache** %3, align 8
  %8 = call i32 @memset(%struct.tx_policy_cache* %7, i32 0, i32 24)
  %9 = load %struct.tx_policy_cache*, %struct.tx_policy_cache** %3, align 8
  %10 = getelementptr inbounds %struct.tx_policy_cache, %struct.tx_policy_cache* %9, i32 0, i32 3
  %11 = call i32 @spin_lock_init(i32* %10)
  %12 = load %struct.tx_policy_cache*, %struct.tx_policy_cache** %3, align 8
  %13 = getelementptr inbounds %struct.tx_policy_cache, %struct.tx_policy_cache* %12, i32 0, i32 2
  %14 = call i32 @INIT_LIST_HEAD(i32* %13)
  %15 = load %struct.tx_policy_cache*, %struct.tx_policy_cache** %3, align 8
  %16 = getelementptr inbounds %struct.tx_policy_cache, %struct.tx_policy_cache* %15, i32 0, i32 0
  %17 = call i32 @INIT_LIST_HEAD(i32* %16)
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %33, %1
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @TX_POLICY_CACHE_SIZE, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %18
  %23 = load %struct.tx_policy_cache*, %struct.tx_policy_cache** %3, align 8
  %24 = getelementptr inbounds %struct.tx_policy_cache, %struct.tx_policy_cache* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load %struct.tx_policy_cache*, %struct.tx_policy_cache** %3, align 8
  %31 = getelementptr inbounds %struct.tx_policy_cache, %struct.tx_policy_cache* %30, i32 0, i32 0
  %32 = call i32 @list_add(i32* %29, i32* %31)
  br label %33

33:                                               ; preds = %22
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %18

36:                                               ; preds = %18
  ret void
}

declare dso_local i32 @memset(%struct.tx_policy_cache*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
