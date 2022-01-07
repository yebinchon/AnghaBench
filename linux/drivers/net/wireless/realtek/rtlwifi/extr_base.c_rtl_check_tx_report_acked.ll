; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_base.c_rtl_check_tx_report_acked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_base.c_rtl_check_tx_report_acked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_tx_report }
%struct.rtl_tx_report = type { i64, i64, i64 }

@HZ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@COMP_TX_REPORT = common dso_local global i32 0, align 4
@DBG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Check TX-Report timeout!! s_sn=0x%X r_sn=0x%X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl_check_tx_report_acked(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.rtl_priv*, align 8
  %5 = alloca %struct.rtl_tx_report*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %7 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %6)
  store %struct.rtl_priv* %7, %struct.rtl_priv** %4, align 8
  %8 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %9 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %8, i32 0, i32 0
  store %struct.rtl_tx_report* %9, %struct.rtl_tx_report** %5, align 8
  %10 = load %struct.rtl_tx_report*, %struct.rtl_tx_report** %5, align 8
  %11 = getelementptr inbounds %struct.rtl_tx_report, %struct.rtl_tx_report* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.rtl_tx_report*, %struct.rtl_tx_report** %5, align 8
  %14 = getelementptr inbounds %struct.rtl_tx_report, %struct.rtl_tx_report* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %41

18:                                               ; preds = %1
  %19 = load %struct.rtl_tx_report*, %struct.rtl_tx_report** %5, align 8
  %20 = getelementptr inbounds %struct.rtl_tx_report, %struct.rtl_tx_report* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* @HZ, align 4
  %23 = mul nsw i32 3, %22
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %21, %24
  %26 = load i32, i32* @jiffies, align 4
  %27 = call i64 @time_before(i64 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %18
  %30 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %31 = load i32, i32* @COMP_TX_REPORT, align 4
  %32 = load i32, i32* @DBG_WARNING, align 4
  %33 = load %struct.rtl_tx_report*, %struct.rtl_tx_report** %5, align 8
  %34 = getelementptr inbounds %struct.rtl_tx_report, %struct.rtl_tx_report* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.rtl_tx_report*, %struct.rtl_tx_report** %5, align 8
  %37 = getelementptr inbounds %struct.rtl_tx_report, %struct.rtl_tx_report* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @RT_TRACE(%struct.rtl_priv* %30, i32 %31, i32 %32, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %35, i64 %38)
  store i32 1, i32* %2, align 4
  br label %41

40:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %29, %17
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i64 @time_before(i64, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
