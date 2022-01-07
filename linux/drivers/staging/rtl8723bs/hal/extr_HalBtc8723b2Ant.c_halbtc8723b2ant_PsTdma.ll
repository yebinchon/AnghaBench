; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b2Ant.c_halbtc8723b2ant_PsTdma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b2Ant.c_halbtc8723b2ant_PsTdma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i64 }

@BTC_MSG_ALGORITHM = common dso_local global i32 0, align 4
@ALGO_TRACE_FW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"[BTCoex], %s turn %s PS TDMA, type =%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"force to\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@pCoexDm = common dso_local global %struct.TYPE_2__* null, align 8
@ALGO_TRACE_FW_DETAIL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [50 x i8] c"[BTCoex], bPrePsTdmaOn = %d, bCurPsTdmaOn = %d!!\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"[BTCoex], prePsTdma = %d, curPsTdma = %d!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32)* @halbtc8723b2ant_PsTdma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @halbtc8723b2ant_PsTdma(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %10 = load i32, i32* @ALGO_TRACE_FW, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32 @BTC_PRINT(i32 %9, i32 %10, i8* %21)
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %72, label %31

31:                                               ; preds = %4
  %32 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %33 = load i32, i32* @ALGO_TRACE_FW_DETAIL, align 4
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i8*
  %42 = call i32 @BTC_PRINT(i32 %32, i32 %33, i8* %41)
  %43 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %44 = load i32, i32* @ALGO_TRACE_FW_DETAIL, align 4
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = inttoptr i64 %51 to i8*
  %53 = call i32 @BTC_PRINT(i32 %43, i32 %44, i8* %52)
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %56, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %31
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = icmp eq i64 %64, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  br label %169

71:                                               ; preds = %61, %31
  br label %72

72:                                               ; preds = %71, %4
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %145

75:                                               ; preds = %72
  %76 = load i32, i32* %8, align 4
  switch i32 %76, label %78 [
    i32 1, label %77
    i32 2, label %81
    i32 3, label %84
    i32 4, label %87
    i32 5, label %90
    i32 6, label %93
    i32 7, label %96
    i32 8, label %99
    i32 9, label %102
    i32 10, label %105
    i32 11, label %108
    i32 12, label %111
    i32 13, label %114
    i32 14, label %117
    i32 15, label %120
    i32 16, label %123
    i32 17, label %126
    i32 18, label %129
    i32 19, label %132
    i32 20, label %135
    i32 21, label %138
    i32 71, label %141
  ]

77:                                               ; preds = %75
  br label %78

78:                                               ; preds = %75, %77
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @halbtc8723b2ant_SetFwPstdma(i32 %79, i32 227, i32 26, i32 26, i32 225, i32 144)
  br label %144

81:                                               ; preds = %75
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @halbtc8723b2ant_SetFwPstdma(i32 %82, i32 227, i32 18, i32 18, i32 225, i32 144)
  br label %144

84:                                               ; preds = %75
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @halbtc8723b2ant_SetFwPstdma(i32 %85, i32 227, i32 28, i32 3, i32 241, i32 144)
  br label %144

87:                                               ; preds = %75
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @halbtc8723b2ant_SetFwPstdma(i32 %88, i32 227, i32 16, i32 3, i32 241, i32 144)
  br label %144

90:                                               ; preds = %75
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @halbtc8723b2ant_SetFwPstdma(i32 %91, i32 227, i32 26, i32 26, i32 96, i32 144)
  br label %144

93:                                               ; preds = %75
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @halbtc8723b2ant_SetFwPstdma(i32 %94, i32 227, i32 18, i32 18, i32 96, i32 144)
  br label %144

96:                                               ; preds = %75
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @halbtc8723b2ant_SetFwPstdma(i32 %97, i32 227, i32 28, i32 3, i32 112, i32 144)
  br label %144

99:                                               ; preds = %75
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @halbtc8723b2ant_SetFwPstdma(i32 %100, i32 163, i32 16, i32 3, i32 112, i32 144)
  br label %144

102:                                              ; preds = %75
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @halbtc8723b2ant_SetFwPstdma(i32 %103, i32 227, i32 26, i32 26, i32 225, i32 144)
  br label %144

105:                                              ; preds = %75
  %106 = load i32, i32* %5, align 4
  %107 = call i32 @halbtc8723b2ant_SetFwPstdma(i32 %106, i32 227, i32 18, i32 18, i32 225, i32 144)
  br label %144

108:                                              ; preds = %75
  %109 = load i32, i32* %5, align 4
  %110 = call i32 @halbtc8723b2ant_SetFwPstdma(i32 %109, i32 227, i32 10, i32 10, i32 225, i32 144)
  br label %144

111:                                              ; preds = %75
  %112 = load i32, i32* %5, align 4
  %113 = call i32 @halbtc8723b2ant_SetFwPstdma(i32 %112, i32 227, i32 5, i32 5, i32 225, i32 144)
  br label %144

114:                                              ; preds = %75
  %115 = load i32, i32* %5, align 4
  %116 = call i32 @halbtc8723b2ant_SetFwPstdma(i32 %115, i32 227, i32 26, i32 26, i32 96, i32 144)
  br label %144

117:                                              ; preds = %75
  %118 = load i32, i32* %5, align 4
  %119 = call i32 @halbtc8723b2ant_SetFwPstdma(i32 %118, i32 227, i32 18, i32 18, i32 96, i32 144)
  br label %144

120:                                              ; preds = %75
  %121 = load i32, i32* %5, align 4
  %122 = call i32 @halbtc8723b2ant_SetFwPstdma(i32 %121, i32 227, i32 10, i32 10, i32 96, i32 144)
  br label %144

123:                                              ; preds = %75
  %124 = load i32, i32* %5, align 4
  %125 = call i32 @halbtc8723b2ant_SetFwPstdma(i32 %124, i32 227, i32 5, i32 5, i32 96, i32 144)
  br label %144

126:                                              ; preds = %75
  %127 = load i32, i32* %5, align 4
  %128 = call i32 @halbtc8723b2ant_SetFwPstdma(i32 %127, i32 163, i32 47, i32 47, i32 96, i32 144)
  br label %144

129:                                              ; preds = %75
  %130 = load i32, i32* %5, align 4
  %131 = call i32 @halbtc8723b2ant_SetFwPstdma(i32 %130, i32 227, i32 5, i32 5, i32 225, i32 144)
  br label %144

132:                                              ; preds = %75
  %133 = load i32, i32* %5, align 4
  %134 = call i32 @halbtc8723b2ant_SetFwPstdma(i32 %133, i32 227, i32 37, i32 37, i32 225, i32 144)
  br label %144

135:                                              ; preds = %75
  %136 = load i32, i32* %5, align 4
  %137 = call i32 @halbtc8723b2ant_SetFwPstdma(i32 %136, i32 227, i32 37, i32 37, i32 96, i32 144)
  br label %144

138:                                              ; preds = %75
  %139 = load i32, i32* %5, align 4
  %140 = call i32 @halbtc8723b2ant_SetFwPstdma(i32 %139, i32 227, i32 21, i32 3, i32 112, i32 144)
  br label %144

141:                                              ; preds = %75
  %142 = load i32, i32* %5, align 4
  %143 = call i32 @halbtc8723b2ant_SetFwPstdma(i32 %142, i32 227, i32 26, i32 26, i32 225, i32 144)
  br label %144

144:                                              ; preds = %141, %138, %135, %132, %129, %126, %123, %120, %117, %114, %111, %108, %105, %102, %99, %96, %93, %90, %87, %84, %81, %78
  br label %157

145:                                              ; preds = %72
  %146 = load i32, i32* %8, align 4
  switch i32 %146, label %153 [
    i32 0, label %147
    i32 1, label %150
  ]

147:                                              ; preds = %145
  %148 = load i32, i32* %5, align 4
  %149 = call i32 @halbtc8723b2ant_SetFwPstdma(i32 %148, i32 0, i32 0, i32 0, i32 64, i32 0)
  br label %156

150:                                              ; preds = %145
  %151 = load i32, i32* %5, align 4
  %152 = call i32 @halbtc8723b2ant_SetFwPstdma(i32 %151, i32 0, i32 0, i32 0, i32 72, i32 0)
  br label %156

153:                                              ; preds = %145
  %154 = load i32, i32* %5, align 4
  %155 = call i32 @halbtc8723b2ant_SetFwPstdma(i32 %154, i32 0, i32 0, i32 0, i32 64, i32 0)
  br label %156

156:                                              ; preds = %153, %150, %147
  br label %157

157:                                              ; preds = %156, %144
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 2
  store i32 %160, i32* %162, align 8
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = sext i32 %165 to i64
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexDm, align 8
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 3
  store i64 %166, i64* %168, align 8
  br label %169

169:                                              ; preds = %157, %70
  ret void
}

declare dso_local i32 @BTC_PRINT(i32, i32, i8*) #1

declare dso_local i32 @halbtc8723b2ant_SetFwPstdma(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
