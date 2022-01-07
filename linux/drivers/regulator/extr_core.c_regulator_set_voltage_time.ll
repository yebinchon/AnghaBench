; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_set_voltage_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_set_voltage_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator = type { %struct.regulator_dev* }
%struct.regulator_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.regulator_ops* }
%struct.regulator_ops = type { i32 (%struct.regulator_dev.0*, i32, i32)*, i32 (%struct.regulator_dev.1*, i32, i32)*, i32 }
%struct.regulator_dev.0 = type opaque
%struct.regulator_dev.1 = type opaque

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regulator_set_voltage_time(%struct.regulator* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.regulator*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.regulator_dev*, align 8
  %9 = alloca %struct.regulator_ops*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.regulator* %0, %struct.regulator** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.regulator*, %struct.regulator** %5, align 8
  %15 = getelementptr inbounds %struct.regulator, %struct.regulator* %14, i32 0, i32 0
  %16 = load %struct.regulator_dev*, %struct.regulator_dev** %15, align 8
  store %struct.regulator_dev* %16, %struct.regulator_dev** %8, align 8
  %17 = load %struct.regulator_dev*, %struct.regulator_dev** %8, align 8
  %18 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load %struct.regulator_ops*, %struct.regulator_ops** %20, align 8
  store %struct.regulator_ops* %21, %struct.regulator_ops** %9, align 8
  store i32 -1, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  %22 = load %struct.regulator_ops*, %struct.regulator_ops** %9, align 8
  %23 = getelementptr inbounds %struct.regulator_ops, %struct.regulator_ops* %22, i32 0, i32 0
  %24 = load i32 (%struct.regulator_dev.0*, i32, i32)*, i32 (%struct.regulator_dev.0*, i32, i32)** %23, align 8
  %25 = icmp ne i32 (%struct.regulator_dev.0*, i32, i32)* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %3
  %27 = load %struct.regulator_ops*, %struct.regulator_ops** %9, align 8
  %28 = getelementptr inbounds %struct.regulator_ops, %struct.regulator_ops* %27, i32 0, i32 0
  %29 = load i32 (%struct.regulator_dev.0*, i32, i32)*, i32 (%struct.regulator_dev.0*, i32, i32)** %28, align 8
  %30 = load %struct.regulator_dev*, %struct.regulator_dev** %8, align 8
  %31 = bitcast %struct.regulator_dev* %30 to %struct.regulator_dev.0*
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 %29(%struct.regulator_dev.0* %31, i32 %32, i32 %33)
  store i32 %34, i32* %4, align 4
  br label %117

35:                                               ; preds = %3
  %36 = load %struct.regulator_ops*, %struct.regulator_ops** %9, align 8
  %37 = getelementptr inbounds %struct.regulator_ops, %struct.regulator_ops* %36, i32 0, i32 1
  %38 = load i32 (%struct.regulator_dev.1*, i32, i32)*, i32 (%struct.regulator_dev.1*, i32, i32)** %37, align 8
  %39 = icmp ne i32 (%struct.regulator_dev.1*, i32, i32)* %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = load %struct.regulator_dev*, %struct.regulator_dev** %8, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @_regulator_set_voltage_time(%struct.regulator_dev* %41, i32 %42, i32 %43)
  store i32 %44, i32* %4, align 4
  br label %117

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.regulator_ops*, %struct.regulator_ops** %9, align 8
  %48 = getelementptr inbounds %struct.regulator_ops, %struct.regulator_ops* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load %struct.regulator_dev*, %struct.regulator_dev** %8, align 8
  %53 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %51, %46
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %117

61:                                               ; preds = %51
  store i32 0, i32* %13, align 4
  br label %62

62:                                               ; preds = %96, %61
  %63 = load i32, i32* %13, align 4
  %64 = load %struct.regulator_dev*, %struct.regulator_dev** %8, align 8
  %65 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %63, %68
  br i1 %69, label %70, label %99

70:                                               ; preds = %62
  %71 = load %struct.regulator*, %struct.regulator** %5, align 8
  %72 = load i32, i32* %13, align 4
  %73 = call i32 @regulator_list_voltage(%struct.regulator* %71, i32 %72)
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %117

79:                                               ; preds = %70
  %80 = load i32, i32* %12, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  br label %96

83:                                               ; preds = %79
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = load i32, i32* %13, align 4
  store i32 %88, i32* %10, align 4
  br label %89

89:                                               ; preds = %87, %83
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = load i32, i32* %13, align 4
  store i32 %94, i32* %11, align 4
  br label %95

95:                                               ; preds = %93, %89
  br label %96

96:                                               ; preds = %95, %82
  %97 = load i32, i32* %13, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %13, align 4
  br label %62

99:                                               ; preds = %62
  %100 = load i32, i32* %10, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %99
  %103 = load i32, i32* %11, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %102, %99
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %4, align 4
  br label %117

108:                                              ; preds = %102
  %109 = load %struct.regulator_ops*, %struct.regulator_ops** %9, align 8
  %110 = getelementptr inbounds %struct.regulator_ops, %struct.regulator_ops* %109, i32 0, i32 1
  %111 = load i32 (%struct.regulator_dev.1*, i32, i32)*, i32 (%struct.regulator_dev.1*, i32, i32)** %110, align 8
  %112 = load %struct.regulator_dev*, %struct.regulator_dev** %8, align 8
  %113 = bitcast %struct.regulator_dev* %112 to %struct.regulator_dev.1*
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* %11, align 4
  %116 = call i32 %111(%struct.regulator_dev.1* %113, i32 %114, i32 %115)
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %108, %105, %76, %58, %40, %26
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local i32 @_regulator_set_voltage_time(%struct.regulator_dev*, i32, i32) #1

declare dso_local i32 @regulator_list_voltage(%struct.regulator*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
