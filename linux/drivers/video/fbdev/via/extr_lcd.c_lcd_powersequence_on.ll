; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_lcd.c_lcd_powersequence_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_lcd.c_lcd_powersequence_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CR91 = common dso_local global i32 0, align 4
@VIACR = common dso_local global i32 0, align 4
@CR6A = common dso_local global i32 0, align 4
@PowerSequenceOn = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @lcd_powersequence_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lcd_powersequence_on() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @CR91, align 4
  %5 = load i32, i32* @VIACR, align 4
  %6 = call i32 @viafb_write_reg_mask(i32 %4, i32 %5, i32 17, i32 17)
  %7 = load i32, i32* @CR6A, align 4
  %8 = load i32, i32* @VIACR, align 4
  %9 = call i32 @viafb_write_reg_mask(i32 %7, i32 %8, i32 8, i32 8)
  store i32 0, i32* %1, align 4
  br label %10

10:                                               ; preds = %43, %0
  %11 = load i32, i32* %1, align 4
  %12 = icmp slt i32 %11, 3
  br i1 %12, label %13, label %46

13:                                               ; preds = %10
  %14 = load i32**, i32*** @PowerSequenceOn, align 8
  %15 = getelementptr inbounds i32*, i32** %14, i64 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %1, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %2, align 4
  %21 = load i32**, i32*** @PowerSequenceOn, align 8
  %22 = getelementptr inbounds i32*, i32** %21, i64 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %1, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %2, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* @CR91, align 4
  %31 = load i32, i32* @VIACR, align 4
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @viafb_write_reg_mask(i32 %30, i32 %31, i32 %32, i32 %33)
  %35 = load i32**, i32*** @PowerSequenceOn, align 8
  %36 = getelementptr inbounds i32*, i32** %35, i64 2
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %1, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @udelay(i32 %41)
  br label %43

43:                                               ; preds = %13
  %44 = load i32, i32* %1, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %1, align 4
  br label %10

46:                                               ; preds = %10
  %47 = call i32 @udelay(i32 1)
  ret void
}

declare dso_local i32 @viafb_write_reg_mask(i32, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
