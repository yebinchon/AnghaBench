; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ucs1002_power.c_ucs1002_set_max_current.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ucs1002_power.c_ucs1002_set_max_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucs1002_info = type { i32 }

@ucs1002_current_limit_uA = common dso_local global i64* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@UCS1002_REG_ILIMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucs1002_info*, i64)* @ucs1002_set_max_current to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucs1002_set_max_current(%struct.ucs1002_info* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ucs1002_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ucs1002_info* %0, %struct.ucs1002_info** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %24, %2
  %10 = load i32, i32* %8, align 4
  %11 = load i64*, i64** @ucs1002_current_limit_uA, align 8
  %12 = call i32 @ARRAY_SIZE(i64* %11)
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %9
  %15 = load i64, i64* %5, align 8
  %16 = load i64*, i64** @ucs1002_current_limit_uA, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %15, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  br label %27

23:                                               ; preds = %14
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %8, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %8, align 4
  br label %9

27:                                               ; preds = %22, %9
  %28 = load i32, i32* %8, align 4
  %29 = load i64*, i64** @ucs1002_current_limit_uA, align 8
  %30 = call i32 @ARRAY_SIZE(i64* %29)
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %64

35:                                               ; preds = %27
  %36 = load %struct.ucs1002_info*, %struct.ucs1002_info** %4, align 8
  %37 = getelementptr inbounds %struct.ucs1002_info, %struct.ucs1002_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @UCS1002_REG_ILIMIT, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @regmap_write(i32 %38, i32 %39, i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %3, align 4
  br label %64

46:                                               ; preds = %35
  %47 = load %struct.ucs1002_info*, %struct.ucs1002_info** %4, align 8
  %48 = getelementptr inbounds %struct.ucs1002_info, %struct.ucs1002_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @UCS1002_REG_ILIMIT, align 4
  %51 = call i32 @regmap_read(i32 %49, i32 %50, i32* %6)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %3, align 4
  br label %64

56:                                               ; preds = %46
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %64

63:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %60, %54, %44, %32
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
