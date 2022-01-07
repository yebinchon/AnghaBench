; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_radeon_base.c___OUTPLL.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_radeon_base.c___OUTPLL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeonfb_info = type { i32 }

@CLOCK_CNTL_INDEX = common dso_local global i32 0, align 4
@CLOCK_CNTL_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__OUTPLL(%struct.radeonfb_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.radeonfb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.radeonfb_info* %0, %struct.radeonfb_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @CLOCK_CNTL_INDEX, align 4
  %8 = load i32, i32* %5, align 4
  %9 = and i32 %8, 63
  %10 = or i32 %9, 128
  %11 = call i32 @OUTREG8(i32 %7, i32 %10)
  %12 = load %struct.radeonfb_info*, %struct.radeonfb_info** %4, align 8
  %13 = call i32 @radeon_pll_errata_after_index(%struct.radeonfb_info* %12)
  %14 = load i32, i32* @CLOCK_CNTL_DATA, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @OUTREG(i32 %14, i32 %15)
  %17 = load %struct.radeonfb_info*, %struct.radeonfb_info** %4, align 8
  %18 = call i32 @radeon_pll_errata_after_data(%struct.radeonfb_info* %17)
  ret void
}

declare dso_local i32 @OUTREG8(i32, i32) #1

declare dso_local i32 @radeon_pll_errata_after_index(%struct.radeonfb_info*) #1

declare dso_local i32 @OUTREG(i32, i32) #1

declare dso_local i32 @radeon_pll_errata_after_data(%struct.radeonfb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
