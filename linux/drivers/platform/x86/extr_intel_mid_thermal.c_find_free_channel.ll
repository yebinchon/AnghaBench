; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_mid_thermal.c_find_free_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_mid_thermal.c_find_free_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INTEL_MSIC_ADC1CNTL1 = common dso_local global i64 0, align 8
@MSIC_ADC_ENBL = common dso_local global i32 0, align 4
@ADC_CHANLS_MAX = common dso_local global i32 0, align 4
@ADC_CHNL_START_ADDR = common dso_local global i64 0, align 8
@MSIC_STOPBIT_MASK = common dso_local global i32 0, align 4
@ADC_LOOP_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @find_free_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_free_channel() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i64, i64* @INTEL_MSIC_ADC1CNTL1, align 8
  %6 = call i32 @intel_msic_reg_read(i64 %5, i32* %4)
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = load i32, i32* %2, align 4
  store i32 %10, i32* %1, align 4
  br label %54

11:                                               ; preds = %0
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @MSIC_ADC_ENBL, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store i32 0, i32* %1, align 4
  br label %54

17:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %40, %17
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @ADC_CHANLS_MAX, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %43

22:                                               ; preds = %18
  %23 = load i64, i64* @ADC_CHNL_START_ADDR, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %23, %25
  %27 = call i32 @intel_msic_reg_read(i64 %26, i32* %4)
  store i32 %27, i32* %2, align 4
  %28 = load i32, i32* %2, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* %2, align 4
  store i32 %31, i32* %1, align 4
  br label %54

32:                                               ; preds = %22
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @MSIC_STOPBIT_MASK, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %3, align 4
  store i32 %38, i32* %2, align 4
  br label %43

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %3, align 4
  br label %18

43:                                               ; preds = %37, %18
  %44 = load i32, i32* %2, align 4
  %45 = load i32, i32* @ADC_LOOP_MAX, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  br label %52

50:                                               ; preds = %43
  %51 = load i32, i32* %2, align 4
  br label %52

52:                                               ; preds = %50, %47
  %53 = phi i32 [ %49, %47 ], [ %51, %50 ]
  store i32 %53, i32* %1, align 4
  br label %54

54:                                               ; preds = %52, %30, %16, %9
  %55 = load i32, i32* %1, align 4
  ret i32 %55
}

declare dso_local i32 @intel_msic_reg_read(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
