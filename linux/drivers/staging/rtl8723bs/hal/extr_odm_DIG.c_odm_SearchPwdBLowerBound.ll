; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_odm_DIG.c_odm_SearchPwdBLowerBound.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_odm_DIG.c_odm_SearchPwdBLowerBound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i64, i32 }

@rOFDM0_ECCAThreshold = common dso_local global i32 0, align 4
@bMaskByte0 = common dso_local global i32 0, align 4
@bMaskByte2 = common dso_local global i32 0, align 4
@ODM_REG_RPT_11N = common dso_local global i32 0, align 4
@bMaskDWord = common dso_local global i32 0, align 4
@BIT30 = common dso_local global i32 0, align 4
@BIT29 = common dso_local global i32 0, align 4
@ODM_COMP_DIG = common dso_local global i32 0, align 4
@ODM_DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"IGI = 0x%x, H2L_lb = 0x%x, L2H_lb = 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @odm_SearchPwdBLowerBound(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %9, align 4
  store i32 80, i32* %8, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @ODM_Write_DIG(%struct.TYPE_4__* %15, i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %8, align 4
  %20 = sub nsw i32 %18, %19
  store i32 %20, i32* %12, align 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %12, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp sgt i32 %26, 10
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  store i32 10, i32* %10, align 4
  br label %29

29:                                               ; preds = %28, %2
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 %30, %33
  store i32 %34, i32* %11, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 8
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @rOFDM0_ECCAThreshold, align 4
  %39 = load i32, i32* @bMaskByte0, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @PHY_SetBBReg(i32 %37, i32 %38, i32 %39, i32 %40)
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 8
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @rOFDM0_ECCAThreshold, align 4
  %46 = load i32, i32* @bMaskByte2, align 4
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @PHY_SetBBReg(i32 %44, i32 %45, i32 %46, i32 %47)
  %49 = call i32 @mdelay(i32 5)
  br label %50

50:                                               ; preds = %173, %29
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %174

53:                                               ; preds = %50
  store i32 0, i32* %7, align 4
  br label %54

54:                                               ; preds = %96, %53
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %55, 20
  br i1 %56, label %57, label %99

57:                                               ; preds = %54
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 8
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @ODM_REG_RPT_11N, align 4
  %62 = load i32, i32* @bMaskDWord, align 4
  %63 = call i32 @PHY_QueryBBReg(i32 %60, i32 %61, i32 %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @BIT30, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %57
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, 1
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  br label %95

75:                                               ; preds = %57
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @BIT29, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %75
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = add nsw i32 %83, 1
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  br label %94

87:                                               ; preds = %75
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 7
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %90, 1
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 7
  store i64 %91, i64* %93, align 8
  br label %94

94:                                               ; preds = %87, %80
  br label %95

95:                                               ; preds = %94, %68
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %7, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %7, align 4
  br label %54

99:                                               ; preds = %54
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = icmp sgt i32 %102, 5
  br i1 %103, label %104, label %157

104:                                              ; preds = %99
  %105 = load i32, i32* %8, align 4
  %106 = sub nsw i32 %105, 1
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %10, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %10, align 4
  %110 = icmp sgt i32 %109, 10
  br i1 %110, label %111, label %112

111:                                              ; preds = %104
  store i32 10, i32* %10, align 4
  br label %112

112:                                              ; preds = %111, %104
  %113 = load i32, i32* %10, align 4
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = sub nsw i32 %113, %116
  store i32 %117, i32* %11, align 4
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 8
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @rOFDM0_ECCAThreshold, align 4
  %122 = load i32, i32* @bMaskByte0, align 4
  %123 = load i32, i32* %10, align 4
  %124 = call i32 @PHY_SetBBReg(i32 %120, i32 %121, i32 %122, i32 %123)
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 8
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @rOFDM0_ECCAThreshold, align 4
  %129 = load i32, i32* @bMaskByte2, align 4
  %130 = load i32, i32* %11, align 4
  %131 = call i32 @PHY_SetBBReg(i32 %127, i32 %128, i32 %129, i32 %130)
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 3
  store i32 1, i32* %133, align 4
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 2
  store i32 0, i32* %135, align 8
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 7
  store i64 0, i64* %137, align 8
  %138 = load i32, i32* %10, align 4
  %139 = icmp eq i32 %138, 10
  br i1 %139, label %140, label %156

140:                                              ; preds = %112
  store i32 0, i32* %9, align 4
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 3
  store i32 0, i32* %142, align 4
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 2
  store i32 0, i32* %144, align 8
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 7
  store i64 0, i64* %146, align 8
  %147 = load i32, i32* %11, align 4
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 4
  store i32 %147, i32* %149, align 8
  %150 = load i32, i32* %10, align 4
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 5
  store i32 %150, i32* %152, align 4
  %153 = load i32, i32* %8, align 4
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 6
  store i32 %153, i32* %155, align 8
  br label %156

156:                                              ; preds = %140, %112
  br label %173

157:                                              ; preds = %99
  store i32 0, i32* %9, align 4
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 3
  store i32 0, i32* %159, align 4
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 2
  store i32 0, i32* %161, align 8
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 7
  store i64 0, i64* %163, align 8
  %164 = load i32, i32* %11, align 4
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 4
  store i32 %164, i32* %166, align 8
  %167 = load i32, i32* %10, align 4
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 5
  store i32 %167, i32* %169, align 4
  %170 = load i32, i32* %8, align 4
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 6
  store i32 %170, i32* %172, align 8
  br label %173

173:                                              ; preds = %157, %156
  br label %50

174:                                              ; preds = %50
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %176 = load i32, i32* @ODM_COMP_DIG, align 4
  %177 = load i32, i32* @ODM_DBG_LOUD, align 4
  %178 = load i32, i32* %8, align 4
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 5
  %184 = load i32, i32* %183, align 4
  %185 = sext i32 %184 to i64
  %186 = inttoptr i64 %185 to i8*
  %187 = call i32 @ODM_RT_TRACE(%struct.TYPE_4__* %175, i32 %176, i32 %177, i8* %186)
  ret void
}

declare dso_local i32 @ODM_Write_DIG(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @PHY_SetBBReg(i32, i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @PHY_QueryBBReg(i32, i32, i32) #1

declare dso_local i32 @ODM_RT_TRACE(%struct.TYPE_4__*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
