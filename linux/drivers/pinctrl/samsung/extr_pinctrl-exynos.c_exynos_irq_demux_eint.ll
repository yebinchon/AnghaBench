; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-exynos.c_exynos_irq_demux_eint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-exynos.c_exynos_irq_demux_eint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.irq_domain*)* @exynos_irq_demux_eint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos_irq_demux_eint(i64 %0, %struct.irq_domain* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.irq_domain*, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store %struct.irq_domain* %1, %struct.irq_domain** %4, align 8
  br label %6

6:                                                ; preds = %9, %2
  %7 = load i64, i64* %3, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %6
  %10 = load i64, i64* %3, align 8
  %11 = call i32 @fls(i64 %10)
  %12 = sub nsw i32 %11, 1
  store i32 %12, i32* %5, align 4
  %13 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @irq_find_mapping(%struct.irq_domain* %13, i32 %14)
  %16 = call i32 @generic_handle_irq(i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = shl i32 1, %17
  %19 = xor i32 %18, -1
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* %3, align 8
  %22 = and i64 %21, %20
  store i64 %22, i64* %3, align 8
  br label %6

23:                                               ; preds = %6
  ret void
}

declare dso_local i32 @fls(i64) #1

declare dso_local i32 @generic_handle_irq(i32) #1

declare dso_local i32 @irq_find_mapping(%struct.irq_domain*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
