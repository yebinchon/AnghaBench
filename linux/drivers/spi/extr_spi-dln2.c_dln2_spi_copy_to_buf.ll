; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-dln2.c_dln2_spi_copy_to_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-dln2.c_dln2_spi_copy_to_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32)* @dln2_spi_copy_to_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dln2_spi_copy_to_buf(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp sle i32 %13, 8
  br i1 %14, label %15, label %20

15:                                               ; preds = %4
  %16 = load i32*, i32** %5, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @memcpy(i32* %16, i32* %17, i32 %18)
  br label %58

20:                                               ; preds = %4
  %21 = load i32, i32* %8, align 4
  %22 = icmp sle i32 %21, 16
  br i1 %22, label %23, label %40

23:                                               ; preds = %20
  %24 = load i32*, i32** %5, align 8
  store i32* %24, i32** %9, align 8
  %25 = load i32*, i32** %6, align 8
  store i32* %25, i32** %10, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sdiv i32 %26, 2
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %32, %23
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %7, align 4
  %31 = icmp ne i32 %29, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = load i32*, i32** %10, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %34, i32** %10, align 8
  %35 = ptrtoint i32* %33 to i32
  %36 = call i32 @cpu_to_le16p(i32 %35)
  %37 = load i32*, i32** %9, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %9, align 8
  store i32 %36, i32* %37, align 4
  br label %28

39:                                               ; preds = %28
  br label %57

40:                                               ; preds = %20
  %41 = load i32*, i32** %5, align 8
  store i32* %41, i32** %11, align 8
  %42 = load i32*, i32** %6, align 8
  store i32* %42, i32** %12, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sdiv i32 %43, 4
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %49, %40
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %7, align 4
  %48 = icmp ne i32 %46, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = load i32*, i32** %12, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %12, align 8
  %52 = ptrtoint i32* %50 to i32
  %53 = call i32 @cpu_to_le32p(i32 %52)
  %54 = load i32*, i32** %11, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %11, align 8
  store i32 %53, i32* %54, align 4
  br label %45

56:                                               ; preds = %45
  br label %57

57:                                               ; preds = %56, %39
  br label %58

58:                                               ; preds = %57, %15
  ret i32 0
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @cpu_to_le16p(i32) #1

declare dso_local i32 @cpu_to_le32p(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
