; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-ns2-mux.c_ns2_pin_config_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-ns2-mux.c_ns2_pin_config_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ns2_pin* }
%struct.ns2_pin = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@ENOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"invalid configuration\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*, i32)* @ns2_pin_config_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ns2_pin_config_set(%struct.pinctrl_dev* %0, i32 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pinctrl_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ns2_pin*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %16 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %15, i32 0, i32 1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.ns2_pin*, %struct.ns2_pin** %23, align 8
  store %struct.ns2_pin* %24, %struct.ns2_pin** %10, align 8
  %25 = load i32, i32* @ENOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %14, align 4
  %27 = load %struct.ns2_pin*, %struct.ns2_pin** %10, align 8
  %28 = getelementptr inbounds %struct.ns2_pin, %struct.ns2_pin* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %35

32:                                               ; preds = %4
  %33 = load i32, i32* @ENOTSUPP, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %119

35:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  br label %36

36:                                               ; preds = %113, %35
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %116

40:                                               ; preds = %36
  %41 = load i64*, i64** %8, align 8
  %42 = load i32, i32* %12, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @pinconf_to_config_param(i64 %45)
  store i32 %46, i32* %11, align 4
  %47 = load i64*, i64** %8, align 8
  %48 = load i32, i32* %12, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @pinconf_to_config_argument(i64 %51)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %11, align 4
  switch i32 %53, label %105 [
    i32 133, label %54
    i32 131, label %62
    i32 132, label %70
    i32 130, label %78
    i32 128, label %87
    i32 129, label %96
  ]

54:                                               ; preds = %40
  %55 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @ns2_pin_set_pull(%struct.pinctrl_dev* %55, i32 %56, i32 0, i32 0)
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %117

61:                                               ; preds = %54
  br label %112

62:                                               ; preds = %40
  %63 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @ns2_pin_set_pull(%struct.pinctrl_dev* %63, i32 %64, i32 1, i32 0)
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %14, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %117

69:                                               ; preds = %62
  br label %112

70:                                               ; preds = %40
  %71 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @ns2_pin_set_pull(%struct.pinctrl_dev* %71, i32 %72, i32 0, i32 1)
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %14, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %117

77:                                               ; preds = %70
  br label %112

78:                                               ; preds = %40
  %79 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %13, align 4
  %82 = call i32 @ns2_pin_set_strength(%struct.pinctrl_dev* %79, i32 %80, i32 %81)
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* %14, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  br label %117

86:                                               ; preds = %78
  br label %112

87:                                               ; preds = %40
  %88 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %13, align 4
  %91 = call i32 @ns2_pin_set_slew(%struct.pinctrl_dev* %88, i32 %89, i32 %90)
  store i32 %91, i32* %14, align 4
  %92 = load i32, i32* %14, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %87
  br label %117

95:                                               ; preds = %87
  br label %112

96:                                               ; preds = %40
  %97 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %13, align 4
  %100 = call i32 @ns2_pin_set_enable(%struct.pinctrl_dev* %97, i32 %98, i32 %99)
  store i32 %100, i32* %14, align 4
  %101 = load i32, i32* %14, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  br label %117

104:                                              ; preds = %96
  br label %112

105:                                              ; preds = %40
  %106 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %107 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @dev_err(i32 %108, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %110 = load i32, i32* @ENOTSUPP, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %5, align 4
  br label %119

112:                                              ; preds = %104, %95, %86, %77, %69, %61
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %12, align 4
  %115 = add i32 %114, 1
  store i32 %115, i32* %12, align 4
  br label %36

116:                                              ; preds = %36
  br label %117

117:                                              ; preds = %116, %103, %94, %85, %76, %68, %60
  %118 = load i32, i32* %14, align 4
  store i32 %118, i32* %5, align 4
  br label %119

119:                                              ; preds = %117, %105, %32
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @pinconf_to_config_argument(i64) #1

declare dso_local i32 @ns2_pin_set_pull(%struct.pinctrl_dev*, i32, i32, i32) #1

declare dso_local i32 @ns2_pin_set_strength(%struct.pinctrl_dev*, i32, i32) #1

declare dso_local i32 @ns2_pin_set_slew(%struct.pinctrl_dev*, i32, i32) #1

declare dso_local i32 @ns2_pin_set_enable(%struct.pinctrl_dev*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
