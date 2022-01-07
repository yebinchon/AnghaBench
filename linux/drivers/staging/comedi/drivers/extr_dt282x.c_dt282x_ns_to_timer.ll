; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt282x.c_dt282x_ns_to_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt282x.c_dt282x_ns_to_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DT2821_PRESCALE_MAX = common dso_local global i32 0, align 4
@DT2821_OSC_BASE = common dso_local global i32 0, align 4
@CMDF_ROUND_MASK = common dso_local global i32 0, align 4
@DT2821_DIVIDER_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @dt282x_ns_to_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt282x_ns_to_timer(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %46, %2
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @DT2821_PRESCALE_MAX, align 4
  %11 = icmp ule i32 %9, %10
  br i1 %11, label %12, label %49

12:                                               ; preds = %8
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  br label %46

16:                                               ; preds = %12
  %17 = load i32, i32* @DT2821_OSC_BASE, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @DT2821_PRESCALE(i32 %18)
  %20 = mul i32 %17, %19
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @CMDF_ROUND_MASK, align 4
  %23 = and i32 %21, %22
  switch i32 %23, label %25 [
    i32 129, label %24
    i32 130, label %30
    i32 128, label %35
  ]

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %16, %24
  %26 = load i32*, i32** %3, align 8
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @DIV_ROUND_CLOSEST(i32 %27, i32 %28)
  store i32 %29, i32* %7, align 4
  br label %40

30:                                               ; preds = %16
  %31 = load i32*, i32** %3, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %6, align 4
  %34 = udiv i32 %32, %33
  store i32 %34, i32* %7, align 4
  br label %40

35:                                               ; preds = %16
  %36 = load i32*, i32** %3, align 8
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @DIV_ROUND_UP(i32 %37, i32 %38)
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %35, %30, %25
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @DT2821_DIVIDER_MAX, align 4
  %43 = icmp ule i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %49

45:                                               ; preds = %40
  br label %46

46:                                               ; preds = %45, %15
  %47 = load i32, i32* %5, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %8

49:                                               ; preds = %44, %8
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @DT2821_DIVIDER_MAX, align 4
  %52 = icmp ugt i32 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %49
  %54 = load i32, i32* @DT2821_PRESCALE_MAX, align 4
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* @DT2821_DIVIDER_MAX, align 4
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* @DT2821_OSC_BASE, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @DT2821_PRESCALE(i32 %57)
  %59 = mul i32 %56, %58
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %53, %49
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %6, align 4
  %63 = mul i32 %61, %62
  %64 = load i32*, i32** %3, align 8
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @DT2821_TMRCTR_PRESCALE(i32 %65)
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @DT2821_TMRCTR_DIVIDER(i32 %67)
  %69 = or i32 %66, %68
  ret i32 %69
}

declare dso_local i32 @DT2821_PRESCALE(i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @DT2821_TMRCTR_PRESCALE(i32) #1

declare dso_local i32 @DT2821_TMRCTR_DIVIDER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
