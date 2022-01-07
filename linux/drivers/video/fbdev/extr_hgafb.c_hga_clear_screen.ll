; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_hgafb.c_hga_clear_screen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_hgafb.c_hga_clear_screen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hga_reg_lock = common dso_local global i32 0, align 4
@hga_mode = common dso_local global i64 0, align 8
@HGA_TXT = common dso_local global i64 0, align 8
@HGA_GFX = common dso_local global i64 0, align 8
@hga_vram = common dso_local global i32 0, align 4
@hga_vram_len = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @hga_clear_screen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hga_clear_screen() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i64, align 8
  store i8 -65, i8* %1, align 1
  %3 = load i64, i64* %2, align 8
  %4 = call i32 @spin_lock_irqsave(i32* @hga_reg_lock, i64 %3)
  %5 = load i64, i64* @hga_mode, align 8
  %6 = load i64, i64* @HGA_TXT, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  store i8 32, i8* %1, align 1
  br label %15

9:                                                ; preds = %0
  %10 = load i64, i64* @hga_mode, align 8
  %11 = load i64, i64* @HGA_GFX, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store i8 0, i8* %1, align 1
  br label %14

14:                                               ; preds = %13, %9
  br label %15

15:                                               ; preds = %14, %8
  %16 = load i64, i64* %2, align 8
  %17 = call i32 @spin_unlock_irqrestore(i32* @hga_reg_lock, i64 %16)
  %18 = load i8, i8* %1, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp ne i32 %19, 191
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load i32, i32* @hga_vram, align 4
  %23 = load i8, i8* %1, align 1
  %24 = load i32, i32* @hga_vram_len, align 4
  %25 = call i32 @memset_io(i32 %22, i8 zeroext %23, i32 %24)
  br label %26

26:                                               ; preds = %21, %15
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @memset_io(i32, i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
