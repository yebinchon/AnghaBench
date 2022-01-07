; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_rtl_btc.c_rtl_btc_get_ampdu_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_rtl_btc.c_rtl_btc_get_ampdu_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl_priv = type { i32 }
%struct.btc_coexist = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl_btc_get_ampdu_cfg(%struct.rtl_priv* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.btc_coexist*, align 8
  store %struct.rtl_priv* %0, %struct.rtl_priv** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %11 = call %struct.btc_coexist* @rtl_btc_coexist(%struct.rtl_priv* %10)
  store %struct.btc_coexist* %11, %struct.btc_coexist** %9, align 8
  %12 = load %struct.btc_coexist*, %struct.btc_coexist** %9, align 8
  %13 = icmp ne %struct.btc_coexist* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load i32*, i32** %6, align 8
  store i32 0, i32* %15, align 4
  %16 = load i32*, i32** %7, align 8
  store i32 0, i32* %16, align 4
  br label %44

17:                                               ; preds = %4
  %18 = load i32*, i32** %6, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load %struct.btc_coexist*, %struct.btc_coexist** %9, align 8
  %22 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %6, align 8
  store i32 %24, i32* %25, align 4
  br label %26

26:                                               ; preds = %20, %17
  %27 = load i32*, i32** %7, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load %struct.btc_coexist*, %struct.btc_coexist** %9, align 8
  %31 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %7, align 8
  store i32 %33, i32* %34, align 4
  br label %35

35:                                               ; preds = %29, %26
  %36 = load i32*, i32** %8, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load %struct.btc_coexist*, %struct.btc_coexist** %9, align 8
  %40 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %8, align 8
  store i32 %42, i32* %43, align 4
  br label %44

44:                                               ; preds = %14, %38, %35
  ret void
}

declare dso_local %struct.btc_coexist* @rtl_btc_coexist(%struct.rtl_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
