; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_helpers.c_regulator_set_current_limit_regmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_helpers.c_regulator_set_current_limit_regmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regulator_set_current_limit_regmap(%struct.regulator_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.regulator_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %14 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %8, align 4
  store i32 -1, i32* %10, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %138

23:                                               ; preds = %3
  %24 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %25 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %107

30:                                               ; preds = %23
  %31 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %32 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %11, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sub i32 %37, 1
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %11, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ugt i32 %41, %44
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %78

49:                                               ; preds = %30
  %50 = load i32, i32* %8, align 4
  %51 = sub i32 %50, 1
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %74, %49
  %53 = load i32, i32* %9, align 4
  %54 = icmp sge i32 %53, 0
  br i1 %54, label %55, label %77

55:                                               ; preds = %52
  %56 = load i32, i32* %6, align 4
  %57 = load i32*, i32** %11, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = icmp ule i32 %56, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %55
  %64 = load i32*, i32** %11, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp ule i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %63
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %10, align 4
  br label %77

73:                                               ; preds = %63, %55
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %9, align 4
  br label %52

77:                                               ; preds = %71, %52
  br label %106

78:                                               ; preds = %30
  store i32 0, i32* %9, align 4
  br label %79

79:                                               ; preds = %102, %78
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp ult i32 %80, %81
  br i1 %82, label %83, label %105

83:                                               ; preds = %79
  %84 = load i32, i32* %6, align 4
  %85 = load i32*, i32** %11, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = icmp ule i32 %84, %89
  br i1 %90, label %91, label %101

91:                                               ; preds = %83
  %92 = load i32*, i32** %11, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp ule i32 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %91
  %100 = load i32, i32* %9, align 4
  store i32 %100, i32* %10, align 4
  br label %105

101:                                              ; preds = %91, %83
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %9, align 4
  br label %79

105:                                              ; preds = %99, %79
  br label %106

106:                                              ; preds = %105, %77
  br label %107

107:                                              ; preds = %106, %23
  %108 = load i32, i32* %10, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %4, align 4
  br label %138

113:                                              ; preds = %107
  %114 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %115 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %114, i32 0, i32 0
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @ffs(i32 %118)
  %120 = sub nsw i32 %119, 1
  %121 = load i32, i32* %10, align 4
  %122 = shl i32 %121, %120
  store i32 %122, i32* %10, align 4
  %123 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %124 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %127 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %126, i32 0, i32 0
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %132 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %131, i32 0, i32 0
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* %10, align 4
  %137 = call i32 @regmap_update_bits(i32 %125, i32 %130, i32 %135, i32 %136)
  store i32 %137, i32* %4, align 4
  br label %138

138:                                              ; preds = %113, %110, %20
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
