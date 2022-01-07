; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_allow_bypass.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_allow_bypass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator = type { i32, %struct.regulator_dev* }
%struct.regulator_dev = type { i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.regulator_dev*, i32)* }

@REGULATOR_CHANGE_BYPASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regulator_allow_bypass(%struct.regulator* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.regulator_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.regulator* %0, %struct.regulator** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.regulator*, %struct.regulator** %4, align 8
  %9 = getelementptr inbounds %struct.regulator, %struct.regulator* %8, i32 0, i32 1
  %10 = load %struct.regulator_dev*, %struct.regulator_dev** %9, align 8
  store %struct.regulator_dev* %10, %struct.regulator_dev** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %12 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %11, i32 0, i32 2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32 (%struct.regulator_dev*, i32)*, i32 (%struct.regulator_dev*, i32)** %16, align 8
  %18 = icmp ne i32 (%struct.regulator_dev*, i32)* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %120

20:                                               ; preds = %2
  %21 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %22 = load i32, i32* @REGULATOR_CHANGE_BYPASS, align 4
  %23 = call i32 @regulator_ops_is_valid(%struct.regulator_dev* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %120

26:                                               ; preds = %20
  %27 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %28 = call i32 @regulator_lock(%struct.regulator_dev* %27)
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %68

31:                                               ; preds = %26
  %32 = load %struct.regulator*, %struct.regulator** %4, align 8
  %33 = getelementptr inbounds %struct.regulator, %struct.regulator* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %68, label %36

36:                                               ; preds = %31
  %37 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %38 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, 1
  store i64 %40, i64* %38, align 8
  %41 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %42 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %45 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %43, %46
  br i1 %47, label %48, label %67

48:                                               ; preds = %36
  %49 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %50 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %49, i32 0, i32 2
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32 (%struct.regulator_dev*, i32)*, i32 (%struct.regulator_dev*, i32)** %54, align 8
  %56 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 %55(%struct.regulator_dev* %56, i32 %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %48
  %62 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %63 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, -1
  store i64 %65, i64* %63, align 8
  br label %66

66:                                               ; preds = %61, %48
  br label %67

67:                                               ; preds = %66, %36
  br label %109

68:                                               ; preds = %31, %26
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %108, label %71

71:                                               ; preds = %68
  %72 = load %struct.regulator*, %struct.regulator** %4, align 8
  %73 = getelementptr inbounds %struct.regulator, %struct.regulator* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %108

76:                                               ; preds = %71
  %77 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %78 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %79, -1
  store i64 %80, i64* %78, align 8
  %81 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %82 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %85 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %83, %86
  br i1 %87, label %88, label %107

88:                                               ; preds = %76
  %89 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %90 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %89, i32 0, i32 2
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i32 (%struct.regulator_dev*, i32)*, i32 (%struct.regulator_dev*, i32)** %94, align 8
  %96 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %97 = load i32, i32* %5, align 4
  %98 = call i32 %95(%struct.regulator_dev* %96, i32 %97)
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %88
  %102 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %103 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %104, 1
  store i64 %105, i64* %103, align 8
  br label %106

106:                                              ; preds = %101, %88
  br label %107

107:                                              ; preds = %106, %76
  br label %108

108:                                              ; preds = %107, %71, %68
  br label %109

109:                                              ; preds = %108, %67
  %110 = load i32, i32* %7, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %109
  %113 = load i32, i32* %5, align 4
  %114 = load %struct.regulator*, %struct.regulator** %4, align 8
  %115 = getelementptr inbounds %struct.regulator, %struct.regulator* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  br label %116

116:                                              ; preds = %112, %109
  %117 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %118 = call i32 @regulator_unlock(%struct.regulator_dev* %117)
  %119 = load i32, i32* %7, align 4
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %116, %25, %19
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i32 @regulator_ops_is_valid(%struct.regulator_dev*, i32) #1

declare dso_local i32 @regulator_lock(%struct.regulator_dev*) #1

declare dso_local i32 @regulator_unlock(%struct.regulator_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
