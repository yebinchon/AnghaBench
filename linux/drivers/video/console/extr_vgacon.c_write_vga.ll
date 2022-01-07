; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/console/extr_vgacon.c_write_vga.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/console/extr_vgacon.c_write_vga.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vga_lock = common dso_local global i32 0, align 4
@vga_video_port_reg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8, i32)* @write_vga to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_vga(i8 zeroext %0, i32 %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i8 %0, i8* %3, align 1
  store i32 %1, i32* %4, align 4
  %8 = load i64, i64* %7, align 8
  %9 = call i32 @raw_spin_lock_irqsave(i32* @vga_lock, i64 %8)
  %10 = load i8, i8* %3, align 1
  %11 = zext i8 %10 to i32
  %12 = load i32, i32* %4, align 4
  %13 = and i32 %12, 65280
  %14 = add i32 %11, %13
  store i32 %14, i32* %5, align 4
  %15 = load i8, i8* %3, align 1
  %16 = zext i8 %15 to i32
  %17 = add nsw i32 %16, 1
  %18 = load i32, i32* %4, align 4
  %19 = shl i32 %18, 8
  %20 = and i32 %19, 65280
  %21 = add i32 %17, %20
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @vga_video_port_reg, align 4
  %24 = call i32 @outw(i32 %22, i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @vga_video_port_reg, align 4
  %27 = call i32 @outw(i32 %25, i32 %26)
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @raw_spin_unlock_irqrestore(i32* @vga_lock, i64 %28)
  ret void
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outw(i32, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
