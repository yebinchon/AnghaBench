; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_via_clock.c_k800_set_secondary_pll_encoded.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_via_clock.c_k800_set_secondary_pll_encoded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VIASR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @k800_set_secondary_pll_encoded to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @k800_set_secondary_pll_encoded(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @VIASR, align 4
  %4 = call i32 @via_write_reg_mask(i32 %3, i32 64, i32 4, i32 4)
  %5 = load i32, i32* @VIASR, align 4
  %6 = load i32, i32* %2, align 4
  %7 = and i32 %6, 255
  %8 = call i32 @via_write_reg(i32 %5, i32 74, i32 %7)
  %9 = load i32, i32* @VIASR, align 4
  %10 = load i32, i32* %2, align 4
  %11 = ashr i32 %10, 8
  %12 = and i32 %11, 255
  %13 = call i32 @via_write_reg(i32 %9, i32 75, i32 %12)
  %14 = load i32, i32* @VIASR, align 4
  %15 = load i32, i32* %2, align 4
  %16 = ashr i32 %15, 16
  %17 = and i32 %16, 255
  %18 = call i32 @via_write_reg(i32 %14, i32 76, i32 %17)
  %19 = load i32, i32* @VIASR, align 4
  %20 = call i32 @via_write_reg_mask(i32 %19, i32 64, i32 0, i32 4)
  ret void
}

declare dso_local i32 @via_write_reg_mask(i32, i32, i32, i32) #1

declare dso_local i32 @via_write_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
