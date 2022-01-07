; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalHWImg8723B_BB.c_ODM_ReadAndConfig_MP_8723B_PHY_REG_PG.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalHWImg8723B_BB.c_ODM_ReadAndConfig_MP_8723B_PHY_REG_PG.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@Array_MP_8723B_PHY_REG_PG = common dso_local global i32* null, align 8
@ODM_COMP_INIT = common dso_local global i32 0, align 4
@ODM_DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"===> ODM_ReadAndConfig_MP_8723B_PHY_REG_PG\0A\00", align 1
@PHY_REG_PG_EXACT_VALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ODM_ReadAndConfig_MP_8723B_PHY_REG_PG(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  store i32 0, i32* %3, align 4
  %11 = load i32*, i32** @Array_MP_8723B_PHY_REG_PG, align 8
  store i32* %11, i32** %4, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %13 = load i32, i32* @ODM_COMP_INIT, align 4
  %14 = load i32, i32* @ODM_DBG_LOUD, align 4
  %15 = call i32 @ODM_RT_TRACE(%struct.TYPE_5__* %12, i32 %13, i32 %14, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store i32 1, i32* %17, align 4
  %18 = load i32, i32* @PHY_REG_PG_EXACT_VALUE, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %70, %1
  %22 = load i32, i32* %3, align 4
  %23 = load i32*, i32** @Array_MP_8723B_PHY_REG_PG, align 8
  %24 = call i32 @ARRAY_SIZE(i32* %23)
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %73

26:                                               ; preds = %21
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %5, align 4
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %6, align 4
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 2
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %7, align 4
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 3
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %8, align 4
  %50 = load i32*, i32** %4, align 8
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 %51, 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %9, align 4
  %56 = load i32*, i32** %4, align 8
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, 5
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %10, align 4
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @odm_ConfigBB_PHY_REG_PG_8723B(%struct.TYPE_5__* %62, i32 %63, i32 %64, i32 %65, i32 %66, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %26
  %71 = load i32, i32* %3, align 4
  %72 = add nsw i32 %71, 6
  store i32 %72, i32* %3, align 4
  br label %21

73:                                               ; preds = %21
  ret void
}

declare dso_local i32 @ODM_RT_TRACE(%struct.TYPE_5__*, i32, i32, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @odm_ConfigBB_PHY_REG_PG_8723B(%struct.TYPE_5__*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
