; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8192e2ant.c_btc8192e2ant_set_switch_ss_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8192e2ant.c_btc8192e2ant_set_switch_ss_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)*, %struct.rtl_priv* }
%struct.rtl_priv = type { i32 }

@BTC_MIMO_PS_DYNAMIC = common dso_local global i32 0, align 4
@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"[BTCoex], REAL set SS Type = %d\0A\00", align 1
@coex_dm = common dso_local global %struct.TYPE_2__* null, align 8
@FORCE_EXEC = common dso_local global i32 0, align 4
@BTC_MIMO_PS_STATIC = common dso_local global i32 0, align 4
@BTC_SET_ACT_SEND_MIMO_PS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*, i32)* @btc8192e2ant_set_switch_ss_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8192e2ant_set_switch_ss_type(%struct.btc_coexist* %0, i32 %1) #0 {
  %3 = alloca %struct.btc_coexist*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.btc_coexist* %0, %struct.btc_coexist** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %9 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %8, i32 0, i32 4
  %10 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  store %struct.rtl_priv* %10, %struct.rtl_priv** %5, align 8
  %11 = load i32, i32* @BTC_MIMO_PS_DYNAMIC, align 4
  store i32 %11, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %12 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %13 = load i32, i32* @COMP_BT_COEXIST, align 4
  %14 = load i32, i32* @DBG_LOUD, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @RT_TRACE(%struct.rtl_priv* %12, i32 %13, i32 %14, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @btc8192e2ant_decide_ra_mask(%struct.btc_coexist* %17, i32 %18, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %24 = load i32, i32* @FORCE_EXEC, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @btc8192e2ant_update_ra_mask(%struct.btc_coexist* %23, i32 %24, i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %59

29:                                               ; preds = %2
  %30 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %31 = load i32, i32* @FORCE_EXEC, align 4
  %32 = call i32 @btc8192e2ant_ps_tdma(%struct.btc_coexist* %30, i32 %31, i32 0, i32 1)
  %33 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %34 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %33, i32 0, i32 1
  %35 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %34, align 8
  %36 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %37 = call i32 %35(%struct.btc_coexist* %36, i32 3076, i32 17)
  %38 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %39 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %38, i32 0, i32 1
  %40 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %39, align 8
  %41 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %42 = call i32 %40(%struct.btc_coexist* %41, i32 3332, i32 1)
  %43 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %44 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %43, i32 0, i32 3
  %45 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %44, align 8
  %46 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %47 = call i32 %45(%struct.btc_coexist* %46, i32 2316, i32 -2129587951)
  %48 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %49 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %48, i32 0, i32 2
  %50 = load i32 (%struct.btc_coexist*, i32, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32, i32)** %49, align 8
  %51 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %52 = call i32 %50(%struct.btc_coexist* %51, i32 3703, i32 4, i32 1)
  %53 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %54 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %53, i32 0, i32 1
  %55 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %54, align 8
  %56 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %57 = call i32 %55(%struct.btc_coexist* %56, i32 2567, i32 129)
  %58 = load i32, i32* @BTC_MIMO_PS_STATIC, align 4
  store i32 %58, i32* %6, align 4
  br label %93

59:                                               ; preds = %2
  %60 = load i32, i32* %4, align 4
  %61 = icmp eq i32 %60, 2
  br i1 %61, label %62, label %92

62:                                               ; preds = %59
  %63 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %64 = load i32, i32* @FORCE_EXEC, align 4
  %65 = call i32 @btc8192e2ant_ps_tdma(%struct.btc_coexist* %63, i32 %64, i32 0, i32 0)
  %66 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %67 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %66, i32 0, i32 1
  %68 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %67, align 8
  %69 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %70 = call i32 %68(%struct.btc_coexist* %69, i32 3076, i32 51)
  %71 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %72 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %71, i32 0, i32 1
  %73 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %72, align 8
  %74 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %75 = call i32 %73(%struct.btc_coexist* %74, i32 3332, i32 3)
  %76 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %77 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %76, i32 0, i32 3
  %78 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %77, align 8
  %79 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %80 = call i32 %78(%struct.btc_coexist* %79, i32 2316, i32 -2129521901)
  %81 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %82 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %81, i32 0, i32 2
  %83 = load i32 (%struct.btc_coexist*, i32, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32, i32)** %82, align 8
  %84 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %85 = call i32 %83(%struct.btc_coexist* %84, i32 3703, i32 4, i32 0)
  %86 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %87 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %86, i32 0, i32 1
  %88 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %87, align 8
  %89 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %90 = call i32 %88(%struct.btc_coexist* %89, i32 2567, i32 65)
  %91 = load i32, i32* @BTC_MIMO_PS_DYNAMIC, align 4
  store i32 %91, i32* %6, align 4
  br label %92

92:                                               ; preds = %62, %59
  br label %93

93:                                               ; preds = %92, %29
  %94 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %95 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %94, i32 0, i32 0
  %96 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %95, align 8
  %97 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %98 = load i32, i32* @BTC_SET_ACT_SEND_MIMO_PS, align 4
  %99 = call i32 %96(%struct.btc_coexist* %97, i32 %98, i32* %6)
  ret void
}

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32) #1

declare dso_local i32 @btc8192e2ant_decide_ra_mask(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8192e2ant_update_ra_mask(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8192e2ant_ps_tdma(%struct.btc_coexist*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
