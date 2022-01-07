; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_mac80211.c_rsi_mac80211_get_antenna.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_mac80211.c_rsi_mac80211_get_antenna.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rsi_hw* }
%struct.rsi_hw = type { %struct.rsi_common* }
%struct.rsi_common = type { i64, i32 }

@ANTENNA_SEL_UFL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32*, i32*)* @rsi_mac80211_get_antenna to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsi_mac80211_get_antenna(%struct.ieee80211_hw* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.rsi_hw*, align 8
  %8 = alloca %struct.rsi_common*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %10 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %9, i32 0, i32 0
  %11 = load %struct.rsi_hw*, %struct.rsi_hw** %10, align 8
  store %struct.rsi_hw* %11, %struct.rsi_hw** %7, align 8
  %12 = load %struct.rsi_hw*, %struct.rsi_hw** %7, align 8
  %13 = getelementptr inbounds %struct.rsi_hw, %struct.rsi_hw* %12, i32 0, i32 0
  %14 = load %struct.rsi_common*, %struct.rsi_common** %13, align 8
  store %struct.rsi_common* %14, %struct.rsi_common** %8, align 8
  %15 = load %struct.rsi_common*, %struct.rsi_common** %8, align 8
  %16 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %15, i32 0, i32 1
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.rsi_common*, %struct.rsi_common** %8, align 8
  %19 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ANTENNA_SEL_UFL, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 1, i32 0
  %25 = load i32*, i32** %5, align 8
  store i32 %24, i32* %25, align 4
  %26 = load i32*, i32** %6, align 8
  store i32 0, i32* %26, align 4
  %27 = load %struct.rsi_common*, %struct.rsi_common** %8, align 8
  %28 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %27, i32 0, i32 1
  %29 = call i32 @mutex_unlock(i32* %28)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
