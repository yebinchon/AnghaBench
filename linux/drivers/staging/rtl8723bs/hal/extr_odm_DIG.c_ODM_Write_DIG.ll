; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_odm_DIG.c_ODM_Write_DIG.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_odm_DIG.c_ODM_Write_DIG.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i32, i64 }

@ODM_COMP_DIG = common dso_local global i32 0, align 4
@ODM_DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Stop Writing IGI\0A\00", align 1
@ODM_DBG_TRACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"ODM_REG(IGI_A, pDM_Odm) = 0x%x, ODM_BIT(IGI, pDM_Odm) = 0x%x\0A\00", align 1
@IGI_A = common dso_local global i32 0, align 4
@IGI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"CurrentIGI(0x%02x) is larger than upper bound !!\0A\00", align 1
@ODM_1T1R = common dso_local global i64 0, align 8
@IGI_B = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"CurrentIGI(0x%02x).\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ODM_Write_DIG(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %8, %struct.TYPE_7__** %5, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 2
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %6, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %17 = load i32, i32* @ODM_COMP_DIG, align 4
  %18 = load i32, i32* @ODM_DBG_LOUD, align 4
  %19 = call i32 @ODM_RT_TRACE(%struct.TYPE_7__* %16, i32 %17, i32 %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %102

20:                                               ; preds = %2
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %22 = load i32, i32* @ODM_COMP_DIG, align 4
  %23 = load i32, i32* @ODM_DBG_TRACE, align 4
  %24 = load i32, i32* @IGI_A, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %26 = call i32 @ODM_REG(i32 %24, %struct.TYPE_7__* %25)
  %27 = load i32, i32* @IGI, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %29 = call i32 @ODM_BIT(i32 %27, %struct.TYPE_7__* %28)
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i8*
  %32 = call i32 @ODM_RT_TRACE(%struct.TYPE_7__* %21, i32 %22, i32 %23, i8* %31)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %4, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %95

38:                                               ; preds = %20
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %62, label %43

43:                                               ; preds = %38
  %44 = load i64, i64* %4, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp sgt i64 %44, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %43
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %51 = load i32, i32* @ODM_COMP_DIG, align 4
  %52 = load i32, i32* @ODM_DBG_TRACE, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i8*
  %57 = call i32 @ODM_RT_TRACE(%struct.TYPE_7__* %50, i32 %51, i32 %52, i8* %56)
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %4, align 8
  br label %61

61:                                               ; preds = %49, %43
  br label %62

62:                                               ; preds = %61, %38
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @IGI_A, align 4
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %68 = call i32 @ODM_REG(i32 %66, %struct.TYPE_7__* %67)
  %69 = load i32, i32* @IGI, align 4
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %71 = call i32 @ODM_BIT(i32 %69, %struct.TYPE_7__* %70)
  %72 = load i64, i64* %4, align 8
  %73 = call i32 @PHY_SetBBReg(i32 %65, i32 %68, i32 %71, i64 %72)
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @ODM_1T1R, align 8
  %78 = icmp sgt i64 %76, %77
  br i1 %78, label %79, label %91

79:                                               ; preds = %62
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @IGI_B, align 4
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %85 = call i32 @ODM_REG(i32 %83, %struct.TYPE_7__* %84)
  %86 = load i32, i32* @IGI, align 4
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %88 = call i32 @ODM_BIT(i32 %86, %struct.TYPE_7__* %87)
  %89 = load i64, i64* %4, align 8
  %90 = call i32 @PHY_SetBBReg(i32 %82, i32 %85, i32 %88, i64 %89)
  br label %91

91:                                               ; preds = %79, %62
  %92 = load i64, i64* %4, align 8
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  br label %95

95:                                               ; preds = %91, %20
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %97 = load i32, i32* @ODM_COMP_DIG, align 4
  %98 = load i32, i32* @ODM_DBG_TRACE, align 4
  %99 = load i64, i64* %4, align 8
  %100 = inttoptr i64 %99 to i8*
  %101 = call i32 @ODM_RT_TRACE(%struct.TYPE_7__* %96, i32 %97, i32 %98, i8* %100)
  br label %102

102:                                              ; preds = %95, %15
  ret void
}

declare dso_local i32 @ODM_RT_TRACE(%struct.TYPE_7__*, i32, i32, i8*) #1

declare dso_local i32 @ODM_REG(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @ODM_BIT(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @PHY_SetBBReg(i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
