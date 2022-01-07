; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_odm_RegConfig8723B.c_odm_ConfigRFReg_8723B.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_odm_RegConfig8723B.c_odm_ConfigRFReg_8723B.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@bRFRegOffsetMask = common dso_local global i32 0, align 4
@bMaskDWord = common dso_local global i32 0, align 4
@ODM_COMP_INIT = common dso_local global i32 0, align 4
@ODM_DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"===> ODM_ConfigRFWithHeaderFile: [B6] getvalue 0x%x, Data 0x%x, count %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [74 x i8] c"===> ODM_ConfigRFWithHeaderFile: [B2] getvalue 0x%x, Data 0x%x, count %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @odm_ConfigRFReg_8723B(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %15, 254
  br i1 %16, label %20, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %18, 4094
  br i1 %19, label %20, label %22

20:                                               ; preds = %17, %5
  %21 = call i32 @msleep(i32 50)
  br label %139

22:                                               ; preds = %17
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @bRFRegOffsetMask, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @PHY_SetRFReg(i32 %25, i32 %26, i32 %27, i32 %28, i32 %29)
  %31 = call i32 @udelay(i32 1)
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %32, 182
  br i1 %33, label %34, label %82

34:                                               ; preds = %22
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @bMaskDWord, align 4
  %41 = call i32 @PHY_QueryRFReg(i32 %37, i32 %38, i32 %39, i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = call i32 @udelay(i32 1)
  br label %43

43:                                               ; preds = %80, %34
  %44 = load i32, i32* %11, align 4
  %45 = ashr i32 %44, 8
  %46 = load i32, i32* %8, align 4
  %47 = ashr i32 %46, 8
  %48 = icmp ne i32 %45, %47
  br i1 %48, label %49, label %81

49:                                               ; preds = %43
  %50 = load i32, i32* %12, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %12, align 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @bRFRegOffsetMask, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @PHY_SetRFReg(i32 %54, i32 %55, i32 %56, i32 %57, i32 %58)
  %60 = call i32 @udelay(i32 1)
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @bMaskDWord, align 4
  %67 = call i32 @PHY_QueryRFReg(i32 %63, i32 %64, i32 %65, i32 %66)
  store i32 %67, i32* %11, align 4
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %69 = load i32, i32* @ODM_COMP_INIT, align 4
  %70 = load i32, i32* @ODM_DBG_TRACE, align 4
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = inttoptr i64 %74 to i8*
  %76 = call i32 @ODM_RT_TRACE(%struct.TYPE_4__* %68, i32 %69, i32 %70, i8* %75)
  %77 = load i32, i32* %12, align 4
  %78 = icmp sgt i32 %77, 5
  br i1 %78, label %79, label %80

79:                                               ; preds = %49
  br label %81

80:                                               ; preds = %49
  br label %43

81:                                               ; preds = %79, %43
  br label %82

82:                                               ; preds = %81, %22
  %83 = load i32, i32* %7, align 4
  %84 = icmp eq i32 %83, 178
  br i1 %84, label %85, label %138

85:                                               ; preds = %82
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @bMaskDWord, align 4
  %92 = call i32 @PHY_QueryRFReg(i32 %88, i32 %89, i32 %90, i32 %91)
  store i32 %92, i32* %13, align 4
  %93 = call i32 @udelay(i32 1)
  br label %94

94:                                               ; preds = %136, %85
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %137

98:                                               ; preds = %94
  %99 = load i32, i32* %14, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %14, align 4
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* @bRFRegOffsetMask, align 4
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @PHY_SetRFReg(i32 %103, i32 %104, i32 %105, i32 %106, i32 %107)
  %109 = call i32 @udelay(i32 1)
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* @bRFRegOffsetMask, align 4
  %115 = call i32 @PHY_SetRFReg(i32 %112, i32 %113, i32 24, i32 %114, i32 64519)
  %116 = call i32 @udelay(i32 1)
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* @bMaskDWord, align 4
  %123 = call i32 @PHY_QueryRFReg(i32 %119, i32 %120, i32 %121, i32 %122)
  store i32 %123, i32* %13, align 4
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %125 = load i32, i32* @ODM_COMP_INIT, align 4
  %126 = load i32, i32* @ODM_DBG_TRACE, align 4
  %127 = load i32, i32* %13, align 4
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* %14, align 4
  %130 = sext i32 %129 to i64
  %131 = inttoptr i64 %130 to i8*
  %132 = call i32 @ODM_RT_TRACE(%struct.TYPE_4__* %124, i32 %125, i32 %126, i8* %131)
  %133 = load i32, i32* %14, align 4
  %134 = icmp sgt i32 %133, 5
  br i1 %134, label %135, label %136

135:                                              ; preds = %98
  br label %137

136:                                              ; preds = %98
  br label %94

137:                                              ; preds = %135, %94
  br label %138

138:                                              ; preds = %137, %82
  br label %139

139:                                              ; preds = %138, %20
  ret void
}

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @PHY_SetRFReg(i32, i32, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @PHY_QueryRFReg(i32, i32, i32, i32) #1

declare dso_local i32 @ODM_RT_TRACE(%struct.TYPE_4__*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
