; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a2ant.c_btc8821a2ant_monitor_wifi_ctr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a2ant.c_btc8821a2ant_monitor_wifi_ctr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i32, i32)*, i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)* }

@coex_sta = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*)* @btc8821a2ant_monitor_wifi_ctr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8821a2ant_monitor_wifi_ctr(%struct.btc_coexist* %0) #0 {
  %2 = alloca %struct.btc_coexist*, align 8
  store %struct.btc_coexist* %0, %struct.btc_coexist** %2, align 8
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 8
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %24

7:                                                ; preds = %1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 7
  store i64 0, i64* %9, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 6
  store i64 0, i64* %11, align 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 5
  store i64 0, i64* %13, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 4
  store i64 0, i64* %15, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 3
  store i64 0, i64* %17, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  store i64 0, i64* %19, align 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  br label %81

24:                                               ; preds = %1
  %25 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %26 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %25, i32 0, i32 2
  %27 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %26, align 8
  %28 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %29 = call i64 %27(%struct.btc_coexist* %28, i32 3976)
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 7
  store i64 %29, i64* %31, align 8
  %32 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %33 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %32, i32 0, i32 1
  %34 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %33, align 8
  %35 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %36 = call i64 %34(%struct.btc_coexist* %35, i32 3988)
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 6
  store i64 %36, i64* %38, align 8
  %39 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %40 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %39, i32 0, i32 1
  %41 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %40, align 8
  %42 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %43 = call i64 %41(%struct.btc_coexist* %42, i32 3984)
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 5
  store i64 %43, i64* %45, align 8
  %46 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %47 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %46, i32 0, i32 1
  %48 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %47, align 8
  %49 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %50 = call i64 %48(%struct.btc_coexist* %49, i32 4024)
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 4
  store i64 %50, i64* %52, align 8
  %53 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %54 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %53, i32 0, i32 2
  %55 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %54, align 8
  %56 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %57 = call i64 %55(%struct.btc_coexist* %56, i32 3972)
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 3
  store i64 %57, i64* %59, align 8
  %60 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %61 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %60, i32 0, i32 1
  %62 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %61, align 8
  %63 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %64 = call i64 %62(%struct.btc_coexist* %63, i32 3990)
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  store i64 %64, i64* %66, align 8
  %67 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %68 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %67, i32 0, i32 1
  %69 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %68, align 8
  %70 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %71 = call i64 %69(%struct.btc_coexist* %70, i32 3986)
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  store i64 %71, i64* %73, align 8
  %74 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %75 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %74, i32 0, i32 1
  %76 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %75, align 8
  %77 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %78 = call i64 %76(%struct.btc_coexist* %77, i32 4026)
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  br label %81

81:                                               ; preds = %24, %7
  %82 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %83 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %82, i32 0, i32 0
  %84 = load i32 (%struct.btc_coexist*, i32, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32, i32)** %83, align 8
  %85 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %86 = call i32 %84(%struct.btc_coexist* %85, i32 3862, i32 1, i32 1)
  %87 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %88 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %87, i32 0, i32 0
  %89 = load i32 (%struct.btc_coexist*, i32, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32, i32)** %88, align 8
  %90 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %91 = call i32 %89(%struct.btc_coexist* %90, i32 3862, i32 1, i32 0)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
