; ModuleID = '/home/carl/AnghaBench/linux/drivers/reset/extr_core.c_reset_control_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/reset/extr_core.c_reset_control_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reset_control = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*, i32)* }

@EINVAL = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reset_control_status(%struct.reset_control* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.reset_control*, align 8
  store %struct.reset_control* %0, %struct.reset_control** %3, align 8
  %4 = load %struct.reset_control*, %struct.reset_control** %3, align 8
  %5 = icmp ne %struct.reset_control* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %46

7:                                                ; preds = %1
  %8 = load %struct.reset_control*, %struct.reset_control** %3, align 8
  %9 = call i32 @IS_ERR(%struct.reset_control* %8)
  %10 = call i64 @WARN_ON(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %7
  %13 = load %struct.reset_control*, %struct.reset_control** %3, align 8
  %14 = call i64 @reset_control_is_array(%struct.reset_control* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12, %7
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %46

19:                                               ; preds = %12
  %20 = load %struct.reset_control*, %struct.reset_control** %3, align 8
  %21 = getelementptr inbounds %struct.reset_control, %struct.reset_control* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32 (%struct.TYPE_4__*, i32)*, i32 (%struct.TYPE_4__*, i32)** %25, align 8
  %27 = icmp ne i32 (%struct.TYPE_4__*, i32)* %26, null
  br i1 %27, label %28, label %43

28:                                               ; preds = %19
  %29 = load %struct.reset_control*, %struct.reset_control** %3, align 8
  %30 = getelementptr inbounds %struct.reset_control, %struct.reset_control* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32 (%struct.TYPE_4__*, i32)*, i32 (%struct.TYPE_4__*, i32)** %34, align 8
  %36 = load %struct.reset_control*, %struct.reset_control** %3, align 8
  %37 = getelementptr inbounds %struct.reset_control, %struct.reset_control* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load %struct.reset_control*, %struct.reset_control** %3, align 8
  %40 = getelementptr inbounds %struct.reset_control, %struct.reset_control* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 %35(%struct.TYPE_4__* %38, i32 %41)
  store i32 %42, i32* %2, align 4
  br label %46

43:                                               ; preds = %19
  %44 = load i32, i32* @ENOTSUPP, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %43, %28, %16, %6
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @IS_ERR(%struct.reset_control*) #1

declare dso_local i64 @reset_control_is_array(%struct.reset_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
