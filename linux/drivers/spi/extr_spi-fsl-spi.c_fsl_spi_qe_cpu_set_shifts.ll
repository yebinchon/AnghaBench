; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-spi.c_fsl_spi_qe_cpu_set_shifts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-spi.c_fsl_spi_qe_cpu_set_shifts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32)* @fsl_spi_qe_cpu_set_shifts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_spi_qe_cpu_set_shifts(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32*, i32** %5, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32*, i32** %6, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %4
  %14 = load i32, i32* %7, align 4
  %15 = icmp sle i32 %14, 8
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32*, i32** %5, align 8
  store i32 16, i32* %17, align 4
  %18 = load i32*, i32** %6, align 8
  store i32 24, i32* %18, align 4
  br label %26

19:                                               ; preds = %13
  %20 = load i32, i32* %7, align 4
  %21 = icmp sle i32 %20, 16
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32*, i32** %5, align 8
  store i32 16, i32* %23, align 4
  %24 = load i32*, i32** %6, align 8
  store i32 16, i32* %24, align 4
  br label %25

25:                                               ; preds = %22, %19
  br label %26

26:                                               ; preds = %25, %16
  br label %33

27:                                               ; preds = %4
  %28 = load i32, i32* %7, align 4
  %29 = icmp sle i32 %28, 8
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32*, i32** %5, align 8
  store i32 8, i32* %31, align 4
  br label %32

32:                                               ; preds = %30, %27
  br label %33

33:                                               ; preds = %32, %26
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
