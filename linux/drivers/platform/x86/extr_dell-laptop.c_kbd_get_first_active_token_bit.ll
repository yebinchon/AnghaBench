; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-laptop.c_kbd_get_first_active_token_bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-laptop.c_kbd_get_first_active_token_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kbd_tokens = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @kbd_get_first_active_token_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kbd_get_first_active_token_bit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %4

4:                                                ; preds = %17, %0
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @kbd_tokens, align 4
  %7 = call i32 @ARRAY_SIZE(i32 %6)
  %8 = icmp slt i32 %5, %7
  br i1 %8, label %9, label %20

9:                                                ; preds = %4
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @kbd_get_token_bit(i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = load i32, i32* %2, align 4
  store i32 %15, i32* %1, align 4
  br label %22

16:                                               ; preds = %9
  br label %17

17:                                               ; preds = %16
  %18 = load i32, i32* %2, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %2, align 4
  br label %4

20:                                               ; preds = %4
  %21 = load i32, i32* %3, align 4
  store i32 %21, i32* %1, align 4
  br label %22

22:                                               ; preds = %20, %14
  %23 = load i32, i32* %1, align 4
  ret i32 %23
}

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @kbd_get_token_bit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
