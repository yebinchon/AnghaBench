; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-ns2-mux.c_ns2_pin_config_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-ns2-mux.c_ns2_pin_config_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ns2_pin* }
%struct.ns2_pin = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@ENOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*)* @ns2_pin_config_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ns2_pin_config_get(%struct.pinctrl_dev* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.ns2_pin*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %14 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %15 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.ns2_pin*, %struct.ns2_pin** %22, align 8
  store %struct.ns2_pin* %23, %struct.ns2_pin** %8, align 8
  %24 = load i64*, i64** %7, align 8
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @pinconf_to_config_param(i64 %25)
  store i32 %26, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %27 = load %struct.ns2_pin*, %struct.ns2_pin** %8, align 8
  %28 = getelementptr inbounds %struct.ns2_pin, %struct.ns2_pin* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %35

32:                                               ; preds = %3
  %33 = load i32, i32* @ENOTSUPP, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %109

35:                                               ; preds = %3
  %36 = load i32, i32* %9, align 4
  switch i32 %36, label %106 [
    i32 133, label %37
    i32 131, label %50
    i32 132, label %60
    i32 130, label %70
    i32 128, label %83
    i32 129, label %96
  ]

37:                                               ; preds = %35
  %38 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @ns2_pin_get_pull(%struct.pinctrl_dev* %38, i32 %39, i32* %10, i32* %11)
  %41 = load i32, i32* %10, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load i32, i32* %11, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %109

47:                                               ; preds = %43, %37
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %109

50:                                               ; preds = %35
  %51 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @ns2_pin_get_pull(%struct.pinctrl_dev* %51, i32 %52, i32* %10, i32* %11)
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %109

57:                                               ; preds = %50
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %109

60:                                               ; preds = %35
  %61 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @ns2_pin_get_pull(%struct.pinctrl_dev* %61, i32 %62, i32* %10, i32* %11)
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  store i32 0, i32* %4, align 4
  br label %109

67:                                               ; preds = %60
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %109

70:                                               ; preds = %35
  %71 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @ns2_pin_get_strength(%struct.pinctrl_dev* %71, i32 %72, i32* %12)
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i32, i32* %13, align 4
  store i32 %77, i32* %4, align 4
  br label %109

78:                                               ; preds = %70
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %12, align 4
  %81 = call i64 @pinconf_to_config_packed(i32 %79, i32 %80)
  %82 = load i64*, i64** %7, align 8
  store i64 %81, i64* %82, align 8
  store i32 0, i32* %4, align 4
  br label %109

83:                                               ; preds = %35
  %84 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @ns2_pin_get_slew(%struct.pinctrl_dev* %84, i32 %85, i32* %12)
  store i32 %86, i32* %13, align 4
  %87 = load i32, i32* %13, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = load i32, i32* %13, align 4
  store i32 %90, i32* %4, align 4
  br label %109

91:                                               ; preds = %83
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %12, align 4
  %94 = call i64 @pinconf_to_config_packed(i32 %92, i32 %93)
  %95 = load i64*, i64** %7, align 8
  store i64 %94, i64* %95, align 8
  store i32 0, i32* %4, align 4
  br label %109

96:                                               ; preds = %35
  %97 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %98 = load i32, i32* %6, align 4
  %99 = call i32 @ns2_pin_get_enable(%struct.pinctrl_dev* %97, i32 %98)
  store i32 %99, i32* %13, align 4
  %100 = load i32, i32* %13, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  store i32 0, i32* %4, align 4
  br label %109

103:                                              ; preds = %96
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %4, align 4
  br label %109

106:                                              ; preds = %35
  %107 = load i32, i32* @ENOTSUPP, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %4, align 4
  br label %109

109:                                              ; preds = %106, %103, %102, %91, %89, %78, %76, %67, %66, %57, %56, %47, %46, %32
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @ns2_pin_get_pull(%struct.pinctrl_dev*, i32, i32*, i32*) #1

declare dso_local i32 @ns2_pin_get_strength(%struct.pinctrl_dev*, i32, i32*) #1

declare dso_local i64 @pinconf_to_config_packed(i32, i32) #1

declare dso_local i32 @ns2_pin_get_slew(%struct.pinctrl_dev*, i32, i32*) #1

declare dso_local i32 @ns2_pin_get_enable(%struct.pinctrl_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
