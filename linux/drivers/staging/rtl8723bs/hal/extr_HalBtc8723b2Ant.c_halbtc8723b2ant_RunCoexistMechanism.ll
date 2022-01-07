; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b2Ant.c_halbtc8723b2ant_RunCoexistMechanism.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b2Ant.c_halbtc8723b2ant_RunCoexistMechanism.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64, i64 }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_20__ = type { i32 (%struct.TYPE_20__*, i32, i32)*, i64 }

@BTC_MSG_ALGORITHM = common dso_local global i32 0, align 4
@ALGO_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"[BTCoex], RunCoexistMechanism() ===>\0A\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"[BTCoex], RunCoexistMechanism(), return for Manual CTRL <===\0A\00", align 1
@pCoexSta = common dso_local global %struct.TYPE_21__* null, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"[BTCoex], wifi is under IPS !!!\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"[BTCoex], BT is under inquiry/page scan !!\0A\00", align 1
@pCoexDm = common dso_local global %struct.TYPE_22__* null, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"[BTCoex], Algorithm = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"[BTCoex], Action 2-Ant common.\0A\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"[BTCoex], preAlgorithm =%d, curAlgorithm =%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"[BTCoex], Action 2-Ant, algorithm = SCO.\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"[BTCoex], Action 2-Ant, algorithm = HID.\0A\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"[BTCoex], Action 2-Ant, algorithm = A2DP.\0A\00", align 1
@.str.10 = private unnamed_addr constant [51 x i8] c"[BTCoex], Action 2-Ant, algorithm = A2DP+PAN(HS).\0A\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"[BTCoex], Action 2-Ant, algorithm = PAN(EDR).\0A\00", align 1
@.str.12 = private unnamed_addr constant [46 x i8] c"[BTCoex], Action 2-Ant, algorithm = HS mode.\0A\00", align 1
@.str.13 = private unnamed_addr constant [47 x i8] c"[BTCoex], Action 2-Ant, algorithm = PAN+A2DP.\0A\00", align 1
@.str.14 = private unnamed_addr constant [51 x i8] c"[BTCoex], Action 2-Ant, algorithm = PAN(EDR)+HID.\0A\00", align 1
@.str.15 = private unnamed_addr constant [51 x i8] c"[BTCoex], Action 2-Ant, algorithm = HID+A2DP+PAN.\0A\00", align 1
@.str.16 = private unnamed_addr constant [47 x i8] c"[BTCoex], Action 2-Ant, algorithm = HID+A2DP.\0A\00", align 1
@.str.17 = private unnamed_addr constant [55 x i8] c"[BTCoex], Action 2-Ant, algorithm = coexist All Off!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*)* @halbtc8723b2ant_RunCoexistMechanism to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @halbtc8723b2ant_RunCoexistMechanism(%struct.TYPE_20__* %0) #0 {
  %2 = alloca %struct.TYPE_20__*, align 8
  %3 = alloca i64, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %2, align 8
  store i64 0, i64* %3, align 8
  %4 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %5 = load i32, i32* @ALGO_TRACE, align 4
  %6 = call i32 @BTC_PRINT(i32 %4, i32 %5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %13 = load i32, i32* @ALGO_TRACE, align 4
  %14 = call i32 @BTC_PRINT(i32 %12, i32 %13, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  br label %177

15:                                               ; preds = %1
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** @pCoexSta, align 8
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %22 = load i32, i32* @ALGO_TRACE, align 4
  %23 = call i32 @BTC_PRINT(i32 %21, i32 %22, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %177

24:                                               ; preds = %15
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %26 = call i64 @halbtc8723b2ant_ActionAlgorithm(%struct.TYPE_20__* %25)
  store i64 %26, i64* %3, align 8
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** @pCoexSta, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %24
  %32 = load i64, i64* %3, align 8
  %33 = icmp ne i64 129, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %36 = load i32, i32* @ALGO_TRACE, align 4
  %37 = call i32 @BTC_PRINT(i32 %35, i32 %36, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %39 = call i32 @halbtc8723b2ant_ActionBtInquiry(%struct.TYPE_20__* %38)
  br label %177

40:                                               ; preds = %31, %24
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** @pCoexDm, align 8
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %40
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** @pCoexDm, align 8
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 0
  store i32 0, i32* %47, align 4
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 0
  %50 = load i32 (%struct.TYPE_20__*, i32, i32)*, i32 (%struct.TYPE_20__*, i32, i32)** %49, align 8
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** @pCoexDm, align 8
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = call i32 %50(%struct.TYPE_20__* %51, i32 2376, i32 %54)
  br label %56

56:                                               ; preds = %45, %40
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %3, align 8
  %59 = trunc i64 %58 to i32
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** @pCoexDm, align 8
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %63 = load i32, i32* @ALGO_TRACE, align 4
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** @pCoexDm, align 8
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = inttoptr i64 %67 to i8*
  %69 = call i32 @BTC_PRINT(i32 %62, i32 %63, i8* %68)
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %71 = call i64 @halbtc8723b2ant_IsCommonAction(%struct.TYPE_20__* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %57
  %74 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %75 = load i32, i32* @ALGO_TRACE, align 4
  %76 = call i32 @BTC_PRINT(i32 %74, i32 %75, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** @pCoexDm, align 8
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 2
  store i32 0, i32* %78, align 4
  br label %177

79:                                               ; preds = %57
  %80 = load %struct.TYPE_22__*, %struct.TYPE_22__** @pCoexDm, align 8
  %81 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** @pCoexDm, align 8
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %82, %85
  br i1 %86, label %87, label %101

87:                                               ; preds = %79
  %88 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %89 = load i32, i32* @ALGO_TRACE, align 4
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** @pCoexDm, align 8
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** @pCoexDm, align 8
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = inttoptr i64 %96 to i8*
  %98 = call i32 @BTC_PRINT(i32 %88, i32 %89, i8* %97)
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** @pCoexDm, align 8
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 2
  store i32 0, i32* %100, align 4
  br label %101

101:                                              ; preds = %87, %79
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** @pCoexDm, align 8
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  switch i32 %104, label %165 [
    i32 128, label %105
    i32 135, label %111
    i32 137, label %117
    i32 136, label %123
    i32 132, label %129
    i32 129, label %135
    i32 131, label %141
    i32 130, label %147
    i32 133, label %153
    i32 134, label %159
  ]

105:                                              ; preds = %101
  %106 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %107 = load i32, i32* @ALGO_TRACE, align 4
  %108 = call i32 @BTC_PRINT(i32 %106, i32 %107, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %110 = call i32 @halbtc8723b2ant_ActionSco(%struct.TYPE_20__* %109)
  br label %171

111:                                              ; preds = %101
  %112 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %113 = load i32, i32* @ALGO_TRACE, align 4
  %114 = call i32 @BTC_PRINT(i32 %112, i32 %113, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0))
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %116 = call i32 @halbtc8723b2ant_ActionHid(%struct.TYPE_20__* %115)
  br label %171

117:                                              ; preds = %101
  %118 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %119 = load i32, i32* @ALGO_TRACE, align 4
  %120 = call i32 @BTC_PRINT(i32 %118, i32 %119, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0))
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %122 = call i32 @halbtc8723b2ant_ActionA2dp(%struct.TYPE_20__* %121)
  br label %171

123:                                              ; preds = %101
  %124 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %125 = load i32, i32* @ALGO_TRACE, align 4
  %126 = call i32 @BTC_PRINT(i32 %124, i32 %125, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.10, i64 0, i64 0))
  %127 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %128 = call i32 @halbtc8723b2ant_ActionA2dpPanHs(%struct.TYPE_20__* %127)
  br label %171

129:                                              ; preds = %101
  %130 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %131 = load i32, i32* @ALGO_TRACE, align 4
  %132 = call i32 @BTC_PRINT(i32 %130, i32 %131, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i64 0, i64 0))
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %134 = call i32 @halbtc8723b2ant_ActionPanEdr(%struct.TYPE_20__* %133)
  br label %171

135:                                              ; preds = %101
  %136 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %137 = load i32, i32* @ALGO_TRACE, align 4
  %138 = call i32 @BTC_PRINT(i32 %136, i32 %137, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.12, i64 0, i64 0))
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %140 = call i32 @halbtc8723b2ant_ActionPanHs(%struct.TYPE_20__* %139)
  br label %171

141:                                              ; preds = %101
  %142 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %143 = load i32, i32* @ALGO_TRACE, align 4
  %144 = call i32 @BTC_PRINT(i32 %142, i32 %143, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i64 0, i64 0))
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %146 = call i32 @halbtc8723b2ant_ActionPanEdrA2dp(%struct.TYPE_20__* %145)
  br label %171

147:                                              ; preds = %101
  %148 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %149 = load i32, i32* @ALGO_TRACE, align 4
  %150 = call i32 @BTC_PRINT(i32 %148, i32 %149, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.14, i64 0, i64 0))
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %152 = call i32 @halbtc8723b2ant_ActionPanEdrHid(%struct.TYPE_20__* %151)
  br label %171

