; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b1Ant.c_halbtc8723b1ant_RunSwCoexistMechanism.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b1Ant.c_halbtc8723b1ant_RunSwCoexistMechanism.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@pCoexDm = common dso_local global %struct.TYPE_2__* null, align 8
@BTC_MSG_ALGORITHM = common dso_local global i32 0, align 4
@ALGO_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"[BTCoex], Action algorithm = SCO.\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"[BTCoex], Action algorithm = HID.\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"[BTCoex], Action algorithm = A2DP.\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"[BTCoex], Action algorithm = A2DP+PAN(HS).\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"[BTCoex], Action algorithm = PAN(EDR).\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"[BTCoex], Action algorithm = HS mode.\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"[BTCoex], Action algorithm = PAN+A2DP.\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"[BTCoex], Action algorithm = PAN(EDR)+HID.\0A\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"[BTCoex], Action algorithm = HID+A2DP+PAN.\0A\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"[BTCoex], Action algorithm = HID+A2DP.\0A\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"[BTCoex], Action algorithm = coexist All Off!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @halbtc8723b1ant_RunSwCoexistMechanism to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @halbtc8723b1ant_RunSwCoexistMechanism(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @halbtc8723b1ant_ActionAlgorithm(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* %2, align 4
  %10 = call i64 @halbtc8723b1ant_IsCommonAction(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %67

13:                                               ; preds = %1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %57 [
    i32 128, label %17
    i32 135, label %21
    i32 137, label %25
    i32 136, label %29
    i32 132, label %33
    i32 129, label %37
    i32 131, label %41
    i32 130, label %45
    i32 133, label %49
    i32 134, label %53
  ]

17:                                               ; preds = %13
  %18 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %19 = load i32, i32* @ALGO_TRACE, align 4
  %20 = call i32 @BTC_PRINT(i32 %18, i32 %19, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %61

21:                                               ; preds = %13
  %22 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %23 = load i32, i32* @ALGO_TRACE, align 4
  %24 = call i32 @BTC_PRINT(i32 %22, i32 %23, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %61

25:                                               ; preds = %13
  %26 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %27 = load i32, i32* @ALGO_TRACE, align 4
  %28 = call i32 @BTC_PRINT(i32 %26, i32 %27, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %61

29:                                               ; preds = %13
  %30 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %31 = load i32, i32* @ALGO_TRACE, align 4
  %32 = call i32 @BTC_PRINT(i32 %30, i32 %31, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %61

33:                                               ; preds = %13
  %34 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %35 = load i32, i32* @ALGO_TRACE, align 4
  %36 = call i32 @BTC_PRINT(i32 %34, i32 %35, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  br label %61

37:                                               ; preds = %13
  %38 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %39 = load i32, i32* @ALGO_TRACE, align 4
  %40 = call i32 @BTC_PRINT(i32 %38, i32 %39, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  br label %61

41:                                               ; preds = %13
  %42 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %43 = load i32, i32* @ALGO_TRACE, align 4
  %44 = call i32 @BTC_PRINT(i32 %42, i32 %43, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  br label %61

45:                                               ; preds = %13
  %46 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %47 = load i32, i32* @ALGO_TRACE, align 4
  %48 = call i32 @BTC_PRINT(i32 %46, i32 %47, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0))
  br label %61

49:                                               ; preds = %13
  %50 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %51 = load i32, i32* @ALGO_TRACE, align 4
  %52 = call i32 @BTC_PRINT(i32 %50, i32 %51, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0))
  br label %61

53:                                               ; preds = %13
  %54 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %55 = load i32, i32* @ALGO_TRACE, align 4
  %56 = call i32 @BTC_PRINT(i32 %54, i32 %55, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0))
  br label %61

57:                                               ; preds = %13
  %58 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %59 = load i32, i32* @ALGO_TRACE, align 4
  %60 = call i32 @BTC_PRINT(i32 %58, i32 %59, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i64 0, i64 0))
  br label %61

61:                                               ; preds = %57, %53, %49, %45, %41, %37, %33, %29, %25, %21, %17
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  br label %67

67:                                               ; preds = %61, %12
  ret void
}

declare dso_local i32 @halbtc8723b1ant_ActionAlgorithm(i32) #1

declare dso_local i64 @halbtc8723b1ant_IsCommonAction(i32) #1

declare dso_local i32 @BTC_PRINT(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
