; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_is_supported_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_is_supported_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator = type { %struct.regulator_dev* }
%struct.regulator_dev = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64 }

@REGULATOR_CHANGE_VOLTAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regulator_is_supported_voltage(%struct.regulator* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.regulator*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.regulator_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.regulator* %0, %struct.regulator** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.regulator*, %struct.regulator** %5, align 8
  %13 = getelementptr inbounds %struct.regulator, %struct.regulator* %12, i32 0, i32 0
  %14 = load %struct.regulator_dev*, %struct.regulator_dev** %13, align 8
  store %struct.regulator_dev* %14, %struct.regulator_dev** %8, align 8
  %15 = load %struct.regulator_dev*, %struct.regulator_dev** %8, align 8
  %16 = load i32, i32* @REGULATOR_CHANGE_VOLTAGE, align 4
  %17 = call i32 @regulator_ops_is_valid(%struct.regulator_dev* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %37, label %19

19:                                               ; preds = %3
  %20 = load %struct.regulator*, %struct.regulator** %5, align 8
  %21 = call i32 @regulator_get_voltage(%struct.regulator* %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %19
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp sle i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp sle i32 %29, %30
  br label %32

32:                                               ; preds = %28, %24
  %33 = phi i1 [ false, %24 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %4, align 4
  br label %92

35:                                               ; preds = %19
  %36 = load i32, i32* %11, align 4
  store i32 %36, i32* %4, align 4
  br label %92

37:                                               ; preds = %3
  %38 = load %struct.regulator_dev*, %struct.regulator_dev** %8, align 8
  %39 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %37
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.regulator_dev*, %struct.regulator_dev** %8, align 8
  %47 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp sge i32 %45, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %44
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.regulator_dev*, %struct.regulator_dev** %8, align 8
  %55 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp sle i32 %53, %58
  br label %60

60:                                               ; preds = %52, %44
  %61 = phi i1 [ false, %44 ], [ %59, %52 ]
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %4, align 4
  br label %92

63:                                               ; preds = %37
  %64 = load %struct.regulator*, %struct.regulator** %5, align 8
  %65 = call i32 @regulator_count_voltages(%struct.regulator* %64)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  store i32 0, i32* %4, align 4
  br label %92

69:                                               ; preds = %63
  %70 = load i32, i32* %11, align 4
  store i32 %70, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %71

71:                                               ; preds = %88, %69
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %91

75:                                               ; preds = %71
  %76 = load %struct.regulator*, %struct.regulator** %5, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @regulator_list_voltage(%struct.regulator* %76, i32 %77)
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp sge i32 %79, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %75
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp sle i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  store i32 1, i32* %4, align 4
  br label %92

87:                                               ; preds = %82, %75
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %9, align 4
  br label %71

91:                                               ; preds = %71
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %91, %86, %68, %60, %35, %32
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @regulator_ops_is_valid(%struct.regulator_dev*, i32) #1

declare dso_local i32 @regulator_get_voltage(%struct.regulator*) #1

declare dso_local i32 @regulator_count_voltages(%struct.regulator*) #1

declare dso_local i32 @regulator_list_voltage(%struct.regulator*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