153:                                              ; preds = %101
  %154 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %155 = load i32, i32* @ALGO_TRACE, align 4
  %156 = call i32 @BTC_PRINT(i32 %154, i32 %155, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.15, i64 0, i64 0))
  %157 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %158 = call i32 @halbtc8723b2ant_ActionHidA2dpPanEdr(%struct.TYPE_20__* %157)
  br label %171

159:                                              ; preds = %101
  %160 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %161 = load i32, i32* @ALGO_TRACE, align 4
  %162 = call i32 @BTC_PRINT(i32 %160, i32 %161, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.16, i64 0, i64 0))
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %164 = call i32 @halbtc8723b2ant_ActionHidA2dp(%struct.TYPE_20__* %163)
  br label %171

165:                                              ; preds = %101
  %166 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %167 = load i32, i32* @ALGO_TRACE, align 4
  %168 = call i32 @BTC_PRINT(i32 %166, i32 %167, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.17, i64 0, i64 0))
  %169 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %170 = call i32 @halbtc8723b2ant_CoexAllOff(%struct.TYPE_20__* %169)
  br label %171

171:                                              ; preds = %165, %159, %153, %147, %141, %135, %129, %123, %117, %111, %105
  %172 = load %struct.TYPE_22__*, %struct.TYPE_22__** @pCoexDm, align 8
  %173 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.TYPE_22__*, %struct.TYPE_22__** @pCoexDm, align 8
  %176 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %175, i32 0, i32 3
  store i32 %174, i32* %176, align 4
  br label %177

