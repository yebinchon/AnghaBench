; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_rc.c__rtl_tx_aggr_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_rc.c__rtl_tx_aggr_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl_priv = type { i32 }
%struct.rtl_sta_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.rtl_mac = type { i64, i32, i64 }

@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@RTL_AGG_STOP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl_priv*, %struct.rtl_sta_info*, i64)* @_rtl_tx_aggr_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl_tx_aggr_check(%struct.rtl_priv* %0, %struct.rtl_sta_info* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.rtl_sta_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.rtl_mac*, align 8
  store %struct.rtl_priv* %0, %struct.rtl_priv** %5, align 8
  store %struct.rtl_sta_info* %1, %struct.rtl_sta_info** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %10 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %9)
  store %struct.rtl_mac* %10, %struct.rtl_mac** %8, align 8
  %11 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %12 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %41

16:                                               ; preds = %3
  %17 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %18 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %24 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %25, 3
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %41

28:                                               ; preds = %22, %16
  %29 = load %struct.rtl_sta_info*, %struct.rtl_sta_info** %6, align 8
  %30 = getelementptr inbounds %struct.rtl_sta_info, %struct.rtl_sta_info* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @RTL_AGG_STOP, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  store i32 1, i32* %4, align 4
  br label %41

40:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %40, %39, %27, %15
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
