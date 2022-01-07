; ModuleID = '/home/carl/AnghaBench/linux/drivers/reset/extr_core.c_reset_control_array_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/reset/extr_core.c_reset_control_array_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reset_control_array = type { i32, i32* }

@reset_list_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.reset_control_array*)* @reset_control_array_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_control_array_put(%struct.reset_control_array* %0) #0 {
  %2 = alloca %struct.reset_control_array*, align 8
  %3 = alloca i32, align 4
  store %struct.reset_control_array* %0, %struct.reset_control_array** %2, align 8
  %4 = call i32 @mutex_lock(i32* @reset_list_mutex)
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %20, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.reset_control_array*, %struct.reset_control_array** %2, align 8
  %8 = getelementptr inbounds %struct.reset_control_array, %struct.reset_control_array* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %23

11:                                               ; preds = %5
  %12 = load %struct.reset_control_array*, %struct.reset_control_array** %2, align 8
  %13 = getelementptr inbounds %struct.reset_control_array, %struct.reset_control_array* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @__reset_control_put_internal(i32 %18)
  br label %20

20:                                               ; preds = %11
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %3, align 4
  br label %5

23:                                               ; preds = %5
  %24 = call i32 @mutex_unlock(i32* @reset_list_mutex)
  %25 = load %struct.reset_control_array*, %struct.reset_control_array** %2, align 8
  %26 = call i32 @kfree(%struct.reset_control_array* %25)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__reset_control_put_internal(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.reset_control_array*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
