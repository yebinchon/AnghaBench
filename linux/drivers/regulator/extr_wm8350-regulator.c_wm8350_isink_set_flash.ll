; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_wm8350-regulator.c_wm8350_isink_set_flash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_wm8350-regulator.c_wm8350_isink_set_flash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm8350 = type { i32 }

@WM8350_CSA_FLASH_CONTROL = common dso_local global i32 0, align 4
@WM8350_CS1_FLASH_MODE = common dso_local global i32 0, align 4
@WM8350_CS1_TRIGSRC = common dso_local global i32 0, align 4
@WM8350_CSB_FLASH_CONTROL = common dso_local global i32 0, align 4
@WM8350_CS2_FLASH_MODE = common dso_local global i32 0, align 4
@WM8350_CS2_TRIGSRC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wm8350_isink_set_flash(%struct.wm8350* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.wm8350*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.wm8350* %0, %struct.wm8350** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %18 = load i32, i32* %11, align 4
  switch i32 %18, label %73 [
    i32 129, label %19
    i32 128, label %46
  ]

19:                                               ; preds = %8
  %20 = load %struct.wm8350*, %struct.wm8350** %10, align 8
  %21 = load i32, i32* @WM8350_CSA_FLASH_CONTROL, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @WM8350_CS1_FLASH_MODE, align 4
  br label %27

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %26, %24
  %28 = phi i32 [ %25, %24 ], [ 0, %26 ]
  %29 = load i32, i32* %13, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @WM8350_CS1_TRIGSRC, align 4
  br label %34

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %33, %31
  %35 = phi i32 [ %32, %31 ], [ 0, %33 ]
  %36 = or i32 %28, %35
  %37 = load i32, i32* %14, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* %15, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* %16, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* %17, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @wm8350_reg_write(%struct.wm8350* %20, i32 %21, i32 %44)
  br label %76

46:                                               ; preds = %8
  %47 = load %struct.wm8350*, %struct.wm8350** %10, align 8
  %48 = load i32, i32* @WM8350_CSB_FLASH_CONTROL, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* @WM8350_CS2_FLASH_MODE, align 4
  br label %54

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %53, %51
  %55 = phi i32 [ %52, %51 ], [ 0, %53 ]
  %56 = load i32, i32* %13, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* @WM8350_CS2_TRIGSRC, align 4
  br label %61

60:                                               ; preds = %54
  br label %61

61:                                               ; preds = %60, %58
  %62 = phi i32 [ %59, %58 ], [ 0, %60 ]
  %63 = or i32 %55, %62
  %64 = load i32, i32* %14, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* %15, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* %16, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* %17, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @wm8350_reg_write(%struct.wm8350* %47, i32 %48, i32 %71)
  br label %76

73:                                               ; preds = %8
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %9, align 4
  br label %77

76:                                               ; preds = %61, %34
  store i32 0, i32* %9, align 4
  br label %77

77:                                               ; preds = %76, %73
  %78 = load i32, i32* %9, align 4
  ret i32 %78
}

declare dso_local i32 @wm8350_reg_write(%struct.wm8350*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
