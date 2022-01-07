; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom_spmi-regulator.c_spmi_hw_selector_to_sw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom_spmi-regulator.c_spmi_hw_selector_to_sw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spmi_regulator = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.spmi_voltage_range* }
%struct.spmi_voltage_range = type { i32, i32, i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spmi_regulator*, i32, %struct.spmi_voltage_range*)* @spmi_hw_selector_to_sw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spmi_hw_selector_to_sw(%struct.spmi_regulator* %0, i32 %1, %struct.spmi_voltage_range* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.spmi_regulator*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.spmi_voltage_range*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.spmi_voltage_range*, align 8
  %12 = alloca %struct.spmi_voltage_range*, align 8
  store %struct.spmi_regulator* %0, %struct.spmi_regulator** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.spmi_voltage_range* %2, %struct.spmi_voltage_range** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.spmi_regulator*, %struct.spmi_regulator** %5, align 8
  %14 = getelementptr inbounds %struct.spmi_regulator, %struct.spmi_regulator* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %16, align 8
  store %struct.spmi_voltage_range* %17, %struct.spmi_voltage_range** %11, align 8
  %18 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %11, align 8
  %19 = load %struct.spmi_regulator*, %struct.spmi_regulator** %5, align 8
  %20 = getelementptr inbounds %struct.spmi_regulator, %struct.spmi_regulator* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.spmi_voltage_range, %struct.spmi_voltage_range* %18, i64 %24
  store %struct.spmi_voltage_range* %25, %struct.spmi_voltage_range** %12, align 8
  br label %26

26:                                               ; preds = %91, %3
  %27 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %11, align 8
  %28 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %12, align 8
  %29 = icmp ult %struct.spmi_voltage_range* %27, %28
  br i1 %29, label %30, label %94

30:                                               ; preds = %26
  %31 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %11, align 8
  %32 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %7, align 8
  %33 = icmp eq %struct.spmi_voltage_range* %31, %32
  br i1 %33, label %34, label %83

34:                                               ; preds = %30
  %35 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %7, align 8
  %36 = getelementptr inbounds %struct.spmi_voltage_range, %struct.spmi_voltage_range* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %83

39:                                               ; preds = %34
  %40 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %7, align 8
  %41 = getelementptr inbounds %struct.spmi_voltage_range, %struct.spmi_voltage_range* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %7, align 8
  %44 = getelementptr inbounds %struct.spmi_voltage_range, %struct.spmi_voltage_range* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sub i32 %42, %45
  store i32 %46, i32* %9, align 4
  %47 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %7, align 8
  %48 = getelementptr inbounds %struct.spmi_voltage_range, %struct.spmi_voltage_range* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = udiv i32 %50, %49
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %39
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %97

58:                                               ; preds = %39
  %59 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %7, align 8
  %60 = getelementptr inbounds %struct.spmi_voltage_range, %struct.spmi_voltage_range* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %7, align 8
  %63 = getelementptr inbounds %struct.spmi_voltage_range, %struct.spmi_voltage_range* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = sub i32 %61, %64
  store i32 %65, i32* %10, align 4
  %66 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %7, align 8
  %67 = getelementptr inbounds %struct.spmi_voltage_range, %struct.spmi_voltage_range* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %10, align 4
  %70 = udiv i32 %69, %68
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp ugt i32 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %58
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %97

77:                                               ; preds = %58
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %6, align 4
  %80 = add i32 %78, %79
  %81 = load i32, i32* %9, align 4
  %82 = sub i32 %80, %81
  store i32 %82, i32* %4, align 4
  br label %97

83:                                               ; preds = %34, %30
  %84 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %11, align 8
  %85 = getelementptr inbounds %struct.spmi_voltage_range, %struct.spmi_voltage_range* %84, i32 0, i32 4
  %86 = load i64, i64* %85, align 8
  %87 = load i32, i32* %8, align 4
  %88 = zext i32 %87 to i64
  %89 = add nsw i64 %88, %86
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %8, align 4
  br label %91

91:                                               ; preds = %83
  %92 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %11, align 8
  %93 = getelementptr inbounds %struct.spmi_voltage_range, %struct.spmi_voltage_range* %92, i32 1
  store %struct.spmi_voltage_range* %93, %struct.spmi_voltage_range** %11, align 8
  br label %26

94:                                               ; preds = %26
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %94, %77, %74, %55
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
