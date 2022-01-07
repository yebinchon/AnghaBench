; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/intel/extr_pinctrl-intel.c_intel_gpio_ngpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/intel/extr_pinctrl-intel.c_intel_gpio_ngpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pinctrl = type { i32, %struct.intel_community* }
%struct.intel_community = type { i32, %struct.intel_padgroup* }
%struct.intel_padgroup = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_pinctrl*)* @intel_gpio_ngpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_gpio_ngpio(%struct.intel_pinctrl* %0) #0 {
  %2 = alloca %struct.intel_pinctrl*, align 8
  %3 = alloca %struct.intel_community*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.intel_padgroup*, align 8
  store %struct.intel_pinctrl* %0, %struct.intel_pinctrl** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %62, %1
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.intel_pinctrl*, %struct.intel_pinctrl** %2, align 8
  %11 = getelementptr inbounds %struct.intel_pinctrl, %struct.intel_pinctrl* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %65

14:                                               ; preds = %8
  %15 = load %struct.intel_pinctrl*, %struct.intel_pinctrl** %2, align 8
  %16 = getelementptr inbounds %struct.intel_pinctrl, %struct.intel_pinctrl* %15, i32 0, i32 1
  %17 = load %struct.intel_community*, %struct.intel_community** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.intel_community, %struct.intel_community* %17, i64 %19
  store %struct.intel_community* %20, %struct.intel_community** %3, align 8
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %58, %14
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.intel_community*, %struct.intel_community** %3, align 8
  %24 = getelementptr inbounds %struct.intel_community, %struct.intel_community* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %61

27:                                               ; preds = %21
  %28 = load %struct.intel_community*, %struct.intel_community** %3, align 8
  %29 = getelementptr inbounds %struct.intel_community, %struct.intel_community* %28, i32 0, i32 1
  %30 = load %struct.intel_padgroup*, %struct.intel_padgroup** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.intel_padgroup, %struct.intel_padgroup* %30, i64 %32
  store %struct.intel_padgroup* %33, %struct.intel_padgroup** %7, align 8
  %34 = load %struct.intel_padgroup*, %struct.intel_padgroup** %7, align 8
  %35 = getelementptr inbounds %struct.intel_padgroup, %struct.intel_padgroup* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ult i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  br label %58

39:                                               ; preds = %27
  %40 = load %struct.intel_padgroup*, %struct.intel_padgroup** %7, align 8
  %41 = getelementptr inbounds %struct.intel_padgroup, %struct.intel_padgroup* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.intel_padgroup*, %struct.intel_padgroup** %7, align 8
  %44 = getelementptr inbounds %struct.intel_padgroup, %struct.intel_padgroup* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = add i32 %42, %45
  %47 = load i32, i32* %4, align 4
  %48 = icmp ugt i32 %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %39
  %50 = load %struct.intel_padgroup*, %struct.intel_padgroup** %7, align 8
  %51 = getelementptr inbounds %struct.intel_padgroup, %struct.intel_padgroup* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.intel_padgroup*, %struct.intel_padgroup** %7, align 8
  %54 = getelementptr inbounds %struct.intel_padgroup, %struct.intel_padgroup* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = add i32 %52, %55
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %49, %39
  br label %58

58:                                               ; preds = %57, %38
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %21

61:                                               ; preds = %21
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %8

65:                                               ; preds = %8
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
