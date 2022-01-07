; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_i740fb.c_vga_unprotect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_i740fb.c_vga_unprotect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i740fb_par = type { i32 }

@VGA_SEQ_I = common dso_local global i32 0, align 4
@VGA_SEQ_CLOCK_MODE = common dso_local global i32 0, align 4
@VGA_ATT_W = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i740fb_par*)* @vga_unprotect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vga_unprotect(%struct.i740fb_par* %0) #0 {
  %2 = alloca %struct.i740fb_par*, align 8
  store %struct.i740fb_par* %0, %struct.i740fb_par** %2, align 8
  %3 = load %struct.i740fb_par*, %struct.i740fb_par** %2, align 8
  %4 = load i32, i32* @VGA_SEQ_I, align 4
  %5 = load i32, i32* @VGA_SEQ_CLOCK_MODE, align 4
  %6 = call i32 @i740outreg_mask(%struct.i740fb_par* %3, i32 %4, i32 %5, i32 0, i32 32)
  %7 = load %struct.i740fb_par*, %struct.i740fb_par** %2, align 8
  %8 = call i32 @i740inb(%struct.i740fb_par* %7, i32 986)
  %9 = load %struct.i740fb_par*, %struct.i740fb_par** %2, align 8
  %10 = load i32, i32* @VGA_ATT_W, align 4
  %11 = call i32 @i740outb(%struct.i740fb_par* %9, i32 %10, i32 32)
  ret void
}

declare dso_local i32 @i740outreg_mask(%struct.i740fb_par*, i32, i32, i32, i32) #1

declare dso_local i32 @i740inb(%struct.i740fb_par*, i32) #1

declare dso_local i32 @i740outb(%struct.i740fb_par*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
