; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b1ant.c_halbtc8723b1ant_limited_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b1ant.c_halbtc8723b1ant_limited_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btc_coexist = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*, i32, i32, i32, i32, i32)* @halbtc8723b1ant_limited_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @halbtc8723b1ant_limited_tx(%struct.btc_coexist* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.btc_coexist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.btc_coexist* %0, %struct.btc_coexist** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load i32, i32* %9, align 4
  switch i32 %13, label %26 [
    i32 0, label %14
    i32 1, label %18
    i32 2, label %22
  ]

14:                                               ; preds = %6
  %15 = load %struct.btc_coexist*, %struct.btc_coexist** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @halbtc8723b1ant_updatera_mask(%struct.btc_coexist* %15, i32 %16, i32 0)
  br label %27

18:                                               ; preds = %6
  %19 = load %struct.btc_coexist*, %struct.btc_coexist** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @halbtc8723b1ant_updatera_mask(%struct.btc_coexist* %19, i32 %20, i32 3)
  br label %27

22:                                               ; preds = %6
  %23 = load %struct.btc_coexist*, %struct.btc_coexist** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @halbtc8723b1ant_updatera_mask(%struct.btc_coexist* %23, i32 %24, i32 127479)
  br label %27

26:                                               ; preds = %6
  br label %27

27:                                               ; preds = %26, %22, %18, %14
  %28 = load %struct.btc_coexist*, %struct.btc_coexist** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @btc8723b1ant_auto_rate_fb_retry(%struct.btc_coexist* %28, i32 %29, i32 %30)
  %32 = load %struct.btc_coexist*, %struct.btc_coexist** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @halbtc8723b1ant_retry_limit(%struct.btc_coexist* %32, i32 %33, i32 %34)
  %36 = load %struct.btc_coexist*, %struct.btc_coexist** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @halbtc8723b1ant_ampdu_maxtime(%struct.btc_coexist* %36, i32 %37, i32 %38)
  ret void
}

declare dso_local i32 @halbtc8723b1ant_updatera_mask(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8723b1ant_auto_rate_fb_retry(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @halbtc8723b1ant_retry_limit(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @halbtc8723b1ant_ampdu_maxtime(%struct.btc_coexist*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
