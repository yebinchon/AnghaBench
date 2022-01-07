; ModuleID = '/home/carl/AnghaBench/linux/drivers/reset/extr_core.c_reset_control_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/reset/extr_core.c_reset_control_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reset_control = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reset_control_release(%struct.reset_control* %0) #0 {
  %2 = alloca %struct.reset_control*, align 8
  store %struct.reset_control* %0, %struct.reset_control** %2, align 8
  %3 = load %struct.reset_control*, %struct.reset_control** %2, align 8
  %4 = icmp ne %struct.reset_control* %3, null
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = load %struct.reset_control*, %struct.reset_control** %2, align 8
  %7 = call i32 @IS_ERR(%struct.reset_control* %6)
  %8 = call i64 @WARN_ON(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %5, %1
  br label %22

11:                                               ; preds = %5
  %12 = load %struct.reset_control*, %struct.reset_control** %2, align 8
  %13 = call i64 @reset_control_is_array(%struct.reset_control* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load %struct.reset_control*, %struct.reset_control** %2, align 8
  %17 = call i32 @rstc_to_array(%struct.reset_control* %16)
  %18 = call i32 @reset_control_array_release(i32 %17)
  br label %22

19:                                               ; preds = %11
  %20 = load %struct.reset_control*, %struct.reset_control** %2, align 8
  %21 = getelementptr inbounds %struct.reset_control, %struct.reset_control* %20, i32 0, i32 0
  store i32 0, i32* %21, align 4
  br label %22

22:                                               ; preds = %10, %19, %15
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @IS_ERR(%struct.reset_control*) #1

declare dso_local i64 @reset_control_is_array(%struct.reset_control*) #1

declare dso_local i32 @reset_control_array_release(i32) #1

declare dso_local i32 @rstc_to_array(%struct.reset_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
