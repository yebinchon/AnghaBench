; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b2Ant.c_halbtc8723b2ant_CoexTable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b2Ant.c_halbtc8723b2ant_CoexTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64, i64, i64 }

@BTC_MSG_ALGORITHM = common dso_local global i32 0, align 4
@ALGO_TRACE_SW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [86 x i8] c"[BTCoex], %s write Coex Table 0x6c0 = 0x%x, 0x6c4 = 0x%x, 0x6c8 = 0x%x, 0x6cc = 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"force to\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@pCoexDm = common dso_local global %struct.TYPE_2__* null, align 8
@ALGO_TRACE_SW_DETAIL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [93 x i8] c"[BTCoex], preVal0x6c0 = 0x%x, preVal0x6c4 = 0x%x, preVal0x6c8 = 0x%x, preVal0x6cc = 0x%x !!\0A\00", align 1
@.str.4 = private unnamed_addr constant [93 x i8] c"[BTCoex], curVal0x6c0 = 0x%x, curVal0x6c4 = 0x%x, curVal0x6c8 = 0x%x, curVal0x6cc = 0x%x !!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*, i8*, i8*, i64)* @halbtc8723b2ant_CoexTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @halbtc8723b2ant_CoexTable(i32 %0, i32 %1, i8* %2, i8* %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i64 %5, i64* %12, align 8
  %13 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %14 = load i32, i32* @ALGO_TRACE_SW, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %19 = load i8*, i8** %9, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = load i64, i64* %12, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = call i32 @BTC_PRINT(i32 %13, i32 %14, i8* %23)
  %25 = load i8*, i8** %9, align 8
  %26 = ptrtoint i8* %25 to i64
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = ptrtoint i8* %29 to i64
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store i64 %30, i64* %32, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = ptrtoint i8* %33 to i64
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  store i64 %34, i64* %36, align 8
  %37 = load i64, i64* %12, align 8
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 3
  store i64 %37, i64* %39, align 8
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %108, label %42

42:                                               ; preds = %6
  %43 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %44 = load i32, i32* @ALGO_TRACE_SW_DETAIL, align 4
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 5
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 6
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 7
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to i8*
  %58 = call i32 @BTC_PRINT(i32 %43, i32 %44, i8* %57)
  %59 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %60 = load i32, i32* @ALGO_TRACE_SW_DETAIL, align 4
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to i8*
  %74 = call i32 @BTC_PRINT(i32 %59, i32 %60, i8* %73)
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %77, %80
  br i1 %81, label %82, label %107

82:                                               ; preds = %42
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 5
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %85, %88
  br i1 %89, label %90, label %107

90:                                               ; preds = %82
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 6
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %93, %96
  br i1 %97, label %98, label %107

98:                                               ; preds = %90
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 7
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %101, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %98
  br label %135

107:                                              ; preds = %98, %90, %82, %42
  br label %108

108:                                              ; preds = %107, %6
  %109 = load i32, i32* %7, align 4
  %110 = load i8*, i8** %9, align 8
  %111 = load i8*, i8** %10, align 8
  %112 = load i8*, i8** %11, align 8
  %113 = load i64, i64* %12, align 8
  %114 = call i32 @halbtc8723b2ant_SetCoexTable(i32 %109, i8* %110, i8* %111, i8* %112, i64 %113)
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 4
  store i64 %117, i64* %119, align 8
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 5
  store i64 %122, i64* %124, align 8
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 6
  store i64 %127, i64* %129, align 8
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 7
  store i64 %132, i64* %134, align 8
  br label %135

135:                                              ; preds = %108, %106
  ret void
}

declare dso_local i32 @BTC_PRINT(i32, i32, i8*) #1

declare dso_local i32 @halbtc8723b2ant_SetCoexTable(i32, i8*, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
