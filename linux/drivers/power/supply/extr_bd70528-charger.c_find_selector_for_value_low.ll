; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bd70528-charger.c_find_selector_for_value_low.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bd70528-charger.c_find_selector_for_value_low.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linear_range = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.linear_range*, i32, i32, i32*, i32*)* @find_selector_for_value_low to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_selector_for_value_low(%struct.linear_range* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.linear_range*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.linear_range* %0, %struct.linear_range** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %12, align 4
  %15 = load i32*, i32** %10, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %93, %5
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %96

20:                                               ; preds = %16
  %21 = load %struct.linear_range*, %struct.linear_range** %6, align 8
  %22 = load i32, i32* %11, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.linear_range, %struct.linear_range* %21, i64 %23
  %25 = getelementptr inbounds %struct.linear_range, %struct.linear_range* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ule i32 %26, %27
  br i1 %28, label %29, label %92

29:                                               ; preds = %20
  %30 = load %struct.linear_range*, %struct.linear_range** %6, align 8
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.linear_range, %struct.linear_range* %30, i64 %32
  %34 = getelementptr inbounds %struct.linear_range, %struct.linear_range* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.linear_range*, %struct.linear_range** %6, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.linear_range, %struct.linear_range* %36, i64 %38
  %40 = getelementptr inbounds %struct.linear_range, %struct.linear_range* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.linear_range*, %struct.linear_range** %6, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.linear_range, %struct.linear_range* %42, i64 %44
  %46 = getelementptr inbounds %struct.linear_range, %struct.linear_range* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = mul i32 %41, %47
  %49 = add i32 %35, %48
  %50 = load i32, i32* %8, align 4
  %51 = icmp uge i32 %49, %50
  br i1 %51, label %52, label %77

52:                                               ; preds = %29
  %53 = load i32*, i32** %10, align 8
  store i32 1, i32* %53, align 4
  %54 = load %struct.linear_range*, %struct.linear_range** %6, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.linear_range, %struct.linear_range* %54, i64 %56
  %58 = getelementptr inbounds %struct.linear_range, %struct.linear_range* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.linear_range*, %struct.linear_range** %6, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.linear_range, %struct.linear_range* %61, i64 %63
  %65 = getelementptr inbounds %struct.linear_range, %struct.linear_range* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = sub i32 %60, %66
  %68 = load %struct.linear_range*, %struct.linear_range** %6, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.linear_range, %struct.linear_range* %68, i64 %70
  %72 = getelementptr inbounds %struct.linear_range, %struct.linear_range* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = udiv i32 %67, %73
  %75 = add i32 %59, %74
  %76 = load i32*, i32** %9, align 8
  store i32 %75, i32* %76, align 4
  store i32 0, i32* %12, align 4
  br label %96

77:                                               ; preds = %29
  %78 = load %struct.linear_range*, %struct.linear_range** %6, align 8
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.linear_range, %struct.linear_range* %78, i64 %80
  %82 = getelementptr inbounds %struct.linear_range, %struct.linear_range* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.linear_range*, %struct.linear_range** %6, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.linear_range, %struct.linear_range* %84, i64 %86
  %88 = getelementptr inbounds %struct.linear_range, %struct.linear_range* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = add i32 %83, %89
  %91 = load i32*, i32** %9, align 8
  store i32 %90, i32* %91, align 4
  store i32 0, i32* %12, align 4
  br label %92

92:                                               ; preds = %77, %20
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %11, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %11, align 4
  br label %16

96:                                               ; preds = %52, %16
  %97 = load i32, i32* %12, align 4
  ret i32 %97
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
