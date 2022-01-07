; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_map_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_map_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { %struct.regulator_desc* }
%struct.regulator_desc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}*, i64 }

@regulator_list_voltage_linear = common dso_local global i64 0, align 8
@regulator_list_voltage_linear_range = common dso_local global i64 0, align 8
@regulator_list_voltage_pickable_linear_range = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32, i32)* @regulator_map_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regulator_map_voltage(%struct.regulator_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.regulator_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.regulator_desc*, align 8
  store %struct.regulator_dev* %0, %struct.regulator_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %10 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %9, i32 0, i32 0
  %11 = load %struct.regulator_desc*, %struct.regulator_desc** %10, align 8
  store %struct.regulator_desc* %11, %struct.regulator_desc** %8, align 8
  %12 = load %struct.regulator_desc*, %struct.regulator_desc** %8, align 8
  %13 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = bitcast {}** %15 to i32 (%struct.regulator_dev*, i32, i32)**
  %17 = load i32 (%struct.regulator_dev*, i32, i32)*, i32 (%struct.regulator_dev*, i32, i32)** %16, align 8
  %18 = icmp ne i32 (%struct.regulator_dev*, i32, i32)* %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %3
  %20 = load %struct.regulator_desc*, %struct.regulator_desc** %8, align 8
  %21 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = bitcast {}** %23 to i32 (%struct.regulator_dev*, i32, i32)**
  %25 = load i32 (%struct.regulator_dev*, i32, i32)*, i32 (%struct.regulator_dev*, i32, i32)** %24, align 8
  %26 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 %25(%struct.regulator_dev* %26, i32 %27, i32 %28)
  store i32 %29, i32* %4, align 4
  br label %74

30:                                               ; preds = %3
  %31 = load %struct.regulator_desc*, %struct.regulator_desc** %8, align 8
  %32 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @regulator_list_voltage_linear, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %30
  %39 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @regulator_map_voltage_linear(%struct.regulator_dev* %39, i32 %40, i32 %41)
  store i32 %42, i32* %4, align 4
  br label %74

43:                                               ; preds = %30
  %44 = load %struct.regulator_desc*, %struct.regulator_desc** %8, align 8
  %45 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @regulator_list_voltage_linear_range, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %43
  %52 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @regulator_map_voltage_linear_range(%struct.regulator_dev* %52, i32 %53, i32 %54)
  store i32 %55, i32* %4, align 4
  br label %74

56:                                               ; preds = %43
  %57 = load %struct.regulator_desc*, %struct.regulator_desc** %8, align 8
  %58 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @regulator_list_voltage_pickable_linear_range, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %56
  %65 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @regulator_map_voltage_pickable_linear_range(%struct.regulator_dev* %65, i32 %66, i32 %67)
  store i32 %68, i32* %4, align 4
  br label %74

69:                                               ; preds = %56
  %70 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @regulator_map_voltage_iterate(%struct.regulator_dev* %70, i32 %71, i32 %72)
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %69, %64, %51, %38, %19
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @regulator_map_voltage_linear(%struct.regulator_dev*, i32, i32) #1

declare dso_local i32 @regulator_map_voltage_linear_range(%struct.regulator_dev*, i32, i32) #1

declare dso_local i32 @regulator_map_voltage_pickable_linear_range(%struct.regulator_dev*, i32, i32) #1

declare dso_local i32 @regulator_map_voltage_iterate(%struct.regulator_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
