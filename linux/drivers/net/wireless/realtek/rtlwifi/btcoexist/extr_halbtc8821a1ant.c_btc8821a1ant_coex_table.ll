; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a1ant.c_btc8821a1ant_coex_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a1ant.c_btc8821a1ant_coex_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.btc_coexist = type { %struct.rtl_priv* }
%struct.rtl_priv = type { i32 }

@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [86 x i8] c"[BTCoex], %s write Coex Table 0x6c0 = 0x%x, 0x6c4 = 0x%x, 0x6c8 = 0x%x, 0x6cc = 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"force to\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@coex_dm = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*, i32, i8*, i8*, i8*, i64)* @btc8821a1ant_coex_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8821a1ant_coex_table(%struct.btc_coexist* %0, i32 %1, i8* %2, i8* %3, i8* %4, i64 %5) #0 {
  %7 = alloca %struct.btc_coexist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.rtl_priv*, align 8
  store %struct.btc_coexist* %0, %struct.btc_coexist** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i64 %5, i64* %12, align 8
  %14 = load %struct.btc_coexist*, %struct.btc_coexist** %7, align 8
  %15 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %14, i32 0, i32 0
  %16 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  store %struct.rtl_priv* %16, %struct.rtl_priv** %13, align 8
  %17 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %18 = load i32, i32* @COMP_BT_COEXIST, align 4
  %19 = load i32, i32* @DBG_LOUD, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %24 = load i8*, i8** %9, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = load i64, i64* %12, align 8
  %28 = call i32 @RT_TRACE(%struct.rtl_priv* %17, i32 %18, i32 %19, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0), i8* %23, i8* %24, i8* %25, i8* %26, i64 %27)
  %29 = load i8*, i8** %9, align 8
  %30 = ptrtoint i8* %29 to i64
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = ptrtoint i8* %33 to i64
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = ptrtoint i8* %37 to i64
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  store i64 %38, i64* %40, align 8
  %41 = load i64, i64* %12, align 8
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 3
  store i64 %41, i64* %43, align 8
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %80, label %46

46:                                               ; preds = %6
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %49, %52
  br i1 %53, label %54, label %79

54:                                               ; preds = %46
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 5
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %57, %60
  br i1 %61, label %62, label %79

62:                                               ; preds = %54
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 6
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %65, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %62
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 7
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %73, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  br label %107

79:                                               ; preds = %70, %62, %54, %46
  br label %80

80:                                               ; preds = %79, %6
  %81 = load %struct.btc_coexist*, %struct.btc_coexist** %7, align 8
  %82 = load i8*, i8** %9, align 8
  %83 = load i8*, i8** %10, align 8
  %84 = load i8*, i8** %11, align 8
  %85 = load i64, i64* %12, align 8
  %86 = call i32 @btc8821a1ant_set_coex_table(%struct.btc_coexist* %81, i8* %82, i8* %83, i8* %84, i64 %85)
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 4
  store i64 %89, i64* %91, align 8
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 5
  store i64 %94, i64* %96, align 8
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 6
  store i64 %99, i64* %101, align 8
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 7
  store i64 %104, i64* %106, align 8
  br label %107

107:                                              ; preds = %80, %78
  ret void
}

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i8*, i8*, i8*, i8*, i64) #1

declare dso_local i32 @btc8821a1ant_set_coex_table(%struct.btc_coexist*, i8*, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
