; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c__regulator_set_voltage_sel_step.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c__regulator_set_voltage_sel_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.regulator_ops* }
%struct.regulator_ops = type { i32 (%struct.regulator_dev.0*)*, i32 (%struct.regulator_dev.1*, i32)* }
%struct.regulator_dev.0 = type opaque
%struct.regulator_dev.1 = type opaque

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32, i32)* @_regulator_set_voltage_sel_step to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_regulator_set_voltage_sel_step(%struct.regulator_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.regulator_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.regulator_ops*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %14 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load %struct.regulator_ops*, %struct.regulator_ops** %16, align 8
  store %struct.regulator_ops* %17, %struct.regulator_ops** %8, align 8
  %18 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %19 = call i32 @_regulator_is_enabled(%struct.regulator_dev* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  br label %118

22:                                               ; preds = %3
  %23 = load %struct.regulator_ops*, %struct.regulator_ops** %8, align 8
  %24 = getelementptr inbounds %struct.regulator_ops, %struct.regulator_ops* %23, i32 0, i32 0
  %25 = load i32 (%struct.regulator_dev.0*)*, i32 (%struct.regulator_dev.0*)** %24, align 8
  %26 = icmp ne i32 (%struct.regulator_dev.0*)* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %132

30:                                               ; preds = %22
  %31 = load %struct.regulator_ops*, %struct.regulator_ops** %8, align 8
  %32 = getelementptr inbounds %struct.regulator_ops, %struct.regulator_ops* %31, i32 0, i32 0
  %33 = load i32 (%struct.regulator_dev.0*)*, i32 (%struct.regulator_dev.0*)** %32, align 8
  %34 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %35 = bitcast %struct.regulator_dev* %34 to %struct.regulator_dev.0*
  %36 = call i32 %33(%struct.regulator_dev.0* %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %4, align 4
  br label %132

41:                                               ; preds = %30
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %10, align 4
  %44 = sub nsw i32 %42, %43
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %132

48:                                               ; preds = %41
  %49 = load i32, i32* %9, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %84

51:                                               ; preds = %48
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %54 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %52, %57
  store i32 %58, i32* %11, align 4
  br label %59

59:                                               ; preds = %75, %51
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %83

63:                                               ; preds = %59
  %64 = load %struct.regulator_ops*, %struct.regulator_ops** %8, align 8
  %65 = getelementptr inbounds %struct.regulator_ops, %struct.regulator_ops* %64, i32 0, i32 1
  %66 = load i32 (%struct.regulator_dev.1*, i32)*, i32 (%struct.regulator_dev.1*, i32)** %65, align 8
  %67 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %68 = bitcast %struct.regulator_dev* %67 to %struct.regulator_dev.1*
  %69 = load i32, i32* %11, align 4
  %70 = call i32 %66(%struct.regulator_dev.1* %68, i32 %69)
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %63
  br label %123

74:                                               ; preds = %63
  br label %75

75:                                               ; preds = %74
  %76 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %77 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* %11, align 4
  br label %59

83:                                               ; preds = %59
  br label %117

84:                                               ; preds = %48
  %85 = load i32, i32* %10, align 4
  %86 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %87 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = sub nsw i32 %85, %90
  store i32 %91, i32* %11, align 4
  br label %92

92:                                               ; preds = %108, %84
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp sgt i32 %93, %94
  br i1 %95, label %96, label %116

96:                                               ; preds = %92
  %97 = load %struct.regulator_ops*, %struct.regulator_ops** %8, align 8
  %98 = getelementptr inbounds %struct.regulator_ops, %struct.regulator_ops* %97, i32 0, i32 1
  %99 = load i32 (%struct.regulator_dev.1*, i32)*, i32 (%struct.regulator_dev.1*, i32)** %98, align 8
  %100 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %101 = bitcast %struct.regulator_dev* %100 to %struct.regulator_dev.1*
  %102 = load i32, i32* %11, align 4
  %103 = call i32 %99(%struct.regulator_dev.1* %101, i32 %102)
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* %12, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %96
  br label %123

107:                                              ; preds = %96
  br label %108

108:                                              ; preds = %107
  %109 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %110 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %109, i32 0, i32 0
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %11, align 4
  %115 = sub nsw i32 %114, %113
  store i32 %115, i32* %11, align 4
  br label %92

116:                                              ; preds = %92
  br label %117

117:                                              ; preds = %116, %83
  br label %118

118:                                              ; preds = %117, %21
  %119 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* %7, align 4
  %122 = call i32 @_regulator_call_set_voltage_sel(%struct.regulator_dev* %119, i32 %120, i32 %121)
  store i32 %122, i32* %4, align 4
  br label %132

123:                                              ; preds = %106, %73
  %124 = load %struct.regulator_ops*, %struct.regulator_ops** %8, align 8
  %125 = getelementptr inbounds %struct.regulator_ops, %struct.regulator_ops* %124, i32 0, i32 1
  %126 = load i32 (%struct.regulator_dev.1*, i32)*, i32 (%struct.regulator_dev.1*, i32)** %125, align 8
  %127 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %128 = bitcast %struct.regulator_dev* %127 to %struct.regulator_dev.1*
  %129 = load i32, i32* %10, align 4
  %130 = call i32 %126(%struct.regulator_dev.1* %128, i32 %129)
  %131 = load i32, i32* %12, align 4
  store i32 %131, i32* %4, align 4
  br label %132

132:                                              ; preds = %123, %118, %47, %39, %27
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local i32 @_regulator_is_enabled(%struct.regulator_dev*) #1

declare dso_local i32 @_regulator_call_set_voltage_sel(%struct.regulator_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
