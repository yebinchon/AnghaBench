; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_odm_DIG.c_odm_NHMBB.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_odm_DIG.c_odm_NHMBB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64*, i64, i32, i32*, i32, i32, i32, i32 }

@ODM_COMP_DIG = common dso_local global i32 0, align 4
@ODM_DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"NHM_cnt_0 =%d, NHMCurTxOkcnt = %llu, NHMCurRxOkcnt = %llu\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"adaptivity_flag = %d\0A \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @odm_NHMBB(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %5, %struct.TYPE_3__** %3, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %8 = load i64*, i64** %7, align 8
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = sub nsw i64 %9, %12
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 4
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = sub nsw i32 %19, %22
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  store i64 %29, i64* %31, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 4
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %39 = load i32, i32* @ODM_COMP_DIG, align 4
  %40 = load i32, i32* @ODM_DBG_LOUD, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = inttoptr i64 %50 to i8*
  %52 = call i32 @ODM_RT_TRACE(%struct.TYPE_3__* %38, i32 %39, i32 %40, i8* %51)
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, 1
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = shl i32 %59, 2
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %61, 1
  %63 = icmp sgt i64 %56, %62
  br i1 %63, label %64, label %104

64:                                               ; preds = %1
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 4
  %68 = icmp sge i32 %67, 190
  br i1 %68, label %74, label %69

69:                                               ; preds = %64
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 7
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %74, label %79

74:                                               ; preds = %69, %64
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 7
  store i32 1, i32* %76, align 8
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 8
  store i32 0, i32* %78, align 4
  br label %103

79:                                               ; preds = %69
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 8
  %82 = load i32, i32* %81, align 4
  %83 = icmp slt i32 %82, 3
  br i1 %83, label %84, label %91

84:                                               ; preds = %79
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 8
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 8
  store i32 %88, i32* %90, align 4
  br label %94

91:                                               ; preds = %79
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 8
  store i32 4, i32* %93, align 4
  br label %94

94:                                               ; preds = %91, %84
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 8
  %97 = load i32, i32* %96, align 4
  %98 = icmp sgt i32 %97, 3
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 7
  store i32 0, i32* %101, align 8
  br label %102

102:                                              ; preds = %99, %94
  br label %103

103:                                              ; preds = %102, %74
  br label %142

104:                                              ; preds = %1
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 7
  %107 = load i32, i32* %106, align 8
  %108 = icmp eq i32 %107, 1
  br i1 %108, label %109, label %117

109:                                              ; preds = %104
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 6
  %112 = load i32, i32* %111, align 4
  %113 = icmp sle i32 %112, 200
  br i1 %113, label %114, label %117

114:                                              ; preds = %109
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 8
  store i32 0, i32* %116, align 4
  br label %141

117:                                              ; preds = %109, %104
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 8
  %120 = load i32, i32* %119, align 4
  %121 = icmp slt i32 %120, 3
  br i1 %121, label %122, label %129

122:                                              ; preds = %117
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 8
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, 1
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 8
  store i32 %126, i32* %128, align 4
  br label %132

129:                                              ; preds = %117
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 8
  store i32 4, i32* %131, align 4
  br label %132

132:                                              ; preds = %129, %122
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 8
  %135 = load i32, i32* %134, align 4
  %136 = icmp sgt i32 %135, 3
  br i1 %136, label %137, label %140

137:                                              ; preds = %132
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 7
  store i32 0, i32* %139, align 8
  br label %140

140:                                              ; preds = %137, %132
  br label %141

141:                                              ; preds = %140, %114
  br label %142

142:                                              ; preds = %141, %103
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %144 = load i32, i32* @ODM_COMP_DIG, align 4
  %145 = load i32, i32* @ODM_DBG_LOUD, align 4
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 7
  %148 = load i32, i32* %147, align 8
  %149 = sext i32 %148 to i64
  %150 = inttoptr i64 %149 to i8*
  %151 = call i32 @ODM_RT_TRACE(%struct.TYPE_3__* %143, i32 %144, i32 %145, i8* %150)
  ret void
}

declare dso_local i32 @ODM_RT_TRACE(%struct.TYPE_3__*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
