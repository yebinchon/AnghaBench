; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b1ant.c_btc8723b1ant_auto_rate_fb_retry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b1ant.c_btc8723b1ant_auto_rate_fb_retry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32*)* }

@coex_dm = common dso_local global %struct.TYPE_2__* null, align 8
@BTC_GET_BL_WIFI_UNDER_B_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*, i32, i32)* @btc8723b1ant_auto_rate_fb_retry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8723b1ant_auto_rate_fb_retry(%struct.btc_coexist* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.btc_coexist*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.btc_coexist* %0, %struct.btc_coexist** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %3
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %16, %19
  br i1 %20, label %21, label %76

21:                                               ; preds = %13, %3
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %74 [
    i32 0, label %25
    i32 1, label %42
  ]

25:                                               ; preds = %21
  %26 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %27 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %26, i32 0, i32 0
  %28 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %27, align 8
  %29 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 %28(%struct.btc_coexist* %29, i32 1072, i32 %32)
  %34 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %35 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %34, i32 0, i32 0
  %36 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %35, align 8
  %37 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 %36(%struct.btc_coexist* %37, i32 1076, i32 %40)
  br label %75

42:                                               ; preds = %21
  %43 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %44 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %43, i32 0, i32 1
  %45 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %44, align 8
  %46 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %47 = load i32, i32* @BTC_GET_BL_WIFI_UNDER_B_MODE, align 4
  %48 = call i32 %45(%struct.btc_coexist* %46, i32 %47, i32* %7)
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %42
  %52 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %53 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %52, i32 0, i32 0
  %54 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %53, align 8
  %55 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %56 = call i32 %54(%struct.btc_coexist* %55, i32 1072, i32 0)
  %57 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %58 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %57, i32 0, i32 0
  %59 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %58, align 8
  %60 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %61 = call i32 %59(%struct.btc_coexist* %60, i32 1076, i32 16843009)
  br label %73

62:                                               ; preds = %42
  %63 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %64 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %63, i32 0, i32 0
  %65 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %64, align 8
  %66 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %67 = call i32 %65(%struct.btc_coexist* %66, i32 1072, i32 0)
  %68 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %69 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %68, i32 0, i32 0
  %70 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %69, align 8
  %71 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %72 = call i32 %70(%struct.btc_coexist* %71, i32 1076, i32 67305985)
  br label %73

73:                                               ; preds = %62, %51
  br label %75

74:                                               ; preds = %21
  br label %75

75:                                               ; preds = %74, %73, %25
  br label %76

76:                                               ; preds = %75, %13
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
