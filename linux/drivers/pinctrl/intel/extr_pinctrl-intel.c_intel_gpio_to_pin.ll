; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/intel/extr_pinctrl-intel.c_intel_gpio_to_pin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/intel/extr_pinctrl-intel.c_intel_gpio_to_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pinctrl = type { i32, %struct.intel_community* }
%struct.intel_community = type { i32, %struct.intel_padgroup* }
%struct.intel_padgroup = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_pinctrl*, i32, %struct.intel_community**, %struct.intel_padgroup**)* @intel_gpio_to_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_gpio_to_pin(%struct.intel_pinctrl* %0, i32 %1, %struct.intel_community** %2, %struct.intel_padgroup** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_pinctrl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.intel_community**, align 8
  %9 = alloca %struct.intel_padgroup**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.intel_community*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.intel_padgroup*, align 8
  %14 = alloca i32, align 4
  store %struct.intel_pinctrl* %0, %struct.intel_pinctrl** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.intel_community** %2, %struct.intel_community*** %8, align 8
  store %struct.intel_padgroup** %3, %struct.intel_padgroup*** %9, align 8
  store i32 0, i32* %10, align 4
  br label %15

15:                                               ; preds = %90, %4
  %16 = load i32, i32* %10, align 4
  %17 = load %struct.intel_pinctrl*, %struct.intel_pinctrl** %6, align 8
  %18 = getelementptr inbounds %struct.intel_pinctrl, %struct.intel_pinctrl* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %93

21:                                               ; preds = %15
  %22 = load %struct.intel_pinctrl*, %struct.intel_pinctrl** %6, align 8
  %23 = getelementptr inbounds %struct.intel_pinctrl, %struct.intel_pinctrl* %22, i32 0, i32 1
  %24 = load %struct.intel_community*, %struct.intel_community** %23, align 8
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.intel_community, %struct.intel_community* %24, i64 %26
  store %struct.intel_community* %27, %struct.intel_community** %11, align 8
  store i32 0, i32* %12, align 4
  br label %28

28:                                               ; preds = %86, %21
  %29 = load i32, i32* %12, align 4
  %30 = load %struct.intel_community*, %struct.intel_community** %11, align 8
  %31 = getelementptr inbounds %struct.intel_community, %struct.intel_community* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %89

34:                                               ; preds = %28
  %35 = load %struct.intel_community*, %struct.intel_community** %11, align 8
  %36 = getelementptr inbounds %struct.intel_community, %struct.intel_community* %35, i32 0, i32 1
  %37 = load %struct.intel_padgroup*, %struct.intel_padgroup** %36, align 8
  %38 = load i32, i32* %12, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.intel_padgroup, %struct.intel_padgroup* %37, i64 %39
  store %struct.intel_padgroup* %40, %struct.intel_padgroup** %13, align 8
  %41 = load %struct.intel_padgroup*, %struct.intel_padgroup** %13, align 8
  %42 = getelementptr inbounds %struct.intel_padgroup, %struct.intel_padgroup* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ult i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  br label %86

46:                                               ; preds = %34
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.intel_padgroup*, %struct.intel_padgroup** %13, align 8
  %49 = getelementptr inbounds %struct.intel_padgroup, %struct.intel_padgroup* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp uge i32 %47, %50
  br i1 %51, label %52, label %85

52:                                               ; preds = %46
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.intel_padgroup*, %struct.intel_padgroup** %13, align 8
  %55 = getelementptr inbounds %struct.intel_padgroup, %struct.intel_padgroup* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.intel_padgroup*, %struct.intel_padgroup** %13, align 8
  %58 = getelementptr inbounds %struct.intel_padgroup, %struct.intel_padgroup* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = add i32 %56, %59
  %61 = icmp ult i32 %53, %60
  br i1 %61, label %62, label %85

62:                                               ; preds = %52
  %63 = load %struct.intel_padgroup*, %struct.intel_padgroup** %13, align 8
  %64 = getelementptr inbounds %struct.intel_padgroup, %struct.intel_padgroup* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %7, align 4
  %67 = add i32 %65, %66
  %68 = load %struct.intel_padgroup*, %struct.intel_padgroup** %13, align 8
  %69 = getelementptr inbounds %struct.intel_padgroup, %struct.intel_padgroup* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = sub i32 %67, %70
  store i32 %71, i32* %14, align 4
  %72 = load %struct.intel_community**, %struct.intel_community*** %8, align 8
  %73 = icmp ne %struct.intel_community** %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %62
  %75 = load %struct.intel_community*, %struct.intel_community** %11, align 8
  %76 = load %struct.intel_community**, %struct.intel_community*** %8, align 8
  store %struct.intel_community* %75, %struct.intel_community** %76, align 8
  br label %77

77:                                               ; preds = %74, %62
  %78 = load %struct.intel_padgroup**, %struct.intel_padgroup*** %9, align 8
  %79 = icmp ne %struct.intel_padgroup** %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load %struct.intel_padgroup*, %struct.intel_padgroup** %13, align 8
  %82 = load %struct.intel_padgroup**, %struct.intel_padgroup*** %9, align 8
  store %struct.intel_padgroup* %81, %struct.intel_padgroup** %82, align 8
  br label %83

83:                                               ; preds = %80, %77
  %84 = load i32, i32* %14, align 4
  store i32 %84, i32* %5, align 4
  br label %96

85:                                               ; preds = %52, %46
  br label %86

86:                                               ; preds = %85, %45
  %87 = load i32, i32* %12, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %12, align 4
  br label %28

89:                                               ; preds = %28
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %10, align 4
  br label %15

93:                                               ; preds = %15
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %93, %83
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
