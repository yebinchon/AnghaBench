; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_rtl_btc.c_rtl_btc_halt_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_rtl_btc.c_rtl_btc_halt_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl_priv = type { i32 }
%struct.btc_coexist = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl_btc_halt_notify(%struct.rtl_priv* %0) #0 {
  %2 = alloca %struct.rtl_priv*, align 8
  %3 = alloca %struct.btc_coexist*, align 8
  store %struct.rtl_priv* %0, %struct.rtl_priv** %2, align 8
  %4 = load %struct.rtl_priv*, %struct.rtl_priv** %2, align 8
  %5 = call %struct.btc_coexist* @rtl_btc_coexist(%struct.rtl_priv* %4)
  store %struct.btc_coexist* %5, %struct.btc_coexist** %3, align 8
  %6 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %7 = icmp ne %struct.btc_coexist* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %12

9:                                                ; preds = %1
  %10 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %11 = call i32 @exhalbtc_halt_notify(%struct.btc_coexist* %10)
  br label %12

12:                                               ; preds = %9, %8
  ret void
}

declare dso_local %struct.btc_coexist* @rtl_btc_coexist(%struct.rtl_priv*) #1

declare dso_local i32 @exhalbtc_halt_notify(%struct.btc_coexist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
