; ModuleID = '/home/carl/AnghaBench/linux/drivers/reset/extr_core.c_reset_control_assert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/reset/extr_core.c_reset_control_assert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reset_control = type { i32, %struct.TYPE_5__*, i32, i32, i32, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_5__*, i32)* }

@EINVAL = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"reset %s (ID: %u) is not acquired\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reset_control_assert(%struct.reset_control* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.reset_control*, align 8
  store %struct.reset_control* %0, %struct.reset_control** %3, align 8
  %4 = load %struct.reset_control*, %struct.reset_control** %3, align 8
  %5 = icmp ne %struct.reset_control* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %111

7:                                                ; preds = %1
  %8 = load %struct.reset_control*, %struct.reset_control** %3, align 8
  %9 = call i32 @IS_ERR(%struct.reset_control* %8)
  %10 = call i64 @WARN_ON(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %111

15:                                               ; preds = %7
  %16 = load %struct.reset_control*, %struct.reset_control** %3, align 8
  %17 = call i64 @reset_control_is_array(%struct.reset_control* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load %struct.reset_control*, %struct.reset_control** %3, align 8
  %21 = call i32 @rstc_to_array(%struct.reset_control* %20)
  %22 = call i32 @reset_control_array_assert(i32 %21)
  store i32 %22, i32* %2, align 4
  br label %111

23:                                               ; preds = %15
  %24 = load %struct.reset_control*, %struct.reset_control** %3, align 8
  %25 = getelementptr inbounds %struct.reset_control, %struct.reset_control* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %67

28:                                               ; preds = %23
  %29 = load %struct.reset_control*, %struct.reset_control** %3, align 8
  %30 = getelementptr inbounds %struct.reset_control, %struct.reset_control* %29, i32 0, i32 4
  %31 = call i64 @atomic_read(i32* %30)
  %32 = icmp ne i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i64 @WARN_ON(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %111

39:                                               ; preds = %28
  %40 = load %struct.reset_control*, %struct.reset_control** %3, align 8
  %41 = getelementptr inbounds %struct.reset_control, %struct.reset_control* %40, i32 0, i32 3
  %42 = call i64 @atomic_read(i32* %41)
  %43 = icmp eq i64 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i64 @WARN_ON(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %111

50:                                               ; preds = %39
  %51 = load %struct.reset_control*, %struct.reset_control** %3, align 8
  %52 = getelementptr inbounds %struct.reset_control, %struct.reset_control* %51, i32 0, i32 3
  %53 = call i64 @atomic_dec_return(i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %111

56:                                               ; preds = %50
  %57 = load %struct.reset_control*, %struct.reset_control** %3, align 8
  %58 = getelementptr inbounds %struct.reset_control, %struct.reset_control* %57, i32 0, i32 1
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32 (%struct.TYPE_5__*, i32)*, i32 (%struct.TYPE_5__*, i32)** %62, align 8
  %64 = icmp ne i32 (%struct.TYPE_5__*, i32)* %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %56
  store i32 0, i32* %2, align 4
  br label %111

66:                                               ; preds = %56
  br label %96

67:                                               ; preds = %23
  %68 = load %struct.reset_control*, %struct.reset_control** %3, align 8
  %69 = getelementptr inbounds %struct.reset_control, %struct.reset_control* %68, i32 0, i32 1
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32 (%struct.TYPE_5__*, i32)*, i32 (%struct.TYPE_5__*, i32)** %73, align 8
  %75 = icmp ne i32 (%struct.TYPE_5__*, i32)* %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %67
  %77 = load i32, i32* @ENOTSUPP, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %2, align 4
  br label %111

79:                                               ; preds = %67
  %80 = load %struct.reset_control*, %struct.reset_control** %3, align 8
  %81 = getelementptr inbounds %struct.reset_control, %struct.reset_control* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %95, label %84

84:                                               ; preds = %79
  %85 = load %struct.reset_control*, %struct.reset_control** %3, align 8
  %86 = getelementptr inbounds %struct.reset_control, %struct.reset_control* %85, i32 0, i32 1
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = call i32 @rcdev_name(%struct.TYPE_5__* %87)
  %89 = load %struct.reset_control*, %struct.reset_control** %3, align 8
  %90 = getelementptr inbounds %struct.reset_control, %struct.reset_control* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %88, i32 %91)
  %93 = load i32, i32* @EPERM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %2, align 4
  br label %111

95:                                               ; preds = %79
  br label %96

96:                                               ; preds = %95, %66
  %97 = load %struct.reset_control*, %struct.reset_control** %3, align 8
  %98 = getelementptr inbounds %struct.reset_control, %struct.reset_control* %97, i32 0, i32 1
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32 (%struct.TYPE_5__*, i32)*, i32 (%struct.TYPE_5__*, i32)** %102, align 8
  %104 = load %struct.reset_control*, %struct.reset_control** %3, align 8
  %105 = getelementptr inbounds %struct.reset_control, %struct.reset_control* %104, i32 0, i32 1
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %105, align 8
  %107 = load %struct.reset_control*, %struct.reset_control** %3, align 8
  %108 = getelementptr inbounds %struct.reset_control, %struct.reset_control* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 %103(%struct.TYPE_5__* %106, i32 %109)
  store i32 %110, i32* %2, align 4
  br label %111

111:                                              ; preds = %96, %84, %76, %65, %55, %47, %36, %19, %12, %6
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @IS_ERR(%struct.reset_control*) #1

declare dso_local i64 @reset_control_is_array(%struct.reset_control*) #1

declare dso_local i32 @reset_control_array_assert(i32) #1

declare dso_local i32 @rstc_to_array(%struct.reset_control*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @atomic_dec_return(i32*) #1

declare dso_local i32 @WARN(i32, i8*, i32, i32) #1

declare dso_local i32 @rcdev_name(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
