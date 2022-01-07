; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_bcm63xx_wdt.c_bcm63xx_wdt_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_bcm63xx_wdt.c_bcm63xx_wdt_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }

@nowayout = common dso_local global i32 0, align 4
@expect_close = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i8*, i64, i32*)* @bcm63xx_wdt_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bcm63xx_wdt_write(%struct.file* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  store %struct.file* %0, %struct.file** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i64, i64* %8, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %44

14:                                               ; preds = %4
  %15 = load i32, i32* @nowayout, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %42, label %17

17:                                               ; preds = %14
  store i32 0, i32* @expect_close, align 4
  store i64 0, i64* %10, align 8
  br label %18

18:                                               ; preds = %38, %17
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* %8, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %18
  %23 = load i8, i8* %11, align 1
  %24 = load i8*, i8** %7, align 8
  %25 = load i64, i64* %10, align 8
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  %27 = call i64 @get_user(i8 signext %23, i8* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i64, i64* @EFAULT, align 8
  %31 = sub i64 0, %30
  store i64 %31, i64* %5, align 8
  br label %46

32:                                               ; preds = %22
  %33 = load i8, i8* %11, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 86
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 42, i32* @expect_close, align 4
  br label %37

37:                                               ; preds = %36, %32
  br label %38

38:                                               ; preds = %37
  %39 = load i64, i64* %10, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %10, align 8
  br label %18

41:                                               ; preds = %18
  br label %42

42:                                               ; preds = %41, %14
  %43 = call i32 (...) @bcm63xx_wdt_pet()
  br label %44

44:                                               ; preds = %42, %4
  %45 = load i64, i64* %8, align 8
  store i64 %45, i64* %5, align 8
  br label %46

46:                                               ; preds = %44, %29
  %47 = load i64, i64* %5, align 8
  ret i64 %47
}

declare dso_local i64 @get_user(i8 signext, i8*) #1

declare dso_local i32 @bcm63xx_wdt_pet(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
