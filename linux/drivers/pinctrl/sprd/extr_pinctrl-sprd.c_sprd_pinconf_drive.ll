; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sprd/extr_pinctrl-sprd.c_sprd_pinconf_drive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sprd/extr_pinctrl-sprd.c_sprd_pinconf_drive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @sprd_pinconf_drive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_pinconf_drive(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %100 [
    i32 2, label %5
    i32 4, label %6
    i32 6, label %10
    i32 8, label %14
    i32 10, label %20
    i32 12, label %24
    i32 14, label %30
    i32 16, label %36
    i32 20, label %44
    i32 21, label %48
    i32 24, label %54
    i32 25, label %60
    i32 27, label %68
    i32 29, label %74
    i32 31, label %82
    i32 33, label %90
  ]

5:                                                ; preds = %1
  br label %101

6:                                                ; preds = %1
  %7 = call i32 @BIT(i32 19)
  %8 = load i32, i32* %3, align 4
  %9 = or i32 %8, %7
  store i32 %9, i32* %3, align 4
  br label %101

10:                                               ; preds = %1
  %11 = call i32 @BIT(i32 20)
  %12 = load i32, i32* %3, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %3, align 4
  br label %101

14:                                               ; preds = %1
  %15 = call i32 @BIT(i32 19)
  %16 = call i32 @BIT(i32 20)
  %17 = or i32 %15, %16
  %18 = load i32, i32* %3, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %3, align 4
  br label %101

20:                                               ; preds = %1
  %21 = call i32 @BIT(i32 21)
  %22 = load i32, i32* %3, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %3, align 4
  br label %101

24:                                               ; preds = %1
  %25 = call i32 @BIT(i32 21)
  %26 = call i32 @BIT(i32 19)
  %27 = or i32 %25, %26
  %28 = load i32, i32* %3, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %3, align 4
  br label %101

30:                                               ; preds = %1
  %31 = call i32 @BIT(i32 21)
  %32 = call i32 @BIT(i32 20)
  %33 = or i32 %31, %32
  %34 = load i32, i32* %3, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %3, align 4
  br label %101

36:                                               ; preds = %1
  %37 = call i32 @BIT(i32 19)
  %38 = call i32 @BIT(i32 20)
  %39 = or i32 %37, %38
  %40 = call i32 @BIT(i32 21)
  %41 = or i32 %39, %40
  %42 = load i32, i32* %3, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %3, align 4
  br label %101

44:                                               ; preds = %1
  %45 = call i32 @BIT(i32 22)
  %46 = load i32, i32* %3, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %3, align 4
  br label %101

48:                                               ; preds = %1
  %49 = call i32 @BIT(i32 22)
  %50 = call i32 @BIT(i32 19)
  %51 = or i32 %49, %50
  %52 = load i32, i32* %3, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %3, align 4
  br label %101

54:                                               ; preds = %1
  %55 = call i32 @BIT(i32 22)
  %56 = call i32 @BIT(i32 20)
  %57 = or i32 %55, %56
  %58 = load i32, i32* %3, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %3, align 4
  br label %101

60:                                               ; preds = %1
  %61 = call i32 @BIT(i32 22)
  %62 = call i32 @BIT(i32 20)
  %63 = or i32 %61, %62
  %64 = call i32 @BIT(i32 19)
  %65 = or i32 %63, %64
  %66 = load i32, i32* %3, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %3, align 4
  br label %101

68:                                               ; preds = %1
  %69 = call i32 @BIT(i32 22)
  %70 = call i32 @BIT(i32 21)
  %71 = or i32 %69, %70
  %72 = load i32, i32* %3, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %3, align 4
  br label %101

74:                                               ; preds = %1
  %75 = call i32 @BIT(i32 22)
  %76 = call i32 @BIT(i32 21)
  %77 = or i32 %75, %76
  %78 = call i32 @BIT(i32 19)
  %79 = or i32 %77, %78
  %80 = load i32, i32* %3, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %3, align 4
  br label %101

82:                                               ; preds = %1
  %83 = call i32 @BIT(i32 22)
  %84 = call i32 @BIT(i32 21)
  %85 = or i32 %83, %84
  %86 = call i32 @BIT(i32 20)
  %87 = or i32 %85, %86
  %88 = load i32, i32* %3, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %3, align 4
  br label %101

90:                                               ; preds = %1
  %91 = call i32 @BIT(i32 22)
  %92 = call i32 @BIT(i32 21)
  %93 = or i32 %91, %92
  %94 = call i32 @BIT(i32 20)
  %95 = or i32 %93, %94
  %96 = call i32 @BIT(i32 19)
  %97 = or i32 %95, %96
  %98 = load i32, i32* %3, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %3, align 4
  br label %101

100:                                              ; preds = %1
  br label %101

101:                                              ; preds = %100, %90, %82, %74, %68, %60, %54, %48, %44, %36, %30, %24, %20, %14, %10, %6, %5
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
