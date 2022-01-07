; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_max8997-regulator.c_max8997_assess_side_effect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_max8997-regulator.c_max8997_assess_side_effect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.max8997_data = type { i32, i32, i32, i64, i64*, i64*, i64* }

@INT_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i64, i32*)* @max8997_assess_side_effect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8997_assess_side_effect(%struct.regulator_dev* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.regulator_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.max8997_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [3 x i64*], align 16
  %11 = alloca [3 x i32], align 4
  %12 = alloca [8 x i32], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %17 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %18 = call %struct.max8997_data* @rdev_get_drvdata(%struct.regulator_dev* %17)
  store %struct.max8997_data* %18, %struct.max8997_data** %8, align 8
  %19 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %20 = call i32 @rdev_get_id(%struct.regulator_dev* %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* @INT_MAX, align 4
  store i32 %21, i32* %13, align 4
  %22 = load i32*, i32** %7, align 8
  store i32 -1, i32* %22, align 4
  %23 = load i32, i32* %9, align 4
  switch i32 %23, label %27 [
    i32 130, label %24
    i32 129, label %25
    i32 128, label %26
  ]

24:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %30

25:                                               ; preds = %3
  store i32 1, i32* %9, align 4
  br label %30

26:                                               ; preds = %3
  store i32 2, i32* %9, align 4
  br label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %176

30:                                               ; preds = %26, %25, %24
  %31 = load %struct.max8997_data*, %struct.max8997_data** %8, align 8
  %32 = getelementptr inbounds %struct.max8997_data, %struct.max8997_data* %31, i32 0, i32 6
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds [3 x i64*], [3 x i64*]* %10, i64 0, i64 0
  store i64* %33, i64** %34, align 16
  %35 = load %struct.max8997_data*, %struct.max8997_data** %8, align 8
  %36 = getelementptr inbounds %struct.max8997_data, %struct.max8997_data* %35, i32 0, i32 5
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds [3 x i64*], [3 x i64*]* %10, i64 0, i64 1
  store i64* %37, i64** %38, align 8
  %39 = load %struct.max8997_data*, %struct.max8997_data** %8, align 8
  %40 = getelementptr inbounds %struct.max8997_data, %struct.max8997_data* %39, i32 0, i32 4
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds [3 x i64*], [3 x i64*]* %10, i64 0, i64 2
  store i64* %41, i64** %42, align 16
  %43 = load %struct.max8997_data*, %struct.max8997_data** %8, align 8
  %44 = getelementptr inbounds %struct.max8997_data, %struct.max8997_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  store i32 %45, i32* %46, align 4
  %47 = load %struct.max8997_data*, %struct.max8997_data** %8, align 8
  %48 = getelementptr inbounds %struct.max8997_data, %struct.max8997_data* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 1
  store i32 %49, i32* %50, align 4
  %51 = load %struct.max8997_data*, %struct.max8997_data** %8, align 8
  %52 = getelementptr inbounds %struct.max8997_data, %struct.max8997_data* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 2
  store i32 %53, i32* %54, align 4
  store i32 0, i32* %14, align 4
  br label %55

55:                                               ; preds = %160, %30
  %56 = load i32, i32* %14, align 4
  %57 = icmp slt i32 %56, 8
  br i1 %57, label %58, label %163

58:                                               ; preds = %55
  %59 = load i64, i64* %6, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [3 x i64*], [3 x i64*]* %10, i64 0, i64 %61
  %63 = load i64*, i64** %62, align 8
  %64 = load i32, i32* %14, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %59, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %58
  %70 = load i32, i32* %14, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 %71
  store i32 -1, i32* %72, align 4
  br label %160

73:                                               ; preds = %58
  %74 = load i32, i32* %14, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 %75
  store i32 0, i32* %76, align 4
  store i32 0, i32* %15, align 4
  br label %77

77:                                               ; preds = %133, %73
  %78 = load i32, i32* %15, align 4
  %79 = icmp slt i32 %78, 3
  br i1 %79, label %80, label %136

80:                                               ; preds = %77
  %81 = load i32, i32* %15, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  br label %133

85:                                               ; preds = %80
  %86 = load i32, i32* %15, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  br label %133

92:                                               ; preds = %85
  %93 = load i32, i32* %15, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [3 x i64*], [3 x i64*]* %10, i64 0, i64 %94
  %96 = load i64*, i64** %95, align 8
  %97 = load i32, i32* %14, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %96, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = load i32, i32* %15, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [3 x i64*], [3 x i64*]* %10, i64 0, i64 %102
  %104 = load i64*, i64** %103, align 8
  %105 = load %struct.max8997_data*, %struct.max8997_data** %8, align 8
  %106 = getelementptr inbounds %struct.max8997_data, %struct.max8997_data* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds i64, i64* %104, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = sub nsw i64 %100, %109
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %16, align 4
  %112 = load i32, i32* %16, align 4
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %92
  %115 = load i32, i32* %16, align 4
  %116 = load i32, i32* %14, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, %115
  store i32 %120, i32* %118, align 4
  br label %132

121:                                              ; preds = %92
  %122 = load i32, i32* %16, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %121
  %125 = load i32, i32* %16, align 4
  %126 = load i32, i32* %14, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = sub nsw i32 %129, %125
  store i32 %130, i32* %128, align 4
  br label %131

131:                                              ; preds = %124, %121
  br label %132

132:                                              ; preds = %131, %114
  br label %133

133:                                              ; preds = %132, %91, %84
  %134 = load i32, i32* %15, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %15, align 4
  br label %77

136:                                              ; preds = %77
  %137 = load i32, i32* %14, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %136
  %143 = load i32, i32* %14, align 4
  %144 = load i32*, i32** %7, align 8
  store i32 %143, i32* %144, align 4
  store i32 0, i32* %4, align 4
  br label %176

145:                                              ; preds = %136
  %146 = load i32, i32* %14, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %13, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %159

152:                                              ; preds = %145
  %153 = load i32, i32* %14, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 %154
  %156 = load i32, i32* %155, align 4
  store i32 %156, i32* %13, align 4
  %157 = load i32, i32* %14, align 4
  %158 = load i32*, i32** %7, align 8
  store i32 %157, i32* %158, align 4
  br label %159

159:                                              ; preds = %152, %145
  br label %160

160:                                              ; preds = %159, %69
  %161 = load i32, i32* %14, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %14, align 4
  br label %55

163:                                              ; preds = %55
  %164 = load i32*, i32** %7, align 8
  %165 = load i32, i32* %164, align 4
  %166 = icmp eq i32 %165, -1
  br i1 %166, label %167, label %170

167:                                              ; preds = %163
  %168 = load i32, i32* @EINVAL, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %4, align 4
  br label %176

170:                                              ; preds = %163
  %171 = load i32*, i32** %7, align 8
  %172 = load i32, i32* %171, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 %173
  %175 = load i32, i32* %174, align 4
  store i32 %175, i32* %4, align 4
  br label %176

176:                                              ; preds = %170, %167, %142, %27
  %177 = load i32, i32* %4, align 4
  ret i32 %177
}

declare dso_local %struct.max8997_data* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
