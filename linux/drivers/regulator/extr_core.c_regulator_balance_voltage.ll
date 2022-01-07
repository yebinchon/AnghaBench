; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_balance_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_balance_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { %struct.coupling_desc }
%struct.coupling_desc = type { i32, i32, %struct.regulator_dev**, %struct.regulator_coupler* }
%struct.regulator_coupler = type { i32 (%struct.regulator_coupler*, %struct.regulator_dev*, i32)* }

@PM_SUSPEND_ON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Not all coupled regulators registered\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @regulator_balance_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regulator_balance_voltage(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.regulator_dev**, align 8
  %7 = alloca %struct.regulator_dev*, align 8
  %8 = alloca %struct.coupling_desc*, align 8
  %9 = alloca %struct.regulator_coupler*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %23 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %24 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %23, i32 0, i32 0
  store %struct.coupling_desc* %24, %struct.coupling_desc** %8, align 8
  %25 = load %struct.coupling_desc*, %struct.coupling_desc** %8, align 8
  %26 = getelementptr inbounds %struct.coupling_desc, %struct.coupling_desc* %25, i32 0, i32 3
  %27 = load %struct.regulator_coupler*, %struct.regulator_coupler** %26, align 8
  store %struct.regulator_coupler* %27, %struct.regulator_coupler** %9, align 8
  store i64 0, i64* %18, align 8
  %28 = load %struct.coupling_desc*, %struct.coupling_desc** %8, align 8
  %29 = getelementptr inbounds %struct.coupling_desc, %struct.coupling_desc* %28, i32 0, i32 2
  %30 = load %struct.regulator_dev**, %struct.regulator_dev*** %29, align 8
  store %struct.regulator_dev** %30, %struct.regulator_dev*** %6, align 8
  %31 = load %struct.coupling_desc*, %struct.coupling_desc** %8, align 8
  %32 = getelementptr inbounds %struct.coupling_desc, %struct.coupling_desc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @PM_SUSPEND_ON, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %2
  store i32 1, i32* %12, align 4
  br label %38

38:                                               ; preds = %37, %2
  %39 = load %struct.coupling_desc*, %struct.coupling_desc** %8, align 8
  %40 = getelementptr inbounds %struct.coupling_desc, %struct.coupling_desc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %46 = call i32 @rdev_err(%struct.regulator_dev* %45, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @EPERM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %140

49:                                               ; preds = %38
  %50 = load %struct.regulator_coupler*, %struct.regulator_coupler** %9, align 8
  %51 = icmp ne %struct.regulator_coupler* %50, null
  br i1 %51, label %52, label %65

52:                                               ; preds = %49
  %53 = load %struct.regulator_coupler*, %struct.regulator_coupler** %9, align 8
  %54 = getelementptr inbounds %struct.regulator_coupler, %struct.regulator_coupler* %53, i32 0, i32 0
  %55 = load i32 (%struct.regulator_coupler*, %struct.regulator_dev*, i32)*, i32 (%struct.regulator_coupler*, %struct.regulator_dev*, i32)** %54, align 8
  %56 = icmp ne i32 (%struct.regulator_coupler*, %struct.regulator_dev*, i32)* %55, null
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = load %struct.regulator_coupler*, %struct.regulator_coupler** %9, align 8
  %59 = getelementptr inbounds %struct.regulator_coupler, %struct.regulator_coupler* %58, i32 0, i32 0
  %60 = load i32 (%struct.regulator_coupler*, %struct.regulator_dev*, i32)*, i32 (%struct.regulator_coupler*, %struct.regulator_dev*, i32)** %59, align 8
  %61 = load %struct.regulator_coupler*, %struct.regulator_coupler** %9, align 8
  %62 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %63 = load i32, i32* %5, align 4
  %64 = call i32 %60(%struct.regulator_coupler* %61, %struct.regulator_dev* %62, i32 %63)
  store i32 %64, i32* %3, align 4
  br label %140

65:                                               ; preds = %52, %49
  br label %66

66:                                               ; preds = %134, %65
  store i32 0, i32* %19, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store %struct.regulator_dev* null, %struct.regulator_dev** %7, align 8
  store i32 0, i32* %10, align 4
  br label %67

67:                                               ; preds = %111, %66
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %114

71:                                               ; preds = %67
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %72 = load i32, i32* %10, align 4
  %73 = call i64 @test_bit(i32 %72, i64* %18)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  br label %111

76:                                               ; preds = %71
  %77 = load %struct.regulator_dev**, %struct.regulator_dev*** %6, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.regulator_dev*, %struct.regulator_dev** %77, i64 %79
  %81 = load %struct.regulator_dev*, %struct.regulator_dev** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* %12, align 4
  %84 = call i32 @regulator_get_optimal_voltage(%struct.regulator_dev* %81, i32* %22, i32* %20, i32* %21, i32 %82, i32 %83)
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %76
  br label %138

88:                                               ; preds = %76
  %89 = load i32, i32* %20, align 4
  %90 = load i32, i32* %22, align 4
  %91 = sub nsw i32 %89, %90
  %92 = call i32 @abs(i32 %91)
  store i32 %92, i32* %16, align 4
  %93 = load i32, i32* %16, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %110

95:                                               ; preds = %88
  %96 = load i32, i32* %17, align 4
  %97 = load i32, i32* %16, align 4
  %98 = icmp ule i32 %96, %97
  br i1 %98, label %99, label %110

99:                                               ; preds = %95
  %100 = load i32, i32* %11, align 4
  store i32 %100, i32* %19, align 4
  %101 = load i32, i32* %16, align 4
  store i32 %101, i32* %17, align 4
  %102 = load %struct.regulator_dev**, %struct.regulator_dev*** %6, align 8
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.regulator_dev*, %struct.regulator_dev** %102, i64 %104
  %106 = load %struct.regulator_dev*, %struct.regulator_dev** %105, align 8
  store %struct.regulator_dev* %106, %struct.regulator_dev** %7, align 8
  %107 = load i32, i32* %20, align 4
  store i32 %107, i32* %13, align 4
  %108 = load i32, i32* %21, align 4
  store i32 %108, i32* %14, align 4
  %109 = load i32, i32* %10, align 4
  store i32 %109, i32* %15, align 4
  br label %110

110:                                              ; preds = %99, %95, %88
  br label %111

111:                                              ; preds = %110, %75
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %10, align 4
  br label %67

114:                                              ; preds = %67
  %115 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %116 = icmp ne %struct.regulator_dev* %115, null
  br i1 %116, label %118, label %117

117:                                              ; preds = %114
  store i32 0, i32* %11, align 4
  br label %138

118:                                              ; preds = %114
  %119 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %120 = load i32, i32* %13, align 4
  %121 = load i32, i32* %14, align 4
  %122 = load i32, i32* %5, align 4
  %123 = call i32 @regulator_set_voltage_rdev(%struct.regulator_dev* %119, i32 %120, i32 %121, i32 %122)
  store i32 %123, i32* %11, align 4
  %124 = load i32, i32* %11, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %118
  br label %138

127:                                              ; preds = %118
  %128 = load i32, i32* %19, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load i32, i32* %15, align 4
  %132 = call i32 @set_bit(i32 %131, i64* %18)
  br label %133

133:                                              ; preds = %130, %127
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %12, align 4
  %136 = icmp sgt i32 %135, 1
  br i1 %136, label %66, label %137

137:                                              ; preds = %134
  br label %138

138:                                              ; preds = %137, %126, %117, %87
  %139 = load i32, i32* %11, align 4
  store i32 %139, i32* %3, align 4
  br label %140

140:                                              ; preds = %138, %57, %44
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local i32 @rdev_err(%struct.regulator_dev*, i8*) #1

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @regulator_get_optimal_voltage(%struct.regulator_dev*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @abs(i32) #1

declare dso_local i32 @regulator_set_voltage_rdev(%struct.regulator_dev*, i32, i32, i32) #1

declare dso_local i32 @set_bit(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
