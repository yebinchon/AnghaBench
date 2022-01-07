; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b1Ant.c_halbtc8723b1ant_CoexTable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b1Ant.c_halbtc8723b1ant_CoexTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64, i64, i64 }

@BTC_MSG_ALGORITHM = common dso_local global i32 0, align 4
@ALGO_TRACE_SW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"[BTCoex], %s write Coex Table 0x6c0 = 0x%x, 0x6c4 = 0x%x, 0x6cc = 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"force to\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@pCoexDm = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*, i8*, i8*, i64)* @halbtc8723b1ant_CoexTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @halbtc8723b1ant_CoexTable(i32 %0, i32 %1, i8* %2, i8* %3, i8* %4, i64 %5) #0 {
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
  %21 = load i64, i64* %12, align 8
  %22 = inttoptr i64 %21 to i8*
  %23 = call i32 @BTC_PRINT(i32 %13, i32 %14, i8* %22)
  %24 = load i8*, i8** %9, align 8
  %25 = ptrtoint i8* %24 to i64
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = ptrtoint i8* %28 to i64
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = ptrtoint i8* %32 to i64
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  store i64 %33, i64* %35, align 8
  %36 = load i64, i64* %12, align 8
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 3
  store i64 %36, i64* %38, align 8
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %75, label %41

41:                                               ; preds = %6
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %44, %47
  br i1 %48, label %49, label %74

49:                                               ; preds = %41
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 5
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %52, %55
  br i1 %56, label %57, label %74

57:                                               ; preds = %49
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 6
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %60, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %57
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 7
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %68, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  br label %102

74:                                               ; preds = %65, %57, %49, %41
  br label %75

75:                                               ; preds = %74, %6
  %76 = load i32, i32* %7, align 4
  %77 = load i8*, i8** %9, align 8
  %78 = load i8*, i8** %10, align 8
  %79 = load i8*, i8** %11, align 8
  %80 = load i64, i64* %12, align 8
  %81 = call i32 @halbtc8723b1ant_SetCoexTable(i32 %76, i8* %77, i8* %78, i8* %79, i64 %80)
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 4
  store i64 %84, i64* %86, align 8
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 5
  store i64 %89, i64* %91, align 8
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 6
  store i64 %94, i64* %96, align 8
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 7
  store i64 %99, i64* %101, align 8
  br label %102

102:                                              ; preds = %75, %73
  ret void
}

declare dso_local i32 @BTC_PRINT(i32, i32, i8*) #1

declare dso_local i32 @halbtc8723b1ant_SetCoexTable(i32, i8*, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
