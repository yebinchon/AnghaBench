; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_ixp4xx_wdt.c_ixp4xx_wdt_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_ixp4xx_wdt.c_ixp4xx_wdt_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }

@nowayout = common dso_local global i32 0, align 4
@WDT_OK_TO_CLOSE = common dso_local global i32 0, align 4
@wdt_status = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i8*, i64, i32*)* @ixp4xx_wdt_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixp4xx_wdt_write(%struct.file* %0, i8* %1, i64 %2, i32* %3) #0 {
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
  br i1 %13, label %14, label %48

14:                                               ; preds = %4
  %15 = load i32, i32* @nowayout, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %46, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* @WDT_OK_TO_CLOSE, align 4
  %19 = call i32 @clear_bit(i32 %18, i32* @wdt_status)
  store i64 0, i64* %10, align 8
  br label %20

20:                                               ; preds = %42, %17
  %21 = load i64, i64* %10, align 8
  %22 = load i64, i64* %8, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %45

24:                                               ; preds = %20
  %25 = load i8, i8* %11, align 1
  %26 = load i8*, i8** %7, align 8
  %27 = load i64, i64* %10, align 8
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  %29 = call i64 @get_user(i8 signext %25, i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i64, i64* @EFAULT, align 8
  %33 = sub i64 0, %32
  store i64 %33, i64* %5, align 8
  br label %50

34:                                               ; preds = %24
  %35 = load i8, i8* %11, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 86
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* @WDT_OK_TO_CLOSE, align 4
  %40 = call i32 @set_bit(i32 %39, i32* @wdt_status)
  br label %41

41:                                               ; preds = %38, %34
  br label %42

42:                                               ; preds = %41
  %43 = load i64, i64* %10, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %10, align 8
  br label %20

45:                                               ; preds = %20
  br label %46

46:                                               ; preds = %45, %14
  %47 = call i32 (...) @wdt_enable()
  br label %48

48:                                               ; preds = %46, %4
  %49 = load i64, i64* %8, align 8
  store i64 %49, i64* %5, align 8
  br label %50

50:                                               ; preds = %48, %31
  %51 = load i64, i64* %5, align 8
  ret i64 %51
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @get_user(i8 signext, i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @wdt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
