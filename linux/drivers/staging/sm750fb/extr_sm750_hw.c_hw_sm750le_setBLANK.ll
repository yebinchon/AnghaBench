; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_sm750_hw.c_hw_sm750le_setBLANK.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_sm750_hw.c_hw_sm750le_setBLANK.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lynxfb_output = type { i32 }

@CRT_DISPLAY_CTRL_DPMS_0 = common dso_local global i32 0, align 4
@CRT_DISPLAY_CTRL_BLANK = common dso_local global i32 0, align 4
@CRT_DISPLAY_CTRL_DPMS_2 = common dso_local global i32 0, align 4
@CRT_DISPLAY_CTRL_DPMS_1 = common dso_local global i32 0, align 4
@CRT_DISPLAY_CTRL_DPMS_3 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@sm750_crt = common dso_local global i32 0, align 4
@CRT_DISPLAY_CTRL = common dso_local global i32 0, align 4
@CRT_DISPLAY_CTRL_DPMS_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hw_sm750le_setBLANK(%struct.lynxfb_output* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lynxfb_output*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.lynxfb_output* %0, %struct.lynxfb_output** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %24 [
    i32 129, label %10
    i32 131, label %12
    i32 128, label %15
    i32 132, label %18
    i32 130, label %21
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* @CRT_DISPLAY_CTRL_DPMS_0, align 4
  store i32 %11, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %27

12:                                               ; preds = %2
  %13 = load i32, i32* @CRT_DISPLAY_CTRL_DPMS_0, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @CRT_DISPLAY_CTRL_BLANK, align 4
  store i32 %14, i32* %7, align 4
  br label %27

15:                                               ; preds = %2
  %16 = load i32, i32* @CRT_DISPLAY_CTRL_DPMS_2, align 4
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* @CRT_DISPLAY_CTRL_BLANK, align 4
  store i32 %17, i32* %7, align 4
  br label %27

18:                                               ; preds = %2
  %19 = load i32, i32* @CRT_DISPLAY_CTRL_DPMS_1, align 4
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* @CRT_DISPLAY_CTRL_BLANK, align 4
  store i32 %20, i32* %7, align 4
  br label %27

21:                                               ; preds = %2
  %22 = load i32, i32* @CRT_DISPLAY_CTRL_DPMS_3, align 4
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* @CRT_DISPLAY_CTRL_BLANK, align 4
  store i32 %23, i32* %7, align 4
  br label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %56

27:                                               ; preds = %21, %18, %15, %12, %10
  %28 = load %struct.lynxfb_output*, %struct.lynxfb_output** %4, align 8
  %29 = getelementptr inbounds %struct.lynxfb_output, %struct.lynxfb_output* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @sm750_crt, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %55

34:                                               ; preds = %27
  %35 = load i32, i32* @CRT_DISPLAY_CTRL, align 4
  %36 = call i32 @peek32(i32 %35)
  %37 = load i32, i32* @CRT_DISPLAY_CTRL_DPMS_MASK, align 4
  %38 = xor i32 %37, -1
  %39 = and i32 %36, %38
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* @CRT_DISPLAY_CTRL, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %6, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @poke32(i32 %40, i32 %43)
  %45 = load i32, i32* @CRT_DISPLAY_CTRL, align 4
  %46 = call i32 @peek32(i32 %45)
  %47 = load i32, i32* @CRT_DISPLAY_CTRL_BLANK, align 4
  %48 = xor i32 %47, -1
  %49 = and i32 %46, %48
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* @CRT_DISPLAY_CTRL, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %7, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @poke32(i32 %50, i32 %53)
  br label %55

55:                                               ; preds = %34, %27
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %24
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @peek32(i32) #1

declare dso_local i32 @poke32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
