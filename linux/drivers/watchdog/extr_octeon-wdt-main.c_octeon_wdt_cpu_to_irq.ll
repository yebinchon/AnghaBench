; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_octeon-wdt-main.c_octeon_wdt_cpu_to_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_octeon-wdt-main.c_octeon_wdt_cpu_to_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { i32 }

@OCTEON_FEATURE_CIU3 = common dso_local global i32 0, align 4
@WD_BLOCK_NUMBER = common dso_local global i32 0, align 4
@OCTEON_IRQ_WDOG0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @octeon_wdt_cpu_to_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octeon_wdt_cpu_to_irq(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_domain*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @cpu2core(i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @cpu_to_node(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @OCTEON_FEATURE_CIU3, align 4
  %13 = call i64 @octeon_has_feature(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @WD_BLOCK_NUMBER, align 4
  %18 = call %struct.irq_domain* @octeon_irq_get_block_domain(i32 %16, i32 %17)
  store %struct.irq_domain* %18, %struct.irq_domain** %6, align 8
  %19 = load i32, i32* @WD_BLOCK_NUMBER, align 4
  %20 = shl i32 %19, 12
  %21 = or i32 %20, 512
  %22 = load i32, i32* %3, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %7, align 4
  %24 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @irq_find_mapping(%struct.irq_domain* %24, i32 %25)
  store i32 %26, i32* %5, align 4
  br label %31

27:                                               ; preds = %1
  %28 = load i32, i32* @OCTEON_IRQ_WDOG0, align 4
  %29 = load i32, i32* %3, align 4
  %30 = add i32 %28, %29
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %27, %15
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local i32 @cpu2core(i32) #1

declare dso_local i32 @cpu_to_node(i32) #1

declare dso_local i64 @octeon_has_feature(i32) #1

declare dso_local %struct.irq_domain* @octeon_irq_get_block_domain(i32, i32) #1

declare dso_local i32 @irq_find_mapping(%struct.irq_domain*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
