; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8192e2ant.c_btc8192e2ant_coex_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8192e2ant.c_btc8192e2ant_coex_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.btc_coexist = type { %struct.rtl_priv* }
%struct.rtl_priv = type { i32 }

@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"[BTCoex], %s write Coex Table 0x6c0 = 0x%x, \00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"force to\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"0x6c4 = 0x%x, 0x6c8 = 0x%x, 0x6cc = 0x%x\0A\00", align 1
@coex_dm = common dso_local global %struct.TYPE_2__* null, align 8
@.str.4 = private unnamed_addr constant [51 x i8] c"[BTCoex], preVal0x6c0 = 0x%x, preVal0x6c4 = 0x%x, \00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"preVal0x6c8 = 0x%x, preVal0x6cc = 0x%x !!\0A\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"[BTCoex], curVal0x6c0 = 0x%x, curVal0x6c4 = 0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"curVal0x6c8 = 0x%x, curVal0x6cc = 0x%x !!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*, i32, i8*, i8*, i8*, i8*)* @btc8192e2ant_coex_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8192e2ant_coex_table(%struct.btc_coexist* %0, i32 %1, i8* %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca %struct.btc_coexist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.rtl_priv*, align 8
  store %struct.btc_coexist* %0, %struct.btc_coexist** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
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
  %25 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i8*, i8*, ...) @RT_TRACE(%struct.rtl_priv* %17, i32 %18, i32 %19, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %23, i8* %24)
  %26 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %27 = load i32, i32* @COMP_BT_COEXIST, align 4
  %28 = load i32, i32* @DBG_LOUD, align 4
  %29 = load i8*, i8** %10, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = load i8*, i8** %12, align 8
  %32 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i8*, i8*, ...) @RT_TRACE(%struct.rtl_priv* %26, i32 %27, i32 %28, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i8* %29, i8* %30, i8* %31)
  %33 = load i8*, i8** %9, align 8
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 3
  store i8* %42, i8** %44, align 8
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %121, label %47

47:                                               ; preds = %6
  %48 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %49 = load i32, i32* @COMP_BT_COEXIST, align 4
  %50 = load i32, i32* @DBG_LOUD, align 4
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 4
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 5
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i8*, i8*, ...) @RT_TRACE(%struct.rtl_priv* %48, i32 %49, i32 %50, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i8* %53, i8* %56)
  %58 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %59 = load i32, i32* @COMP_BT_COEXIST, align 4
  %60 = load i32, i32* @DBG_LOUD, align 4
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 6
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 7
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i8*, i8*, ...) @RT_TRACE(%struct.rtl_priv* %58, i32 %59, i32 %60, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i8* %63, i8* %66)
  %68 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %69 = load i32, i32* @COMP_BT_COEXIST, align 4
  %70 = load i32, i32* @DBG_LOUD, align 4
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i8*, i8*, ...) @RT_TRACE(%struct.rtl_priv* %68, i32 %69, i32 %70, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i8* %73, i8* %76)
  %78 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %79 = load i32, i32* @COMP_BT_COEXIST, align 4
  %80 = load i32, i32* @DBG_LOUD, align 4
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 2
  %83 = load i8*, i8** %82, align 8
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 3
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i8*, i8*, ...) @RT_TRACE(%struct.rtl_priv* %78, i32 %79, i32 %80, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i8* %83, i8* %86)
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 4
  %90 = load i8*, i8** %89, align 8
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = icmp eq i8* %90, %93
  br i1 %94, label %95, label %120

95:                                               ; preds = %47
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 5
  %98 = load i8*, i8** %97, align 8
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = icmp eq i8* %98, %101
  br i1 %102, label %103, label %120

103:                                              ; preds = %95
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 6
  %106 = load i8*, i8** %105, align 8
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 2
  %109 = load i8*, i8** %108, align 8
  %110 = icmp eq i8* %106, %109
  br i1 %110, label %111, label %120

111:                                              ; preds = %103
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 7
  %114 = load i8*, i8** %113, align 8
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 3
  %117 = load i8*, i8** %116, align 8
  %118 = icmp eq i8* %114, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %111
  br label %148

120:                                              ; preds = %111, %103, %95, %47
  br label %121

121:                                              ; preds = %120, %6
  %122 = load %struct.btc_coexist*, %struct.btc_coexist** %7, align 8
  %123 = load i8*, i8** %9, align 8
  %124 = load i8*, i8** %10, align 8
  %125 = load i8*, i8** %11, align 8
  %126 = load i8*, i8** %12, align 8
  %127 = call i32 @btc8192e2ant_set_coex_table(%struct.btc_coexist* %122, i8* %123, i8* %124, i8* %125, i8* %126)
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 4
  store i8* %130, i8** %132, align 8
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 1
  %135 = load i8*, i8** %134, align 8
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 5
  store i8* %135, i8** %137, align 8
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 2
  %140 = load i8*, i8** %139, align 8
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 6
  store i8* %140, i8** %142, align 8
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 3
  %145 = load i8*, i8** %144, align 8
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 7
  store i8* %145, i8** %147, align 8
  br label %148

148:                                              ; preds = %121, %119
  ret void
}

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i8*, i8*, ...) #1

declare dso_local i32 @btc8192e2ant_set_coex_table(%struct.btc_coexist*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
