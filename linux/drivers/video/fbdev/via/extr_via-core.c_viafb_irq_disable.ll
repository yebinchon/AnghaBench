; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_via-core.c_viafb_irq_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_via-core.c_viafb_irq_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@viafb_enabled_ints = common dso_local global i32 0, align 4
@VDE_INTERRUPT = common dso_local global i32 0, align 4
@VDE_I_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @viafb_irq_disable(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = xor i32 %3, -1
  %5 = load i32, i32* @viafb_enabled_ints, align 4
  %6 = and i32 %5, %4
  store i32 %6, i32* @viafb_enabled_ints, align 4
  %7 = load i32, i32* @viafb_enabled_ints, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @VDE_INTERRUPT, align 4
  %11 = call i32 @viafb_mmio_write(i32 %10, i32 0)
  br label %18

12:                                               ; preds = %1
  %13 = load i32, i32* @VDE_INTERRUPT, align 4
  %14 = load i32, i32* @viafb_enabled_ints, align 4
  %15 = load i32, i32* @VDE_I_ENABLE, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @viafb_mmio_write(i32 %13, i32 %16)
  br label %18

18:                                               ; preds = %12, %9
  ret void
}

declare dso_local i32 @viafb_mmio_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
