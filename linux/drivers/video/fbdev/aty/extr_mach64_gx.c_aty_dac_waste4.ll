; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_mach64_gx.c_aty_dac_waste4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_mach64_gx.c_aty_dac_waste4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atyfb_par = type { i32 }

@DAC_REGS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atyfb_par*)* @aty_dac_waste4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aty_dac_waste4(%struct.atyfb_par* %0) #0 {
  %2 = alloca %struct.atyfb_par*, align 8
  store %struct.atyfb_par* %0, %struct.atyfb_par** %2, align 8
  %3 = load i64, i64* @DAC_REGS, align 8
  %4 = load %struct.atyfb_par*, %struct.atyfb_par** %2, align 8
  %5 = call i32 @aty_ld_8(i64 %3, %struct.atyfb_par* %4)
  %6 = load i64, i64* @DAC_REGS, align 8
  %7 = add nsw i64 %6, 2
  %8 = load %struct.atyfb_par*, %struct.atyfb_par** %2, align 8
  %9 = call i32 @aty_ld_8(i64 %7, %struct.atyfb_par* %8)
  %10 = load i64, i64* @DAC_REGS, align 8
  %11 = add nsw i64 %10, 2
  %12 = load %struct.atyfb_par*, %struct.atyfb_par** %2, align 8
  %13 = call i32 @aty_ld_8(i64 %11, %struct.atyfb_par* %12)
  %14 = load i64, i64* @DAC_REGS, align 8
  %15 = add nsw i64 %14, 2
  %16 = load %struct.atyfb_par*, %struct.atyfb_par** %2, align 8
  %17 = call i32 @aty_ld_8(i64 %15, %struct.atyfb_par* %16)
  %18 = load i64, i64* @DAC_REGS, align 8
  %19 = add nsw i64 %18, 2
  %20 = load %struct.atyfb_par*, %struct.atyfb_par** %2, align 8
  %21 = call i32 @aty_ld_8(i64 %19, %struct.atyfb_par* %20)
  ret void
}

declare dso_local i32 @aty_ld_8(i64, %struct.atyfb_par*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
