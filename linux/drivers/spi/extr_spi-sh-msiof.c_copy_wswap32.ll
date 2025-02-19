; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sh-msiof.c_copy_wswap32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sh-msiof.c_copy_wswap32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @copy_wswap32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_wswap32(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32*, i32** %5, align 8
  %8 = ptrtoint i32* %7 to i64
  %9 = and i64 %8, 3
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %3
  br label %12

12:                                               ; preds = %16, %11
  %13 = load i32, i32* %6, align 4
  %14 = add i32 %13, -1
  store i32 %14, i32* %6, align 4
  %15 = icmp ne i32 %13, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %12
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @get_unaligned(i32* %17)
  %19 = call i8* @swahw32(i32 %18)
  %20 = ptrtoint i8* %19 to i32
  %21 = load i32*, i32** %4, align 8
  %22 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %22, i32** %4, align 8
  store i32 %20, i32* %21, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %24, i32** %5, align 8
  br label %12

25:                                               ; preds = %12
  br label %61

26:                                               ; preds = %3
  %27 = load i32*, i32** %4, align 8
  %28 = ptrtoint i32* %27 to i64
  %29 = and i64 %28, 3
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %26
  br label %32

32:                                               ; preds = %36, %31
  %33 = load i32, i32* %6, align 4
  %34 = add i32 %33, -1
  store i32 %34, i32* %6, align 4
  %35 = icmp ne i32 %33, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %32
  %37 = load i32*, i32** %5, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %5, align 8
  %39 = load i32, i32* %37, align 4
  %40 = call i8* @swahw32(i32 %39)
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @put_unaligned(i8* %40, i32* %41)
  %43 = load i32*, i32** %4, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %4, align 8
  br label %32

45:                                               ; preds = %32
  br label %60

46:                                               ; preds = %26
  br label %47

47:                                               ; preds = %51, %46
  %48 = load i32, i32* %6, align 4
  %49 = add i32 %48, -1
  store i32 %49, i32* %6, align 4
  %50 = icmp ne i32 %48, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %47
  %52 = load i32*, i32** %5, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** %5, align 8
  %54 = load i32, i32* %52, align 4
  %55 = call i8* @swahw32(i32 %54)
  %56 = ptrtoint i8* %55 to i32
  %57 = load i32*, i32** %4, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %4, align 8
  store i32 %56, i32* %57, align 4
  br label %47

59:                                               ; preds = %47
  br label %60

60:                                               ; preds = %59, %45
  br label %61

61:                                               ; preds = %60, %25
  ret void
}

declare dso_local i8* @swahw32(i32) #1

declare dso_local i32 @get_unaligned(i32*) #1

declare dso_local i32 @put_unaligned(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
