; ModuleID = '/home/carl/AnghaBench/linux/drivers/reset/extr_core.c_reset_control_array_assert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/reset/extr_core.c_reset_control_array_assert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reset_control_array = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.reset_control_array*)* @reset_control_array_assert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reset_control_array_assert(%struct.reset_control_array* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.reset_control_array*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.reset_control_array* %0, %struct.reset_control_array** %3, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %25, %1
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.reset_control_array*, %struct.reset_control_array** %3, align 8
  %9 = getelementptr inbounds %struct.reset_control_array, %struct.reset_control_array* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %28

12:                                               ; preds = %6
  %13 = load %struct.reset_control_array*, %struct.reset_control_array** %3, align 8
  %14 = getelementptr inbounds %struct.reset_control_array, %struct.reset_control_array* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @reset_control_assert(i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %12
  br label %29

24:                                               ; preds = %12
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %6

28:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %45

29:                                               ; preds = %23
  br label %30

30:                                               ; preds = %34, %29
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %5, align 4
  %33 = icmp ne i32 %31, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = load %struct.reset_control_array*, %struct.reset_control_array** %3, align 8
  %36 = getelementptr inbounds %struct.reset_control_array, %struct.reset_control_array* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @reset_control_deassert(i32 %41)
  br label %30

43:                                               ; preds = %30
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %43, %28
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @reset_control_deassert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
