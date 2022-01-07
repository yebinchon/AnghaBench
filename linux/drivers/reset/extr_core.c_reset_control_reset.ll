; ModuleID = '/home/carl/AnghaBench/linux/drivers/reset/extr_core.c_reset_control_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/reset/extr_core.c_reset_control_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reset_control = type { i32, i64, i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*, i32)* }

@EINVAL = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reset_control_reset(%struct.reset_control* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.reset_control*, align 8
  %4 = alloca i32, align 4
  store %struct.reset_control* %0, %struct.reset_control** %3, align 8
  %5 = load %struct.reset_control*, %struct.reset_control** %3, align 8
  %6 = icmp ne %struct.reset_control* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %96

8:                                                ; preds = %1
  %9 = load %struct.reset_control*, %struct.reset_control** %3, align 8
  %10 = call i32 @IS_ERR(%struct.reset_control* %9)
  %11 = call i64 @WARN_ON(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %96

16:                                               ; preds = %8
  %17 = load %struct.reset_control*, %struct.reset_control** %3, align 8
  %18 = call i64 @reset_control_is_array(%struct.reset_control* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load %struct.reset_control*, %struct.reset_control** %3, align 8
  %22 = call i32 @rstc_to_array(%struct.reset_control* %21)
  %23 = call i32 @reset_control_array_reset(i32 %22)
  store i32 %23, i32* %2, align 4
  br label %96

24:                                               ; preds = %16
  %25 = load %struct.reset_control*, %struct.reset_control** %3, align 8
  %26 = getelementptr inbounds %struct.reset_control, %struct.reset_control* %25, i32 0, i32 3
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32 (%struct.TYPE_4__*, i32)*, i32 (%struct.TYPE_4__*, i32)** %30, align 8
  %32 = icmp ne i32 (%struct.TYPE_4__*, i32)* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %24
  %34 = load i32, i32* @ENOTSUPP, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %96

36:                                               ; preds = %24
  %37 = load %struct.reset_control*, %struct.reset_control** %3, align 8
  %38 = getelementptr inbounds %struct.reset_control, %struct.reset_control* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %36
  %42 = load %struct.reset_control*, %struct.reset_control** %3, align 8
  %43 = getelementptr inbounds %struct.reset_control, %struct.reset_control* %42, i32 0, i32 5
  %44 = call i64 @atomic_read(i32* %43)
  %45 = icmp ne i64 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i64 @WARN_ON(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %96

52:                                               ; preds = %41
  %53 = load %struct.reset_control*, %struct.reset_control** %3, align 8
  %54 = getelementptr inbounds %struct.reset_control, %struct.reset_control* %53, i32 0, i32 0
  %55 = call i32 @atomic_inc_return(i32* %54)
  %56 = icmp ne i32 %55, 1
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  br label %96

58:                                               ; preds = %52
  br label %68

59:                                               ; preds = %36
  %60 = load %struct.reset_control*, %struct.reset_control** %3, align 8
  %61 = getelementptr inbounds %struct.reset_control, %struct.reset_control* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %59
  %65 = load i32, i32* @EPERM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %96

67:                                               ; preds = %59
  br label %68

68:                                               ; preds = %67, %58
  %69 = load %struct.reset_control*, %struct.reset_control** %3, align 8
  %70 = getelementptr inbounds %struct.reset_control, %struct.reset_control* %69, i32 0, i32 3
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32 (%struct.TYPE_4__*, i32)*, i32 (%struct.TYPE_4__*, i32)** %74, align 8
  %76 = load %struct.reset_control*, %struct.reset_control** %3, align 8
  %77 = getelementptr inbounds %struct.reset_control, %struct.reset_control* %76, i32 0, i32 3
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = load %struct.reset_control*, %struct.reset_control** %3, align 8
  %80 = getelementptr inbounds %struct.reset_control, %struct.reset_control* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 %75(%struct.TYPE_4__* %78, i32 %81)
  store i32 %82, i32* %4, align 4
  %83 = load %struct.reset_control*, %struct.reset_control** %3, align 8
  %84 = getelementptr inbounds %struct.reset_control, %struct.reset_control* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %68
  %88 = load i32, i32* %4, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = load %struct.reset_control*, %struct.reset_control** %3, align 8
  %92 = getelementptr inbounds %struct.reset_control, %struct.reset_control* %91, i32 0, i32 0
  %93 = call i32 @atomic_dec(i32* %92)
  br label %94

94:                                               ; preds = %90, %87, %68
  %95 = load i32, i32* %4, align 4
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %94, %64, %57, %49, %33, %20, %13, %7
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @IS_ERR(%struct.reset_control*) #1

declare dso_local i64 @reset_control_is_array(%struct.reset_control*) #1

declare dso_local i32 @reset_control_array_reset(i32) #1

declare dso_local i32 @rstc_to_array(%struct.reset_control*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
