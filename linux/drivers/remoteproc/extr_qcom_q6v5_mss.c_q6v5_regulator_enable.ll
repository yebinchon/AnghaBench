; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_mss.c_q6v5_regulator_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_mss.c_q6v5_regulator_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.q6v5 = type { i32 }
%struct.reg_info = type { i64, i64, i32 }

@INT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to request voltage for %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to set regulator mode\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Regulator enable failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.q6v5*, %struct.reg_info*, i32)* @q6v5_regulator_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @q6v5_regulator_enable(%struct.q6v5* %0, %struct.reg_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.q6v5*, align 8
  %6 = alloca %struct.reg_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.q6v5* %0, %struct.q6v5** %5, align 8
  store %struct.reg_info* %1, %struct.reg_info** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %92, %3
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %95

14:                                               ; preds = %10
  %15 = load %struct.reg_info*, %struct.reg_info** %6, align 8
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %15, i64 %17
  %19 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %46

22:                                               ; preds = %14
  %23 = load %struct.reg_info*, %struct.reg_info** %6, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %23, i64 %25
  %27 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.reg_info*, %struct.reg_info** %6, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %29, i64 %31
  %33 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* @INT_MAX, align 4
  %36 = call i32 @regulator_set_voltage(i32 %28, i64 %34, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %22
  %40 = load %struct.q6v5*, %struct.q6v5** %5, align 8
  %41 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 (i32, i8*, ...) @dev_err(i32 %42, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %96

45:                                               ; preds = %22
  br label %46

46:                                               ; preds = %45, %14
  %47 = load %struct.reg_info*, %struct.reg_info** %6, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %47, i64 %49
  %51 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %54, label %76

54:                                               ; preds = %46
  %55 = load %struct.reg_info*, %struct.reg_info** %6, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %55, i64 %57
  %59 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.reg_info*, %struct.reg_info** %6, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %61, i64 %63
  %65 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @regulator_set_load(i32 %60, i64 %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %54
  %71 = load %struct.q6v5*, %struct.q6v5** %5, align 8
  %72 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (i32, i8*, ...) @dev_err(i32 %73, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %96

75:                                               ; preds = %54
  br label %76

76:                                               ; preds = %75, %46
  %77 = load %struct.reg_info*, %struct.reg_info** %6, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %77, i64 %79
  %81 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @regulator_enable(i32 %82)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %76
  %87 = load %struct.q6v5*, %struct.q6v5** %5, align 8
  %88 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (i32, i8*, ...) @dev_err(i32 %89, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %96

91:                                               ; preds = %76
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %9, align 4
  br label %10

95:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %146

96:                                               ; preds = %86, %70, %39
  br label %97

97:                                               ; preds = %141, %96
  %98 = load i32, i32* %9, align 4
  %99 = icmp sge i32 %98, 0
  br i1 %99, label %100, label %144

100:                                              ; preds = %97
  %101 = load %struct.reg_info*, %struct.reg_info** %6, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %101, i64 %103
  %105 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp sgt i64 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %100
  %109 = load %struct.reg_info*, %struct.reg_info** %6, align 8
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %109, i64 %111
  %113 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @INT_MAX, align 4
  %116 = call i32 @regulator_set_voltage(i32 %114, i64 0, i32 %115)
  br label %117

117:                                              ; preds = %108, %100
  %118 = load %struct.reg_info*, %struct.reg_info** %6, align 8
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %118, i64 %120
  %122 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp sgt i64 %123, 0
  br i1 %124, label %125, label %133

125:                                              ; preds = %117
  %126 = load %struct.reg_info*, %struct.reg_info** %6, align 8
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %126, i64 %128
  %130 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @regulator_set_load(i32 %131, i64 0)
  br label %133

133:                                              ; preds = %125, %117
  %134 = load %struct.reg_info*, %struct.reg_info** %6, align 8
  %135 = load i32, i32* %9, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %134, i64 %136
  %138 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @regulator_disable(i32 %139)
  br label %141

141:                                              ; preds = %133
  %142 = load i32, i32* %9, align 4
  %143 = add nsw i32 %142, -1
  store i32 %143, i32* %9, align 4
  br label %97

144:                                              ; preds = %97
  %145 = load i32, i32* %8, align 4
  store i32 %145, i32* %4, align 4
  br label %146

146:                                              ; preds = %144, %95
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local i32 @regulator_set_voltage(i32, i64, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @regulator_set_load(i32, i64) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
