; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_rtl_btc.c_rtl_btc_lps_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_rtl_btc.c_rtl_btc_lps_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl_priv = type { i32 }
%struct.btc_coexist = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl_btc_lps_notify(%struct.rtl_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.btc_coexist*, align 8
  store %struct.rtl_priv* %0, %struct.rtl_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %7 = call %struct.btc_coexist* @rtl_btc_coexist(%struct.rtl_priv* %6)
  store %struct.btc_coexist* %7, %struct.btc_coexist** %5, align 8
  %8 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %9 = icmp ne %struct.btc_coexist* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %15

11:                                               ; preds = %2
  %12 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @exhalbtc_lps_notify(%struct.btc_coexist* %12, i32 %13)
  br label %15

15:                                               ; preds = %11, %10
  ret void
}

declare dso_local %struct.btc_coexist* @rtl_btc_coexist(%struct.rtl_priv*) #1

declare dso_local i32 @exhalbtc_lps_notify(%struct.btc_coexist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
