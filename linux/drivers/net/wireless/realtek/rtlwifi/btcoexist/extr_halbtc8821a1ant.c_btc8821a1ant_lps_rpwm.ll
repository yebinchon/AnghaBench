; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a1ant.c_btc8821a1ant_lps_rpwm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a1ant.c_btc8821a1ant_lps_rpwm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i8*, i8* }
%struct.btc_coexist = type { %struct.rtl_priv* }
%struct.rtl_priv = type { i32 }

@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"[BTCoex], %s set lps/rpwm = 0x%x/0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"force to\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@coex_dm = common dso_local global %struct.TYPE_2__* null, align 8
@.str.3 = private unnamed_addr constant [54 x i8] c"[BTCoex], LPS-RxBeaconMode = 0x%x, LPS-RPWM = 0x%x!!\0A\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"[BTCoex], LPS-RPWM_Last = 0x%x, LPS-RPWM_Now = 0x%x!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*, i32, i8*, i8*)* @btc8821a1ant_lps_rpwm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8821a1ant_lps_rpwm(%struct.btc_coexist* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.btc_coexist*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.rtl_priv*, align 8
  store %struct.btc_coexist* %0, %struct.btc_coexist** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %11 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %10, i32 0, i32 0
  %12 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  store %struct.rtl_priv* %12, %struct.rtl_priv** %9, align 8
  %13 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %14 = load i32, i32* @COMP_BT_COEXIST, align 4
  %15 = load i32, i32* @DBG_LOUD, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %20 = load i8*, i8** %7, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i8*, i8*, ...) @RT_TRACE(%struct.rtl_priv* %13, i32 %14, i32 %15, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %19, i8* %20, i8* %21)
  %23 = load i8*, i8** %7, align 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %69, label %31

31:                                               ; preds = %4
  %32 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %33 = load i32, i32* @COMP_BT_COEXIST, align 4
  %34 = load i32, i32* @DBG_LOUD, align 4
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i8*, i8*, ...) @RT_TRACE(%struct.rtl_priv* %32, i32 %33, i32 %34, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i8* %37, i8* %40)
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 3
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i8*, i8** %46, align 8
  %48 = icmp eq i8* %44, %47
  br i1 %48, label %49, label %68

49:                                               ; preds = %31
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = icmp eq i8* %52, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %49
  %58 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %59 = load i32, i32* @COMP_BT_COEXIST, align 4
  %60 = load i32, i32* @DBG_LOUD, align 4
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i8*, i8*, ...) @RT_TRACE(%struct.rtl_priv* %58, i32 %59, i32 %60, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i8* %63, i8* %66)
  br label %84

68:                                               ; preds = %49, %31
  br label %69

69:                                               ; preds = %68, %4
  %70 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = call i32 @btc8821a1ant_set_lps_rpwm(%struct.btc_coexist* %70, i8* %71, i8* %72)
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 3
  store i8* %76, i8** %78, align 8
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  store i8* %81, i8** %83, align 8
  br label %84

84:                                               ; preds = %69, %57
  ret void
}

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i8*, i8*, ...) #1

declare dso_local i32 @btc8821a1ant_set_lps_rpwm(%struct.btc_coexist*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
