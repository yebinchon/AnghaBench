; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalHWImg8723B_BB.c_ODM_ReadAndConfig_MP_8723B_PHY_REG.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalHWImg8723B_BB.c_ODM_ReadAndConfig_MP_8723B_PHY_REG.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Array_MP_8723B_PHY_REG = common dso_local global i32* null, align 8
@ODM_COMP_INIT = common dso_local global i32 0, align 4
@ODM_DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"===> ODM_ReadAndConfig_MP_8723B_PHY_REG\0A\00", align 1
@bMaskDWord = common dso_local global i32 0, align 4
@BIT29 = common dso_local global i32 0, align 4
@BIT28 = common dso_local global i32 0, align 4
@COND_ELSE = common dso_local global i64 0, align 8
@COND_ENDIF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ODM_ReadAndConfig_MP_8723B_PHY_REG(i32 %0) #0 {
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
  %10 = load i32*, i32** @Array_MP_8723B_PHY_REG, align 8
  %11 = call i32 @ARRAY_SIZE(i32* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32*, i32** @Array_MP_8723B_PHY_REG, align 8
  store i32* %12, i32** %5, align 8
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @ODM_COMP_INIT, align 4
  %15 = load i32, i32* @ODM_DBG_LOUD, align 4
  %16 = call i32 @ODM_RT_TRACE(i32 %13, i32 %14, i32 %15, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %167, %1
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %170

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
  br i1 %34, label %35, label %41

35:                                               ; preds = %21
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @bMaskDWord, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @odm_ConfigBB_PHY_8723B(i32 %36, i32 %37, i32 %38, i32 %39)
  br label %167

41:                                               ; preds = %21
  store i32 1, i32* %8, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @BIT29, align 4
  %44 = load i32, i32* @BIT28, align 4
  %45 = or i32 %43, %44
  %46 = and i32 %42, %45
  %47 = ashr i32 %46, 28
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %9, align 8
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* @COND_ELSE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %41
  store i32 1, i32* %8, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @READ_NEXT_PAIR(i32 %53, i32 %54, i32 %55)
  br label %90

57:                                               ; preds = %41
  %58 = load i32, i32* %2, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @CheckPositive(i32 %58, i32 %59, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %57
  store i32 0, i32* %8, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @READ_NEXT_PAIR(i32 %64, i32 %65, i32 %66)
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @READ_NEXT_PAIR(i32 %68, i32 %69, i32 %70)
  br label %89

72:                                               ; preds = %57
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %3, align 4
  %76 = call i32 @READ_NEXT_PAIR(i32 %73, i32 %74, i32 %75)
  %77 = load i32, i32* %2, align 4
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @CheckNegative(i32 %77, i32 %78, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %72
  store i32 0, i32* %8, align 4
  br label %84

83:                                               ; preds = %72
  store i32 1, i32* %8, align 4
  br label %84

84:                                               ; preds = %83, %82
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %3, align 4
  %88 = call i32 @READ_NEXT_PAIR(i32 %85, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %84, %63
  br label %90

90:                                               ; preds = %89, %52
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %112, label %93

93:                                               ; preds = %90
  br label %94

94:                                               ; preds = %104, %93
  %95 = load i32, i32* %6, align 4
  %96 = icmp slt i32 %95, 1073741824
  br i1 %96, label %97, label %102

97:                                               ; preds = %94
  %98 = load i32, i32* %3, align 4
  %99 = load i32, i32* %4, align 4
  %100 = sub nsw i32 %99, 2
  %101 = icmp slt i32 %98, %100
  br label %102

102:                                              ; preds = %97, %94
  %103 = phi i1 [ false, %94 ], [ %101, %97 ]
  br i1 %103, label %104, label %109

104:                                              ; preds = %102
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* %3, align 4
  %108 = call i32 @READ_NEXT_PAIR(i32 %105, i32 %106, i32 %107)
  br label %94

109:                                              ; preds = %102
  %110 = load i32, i32* %3, align 4
  %111 = sub nsw i32 %110, 2
  store i32 %111, i32* %3, align 4
  br label %165

112:                                              ; preds = %90
  br label %113

113:                                              ; preds = %123, %112
  %114 = load i32, i32* %6, align 4
  %115 = icmp slt i32 %114, 1073741824
  br i1 %115, label %116, label %121

116:                                              ; preds = %113
  %117 = load i32, i32* %3, align 4
  %118 = load i32, i32* %4, align 4
  %119 = sub nsw i32 %118, 2
  %120 = icmp slt i32 %117, %119
  br label %121

121:                                              ; preds = %116, %113
  %122 = phi i1 [ false, %113 ], [ %120, %116 ]
  br i1 %122, label %123, label %133

123:                                              ; preds = %121
  %124 = load i32, i32* %2, align 4
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* @bMaskDWord, align 4
  %127 = load i32, i32* %7, align 4
  %128 = call i32 @odm_ConfigBB_PHY_8723B(i32 %124, i32 %125, i32 %126, i32 %127)
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* %3, align 4
  %132 = call i32 @READ_NEXT_PAIR(i32 %129, i32 %130, i32 %131)
  br label %113

133:                                              ; preds = %121
  %134 = load i32, i32* %6, align 4
  %135 = load i32, i32* @BIT29, align 4
  %136 = load i32, i32* @BIT28, align 4
  %137 = or i32 %135, %136
  %138 = and i32 %134, %137
  %139 = ashr i32 %138, 28
  %140 = sext i32 %139 to i64
  store i64 %140, i64* %9, align 8
  br label %141

141:                                              ; preds = %152, %133
  %142 = load i64, i64* %9, align 8
  %143 = load i64, i64* @COND_ENDIF, align 8
  %144 = icmp ne i64 %142, %143
  br i1 %144, label %145, label %150

145:                                              ; preds = %141
  %146 = load i32, i32* %3, align 4
  %147 = load i32, i32* %4, align 4
  %148 = sub nsw i32 %147, 2
  %149 = icmp slt i32 %146, %148
  br label %150

150:                                              ; preds = %145, %141
  %151 = phi i1 [ false, %141 ], [ %149, %145 ]
  br i1 %151, label %152, label %164

152:                                              ; preds = %150
  %153 = load i32, i32* %6, align 4
  %154 = load i32, i32* %7, align 4
  %155 = load i32, i32* %3, align 4
  %156 = call i32 @READ_NEXT_PAIR(i32 %153, i32 %154, i32 %155)
  %157 = load i32, i32* %6, align 4
  %158 = load i32, i32* @BIT29, align 4
  %159 = load i32, i32* @BIT28, align 4
  %160 = or i32 %158, %159
  %161 = and i32 %157, %160
  %162 = ashr i32 %161, 28
  %163 = sext i32 %162 to i64
  store i64 %163, i64* %9, align 8
  br label %141

164:                                              ; preds = %150
  br label %165

165:                                              ; preds = %164, %109
  br label %166

166:                                              ; preds = %165
  br label %167

167:                                              ; preds = %166, %35
  %168 = load i32, i32* %3, align 4
  %169 = add nsw i32 %168, 2
  store i32 %169, i32* %3, align 4
  br label %17

170:                                              ; preds = %17
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @ODM_RT_TRACE(i32, i32, i32, i8*) #1

declare dso_local i32 @odm_ConfigBB_PHY_8723B(i32, i32, i32, i32) #1

declare dso_local i32 @READ_NEXT_PAIR(i32, i32, i32) #1

declare dso_local i32 @CheckPositive(i32, i32, i32) #1

declare dso_local i32 @CheckNegative(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
