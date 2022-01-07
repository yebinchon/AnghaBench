; ModuleID = '/home/carl/AnghaBench/linux/drivers/reset/extr_core.c_reset_control_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/reset/extr_core.c_reset_control_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reset_control = type { i32 }

@reset_list_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reset_control_put(%struct.reset_control* %0) #0 {
  %2 = alloca %struct.reset_control*, align 8
  store %struct.reset_control* %0, %struct.reset_control** %2, align 8
  %3 = load %struct.reset_control*, %struct.reset_control** %2, align 8
  %4 = call i64 @IS_ERR_OR_NULL(%struct.reset_control* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %20

7:                                                ; preds = %1
  %8 = load %struct.reset_control*, %struct.reset_control** %2, align 8
  %9 = call i64 @reset_control_is_array(%struct.reset_control* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = load %struct.reset_control*, %struct.reset_control** %2, align 8
  %13 = call i32 @rstc_to_array(%struct.reset_control* %12)
  %14 = call i32 @reset_control_array_put(i32 %13)
  br label %20

15:                                               ; preds = %7
  %16 = call i32 @mutex_lock(i32* @reset_list_mutex)
  %17 = load %struct.reset_control*, %struct.reset_control** %2, align 8
  %18 = call i32 @__reset_control_put_internal(%struct.reset_control* %17)
  %19 = call i32 @mutex_unlock(i32* @reset_list_mutex)
  br label %20

20:                                               ; preds = %15, %11, %6
  ret void
}

declare dso_local i64 @IS_ERR_OR_NULL(%struct.reset_control*) #1

declare dso_local i64 @reset_control_is_array(%struct.reset_control*) #1

declare dso_local i32 @reset_control_array_put(i32) #1

declare dso_local i32 @rstc_to_array(%struct.reset_control*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__reset_control_put_internal(%struct.reset_control*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
