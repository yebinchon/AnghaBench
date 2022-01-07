; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalHWImg8723B_RF.c_ODM_ReadAndConfig_MP_8723B_RadioA.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalHWImg8723B_RF.c_ODM_ReadAndConfig_MP_8723B_RadioA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Array_MP_8723B_RadioA = common dso_local global i32* null, align 8
@ODM_COMP_INIT = common dso_local global i32 0, align 4
@ODM_DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"===> ODM_ReadAndConfig_MP_8723B_RadioA\0A\00", align 1
@BIT29 = common dso_local global i32 0, align 4
@BIT28 = common dso_local global i32 0, align 4
@COND_ELSE = common dso_local global i64 0, align 8
@COND_ENDIF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ODM_ReadAndConfig_MP_8723B_RadioA(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %10 = load i32*, i32** @Array_MP_8723B_RadioA, align 8
  %11 = call i32 @ARRAY_SIZE(i32* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32*, i32** @Array_MP_8723B_RadioA, align 8
  store i32* %12, i32** %5, align 8
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @ODM_COMP_INIT, align 4
  %15 = load i32, i32* @ODM_DBG_LOUD, align 4
  %16 = call i32 @ODM_RT_TRACE(i32 %13, i32 %14, i32 %15, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %165, %1
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %168

21:                                               ; preds = %17
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %6, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 1073741824
  br i1 %34, label %35, label %40

35:                                               ; preds = %21
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @odm_ConfigRF_RadioA_8723B(i32 %36, i32 %37, i32 %38)
  br label %165

40:                                               ; preds = %21
  store i32 1, i32* %8, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @BIT29, align 4
  %43 = load i32, i32* @BIT28, align 4
  %44 = or i32 %42, %43
  %45 = and i32 %41, %44
  %46 = ashr i32 %45, 28
  %47 = sext i32 %46 to i64
  store i64 %47, i64* %9, align 8
  %48 = load i64, i64* %9, align 8
  %49 = load i64, i64* @COND_ELSE, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %40
  store i32 1, i32* %8, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @READ_NEXT_PAIR(i32 %52, i32 %53, i32 %54)
  br label %89

56:                                               ; preds = %40
  %57 = load i32, i32* %2, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @CheckPositive(i32 %57, i32 %58, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %71, label %62

62:                                               ; preds = %56
  store i32 0, i32* %8, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @READ_NEXT_PAIR(i32 %63, i32 %64, i32 %65)
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @READ_NEXT_PAIR(i32 %67, i32 %68, i32 %69)
  br label %88

71:                                               ; preds = %56
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @READ_NEXT_PAIR(i32 %72, i32 %73, i32 %74)
  %76 = load i32, i32* %2, align 4
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @CheckNegative(i32 %76, i32 %77, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %71
  store i32 0, i32* %8, align 4
  br label %83

82:                                               ; preds = %71
  store i32 1, i32* %8, align 4
  br label %83

83:                                               ; preds = %82, %81
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %3, align 4
  %87 = call i32 @READ_NEXT_PAIR(i32 %84, i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %83, %62
  br label %89

89:                                               ; preds = %88, %51
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %111, label %92

92:                                               ; preds = %89
  br label %93

93:                                               ; preds = %103, %92
  %94 = load i32, i32* %6, align 4
  %95 = icmp slt i32 %94, 1073741824
  br i1 %95, label %96, label %101

96:                                               ; preds = %93
  %97 = load i32, i32* %3, align 4
  %98 = load i32, i32* %4, align 4
  %99 = sub nsw i32 %98, 2
  %100 = icmp slt i32 %97, %99
  br label %101

101:                                              ; preds = %96, %93
  %102 = phi i1 [ false, %93 ], [ %100, %96 ]
  br i1 %102, label %103, label %108

103:                                              ; preds = %101
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* %3, align 4
  %107 = call i32 @READ_NEXT_PAIR(i32 %104, i32 %105, i32 %106)
  br label %93

108:                                              ; preds = %101
  %109 = load i32, i32* %3, align 4
  %110 = sub nsw i32 %109, 2
  store i32 %110, i32* %3, align 4
  br label %163

111:                                              ; preds = %89
  br label %112

112:                                              ; preds = %122, %111
  %113 = load i32, i32* %6, align 4
  %114 = icmp slt i32 %113, 1073741824
  br i1 %114, label %115, label %120

115:                                              ; preds = %112
  %116 = load i32, i32* %3, align 4
  %117 = load i32, i32* %4, align 4
  %118 = sub nsw i32 %117, 2
  %119 = icmp slt i32 %116, %118
  br label %120

120:                                              ; preds = %115, %112
  %121 = phi i1 [ false, %112 ], [ %119, %115 ]
  br i1 %121, label %122, label %131

122:                                              ; preds = %120
  %123 = load i32, i32* %2, align 4
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* %7, align 4
  %126 = call i32 @odm_ConfigRF_RadioA_8723B(i32 %123, i32 %124, i32 %125)
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* %3, align 4
  %130 = call i32 @READ_NEXT_PAIR(i32 %127, i32 %128, i32 %129)
  br label %112

131:                                              ; preds = %120
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* @BIT29, align 4
  %134 = load i32, i32* @BIT28, align 4
  %135 = or i32 %133, %134
  %136 = and i32 %132, %135
  %137 = ashr i32 %136, 28
  %138 = sext i32 %137 to i64
  store i64 %138, i64* %9, align 8
  br label %139

139:                                              ; preds = %150, %131
  %140 = load i64, i64* %9, align 8
  %141 = load i64, i64* @COND_ENDIF, align 8
  %142 = icmp ne i64 %140, %141
  br i1 %142, label %143, label %148

143:                                              ; preds = %139
  %144 = load i32, i32* %3, align 4
  %145 = load i32, i32* %4, align 4
  %146 = sub nsw i32 %145, 2
  %147 = icmp slt i32 %144, %146
  br label %148

148:                                              ; preds = %143, %139
  %149 = phi i1 [ false, %139 ], [ %147, %143 ]
  br i1 %149, label %150, label %162

150:                                              ; preds = %148
  %151 = load i32, i32* %6, align 4
  %152 = load i32, i32* %7, align 4
  %153 = load i32, i32* %3, align 4
  %154 = call i32 @READ_NEXT_PAIR(i32 %151, i32 %152, i32 %153)
  %155 = load i32, i32* %6, align 4
  %156 = load i32, i32* @BIT29, align 4
  %157 = load i32, i32* @BIT28, align 4
  %158 = or i32 %156, %157
  %159 = and i32 %155, %158
  %160 = ashr i32 %159, 28
  %161 = sext i32 %160 to i64
  store i64 %161, i64* %9, align 8
  br label %139

162:                                              ; preds = %148
  br label %163

163:                                              ; preds = %162, %108
  br label %164

164:                                              ; preds = %163
  br label %165

165:                                              ; preds = %164, %35
  %166 = load i32, i32* %3, align 4
  %167 = add nsw i32 %166, 2
  store i32 %167, i32* %3, align 4
  br label %17

168:                                              ; preds = %17
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @ODM_RT_TRACE(i32, i32, i32, i8*) #1

declare dso_local i32 @odm_ConfigRF_RadioA_8723B(i32, i32, i32) #1

declare dso_local i32 @READ_NEXT_PAIR(i32, i32, i32) #1

declare dso_local i32 @CheckPositive(i32, i32, i32) #1

declare dso_local i32 @CheckNegative(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
