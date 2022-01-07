; ModuleID = '/home/carl/AnghaBench/linux/drivers/pnp/extr_interface.c_pnp_get_resource_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pnp/extr_interface.c_pnp_get_resource_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64, i64*, i64*, i64*)* @pnp_get_resource_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @pnp_get_resource_value(i8* %0, i64 %1, i64* %2, i64* %3, i64* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64* %4, i64** %10, align 8
  %11 = load i64*, i64** %8, align 8
  %12 = icmp ne i64* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %5
  %14 = load i64*, i64** %8, align 8
  store i64 0, i64* %14, align 8
  br label %15

15:                                               ; preds = %13, %5
  %16 = load i64*, i64** %9, align 8
  %17 = icmp ne i64* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i64*, i64** %9, align 8
  store i64 0, i64* %19, align 8
  br label %20

20:                                               ; preds = %18, %15
  %21 = load i64*, i64** %10, align 8
  %22 = icmp ne i64* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i64*, i64** %10, align 8
  store i64 0, i64* %24, align 8
  br label %25

25:                                               ; preds = %23, %20
  %26 = load i8*, i8** %6, align 8
  %27 = call i8* @skip_spaces(i8* %26)
  store i8* %27, i8** %6, align 8
  %28 = load i64*, i64** %8, align 8
  %29 = icmp ne i64* %28, null
  br i1 %29, label %30, label %56

30:                                               ; preds = %25
  %31 = load i8*, i8** %6, align 8
  %32 = call i64 @simple_strtoull(i8* %31, i8** %6, i32 0)
  %33 = load i64*, i64** %8, align 8
  store i64 %32, i64* %33, align 8
  %34 = load i64*, i64** %9, align 8
  %35 = icmp ne i64* %34, null
  br i1 %35, label %36, label %55

36:                                               ; preds = %30
  %37 = load i8*, i8** %6, align 8
  %38 = call i8* @skip_spaces(i8* %37)
  store i8* %38, i8** %6, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 45
  br i1 %42, label %43, label %50

43:                                               ; preds = %36
  %44 = load i8*, i8** %6, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = call i8* @skip_spaces(i8* %45)
  store i8* %46, i8** %6, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = call i64 @simple_strtoull(i8* %47, i8** %6, i32 0)
  %49 = load i64*, i64** %9, align 8
  store i64 %48, i64* %49, align 8
  br label %54

50:                                               ; preds = %36
  %51 = load i64*, i64** %8, align 8
  %52 = load i64, i64* %51, align 8
  %53 = load i64*, i64** %9, align 8
  store i64 %52, i64* %53, align 8
  br label %54

54:                                               ; preds = %50, %43
  br label %55

55:                                               ; preds = %54, %30
  br label %56

56:                                               ; preds = %55, %25
  %57 = load i8*, i8** %6, align 8
  ret i8* %57
}

declare dso_local i8* @skip_spaces(i8*) #1

declare dso_local i64 @simple_strtoull(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
