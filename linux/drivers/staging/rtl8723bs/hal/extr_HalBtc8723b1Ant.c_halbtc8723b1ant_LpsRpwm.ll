; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b1Ant.c_halbtc8723b1ant_LpsRpwm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b1Ant.c_halbtc8723b1ant_LpsRpwm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64 }

@BTC_MSG_ALGORITHM = common dso_local global i32 0, align 4
@ALGO_TRACE_FW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"[BTCoex], %s set lps/rpwm = 0x%x/0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"force to\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@pCoexDm = common dso_local global %struct.TYPE_2__* null, align 8
@ALGO_TRACE_FW_DETAIL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"[BTCoex], LPS-RxBeaconMode = 0x%x , LPS-RPWM = 0x%x!!\0A\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"[BTCoex], LPS-RPWM_Last = 0x%x , LPS-RPWM_Now = 0x%x!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*, i8*)* @halbtc8723b1ant_LpsRpwm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @halbtc8723b1ant_LpsRpwm(i32 %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %10 = load i32, i32* @ALGO_TRACE_FW, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %15 = load i8*, i8** %7, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 @BTC_PRINT(i32 %9, i32 %10, i8* %16)
  %18 = load i8*, i8** %7, align 8
  %19 = ptrtoint i8* %18 to i64
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = ptrtoint i8* %22 to i64
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i64 %23, i64* %25, align 8
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %66, label %28

28:                                               ; preds = %4
  %29 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %30 = load i32, i32* @ALGO_TRACE_FW_DETAIL, align 4
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i8*
  %38 = call i32 @BTC_PRINT(i32 %29, i32 %30, i8* %37)
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %41, %44
  br i1 %45, label %46, label %65

46:                                               ; preds = %28
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %49, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %46
  %55 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %56 = load i32, i32* @ALGO_TRACE_FW_DETAIL, align 4
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to i8*
  %64 = call i32 @BTC_PRINT(i32 %55, i32 %56, i8* %63)
  br label %81

65:                                               ; preds = %46, %28
  br label %66

66:                                               ; preds = %65, %4
  %67 = load i32, i32* %5, align 4
  %68 = load i8*, i8** %7, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = call i32 @halbtc8723b1ant_SetLpsRpwm(i32 %67, i8* %68, i8* %69)
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  store i64 %73, i64* %75, align 8
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 3
  store i64 %78, i64* %80, align 8
  br label %81

81:                                               ; preds = %66, %54
  ret void
}

declare dso_local i32 @BTC_PRINT(i32, i32, i8*) #1

declare dso_local i32 @halbtc8723b1ant_SetLpsRpwm(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
