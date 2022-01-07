; ModuleID = '/home/carl/AnghaBench/linux/drivers/reset/extr_core.c_reset_control_deassert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/reset/extr_core.c_reset_control_deassert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reset_control = type { i32, %struct.TYPE_5__*, i32, i32, i32, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_5__*, i32)* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"reset %s (ID: %u) is not acquired\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reset_control_deassert(%struct.reset_control* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.reset_control*, align 8
  store %struct.reset_control* %0, %struct.reset_control** %3, align 8
  %4 = load %struct.reset_control*, %struct.reset_control** %3, align 8
  %5 = icmp ne %struct.reset_control* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %88

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
  br label %88

15:                                               ; preds = %7
  %16 = load %struct.reset_control*, %struct.reset_control** %3, align 8
  %17 = call i64 @reset_control_is_array(%struct.reset_control* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load %struct.reset_control*, %struct.reset_control** %3, align 8
  %21 = call i32 @rstc_to_array(%struct.reset_control* %20)
  %22 = call i32 @reset_control_array_deassert(i32 %21)
  store i32 %22, i32* %2, align 4
  br label %88

23:                                               ; preds = %15
  %24 = load %struct.reset_control*, %struct.reset_control** %3, align 8
  %25 = getelementptr inbounds %struct.reset_control, %struct.reset_control* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %46

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
  br label %88

39:                                               ; preds = %28
  %40 = load %struct.reset_control*, %struct.reset_control** %3, align 8
  %41 = getelementptr inbounds %struct.reset_control, %struct.reset_control* %40, i32 0, i32 3
  %42 = call i32 @atomic_inc_return(i32* %41)
  %43 = icmp ne i32 %42, 1
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %88

45:                                               ; preds = %39
  br label %63

46:                                               ; preds = %23
  %47 = load %struct.reset_control*, %struct.reset_control** %3, align 8
  %48 = getelementptr inbounds %struct.reset_control, %struct.reset_control* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %62, label %51

51:                                               ; preds = %46
  %52 = load %struct.reset_control*, %struct.reset_control** %3, align 8
  %53 = getelementptr inbounds %struct.reset_control, %struct.reset_control* %52, i32 0, i32 1
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = call i32 @rcdev_name(%struct.TYPE_5__* %54)
  %56 = load %struct.reset_control*, %struct.reset_control** %3, align 8
  %57 = getelementptr inbounds %struct.reset_control, %struct.reset_control* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %58)
  %60 = load i32, i32* @EPERM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %88

62:                                               ; preds = %46
  br label %63

63:                                               ; preds = %62, %45
  %64 = load %struct.reset_control*, %struct.reset_control** %3, align 8
  %65 = getelementptr inbounds %struct.reset_control, %struct.reset_control* %64, i32 0, i32 1
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32 (%struct.TYPE_5__*, i32)*, i32 (%struct.TYPE_5__*, i32)** %69, align 8
  %71 = icmp ne i32 (%struct.TYPE_5__*, i32)* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %63
  store i32 0, i32* %2, align 4
  br label %88

73:                                               ; preds = %63
  %74 = load %struct.reset_control*, %struct.reset_control** %3, align 8
  %75 = getelementptr inbounds %struct.reset_control, %struct.reset_control* %74, i32 0, i32 1
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32 (%struct.TYPE_5__*, i32)*, i32 (%struct.TYPE_5__*, i32)** %79, align 8
  %81 = load %struct.reset_control*, %struct.reset_control** %3, align 8
  %82 = getelementptr inbounds %struct.reset_control, %struct.reset_control* %81, i32 0, i32 1
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = load %struct.reset_control*, %struct.reset_control** %3, align 8
  %85 = getelementptr inbounds %struct.reset_control, %struct.reset_control* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 %80(%struct.TYPE_5__* %83, i32 %86)
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %73, %72, %51, %44, %36, %19, %12, %6
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @IS_ERR(%struct.reset_control*) #1

declare dso_local i64 @reset_control_is_array(%struct.reset_control*) #1

declare dso_local i32 @reset_control_array_deassert(i32) #1

declare dso_local i32 @rstc_to_array(%struct.reset_control*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @WARN(i32, i8*, i32, i32) #1

declare dso_local i32 @rcdev_name(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
