; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bd70528-charger.c_find_value_for_selector_low.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bd70528-charger.c_find_value_for_selector_low.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linear_range = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.linear_range*, i32, i32, i32*)* @find_value_for_selector_low to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_value_for_selector_low(%struct.linear_range* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.linear_range*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.linear_range* %0, %struct.linear_range** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %65, %4
  %12 = load i32, i32* %10, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %68

15:                                               ; preds = %11
  %16 = load %struct.linear_range*, %struct.linear_range** %6, align 8
  %17 = load i32, i32* %10, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.linear_range, %struct.linear_range* %16, i64 %18
  %20 = getelementptr inbounds %struct.linear_range, %struct.linear_range* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ule i32 %21, %22
  br i1 %23, label %24, label %64

24:                                               ; preds = %15
  %25 = load %struct.linear_range*, %struct.linear_range** %6, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.linear_range, %struct.linear_range* %25, i64 %27
  %29 = getelementptr inbounds %struct.linear_range, %struct.linear_range* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.linear_range*, %struct.linear_range** %6, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.linear_range, %struct.linear_range* %31, i64 %33
  %35 = getelementptr inbounds %struct.linear_range, %struct.linear_range* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = add i32 %30, %36
  %38 = load i32, i32* %8, align 4
  %39 = icmp uge i32 %37, %38
  br i1 %39, label %40, label %64

40:                                               ; preds = %24
  %41 = load %struct.linear_range*, %struct.linear_range** %6, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.linear_range, %struct.linear_range* %41, i64 %43
  %45 = getelementptr inbounds %struct.linear_range, %struct.linear_range* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.linear_range*, %struct.linear_range** %6, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.linear_range, %struct.linear_range* %48, i64 %50
  %52 = getelementptr inbounds %struct.linear_range, %struct.linear_range* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = sub i32 %47, %53
  %55 = load %struct.linear_range*, %struct.linear_range** %6, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.linear_range, %struct.linear_range* %55, i64 %57
  %59 = getelementptr inbounds %struct.linear_range, %struct.linear_range* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = mul i32 %54, %60
  %62 = add i32 %46, %61
  %63 = load i32*, i32** %9, align 8
  store i32 %62, i32* %63, align 4
  store i32 0, i32* %5, align 4
  br label %71

64:                                               ; preds = %24, %15
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %10, align 4
  br label %11

68:                                               ; preds = %11
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %68, %40
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
