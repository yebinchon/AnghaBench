; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalHWImg8723B_RF.c_ODM_ReadAndConfig_MP_8723B_TXPWR_LMT.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalHWImg8723B_RF.c_ODM_ReadAndConfig_MP_8723B_TXPWR_LMT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Array_MP_8723B_TXPWR_LMT = common dso_local global i32** null, align 8
@ODM_COMP_INIT = common dso_local global i32 0, align 4
@ODM_DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"===> ODM_ReadAndConfig_MP_8723B_TXPWR_LMT\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ODM_ReadAndConfig_MP_8723B_TXPWR_LMT(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %12 = load i32**, i32*** @Array_MP_8723B_TXPWR_LMT, align 8
  store i32** %12, i32*** %4, align 8
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @ODM_COMP_INIT, align 4
  %15 = load i32, i32* @ODM_DBG_LOUD, align 4
  %16 = call i32 @ODM_RT_TRACE(i32 %13, i32 %14, i32 %15, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %73, %1
  %18 = load i32, i32* %3, align 4
  %19 = load i32**, i32*** @Array_MP_8723B_TXPWR_LMT, align 8
  %20 = call i32 @ARRAY_SIZE(i32** %19)
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %76

22:                                               ; preds = %17
  %23 = load i32**, i32*** %4, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32*, i32** %23, i64 %25
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %5, align 8
  %28 = load i32**, i32*** %4, align 8
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32*, i32** %28, i64 %31
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %6, align 8
  %34 = load i32**, i32*** %4, align 8
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 2
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %34, i64 %37
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %7, align 8
  %40 = load i32**, i32*** %4, align 8
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, 3
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32*, i32** %40, i64 %43
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %8, align 8
  %46 = load i32**, i32*** %4, align 8
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32*, i32** %46, i64 %49
  %51 = load i32*, i32** %50, align 8
  store i32* %51, i32** %9, align 8
  %52 = load i32**, i32*** %4, align 8
  %53 = load i32, i32* %3, align 4
  %54 = add nsw i32 %53, 5
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32*, i32** %52, i64 %55
  %57 = load i32*, i32** %56, align 8
  store i32* %57, i32** %10, align 8
  %58 = load i32**, i32*** %4, align 8
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %59, 6
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32*, i32** %58, i64 %61
  %63 = load i32*, i32** %62, align 8
  store i32* %63, i32** %11, align 8
  %64 = load i32, i32* %2, align 4
  %65 = load i32*, i32** %5, align 8
  %66 = load i32*, i32** %6, align 8
  %67 = load i32*, i32** %7, align 8
  %68 = load i32*, i32** %8, align 8
  %69 = load i32*, i32** %9, align 8
  %70 = load i32*, i32** %10, align 8
  %71 = load i32*, i32** %11, align 8
  %72 = call i32 @odm_ConfigBB_TXPWR_LMT_8723B(i32 %64, i32* %65, i32* %66, i32* %67, i32* %68, i32* %69, i32* %70, i32* %71)
  br label %73

73:                                               ; preds = %22
  %74 = load i32, i32* %3, align 4
  %75 = add nsw i32 %74, 7
  store i32 %75, i32* %3, align 4
  br label %17

76:                                               ; preds = %17
  ret void
}

declare dso_local i32 @ODM_RT_TRACE(i32, i32, i32, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i32**) #1

declare dso_local i32 @odm_ConfigBB_TXPWR_LMT_8723B(i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
