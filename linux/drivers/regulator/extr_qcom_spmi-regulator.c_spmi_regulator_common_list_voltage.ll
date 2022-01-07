; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom_spmi-regulator.c_spmi_regulator_common_list_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom_spmi-regulator.c_spmi_regulator_common_list_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.spmi_regulator = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @spmi_regulator_common_list_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spmi_regulator_common_list_voltage(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.spmi_regulator*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %10 = call %struct.spmi_regulator* @rdev_get_drvdata(%struct.regulator_dev* %9)
  store %struct.spmi_regulator* %10, %struct.spmi_regulator** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.spmi_regulator*, %struct.spmi_regulator** %6, align 8
  %13 = getelementptr inbounds %struct.spmi_regulator, %struct.spmi_regulator* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp uge i32 %11, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %83

19:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %78, %19
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.spmi_regulator*, %struct.spmi_regulator** %6, align 8
  %23 = getelementptr inbounds %struct.spmi_regulator, %struct.spmi_regulator* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %21, %26
  br i1 %27, label %28, label %81

28:                                               ; preds = %20
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.spmi_regulator*, %struct.spmi_regulator** %6, align 8
  %31 = getelementptr inbounds %struct.spmi_regulator, %struct.spmi_regulator* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ult i32 %29, %39
  br i1 %40, label %41, label %65

41:                                               ; preds = %28
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.spmi_regulator*, %struct.spmi_regulator** %6, align 8
  %44 = getelementptr inbounds %struct.spmi_regulator, %struct.spmi_regulator* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = mul i32 %42, %52
  %54 = load %struct.spmi_regulator*, %struct.spmi_regulator** %6, align 8
  %55 = getelementptr inbounds %struct.spmi_regulator, %struct.spmi_regulator* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = add i32 %53, %63
  store i32 %64, i32* %7, align 4
  br label %81

65:                                               ; preds = %28
  %66 = load %struct.spmi_regulator*, %struct.spmi_regulator** %6, align 8
  %67 = getelementptr inbounds %struct.spmi_regulator, %struct.spmi_regulator* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %5, align 4
  %77 = sub i32 %76, %75
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %65
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %8, align 4
  br label %20

81:                                               ; preds = %41, %20
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %81, %18
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.spmi_regulator* @rdev_get_drvdata(%struct.regulator_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
