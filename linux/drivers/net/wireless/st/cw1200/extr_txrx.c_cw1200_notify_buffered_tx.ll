; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_txrx.c_cw1200_notify_buffered_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_txrx.c_cw1200_notify_buffered_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64* }
%struct.sk_buff = type { i64 }
%struct.ieee80211_sta = type { i32 }
%struct.ieee80211_hdr = type { i32 }

@CW1200_MAX_TID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cw1200_common*, %struct.sk_buff*, i32, i32)* @cw1200_notify_buffered_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cw1200_notify_buffered_tx(%struct.cw1200_common* %0, %struct.sk_buff* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.cw1200_common*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_sta*, align 8
  %10 = alloca %struct.ieee80211_hdr*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  store %struct.cw1200_common* %0, %struct.cw1200_common** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i64 0, i64* %12, align 8
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %81

15:                                               ; preds = %4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @CW1200_MAX_TID, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %81

19:                                               ; preds = %15
  %20 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %21 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sub nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  store i64* %28, i64** %11, align 8
  %29 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %30 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %29, i32 0, i32 1
  %31 = call i32 @spin_lock_bh(i32* %30)
  %32 = load i64*, i64** %11, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i32 @WARN_ON(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %19
  %43 = load i64*, i64** %11, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, -1
  store i64 %48, i64* %46, align 8
  store i64 %48, i64* %12, align 8
  br label %49

49:                                               ; preds = %42, %19
  %50 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %51 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %50, i32 0, i32 1
  %52 = call i32 @spin_unlock_bh(i32* %51)
  %53 = load i64, i64* %12, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %80, label %55

55:                                               ; preds = %49
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @CW1200_MAX_TID, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %80

59:                                               ; preds = %55
  %60 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %63, %struct.ieee80211_hdr** %10, align 8
  %64 = call i32 (...) @rcu_read_lock()
  %65 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %66 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %10, align 8
  %69 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call %struct.ieee80211_sta* @ieee80211_find_sta(i32 %67, i32 %70)
  store %struct.ieee80211_sta* %71, %struct.ieee80211_sta** %9, align 8
  %72 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %73 = icmp ne %struct.ieee80211_sta* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %59
  %75 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @ieee80211_sta_set_buffered(%struct.ieee80211_sta* %75, i32 %76, i32 0)
  br label %78

78:                                               ; preds = %74, %59
  %79 = call i32 (...) @rcu_read_unlock()
  br label %80

80:                                               ; preds = %78, %55, %49
  br label %81

81:                                               ; preds = %80, %15, %4
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_sta* @ieee80211_find_sta(i32, i32) #1

declare dso_local i32 @ieee80211_sta_set_buffered(%struct.ieee80211_sta*, i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
