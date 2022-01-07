; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b2ant.c_btc8723b2ant_coex_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b2ant.c_btc8723b2ant_coex_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64, i8*, i8* }
%struct.btc_coexist = type { %struct.rtl_priv* }
%struct.rtl_priv = type { i32 }

@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"[BTCoex], %s write Coex Table 0x6c0=0x%x, 0x6c4=0x%x, 0x6c8=0x%x, 0x6cc=0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"force to\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@coex_dm = common dso_local global %struct.TYPE_2__* null, align 8
@.str.3 = private unnamed_addr constant [85 x i8] c"[BTCoex], preVal0x6c0=0x%x, preVal0x6c4=0x%x, preVal0x6c8=0x%x, preVal0x6cc=0x%x !!\0A\00", align 1
@.str.4 = private unnamed_addr constant [85 x i8] c"[BTCoex], curVal0x6c0=0x%x, curVal0x6c4=0x%x, curVal0x6c8=0x%x, curVal0x6cc=0x%x !!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*, i32, i8*, i8*, i8*, i64)* @btc8723b2ant_coex_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8723b2ant_coex_table(%struct.btc_coexist* %0, i32 %1, i8* %2, i8* %3, i8* %4, i64 %5) #0 {
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
  %25 = ptrtoint i8* %24 to i64
  %26 = load i8*, i8** %10, align 8
  %27 = ptrtoint i8* %26 to i64
  %28 = load i8*, i8** %11, align 8
  %29 = ptrtoint i8* %28 to i64
  %30 = load i64, i64* %12, align 8
  %31 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i8*, i64, i64, i64, ...) @RT_TRACE(%struct.rtl_priv* %17, i32 %18, i32 %19, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i8* %23, i64 %25, i64 %27, i64 %29, i64 %30)
  %32 = load i8*, i8** %9, align 8
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 6
  store i8* %32, i8** %34, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = ptrtoint i8* %35 to i64
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = ptrtoint i8* %39 to i64
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  %43 = load i64, i64* %12, align 8
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  store i64 %43, i64* %45, align 8
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %114, label %48

48:                                               ; preds = %6
  %49 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %50 = load i32, i32* @COMP_BT_COEXIST, align 4
  %51 = load i32, i32* @DBG_LOUD, align 4
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 7
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 5
  %63 = load i64, i64* %62, align 8
  %64 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i8*, i64, i64, i64, ...) @RT_TRACE(%struct.rtl_priv* %49, i32 %50, i32 %51, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.3, i64 0, i64 0), i8* %54, i64 %57, i64 %60, i64 %63)
  %65 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %66 = load i32, i32* @COMP_BT_COEXIST, align 4
  %67 = load i32, i32* @DBG_LOUD, align 4
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 6
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i8*, i64, i64, i64, ...) @RT_TRACE(%struct.rtl_priv* %65, i32 %66, i32 %67, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.4, i64 0, i64 0), i8* %70, i64 %73, i64 %76, i64 %79)
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 7
  %83 = load i8*, i8** %82, align 8
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 6
  %86 = load i8*, i8** %85, align 8
  %87 = icmp eq i8* %83, %86
  br i1 %87, label %88, label %113

88:                                               ; preds = %48
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %91, %94
  br i1 %95, label %96, label %113

96:                                               ; preds = %88
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp eq i64 %99, %102
  br i1 %103, label %104, label %113

104:                                              ; preds = %96
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 5
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = icmp eq i64 %107, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %104
  br label %141

113:                                              ; preds = %104, %96, %88, %48
  br label %114

114:                                              ; preds = %113, %6
  %115 = load %struct.btc_coexist*, %struct.btc_coexist** %7, align 8
  %116 = load i8*, i8** %9, align 8
  %117 = load i8*, i8** %10, align 8
  %118 = load i8*, i8** %11, align 8
  %119 = load i64, i64* %12, align 8
  %120 = call i32 @btc8723b2ant_set_coex_table(%struct.btc_coexist* %115, i8* %116, i8* %117, i8* %118, i64 %119)
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 6
  %123 = load i8*, i8** %122, align 8
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 7
  store i8* %123, i8** %125, align 8
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 3
  store i64 %128, i64* %130, align 8
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 4
  store i64 %133, i64* %135, align 8
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 5
  store i64 %138, i64* %140, align 8
  br label %141

141:                                              ; preds = %114, %112
  ret void
}

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i8*, i64, i64, i64, ...) #1

declare dso_local i32 @btc8723b2ant_set_coex_table(%struct.btc_coexist*, i8*, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
