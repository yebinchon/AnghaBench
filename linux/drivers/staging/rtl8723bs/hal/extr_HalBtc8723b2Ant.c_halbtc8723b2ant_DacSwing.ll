; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b2Ant.c_halbtc8723b2ant_DacSwing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b2Ant.c_halbtc8723b2ant_DacSwing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i32, i64 }

@BTC_MSG_ALGORITHM = common dso_local global i32 0, align 4
@ALGO_TRACE_SW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"[BTCoex], %s turn DacSwing =%s, dacSwingLvl = 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"force to\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@pCoexDm = common dso_local global %struct.TYPE_2__* null, align 8
@ALGO_TRACE_SW_DETAIL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [96 x i8] c"[BTCoex], bPreDacSwingOn =%d, preDacSwingLvl = 0x%x, bCurDacSwingOn =%d, curDacSwingLvl = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i64)* @halbtc8723b2ant_DacSwing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @halbtc8723b2ant_DacSwing(i32 %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %9 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %10 = load i32, i32* @ALGO_TRACE_SW, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %19 = load i64, i64* %8, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = call i32 @BTC_PRINT(i32 %9, i32 %10, i8* %20)
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i64 %25, i64* %27, align 8
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %64, label %30

30:                                               ; preds = %4
  %31 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %32 = load i32, i32* @ALGO_TRACE_SW_DETAIL, align 4
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to i8*
  %46 = call i32 @BTC_PRINT(i32 %31, i32 %32, i8* %45)
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %49, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %30
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %57, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %80

63:                                               ; preds = %54, %30
  br label %64

64:                                               ; preds = %63, %4
  %65 = call i32 @mdelay(i32 30)
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i64, i64* %8, align 8
  %69 = call i32 @halbtc8723b2ant_SetSwFullTimeDacSwing(i32 %66, i32 %67, i64 %68)
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 3
  store i64 %77, i64* %79, align 8
  br label %80

80:                                               ; preds = %64, %62
  ret void
}

declare dso_local i32 @BTC_PRINT(i32, i32, i8*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @halbtc8723b2ant_SetSwFullTimeDacSwing(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
