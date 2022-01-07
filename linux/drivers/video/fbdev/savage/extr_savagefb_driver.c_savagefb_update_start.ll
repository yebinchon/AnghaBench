; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/savage/extr_savagefb_driver.c_savagefb_update_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/savage/extr_savagefb_driver.c_savagefb_update_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.savagefb_par = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.savagefb_par*, i32)* @savagefb_update_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @savagefb_update_start(%struct.savagefb_par* %0, i32 %1) #0 {
  %3 = alloca %struct.savagefb_par*, align 8
  %4 = alloca i32, align 4
  store %struct.savagefb_par* %0, %struct.savagefb_par** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = and i32 %5, 65280
  %7 = or i32 %6, 12
  %8 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %9 = call i32 @vga_out16(i32 980, i32 %7, %struct.savagefb_par* %8)
  %10 = load i32, i32* %4, align 4
  %11 = and i32 %10, 255
  %12 = shl i32 %11, 8
  %13 = or i32 %12, 13
  %14 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %15 = call i32 @vga_out16(i32 980, i32 %13, %struct.savagefb_par* %14)
  %16 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %17 = call i32 @vga_out8(i32 980, i32 105, %struct.savagefb_par* %16)
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, 8323072
  %20 = ashr i32 %19, 16
  %21 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %22 = call i32 @vga_out8(i32 981, i32 %20, %struct.savagefb_par* %21)
  ret void
}

declare dso_local i32 @vga_out16(i32, i32, %struct.savagefb_par*) #1

declare dso_local i32 @vga_out8(i32, i32, %struct.savagefb_par*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
