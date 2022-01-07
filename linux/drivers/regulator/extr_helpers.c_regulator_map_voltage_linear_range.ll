; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_helpers.c_regulator_map_voltage_linear_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_helpers.c_regulator_map_voltage_linear_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__*, %struct.regulator_linear_range* }
%struct.TYPE_3__ = type { i32 (%struct.regulator_dev*, i32)* }
%struct.regulator_linear_range = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regulator_map_voltage_linear_range(%struct.regulator_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.regulator_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.regulator_linear_range*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %9, align 4
  %15 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %16 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %3
  %22 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %23 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @BUG_ON(i32 %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %148

33:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %34

34:                                               ; preds = %132, %33
  %35 = load i32, i32* %11, align 4
  %36 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %37 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %35, %40
  br i1 %41, label %42, label %135

42:                                               ; preds = %34
  %43 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %44 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load %struct.regulator_linear_range*, %struct.regulator_linear_range** %46, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.regulator_linear_range, %struct.regulator_linear_range* %47, i64 %49
  store %struct.regulator_linear_range* %50, %struct.regulator_linear_range** %8, align 8
  %51 = load %struct.regulator_linear_range*, %struct.regulator_linear_range** %8, align 8
  %52 = getelementptr inbounds %struct.regulator_linear_range, %struct.regulator_linear_range* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.regulator_linear_range*, %struct.regulator_linear_range** %8, align 8
  %55 = getelementptr inbounds %struct.regulator_linear_range, %struct.regulator_linear_range* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.regulator_linear_range*, %struct.regulator_linear_range** %8, align 8
  %58 = getelementptr inbounds %struct.regulator_linear_range, %struct.regulator_linear_range* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 %56, %59
  %61 = load %struct.regulator_linear_range*, %struct.regulator_linear_range** %8, align 8
  %62 = getelementptr inbounds %struct.regulator_linear_range, %struct.regulator_linear_range* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 %60, %63
  %65 = add nsw i32 %53, %64
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp sle i32 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %42
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.regulator_linear_range*, %struct.regulator_linear_range** %8, align 8
  %72 = getelementptr inbounds %struct.regulator_linear_range, %struct.regulator_linear_range* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp sge i32 %70, %73
  br i1 %74, label %76, label %75

75:                                               ; preds = %69, %42
  br label %132

76:                                               ; preds = %69
  %77 = load i32, i32* %6, align 4
  %78 = load %struct.regulator_linear_range*, %struct.regulator_linear_range** %8, align 8
  %79 = getelementptr inbounds %struct.regulator_linear_range, %struct.regulator_linear_range* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp sle i32 %77, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load %struct.regulator_linear_range*, %struct.regulator_linear_range** %8, align 8
  %84 = getelementptr inbounds %struct.regulator_linear_range, %struct.regulator_linear_range* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %6, align 4
  br label %86

86:                                               ; preds = %82, %76
  %87 = load %struct.regulator_linear_range*, %struct.regulator_linear_range** %8, align 8
  %88 = getelementptr inbounds %struct.regulator_linear_range, %struct.regulator_linear_range* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  store i32 0, i32* %9, align 4
  br label %107

92:                                               ; preds = %86
  %93 = load i32, i32* %6, align 4
  %94 = load %struct.regulator_linear_range*, %struct.regulator_linear_range** %8, align 8
  %95 = getelementptr inbounds %struct.regulator_linear_range, %struct.regulator_linear_range* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = sub nsw i32 %93, %96
  %98 = load %struct.regulator_linear_range*, %struct.regulator_linear_range** %8, align 8
  %99 = getelementptr inbounds %struct.regulator_linear_range, %struct.regulator_linear_range* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @DIV_ROUND_UP(i32 %97, i32 %100)
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %9, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %92
  %105 = load i32, i32* %9, align 4
  store i32 %105, i32* %4, align 4
  br label %148

106:                                              ; preds = %92
  br label %107

107:                                              ; preds = %106, %91
  %108 = load %struct.regulator_linear_range*, %struct.regulator_linear_range** %8, align 8
  %109 = getelementptr inbounds %struct.regulator_linear_range, %struct.regulator_linear_range* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %9, align 4
  %112 = add nsw i32 %111, %110
  store i32 %112, i32* %9, align 4
  %113 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %114 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %113, i32 0, i32 0
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = load i32 (%struct.regulator_dev*, i32)*, i32 (%struct.regulator_dev*, i32)** %118, align 8
  %120 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %121 = load i32, i32* %9, align 4
  %122 = call i32 %119(%struct.regulator_dev* %120, i32 %121)
  store i32 %122, i32* %10, align 4
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* %6, align 4
  %125 = icmp sge i32 %123, %124
  br i1 %125, label %126, label %131

126:                                              ; preds = %107
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* %7, align 4
  %129 = icmp sle i32 %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %126
  br label %135

131:                                              ; preds = %126, %107
  br label %132

132:                                              ; preds = %131, %75
  %133 = load i32, i32* %11, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %11, align 4
  br label %34

135:                                              ; preds = %130, %34
  %136 = load i32, i32* %11, align 4
  %137 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %138 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %137, i32 0, i32 0
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp eq i32 %136, %141
  br i1 %142, label %143, label %146

143:                                              ; preds = %135
  %144 = load i32, i32* @EINVAL, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %4, align 4
  br label %148

146:                                              ; preds = %135
  %147 = load i32, i32* %9, align 4
  store i32 %147, i32* %4, align 4
  br label %148

148:                                              ; preds = %146, %143, %104, %21
  %149 = load i32, i32* %4, align 4
  ret i32 %149
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
