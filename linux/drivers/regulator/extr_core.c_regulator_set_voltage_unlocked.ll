; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_set_voltage_unlocked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_set_voltage_unlocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator = type { %struct.regulator_voltage*, %struct.regulator_dev* }
%struct.regulator_voltage = type { i32, i32 }
%struct.regulator_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@REGULATOR_CHANGE_VOLTAGE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator*, i32, i32, i64)* @regulator_set_voltage_unlocked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regulator_set_voltage_unlocked(%struct.regulator* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.regulator*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.regulator_dev*, align 8
  %10 = alloca %struct.regulator_voltage*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.regulator* %0, %struct.regulator** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %15 = load %struct.regulator*, %struct.regulator** %5, align 8
  %16 = getelementptr inbounds %struct.regulator, %struct.regulator* %15, i32 0, i32 1
  %17 = load %struct.regulator_dev*, %struct.regulator_dev** %16, align 8
  store %struct.regulator_dev* %17, %struct.regulator_dev** %9, align 8
  %18 = load %struct.regulator*, %struct.regulator** %5, align 8
  %19 = getelementptr inbounds %struct.regulator, %struct.regulator* %18, i32 0, i32 0
  %20 = load %struct.regulator_voltage*, %struct.regulator_voltage** %19, align 8
  %21 = load i64, i64* %8, align 8
  %22 = getelementptr inbounds %struct.regulator_voltage, %struct.regulator_voltage* %20, i64 %21
  store %struct.regulator_voltage* %22, %struct.regulator_voltage** %10, align 8
  store i32 0, i32* %11, align 4
  %23 = load %struct.regulator_voltage*, %struct.regulator_voltage** %10, align 8
  %24 = getelementptr inbounds %struct.regulator_voltage, %struct.regulator_voltage* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %4
  %29 = load %struct.regulator_voltage*, %struct.regulator_voltage** %10, align 8
  %30 = getelementptr inbounds %struct.regulator_voltage, %struct.regulator_voltage* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %111

35:                                               ; preds = %28, %4
  %36 = load %struct.regulator_dev*, %struct.regulator_dev** %9, align 8
  %37 = load i32, i32* @REGULATOR_CHANGE_VOLTAGE, align 4
  %38 = call i32 @regulator_ops_is_valid(%struct.regulator_dev* %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %58, label %40

40:                                               ; preds = %35
  %41 = load %struct.regulator_dev*, %struct.regulator_dev** %9, align 8
  %42 = call i32 @regulator_get_voltage_rdev(%struct.regulator_dev* %41)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %14, align 4
  %45 = icmp sle i32 %43, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %40
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp sle i32 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.regulator_voltage*, %struct.regulator_voltage** %10, align 8
  %53 = getelementptr inbounds %struct.regulator_voltage, %struct.regulator_voltage* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.regulator_voltage*, %struct.regulator_voltage** %10, align 8
  %56 = getelementptr inbounds %struct.regulator_voltage, %struct.regulator_voltage* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  br label %111

57:                                               ; preds = %46, %40
  br label %58

58:                                               ; preds = %57, %35
  %59 = load %struct.regulator_dev*, %struct.regulator_dev** %9, align 8
  %60 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %79, label %67

67:                                               ; preds = %58
  %68 = load %struct.regulator_dev*, %struct.regulator_dev** %9, align 8
  %69 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %67
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %11, align 4
  br label %111

79:                                               ; preds = %67, %58
  %80 = load %struct.regulator_dev*, %struct.regulator_dev** %9, align 8
  %81 = call i32 @regulator_check_voltage(%struct.regulator_dev* %80, i32* %6, i32* %7)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %111

85:                                               ; preds = %79
  %86 = load %struct.regulator_voltage*, %struct.regulator_voltage** %10, align 8
  %87 = getelementptr inbounds %struct.regulator_voltage, %struct.regulator_voltage* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %12, align 4
  %89 = load %struct.regulator_voltage*, %struct.regulator_voltage** %10, align 8
  %90 = getelementptr inbounds %struct.regulator_voltage, %struct.regulator_voltage* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %13, align 4
  %92 = load i32, i32* %6, align 4
  %93 = load %struct.regulator_voltage*, %struct.regulator_voltage** %10, align 8
  %94 = getelementptr inbounds %struct.regulator_voltage, %struct.regulator_voltage* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* %7, align 4
  %96 = load %struct.regulator_voltage*, %struct.regulator_voltage** %10, align 8
  %97 = getelementptr inbounds %struct.regulator_voltage, %struct.regulator_voltage* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load %struct.regulator_dev*, %struct.regulator_dev** %9, align 8
  %99 = load i64, i64* %8, align 8
  %100 = call i32 @regulator_balance_voltage(%struct.regulator_dev* %98, i64 %99)
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* %11, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %85
  %104 = load i32, i32* %12, align 4
  %105 = load %struct.regulator_voltage*, %struct.regulator_voltage** %10, align 8
  %106 = getelementptr inbounds %struct.regulator_voltage, %struct.regulator_voltage* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* %13, align 4
  %108 = load %struct.regulator_voltage*, %struct.regulator_voltage** %10, align 8
  %109 = getelementptr inbounds %struct.regulator_voltage, %struct.regulator_voltage* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  br label %110

110:                                              ; preds = %103, %85
  br label %111

111:                                              ; preds = %110, %84, %76, %50, %34
  %112 = load i32, i32* %11, align 4
  ret i32 %112
}

declare dso_local i32 @regulator_ops_is_valid(%struct.regulator_dev*, i32) #1

declare dso_local i32 @regulator_get_voltage_rdev(%struct.regulator_dev*) #1

declare dso_local i32 @regulator_check_voltage(%struct.regulator_dev*, i32*, i32*) #1

declare dso_local i32 @regulator_balance_voltage(%struct.regulator_dev*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
