; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_string_matches.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_string_matches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @string_matches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @string_matches(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %44

12:                                               ; preds = %3
  %13 = load i8*, i8** %6, align 8
  %14 = call i64 @strlen(i8* %13)
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp ugt i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @WARN_ON_ONCE(i32 %18)
  %20 = load i8*, i8** %5, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i64, i64* %8, align 8
  %23 = call i64 @memcmp(i8* %20, i8* %21, i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %44

26:                                               ; preds = %12
  br label %27

27:                                               ; preds = %40, %26
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %7, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %27
  %32 = load i8*, i8** %5, align 8
  %33 = load i64, i64* %8, align 8
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 32
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %44

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39
  %41 = load i64, i64* %8, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %8, align 8
  br label %27

43:                                               ; preds = %27
  store i32 1, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %38, %25, %11
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
