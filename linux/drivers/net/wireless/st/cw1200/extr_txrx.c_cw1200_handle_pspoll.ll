; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_txrx.c_cw1200_handle_pspoll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_txrx.c_cw1200_handle_pspoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { i64, i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i64 }
%struct.ieee80211_sta = type { i32 }
%struct.ieee80211_pspoll = type { i32, i32 }
%struct.cw1200_sta_priv = type { i32 }

@CW1200_JOIN_STATUS_AP = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"[RX] PSPOLL: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"fwd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cw1200_common*, %struct.sk_buff*)* @cw1200_handle_pspoll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cw1200_handle_pspoll(%struct.cw1200_common* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.cw1200_common*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ieee80211_sta*, align 8
  %6 = alloca %struct.ieee80211_pspoll*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.cw1200_sta_priv*, align 8
  store %struct.cw1200_common* %0, %struct.cw1200_common** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.ieee80211_pspoll*
  store %struct.ieee80211_pspoll* %15, %struct.ieee80211_pspoll** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %16 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %17 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CW1200_JOIN_STATUS_AP, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %94

22:                                               ; preds = %2
  %23 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %24 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %23, i32 0, i32 3
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ieee80211_pspoll*, %struct.ieee80211_pspoll** %6, align 8
  %29 = getelementptr inbounds %struct.ieee80211_pspoll, %struct.ieee80211_pspoll* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @ETH_ALEN, align 4
  %32 = call i64 @memcmp(i32 %27, i32 %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  br label %94

35:                                               ; preds = %22
  %36 = call i32 (...) @rcu_read_lock()
  %37 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %38 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %37, i32 0, i32 3
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load %struct.ieee80211_pspoll*, %struct.ieee80211_pspoll** %6, align 8
  %41 = getelementptr inbounds %struct.ieee80211_pspoll, %struct.ieee80211_pspoll* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.ieee80211_sta* @ieee80211_find_sta(%struct.TYPE_2__* %39, i32 %42)
  store %struct.ieee80211_sta* %43, %struct.ieee80211_sta** %5, align 8
  %44 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %45 = icmp ne %struct.ieee80211_sta* %44, null
  br i1 %45, label %46, label %57

46:                                               ; preds = %35
  %47 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %48 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %47, i32 0, i32 0
  %49 = bitcast i32* %48 to %struct.cw1200_sta_priv*
  store %struct.cw1200_sta_priv* %49, %struct.cw1200_sta_priv** %11, align 8
  %50 = load %struct.cw1200_sta_priv*, %struct.cw1200_sta_priv** %11, align 8
  %51 = getelementptr inbounds %struct.cw1200_sta_priv, %struct.cw1200_sta_priv* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %7, align 4
  %53 = load %struct.cw1200_sta_priv*, %struct.cw1200_sta_priv** %11, align 8
  %54 = getelementptr inbounds %struct.cw1200_sta_priv, %struct.cw1200_sta_priv* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @BIT(i32 %55)
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %46, %35
  %58 = call i32 (...) @rcu_read_unlock()
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %57
  br label %94

62:                                               ; preds = %57
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %65 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %68

68:                                               ; preds = %85, %62
  %69 = load i32, i32* %10, align 4
  %70 = icmp slt i32 %69, 4
  br i1 %70, label %71, label %88

71:                                               ; preds = %68
  %72 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %73 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %8, align 4
  %79 = call i64 @cw1200_queue_get_num_queued(i32* %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %71
  %82 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %83 = call i32 @cw1200_bh_wakeup(%struct.cw1200_common* %82)
  store i32 1, i32* %9, align 4
  br label %88

84:                                               ; preds = %71
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %10, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %10, align 4
  br label %68

88:                                               ; preds = %81, %68
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %93 = call i32 @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %92)
  br label %94

94:                                               ; preds = %88, %61, %34, %21
  %95 = load i32, i32* %9, align 4
  ret i32 %95
}

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_sta* @ieee80211_find_sta(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64 @cw1200_queue_get_num_queued(i32*, i32) #1

declare dso_local i32 @cw1200_bh_wakeup(%struct.cw1200_common*) #1

declare dso_local i32 @pr_debug(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
