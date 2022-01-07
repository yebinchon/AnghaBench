; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8192e2ant.c_btc8192e2ant_set_agc_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8192e2ant.c_btc8192e2ant_set_agc_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i32)*, %struct.rtl_priv* }
%struct.rtl_priv = type { i32 }

@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"[BTCoex], BB Agc Table On!\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"[BTCoex], BB Agc Table Off!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*, i32)* @btc8192e2ant_set_agc_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8192e2ant_set_agc_table(%struct.btc_coexist* %0, i32 %1) #0 {
  %3 = alloca %struct.btc_coexist*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl_priv*, align 8
  store %struct.btc_coexist* %0, %struct.btc_coexist** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %7 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %6, i32 0, i32 1
  %8 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  store %struct.rtl_priv* %8, %struct.rtl_priv** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %46

11:                                               ; preds = %2
  %12 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %13 = load i32, i32* @COMP_BT_COEXIST, align 4
  %14 = load i32, i32* @DBG_LOUD, align 4
  %15 = call i32 @RT_TRACE(%struct.rtl_priv* %12, i32 %13, i32 %14, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %17 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %16, i32 0, i32 0
  %18 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %17, align 8
  %19 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %20 = call i32 %18(%struct.btc_coexist* %19, i32 3192, i32 169476097)
  %21 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %22 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %21, i32 0, i32 0
  %23 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %22, align 8
  %24 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %25 = call i32 %23(%struct.btc_coexist* %24, i32 3192, i32 152764417)
  %26 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %27 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %26, i32 0, i32 0
  %28 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %27, align 8
  %29 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %30 = call i32 %28(%struct.btc_coexist* %29, i32 3192, i32 136052737)
  %31 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %32 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %31, i32 0, i32 0
  %33 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %32, align 8
  %34 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %35 = call i32 %33(%struct.btc_coexist* %34, i32 3192, i32 119341057)
  %36 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %37 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %36, i32 0, i32 0
  %38 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %37, align 8
  %39 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %40 = call i32 %38(%struct.btc_coexist* %39, i32 3192, i32 102629377)
  %41 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %42 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %41, i32 0, i32 0
  %43 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %42, align 8
  %44 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %45 = call i32 %43(%struct.btc_coexist* %44, i32 3192, i32 85917697)
  br label %81

46:                                               ; preds = %2
  %47 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %48 = load i32, i32* @COMP_BT_COEXIST, align 4
  %49 = load i32, i32* @DBG_LOUD, align 4
  %50 = call i32 @RT_TRACE(%struct.rtl_priv* %47, i32 %48, i32 %49, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %51 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %52 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %51, i32 0, i32 0
  %53 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %52, align 8
  %54 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %55 = call i32 %53(%struct.btc_coexist* %54, i32 3192, i32 -1441136639)
  %56 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %57 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %56, i32 0, i32 0
  %58 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %57, align 8
  %59 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %60 = call i32 %58(%struct.btc_coexist* %59, i32 3192, i32 -1457848319)
  %61 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %62 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %61, i32 0, i32 0
  %63 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %62, align 8
  %64 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %65 = call i32 %63(%struct.btc_coexist* %64, i32 3192, i32 -1474559999)
  %66 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %67 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %66, i32 0, i32 0
  %68 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %67, align 8
  %69 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %70 = call i32 %68(%struct.btc_coexist* %69, i32 3192, i32 -1491271679)
  %71 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %72 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %71, i32 0, i32 0
  %73 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %72, align 8
  %74 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %75 = call i32 %73(%struct.btc_coexist* %74, i32 3192, i32 -1507983359)
  %76 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %77 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %76, i32 0, i32 0
  %78 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %77, align 8
  %79 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %80 = call i32 %78(%struct.btc_coexist* %79, i32 3192, i32 -1524695039)
  br label %81

81:                                               ; preds = %46, %11
  ret void
}

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