177:                                              ; preds = %11, %20, %34, %171, %73
  ret void
}

declare dso_local i32 @BTC_PRINT(i32, i32, i8*) #1

declare dso_local i64 @halbtc8723b2ant_ActionAlgorithm(%struct.TYPE_20__*) #1

declare dso_local i32 @halbtc8723b2ant_ActionBtInquiry(%struct.TYPE_20__*) #1

declare dso_local i64 @halbtc8723b2ant_IsCommonAction(%struct.TYPE_20__*) #1

declare dso_local i32 @halbtc8723b2ant_ActionSco(%struct.TYPE_20__*) #1

declare dso_local i32 @halbtc8723b2ant_ActionHid(%struct.TYPE_20__*) #1

declare dso_local i32 @halbtc8723b2ant_ActionA2dp(%struct.TYPE_20__*) #1

declare dso_local i32 @halbtc8723b2ant_ActionA2dpPanHs(%struct.TYPE_20__*) #1

declare dso_local i32 @halbtc8723b2ant_ActionPanEdr(%struct.TYPE_20__*) #1

declare dso_local i32 @halbtc8723b2ant_ActionPanHs(%struct.TYPE_20__*) #1

declare dso_local i32 @halbtc8723b2ant_ActionPanEdrA2dp(%struct.TYPE_20__*) #1

declare dso_local i32 @halbtc8723b2ant_ActionPanEdrHid(%struct.TYPE_20__*) #1

declare dso_local i32 @halbtc8723b2ant_ActionHidA2dpPanEdr(%struct.TYPE_20__*) #1

declare dso_local i32 @halbtc8723b2ant_ActionHidA2dp(%struct.TYPE_20__*) #1

declare dso_local i32 @halbtc8723b2ant_CoexAllOff(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
