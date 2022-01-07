; ModuleID = '/home/carl/AnghaBench/linux/drivers/sh/intc/extr_access.c_intc_phys_to_virt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/sh/intc/extr_access.c_intc_phys_to_virt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intc_desc_int = type { i32, %struct.intc_window* }
%struct.intc_window = type { i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @intc_phys_to_virt(%struct.intc_desc_int* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.intc_desc_int*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.intc_window*, align 8
  %7 = alloca i32, align 4
  store %struct.intc_desc_int* %0, %struct.intc_desc_int** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %50, %2
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.intc_desc_int*, %struct.intc_desc_int** %4, align 8
  %11 = getelementptr inbounds %struct.intc_desc_int, %struct.intc_desc_int* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %53

14:                                               ; preds = %8
  %15 = load %struct.intc_desc_int*, %struct.intc_desc_int** %4, align 8
  %16 = getelementptr inbounds %struct.intc_desc_int, %struct.intc_desc_int* %15, i32 0, i32 1
  %17 = load %struct.intc_window*, %struct.intc_window** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.intc_window, %struct.intc_window* %17, i64 %19
  store %struct.intc_window* %20, %struct.intc_window** %6, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.intc_window*, %struct.intc_window** %6, align 8
  %23 = getelementptr inbounds %struct.intc_window, %struct.intc_window* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ult i64 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %14
  br label %50

27:                                               ; preds = %14
  %28 = load i64, i64* %5, align 8
  %29 = load %struct.intc_window*, %struct.intc_window** %6, align 8
  %30 = getelementptr inbounds %struct.intc_window, %struct.intc_window* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.intc_window*, %struct.intc_window** %6, align 8
  %33 = getelementptr inbounds %struct.intc_window, %struct.intc_window* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %31, %34
  %36 = icmp uge i64 %28, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  br label %50

38:                                               ; preds = %27
  %39 = load %struct.intc_window*, %struct.intc_window** %6, align 8
  %40 = getelementptr inbounds %struct.intc_window, %struct.intc_window* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %5, align 8
  %43 = sub i64 %42, %41
  store i64 %43, i64* %5, align 8
  %44 = load %struct.intc_window*, %struct.intc_window** %6, align 8
  %45 = getelementptr inbounds %struct.intc_window, %struct.intc_window* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %5, align 8
  %48 = add i64 %47, %46
  store i64 %48, i64* %5, align 8
  %49 = load i64, i64* %5, align 8
  store i64 %49, i64* %3, align 8
  br label %55

50:                                               ; preds = %37, %26
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %8

53:                                               ; preds = %8
  %54 = load i64, i64* %5, align 8
  store i64 %54, i64* %3, align 8
  br label %55

55:                                               ; preds = %53, %38
  %56 = load i64, i64* %3, align 8
  ret i64 %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
