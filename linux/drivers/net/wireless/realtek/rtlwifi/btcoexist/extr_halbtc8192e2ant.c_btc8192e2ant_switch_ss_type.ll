; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8192e2ant.c_btc8192e2ant_switch_ss_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8192e2ant.c_btc8192e2ant_switch_ss_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }
%struct.btc_coexist = type { %struct.rtl_priv* }
%struct.rtl_priv = type { i32 }

@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"[BTCoex], %s Switch SS Type = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"force to\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@coex_dm = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*, i32, i64)* @btc8192e2ant_switch_ss_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8192e2ant_switch_ss_type(%struct.btc_coexist* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.btc_coexist*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.rtl_priv*, align 8
  store %struct.btc_coexist* %0, %struct.btc_coexist** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %9 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %8, i32 0, i32 0
  %10 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  store %struct.rtl_priv* %10, %struct.rtl_priv** %7, align 8
  %11 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %12 = load i32, i32* @COMP_BT_COEXIST, align 4
  %13 = load i32, i32* @DBG_LOUD, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @RT_TRACE(%struct.rtl_priv* %11, i32 %12, i32 %13, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %17, i64 %18)
  %20 = load i64, i64* %6, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %3
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %46

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %34, %3
  %36 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @btc8192e2ant_set_switch_ss_type(%struct.btc_coexist* %36, i64 %39)
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  br label %46

46:                                               ; preds = %35, %33
  ret void
}

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i8*, i64) #1

declare dso_local i32 @btc8192e2ant_set_switch_ss_type(%struct.btc_coexist*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
