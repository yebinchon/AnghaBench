; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_lcd.c_lcd_powersequence_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_lcd.c_lcd_powersequence_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CR91 = common dso_local global i32 0, align 4
@VIACR = common dso_local global i32 0, align 4
@PowerSequenceOff = common dso_local global i32** null, align 8
@CR6A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @lcd_powersequence_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lcd_powersequence_off() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @CR91, align 4
  %5 = load i32, i32* @VIACR, align 4
  %6 = call i32 @viafb_write_reg_mask(i32 %4, i32 %5, i32 17, i32 17)
  store i32 0, i32* %1, align 4
  br label %7

7:                                                ; preds = %40, %0
  %8 = load i32, i32* %1, align 4
  %9 = icmp slt i32 %8, 3
  br i1 %9, label %10, label %43

10:                                               ; preds = %7
  %11 = load i32**, i32*** @PowerSequenceOff, align 8
  %12 = getelementptr inbounds i32*, i32** %11, i64 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %2, align 4
  %18 = load i32**, i32*** @PowerSequenceOff, align 8
  %19 = getelementptr inbounds i32*, i32** %18, i64 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %1, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %2, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* @CR91, align 4
  %28 = load i32, i32* @VIACR, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @viafb_write_reg_mask(i32 %27, i32 %28, i32 %29, i32 %30)
  %32 = load i32**, i32*** @PowerSequenceOff, align 8
  %33 = getelementptr inbounds i32*, i32** %32, i64 2
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %1, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @udelay(i32 %38)
  br label %40

40:                                               ; preds = %10
  %41 = load i32, i32* %1, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %1, align 4
  br label %7

43:                                               ; preds = %7
  %44 = load i32, i32* @CR6A, align 4
  %45 = load i32, i32* @VIACR, align 4
  %46 = call i32 @viafb_write_reg_mask(i32 %44, i32 %45, i32 0, i32 8)
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
